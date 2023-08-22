#include <nitro.h>

#define OSi_VHIGHT              HW_LCD_LINES

#define OSi_VALARM_LATER        0
#define OSi_VALARM_NOW          1
#define OSi_VALARM_TIMEOUT      2

static struct OSiVAlarmQueue {
	OSVAlarm *head;
	OSVAlarm *tail;
}
OSi_VAlarmQueue;

static u16 OSi_UseVAlarm = FALSE;

static s32 OSi_VFrameCount;
static s32 OSi_PreviousVCount;

static void OSi_InsertVAlarm(OSVAlarm *alarm);
static void OSi_SetNextVAlarm(OSVAlarm *alarm);
static void OSi_AppendVAlarm(OSVAlarm *alarm);
static void OSi_VAlarmHandler(void *arg);
static int OSi_CompareVCount(OSVAlarm *alarm, s32 currentVCount, s32 currentVFrame);
static s32 OSi_GetVFrame(s32 vcount);

static int OSi_VCountArr (int count)
{
	while (count < 0) {
		count += OSi_VHIGHT;
	}
	while (count >= OSi_VHIGHT) {
		count -= OSi_VHIGHT;
	}
	return count;
}

#define OSi_VCountSub(a, b)  OSi_VCountArr((int)((a) - (b)))

#define OSi_IsNearVCount(a, b, c) ((OSi_VCountSub((a), (c)) < OSi_VCountSub((b), (c)))? TRUE: FALSE)

void OS_InitVAlarm (void)
{
	if (!OSi_UseVAlarm) {
		OSi_UseVAlarm = TRUE;

		OSi_VAlarmQueue.head = NULL;
		OSi_VAlarmQueue.tail = NULL;

		(void)OS_DisableIrqMask(OS_IE_V_COUNT);

		OSi_VFrameCount = 0;
		OSi_PreviousVCount = 0;
	}
}

void OS_EndVAlarm (void)
{
	OSIntrMode enabled;

	SDK_ASSERT(OSi_UseVAlarm);
	enabled = OS_DisableInterrupts();

	if (OSi_UseVAlarm) {
		SDK_ASSERTMSG(!OSi_VAlarmQueue.head,
		              "OS_EndVAlarm: Cannot end v-alarm system while using v-alarm.");
		OSi_UseVAlarm = FALSE;
	}

	(void)OS_RestoreInterrupts(enabled);
}

BOOL OS_IsVAlarmAvailable (void)
{
	return OSi_UseVAlarm;
}

static void OSi_InsertVAlarm (OSVAlarm *alarm)
{
	OSVAlarm *prev;
	OSVAlarm *next;

	for (next = OSi_VAlarmQueue.head; next; next = next->next) {

		if ((next->frame < alarm->frame) ||
		    (next->frame == alarm->frame) && (next->fire <= alarm->fire)) {
			continue;
		}

		prev = next->prev;

		alarm->prev = prev;
		alarm->next = next;

		next->prev = alarm;

		if (prev) {
			prev->next = alarm;
		} else {
			OSi_VAlarmQueue.head = alarm;
			OSi_SetNextVAlarm(alarm);
		}

		return;
	}

	OSi_AppendVAlarm(alarm);
}

static void OSi_AppendVAlarm (OSVAlarm *alarm)
{
	OSVAlarm *prev = OSi_VAlarmQueue.tail;

	alarm->prev = prev;
	alarm->next = NULL;

	OSi_VAlarmQueue.tail = alarm;

	if (prev) {
		prev->next = alarm;
	} else {
		OSi_VAlarmQueue.head = alarm;
		OSi_SetNextVAlarm(alarm);
	}
}

static void OSi_DetachVAlarm (OSVAlarm *alarm)
{
	OSVAlarm *prev;
	OSVAlarm *next;

	if (!alarm) {
		return;
	}

	prev = alarm->prev;
	next = alarm->next;

	if (next) {
		next->prev = prev;
	} else {
		OSi_VAlarmQueue.tail = prev;
	}

	if (prev) {
		prev->next = next;
	} else {
		OSi_VAlarmQueue.head = next;
	}
}

void OS_CreateVAlarm (OSVAlarm *alarm)
{
	SDK_ASSERT(OSi_UseVAlarm);
	SDK_ASSERT(alarm);

	alarm->handler = 0;
	alarm->tag = 0;

	alarm->finish = FALSE;
}

void OS_SetVAlarm (OSVAlarm *alarm, s16 count, s16 delay, OSVAlarmHandler handler, void *arg)
{
	OSIntrMode enabled = OS_DisableInterrupts();
	s32 currentVCount;
	s32 currentVFrame;

	SDK_ASSERT(OSi_UseVAlarm);
	SDK_ASSERTMSG(handler, "OS_SetVAlarm: handler must not be NULL.");
	if (!alarm || alarm->handler) {
#ifndef SDK_FINALROM
		OS_Panic("v-alarm could be already used.");
#else
		OS_Panic("");
#endif
	}

	currentVCount = GX_GetVCount();
	currentVFrame = OSi_GetVFrame(currentVCount);

	alarm->period = FALSE;

	alarm->fire = count;
	alarm->frame = (u32)((count > currentVCount) ? currentVFrame : (currentVFrame + 1));

	alarm->delay = delay;

	alarm->handler = handler;
	alarm->arg = arg;

	alarm->canceled = FALSE;

	OSi_InsertVAlarm(alarm);

	(void)OS_RestoreInterrupts(enabled);
}

void OS_SetPeriodicVAlarm (OSVAlarm *alarm, s16 count, s16 delay, OSVAlarmHandler handler, void *arg)
{
	OSIntrMode enabled = OS_DisableInterrupts();
	s32 currentVCount;
	s32 currentVFrame;

	SDK_ASSERT(OSi_UseVAlarm);
	SDK_ASSERTMSG(handler, "OS_SetPeriodicVAlarm: handler must not be NULL\n");
	SDK_ASSERTMSG(0 <= delay
	              && delay <= OSi_VHIGHT,
	              "OS_SetPeriodicVAlarm:  illegal permissible range of delay.");
	if (!alarm || alarm->handler) {
#ifndef SDK_FINALROM
		OS_Panic("v-alarm could be already used.");
#else
		OS_Panic("");
#endif
	}

	currentVCount = GX_GetVCount();
	currentVFrame = OSi_GetVFrame(currentVCount);

	alarm->period = TRUE;

	alarm->fire = count;
	alarm->frame = (u32)((count > currentVCount) ? currentVFrame : (currentVFrame + 1));

	alarm->delay = delay;

	alarm->handler = handler;
	alarm->arg = arg;

	alarm->canceled = FALSE;

	OSi_InsertVAlarm(alarm);

	(void)OS_RestoreInterrupts(enabled);
}

static void OSi_SetNextVAlarm (OSVAlarm *alarm)
{

	OS_SetIrqFunction(OS_IE_V_COUNT, (void (*)()) OSi_VAlarmHandler);

	GX_SetVCountEqVal(alarm->fire);

	GX_VCountEqIntr(TRUE);
	(void)OS_EnableIrqMask(OS_IE_V_COUNT);
}

void OS_SetVAlarmTag (OSVAlarm *alarm, u32 tag)
{
#ifdef SDK_DEBUG
	SDK_ASSERT(OSi_UseVAlarm);
	SDK_ASSERT(alarm);
	SDK_ASSERTMSG(tag > 0, "OSSetVAlarmTag: Tag must be >0.");
#else
	if (tag == 0) {
		OS_Panic("");
	}
#endif

	if (alarm) {
		alarm->tag = tag;
	}
}

void OS_CancelVAlarm (OSVAlarm *alarm)
{
	OSIntrMode enabled = OS_DisableInterrupts();;

	SDK_ASSERT(OSi_UseVAlarm);
	SDK_ASSERT(alarm);

	alarm->canceled = TRUE;
	if (alarm->handler == NULL) {
		(void)OS_RestoreInterrupts(enabled);
		return;
	}

	OSi_DetachVAlarm(alarm);

	alarm->handler = NULL;

	(void)OS_RestoreInterrupts(enabled);
}

void OS_CancelAllVAlarms (void)
{
	OSIntrMode enabled;
	OSVAlarm *alarm;
	OSVAlarm *next;

	SDK_ASSERT(OSi_UseVAlarm);
	enabled = OS_DisableInterrupts();

	for (alarm = OSi_VAlarmQueue.head, next = alarm ? alarm->next : NULL;
	     alarm; alarm = next, next = alarm ? alarm->next : NULL) {

		OS_CancelVAlarm(alarm);
	}

	(void)OS_RestoreInterrupts(enabled);
}

void OS_CancelVAlarms (u32 tag)
{
	OSIntrMode enabled = OS_DisableInterrupts();
	OSVAlarm *alarm;
	OSVAlarm *next;

#ifdef SDK_DEBUG
	SDK_ASSERT(OSi_UseVAlarm);
	SDK_ASSERTMSG(tag > 0, "OSCancelVAlarms: Tag must be >0.");
#else
	if (tag == 0) {
		OS_Panic("");
	}
#endif

	for (alarm = OSi_VAlarmQueue.head, next = alarm ? alarm->next : NULL;
	     alarm; alarm = next, next = alarm ? alarm->next : NULL) {
		if (alarm->tag == tag) {

			OS_CancelVAlarm(alarm);
		}
	}

	(void)OS_RestoreInterrupts(enabled);
}

static void OSi_VAlarmHandler (void *)
{
	OSVAlarm *alarm;
	OSVAlarmHandler handler;
	int check;
	s32 currentVCount;
	s32 currentVFrame;

	(void)OS_DisableIrqMask(OS_IE_V_COUNT);
	GX_VCountEqIntr(FALSE);

	OS_SetIrqCheckFlag(OS_IE_V_COUNT);

	currentVCount = GX_GetVCountEqVal();
	currentVFrame = OSi_GetVFrame(currentVCount - 1);

	while (NULL != (alarm = OSi_VAlarmQueue.head)) {

		currentVCount = GX_GetVCount();
		currentVFrame = OSi_GetVFrame(currentVCount);

		check = OSi_CompareVCount(alarm, currentVFrame, currentVCount);

#ifdef DEBUGPRINT
		OS_Printf("[%d:%d %d] %d %d check=%d \n",
		          alarm->arg, alarm->frame, alarm->fire, currentVFrame, currentVCount, check);
#endif

		switch (check) {
		case OSi_VALARM_LATER:

			OSi_SetNextVAlarm(alarm);

			if (alarm->fire != GX_GetVCount() || alarm->frame != currentVFrame) {
				return;
			}

			(void)OS_DisableIrqMask(OS_IE_V_COUNT);
			GX_VCountEqIntr(FALSE);
			(void)OS_ResetRequestIrqMask(OS_IE_V_COUNT);

		case OSi_VALARM_NOW:

			handler = alarm->handler;
			OSi_DetachVAlarm(alarm);
			alarm->handler = NULL;

			if (handler) {
				(handler) (alarm->arg);
			}

			if (alarm->period && !alarm->canceled) {
				alarm->handler = handler;
				alarm->frame = (u32)OSi_VFrameCount + 1;
				OSi_InsertVAlarm(alarm);
			}
			break;

		case OSi_VALARM_TIMEOUT:

			OSi_DetachVAlarm(alarm);
			alarm->frame = (u32)OSi_VFrameCount + 1;
			OSi_InsertVAlarm(alarm);
			break;

		}
	}
}

static int OSi_CompareVCount (OSVAlarm *alarm, s32 currentVFrame, s32 currentVCount)
{
	s32 delayVFrame;
	s32 delayVCount;

	delayVFrame = currentVFrame - (s32)alarm->frame;
	delayVCount = currentVCount - (s32)alarm->fire;

	if (delayVFrame < 0 || (delayVFrame == 0 && delayVCount < 0)) {
		return OSi_VALARM_LATER;
	}

	if (delayVCount < 0) {
		delayVCount += OSi_VHIGHT;
	}

	return (delayVCount <= alarm->delay) ? OSi_VALARM_NOW : OSi_VALARM_TIMEOUT;
}

static s32 OSi_GetVFrame (s32 vcount)
{
	OSIntrMode enabled = OS_DisableInterrupts();

	if (vcount < OSi_PreviousVCount) {
		OSi_VFrameCount++;
	}
	OSi_PreviousVCount = vcount;

	(void)OS_RestoreInterrupts(enabled);
	return OSi_VFrameCount;
}

void    OS_DumpVAlarm(void);
void OS_DumpVAlarm (void)
{
	OSIntrMode enabled = OS_DisableInterrupts();
	OSVAlarm *alarm;
	OSVAlarm *next;

	OS_Printf("---------------- current vcount = %d\n", (s16)GX_GetVCount());
	for (alarm = OSi_VAlarmQueue.head; alarm; alarm = next) {
		next = alarm->next;

		OS_Printf("%08x fire=%d:%d delay=%d arg=%2d prev=%08x next=%08x\n", alarm,
		          alarm->frame, alarm->fire, alarm->delay, alarm->arg, alarm->prev, alarm->next);
	}

	(void)OS_RestoreInterrupts(enabled);
}