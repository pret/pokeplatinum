#include "overlay006/field_warp.h"

#include <nitro.h>
#include <string.h>

#include "generated/journal_location_events.h"

#include "struct_decls/struct_0203A790_decl.h"

#include "field/field_system.h"
#include "overlay005/map_object_anim_cmd.h"
#include "overlay005/ov5_021F0EB0.h"
#include "overlay006/hm_cut_in.h"

#include "field_map_change.h"
#include "field_overworld_state.h"
#include "field_task.h"
#include "heap.h"
#include "journal.h"
#include "location.h"
#include "player_avatar.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "spawn_locations.h"
#include "unk_020655F4.h"

enum FieldWarpStateResult {
    STATE_RESULT_NEXT_STATE = 0,
    STATE_RESULT_REPEAT_STATE,
    STATE_RESULT_END_TASK,
};

typedef enum FieldWarpStateResult (*FieldWarpStateFunc)(FieldTask *, FieldSystem *, FieldWarp *);

static FieldWarp *FieldWarp_New(enum HeapID heapID, u32 size);
static void CreateJournalEntryForWarp(FieldSystem *fieldSystem, FieldWarp *fieldWarp);
static enum FieldWarpStateResult StartWarpOutSpinning(FieldTask *task, FieldSystem *fieldSystem, FieldWarp *fieldWarp);
static enum FieldWarpStateResult StartFadeOut(FieldTask *task, FieldSystem *fieldSystem, FieldWarp *fieldWarp);
static enum FieldWarpStateResult FinishFadeOut(FieldTask *task, FieldSystem *fieldSystem, FieldWarp *fieldWarp);
static enum FieldWarpStateResult ChangeMap(FieldTask *task, FieldSystem *fieldSystem, FieldWarp *fieldWarp);
static enum FieldWarpStateResult StartFadeIn(FieldTask *task, FieldSystem *fieldSystem, FieldWarp *fieldWarp);
static enum FieldWarpStateResult FinishFadeIn(FieldTask *task, FieldSystem *fieldSystem, FieldWarp *fieldWarp);
static enum FieldWarpStateResult SlowDownWarpInSpinning(FieldTask *task, FieldSystem *fieldSystem, FieldWarp *fieldWarp);
static enum FieldWarpStateResult FinishWarpInAnimation(FieldTask *task, FieldSystem *fieldSystem, FieldWarp *fieldWarp);
static enum FieldWarpStateResult StartFieldMoveCutIn(FieldTask *task, FieldSystem *fieldSystem, FieldWarp *fieldWarp);
static enum FieldWarpStateResult FinishFieldMoveCutIn(FieldTask *task, FieldSystem *fieldSystem, FieldWarp *fieldWarp);

static const FieldWarpStateFunc sEscapeRopeStates[] = {
    StartWarpOutSpinning,
    StartFadeOut,
    FinishFadeOut,
    ChangeMap
};

static const FieldWarpStateFunc sFieldWarpFadeInStates[] = {
    StartFadeIn,
    FinishFadeIn,
    SlowDownWarpInSpinning,
    FinishWarpInAnimation
};

static const FieldWarpStateFunc sDigTeleportStates[] = {
    StartFieldMoveCutIn,
    FinishFieldMoveCutIn,
    StartWarpOutSpinning,
    StartFadeOut,
    FinishFadeOut,
    ChangeMap
};

static const MapObjectAnimCmd sWarpFastSpinningAnimation[] = {
    { MOVEMENT_ACTION_FACE_NORTH, 1 },
    { MOVEMENT_ACTION_FACE_EAST, 1 },
    { MOVEMENT_ACTION_FACE_SOUTH, 1 },
    { MOVEMENT_ACTION_FACE_WEST, 1 },
    { MOVEMENT_ACTION_END, 0 }
};

static const MapObjectAnimCmd sFadeOutWarpAnimation[] = {
    { MOVEMENT_ACTION_FACE_SOUTH, 1 },
    { MOVEMENT_ACTION_DELAY_1, 2 },
    { MOVEMENT_ACTION_FACE_WEST, 1 },
    { MOVEMENT_ACTION_DELAY_1, 2 },
    { MOVEMENT_ACTION_FACE_NORTH, 1 },
    { MOVEMENT_ACTION_DELAY_1, 2 },
    { MOVEMENT_ACTION_FACE_EAST, 1 },
    { MOVEMENT_ACTION_DELAY_1, 2 },
    { MOVEMENT_ACTION_FACE_SOUTH, 1 },
    { MOVEMENT_ACTION_DELAY_1, 1 },
    { MOVEMENT_ACTION_FACE_WEST, 1 },
    { MOVEMENT_ACTION_DELAY_1, 1 },
    { MOVEMENT_ACTION_FACE_NORTH, 1 },
    { MOVEMENT_ACTION_DELAY_1, 1 },
    { MOVEMENT_ACTION_FACE_EAST, 1 },
    { MOVEMENT_ACTION_DELAY_1, 1 },
    { MOVEMENT_ACTION_FACE_SOUTH, 1 },
    { MOVEMENT_ACTION_FACE_WEST, 1 },
    { MOVEMENT_ACTION_FACE_NORTH, 1 },
    { MOVEMENT_ACTION_FACE_EAST, 1 },
    { MOVEMENT_ACTION_FACE_SOUTH, 1 },
    { MOVEMENT_ACTION_FACE_WEST, 1 },
    { MOVEMENT_ACTION_FACE_NORTH, 1 },
    { MOVEMENT_ACTION_FACE_EAST, 1 },
    { MOVEMENT_ACTION_END, 0 }
};

static const MapObjectAnimCmd sFadeInWarpAnimation[] = {
    { MOVEMENT_ACTION_FACE_SOUTH, 1 },
    { MOVEMENT_ACTION_FACE_WEST, 1 },
    { MOVEMENT_ACTION_FACE_NORTH, 1 },
    { MOVEMENT_ACTION_FACE_EAST, 1 },
    { MOVEMENT_ACTION_FACE_SOUTH, 1 },
    { MOVEMENT_ACTION_FACE_WEST, 1 },
    { MOVEMENT_ACTION_FACE_NORTH, 1 },
    { MOVEMENT_ACTION_FACE_EAST, 1 },
    { MOVEMENT_ACTION_FACE_SOUTH, 1 },
    { MOVEMENT_ACTION_DELAY_1, 1 },
    { MOVEMENT_ACTION_FACE_WEST, 1 },
    { MOVEMENT_ACTION_DELAY_1, 1 },
    { MOVEMENT_ACTION_FACE_NORTH, 1 },
    { MOVEMENT_ACTION_DELAY_1, 1 },
    { MOVEMENT_ACTION_FACE_EAST, 1 },
    { MOVEMENT_ACTION_DELAY_1, 1 },
    { MOVEMENT_ACTION_FACE_SOUTH, 1 },
    { MOVEMENT_ACTION_DELAY_1, 2 },
    { MOVEMENT_ACTION_FACE_WEST, 1 },
    { MOVEMENT_ACTION_DELAY_1, 3 },
    { MOVEMENT_ACTION_FACE_NORTH, 1 },
    { MOVEMENT_ACTION_DELAY_1, 4 },
    { MOVEMENT_ACTION_FACE_EAST, 1 },
    { MOVEMENT_ACTION_DELAY_1, 5 },
    { MOVEMENT_ACTION_FACE_SOUTH, 1 },
    { MOVEMENT_ACTION_END, 0 }
};

FieldWarp *FieldWarp_InitEscapeRope(FieldSystem *fieldSystem, enum HeapID heapID)
{
    FieldWarp *fieldWarp = FieldWarp_New(heapID, sizeof(FieldWarp));

    fieldWarp->warpType = FIELD_WARP_TYPE_ESCAPE_ROPE;
    fieldWarp->fieldSystem = fieldSystem;
    fieldWarp->player = Player_MapObject(fieldSystem->playerAvatar);

    return fieldWarp;
}

BOOL FieldWarp_EscapeRopeFadeOut(FieldTask *task)
{
    enum FieldWarpStateResult stateResult;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    FieldWarp *fieldWarp = FieldTask_GetEnv(task);

    do {
        stateResult = sEscapeRopeStates[fieldWarp->state](task, fieldSystem, fieldWarp);

        if (stateResult == STATE_RESULT_END_TASK) {
            Heap_Free(fieldWarp);
        }
    } while (stateResult == STATE_RESULT_REPEAT_STATE);

    return FALSE;
}

static enum FieldWarpStateResult StartWarpOutSpinning(FieldTask *task, FieldSystem *fieldSystem, FieldWarp *fieldWarp)
{
    fieldWarp->unk_14 = ov5_021F0EB0(fieldSystem, HEAP_ID_FIELD1);
    ov5_021F0F10(fieldWarp->unk_14, 1, FX32_CONST(-150), 15);
    fieldWarp->animationTask = MapObject_StartAnimation(fieldWarp->player, sFadeOutWarpAnimation);
    fieldWarp->state++;

    switch (fieldWarp->warpType) {
    case FIELD_WARP_TYPE_ESCAPE_ROPE:
        Sound_PlayEffect(SEQ_SE_DP_KAIDAN2);
        break;
    case FIELD_WARP_TYPE_DIG:
        Sound_PlayEffect(SEQ_SE_DP_KAIDAN2);
        break;
    case FIELD_WARP_TYPE_TELEPORT:
        Sound_PlayEffect(SEQ_SE_DP_TELE);
        break;
    }

    return STATE_RESULT_NEXT_STATE;
}

static enum FieldWarpStateResult StartFadeOut(FieldTask *task, FieldSystem *fieldSystem, FieldWarp *fieldWarp)
{
    if (!MapObject_HasAnimationEnded(fieldWarp->animationTask)) {
        return STATE_RESULT_NEXT_STATE;
    }

    MapObject_FinishAnimation(fieldWarp->animationTask);

    fieldWarp->animationTask = MapObject_StartAnimation(fieldWarp->player, sWarpFastSpinningAnimation);
    fieldWarp->animationDelay++;

    if (fieldWarp->animationDelay < 8) {
        return STATE_RESULT_NEXT_STATE;
    }

    if (fieldWarp->warpType == FIELD_WARP_TYPE_TELEPORT) {
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_FIELD1);
    } else {
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_WHITE, 6, 1, HEAP_ID_FIELD1);
    }

    fieldWarp->state++;
    return STATE_RESULT_NEXT_STATE;
}

static enum FieldWarpStateResult FinishFadeOut(FieldTask *task, FieldSystem *fieldSystem, FieldWarp *fieldWarp)
{
    if (MapObject_HasAnimationEnded(fieldWarp->animationTask) == TRUE) {
        MapObject_FinishAnimation(fieldWarp->animationTask);
        fieldWarp->animationTask = MapObject_StartAnimation(fieldWarp->player, sWarpFastSpinningAnimation);
    }

    if (!IsScreenFadeDone()) {
        return STATE_RESULT_NEXT_STATE;
    }

    MapObject_FinishAnimation(fieldWarp->animationTask);
    ov5_021F0EFC(fieldWarp->unk_14);

    fieldWarp->state++;

    return STATE_RESULT_REPEAT_STATE;
}

static enum FieldWarpStateResult ChangeMap(FieldTask *task, FieldSystem *fieldSystem, FieldWarp *fieldWarp)
{
    FieldOverworldState *fieldState = SaveData_GetFieldOverworldState(fieldSystem->saveData);

    if (fieldWarp->warpType == FIELD_WARP_TYPE_TELEPORT) {
        Location location;

        u16 warpId = FieldOverworldState_GetWarpId(fieldState);
        Location_InitFly(warpId, &location);
        FieldTask_ChangeMapByFieldWarp(task, &location, fieldWarp->warpType);
    } else {
        Location *location = FieldOverworldState_GetExitLocation(fieldState);
        FieldTask_ChangeMapByFieldWarp(task, location, fieldWarp->warpType);
    }

    return STATE_RESULT_END_TASK;
}

FieldWarp *FieldWarp_InitFadeIn(FieldSystem *fieldSystem, enum HeapID heapID, enum FieldWarpType warpType)
{
    FieldWarp *fieldWarp = FieldWarp_New(heapID, sizeof(FieldWarp));

    fieldWarp->warpType = warpType;
    fieldWarp->fieldSystem = fieldSystem;
    fieldWarp->player = Player_MapObject(fieldSystem->playerAvatar);

    return fieldWarp;
}

BOOL FieldWarp_FadeIn(FieldTask *task)
{
    enum FieldWarpStateResult stateResult;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    FieldWarp *fieldWarp = FieldTask_GetEnv(task);

    do {
        stateResult = sFieldWarpFadeInStates[fieldWarp->state](task, fieldSystem, fieldWarp);

        if (stateResult == STATE_RESULT_END_TASK) {
            CreateJournalEntryForWarp(fieldSystem, fieldWarp);
            Heap_Free(fieldWarp);
            return TRUE;
        }
    } while (stateResult == STATE_RESULT_REPEAT_STATE);

    return FALSE;
}

static void CreateJournalEntryForWarp(FieldSystem *fieldSystem, FieldWarp *fieldWarp)
{
    if (fieldWarp->warpType != FIELD_WARP_TYPE_TELEPORT) {
        return;
    }

    void *journalEntryLocationEvent = JournalEntry_CreateEventUsedMove(LOCATION_EVENT_WARPED_TO_LOCATION - LOCATION_EVENT_USED_CUT, fieldSystem->location->mapId, HEAP_ID_FIELD1);
    JournalEntry_SaveData(fieldSystem->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);
}

static enum FieldWarpStateResult StartFadeIn(FieldTask *task, FieldSystem *fieldSystem, FieldWarp *fieldWarp)
{
    if (fieldWarp->warpType == FIELD_WARP_TYPE_TELEPORT) {
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_FIELD1);
    } else {
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_WHITE, 6, 1, HEAP_ID_FIELD1);
    }

    fieldWarp->unk_14 = ov5_021F0EB0(fieldSystem, HEAP_ID_FIELD1);
    ov5_021F0F10(fieldWarp->unk_14, 1, FX32_CONST(-150), 1);
    fieldWarp->animationTask = MapObject_StartAnimation(fieldWarp->player, sWarpFastSpinningAnimation);
    fieldWarp->state++;

    return STATE_RESULT_NEXT_STATE;
}

static enum FieldWarpStateResult FinishFadeIn(FieldTask *task, FieldSystem *fieldSystem, FieldWarp *fieldWarp)
{
    if (MapObject_HasAnimationEnded(fieldWarp->animationTask) == TRUE) {
        MapObject_FinishAnimation(fieldWarp->animationTask);
        fieldWarp->animationTask = MapObject_StartAnimation(fieldWarp->player, sWarpFastSpinningAnimation);
    }

    if (!IsScreenFadeDone()) {
        return STATE_RESULT_NEXT_STATE;
    }

    ov5_021F0F10(fieldWarp->unk_14, 2, 0, 60);

    fieldWarp->state++;
    return STATE_RESULT_REPEAT_STATE;
}

static enum FieldWarpStateResult SlowDownWarpInSpinning(FieldTask *task, FieldSystem *fieldSystem, FieldWarp *fieldWarp)
{
    if (!MapObject_HasAnimationEnded(fieldWarp->animationTask)) {
        return STATE_RESULT_NEXT_STATE;
    }

    MapObject_FinishAnimation(fieldWarp->animationTask);
    fieldWarp->animationDelay++;

    if (fieldWarp->animationDelay < 4) {
        fieldWarp->animationTask = MapObject_StartAnimation(fieldWarp->player, sWarpFastSpinningAnimation);
        return STATE_RESULT_NEXT_STATE;
    }

    fieldWarp->animationTask = MapObject_StartAnimation(fieldWarp->player, sFadeInWarpAnimation);
    fieldWarp->state++;

    return STATE_RESULT_NEXT_STATE;
}

static enum FieldWarpStateResult FinishWarpInAnimation(FieldTask *task, FieldSystem *fieldSystem, FieldWarp *fieldWarp)
{
    if (!MapObject_HasAnimationEnded(fieldWarp->animationTask)) {
        return STATE_RESULT_NEXT_STATE;
    }

    if (!ov5_021F0EF0(fieldWarp->unk_14)) {
        return STATE_RESULT_NEXT_STATE;
    }

    ov5_021F0EFC(fieldWarp->unk_14);
    MapObject_FinishAnimation(fieldWarp->animationTask);

    return STATE_RESULT_END_TASK;
}

FieldWarp *FieldWarp_InitDig(FieldSystem *fieldSystem, Pokemon *mon, enum HeapID heapID)
{
    FieldWarp *fieldWarp = FieldWarp_New(heapID, sizeof(FieldWarp));

    fieldWarp->warpType = FIELD_WARP_TYPE_DIG;
    fieldWarp->fieldSystem = fieldSystem;
    fieldWarp->player = Player_MapObject(fieldSystem->playerAvatar);
    fieldWarp->mon = mon;

    return fieldWarp;
}

BOOL FieldWarp_DigFadeOut(FieldTask *task)
{
    enum FieldWarpStateResult stateResult;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    FieldWarp *fieldWarp = FieldTask_GetEnv(task);

    do {
        stateResult = sDigTeleportStates[fieldWarp->state](task, fieldSystem, fieldWarp);

        if (stateResult == STATE_RESULT_END_TASK) {
            Heap_Free(fieldWarp);
        }
    } while (stateResult == STATE_RESULT_REPEAT_STATE);

    return FALSE;
}

static enum FieldWarpStateResult StartFieldMoveCutIn(FieldTask *task, FieldSystem *fieldSystem, FieldWarp *fieldWarp)
{
    int gender = PlayerAvatar_Gender(fieldSystem->playerAvatar);

    fieldWarp->cutInTask = SysTask_HMCutIn_New(fieldSystem, 0, fieldWarp->mon, gender);
    fieldWarp->state++;

    return STATE_RESULT_NEXT_STATE;
}

static enum FieldWarpStateResult FinishFieldMoveCutIn(FieldTask *task, FieldSystem *fieldSystem, FieldWarp *fieldWarp)
{
    if (CheckHMCutInFinished(fieldWarp->cutInTask) == FALSE) {
        return STATE_RESULT_NEXT_STATE;
    }

    SysTask_HMCutIn_SetTaskDone(fieldWarp->cutInTask);
    fieldWarp->state++;
    return STATE_RESULT_REPEAT_STATE;
}

FieldWarp *FieldWarp_InitTeleport(FieldSystem *fieldSystem, Pokemon *mon, enum HeapID heapID)
{
    FieldWarp *fieldWarp = FieldWarp_New(heapID, sizeof(FieldWarp));

    fieldWarp->warpType = FIELD_WARP_TYPE_TELEPORT;
    fieldWarp->fieldSystem = fieldSystem;
    fieldWarp->player = Player_MapObject(fieldSystem->playerAvatar);
    fieldWarp->mon = mon;

    return fieldWarp;
}

BOOL FieldWarp_TeleportFadeOut(FieldTask *task)
{
    enum FieldWarpStateResult stateResult;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    FieldWarp *fieldWarp = FieldTask_GetEnv(task);

    do {
        stateResult = sDigTeleportStates[fieldWarp->state](task, fieldSystem, fieldWarp);

        if (stateResult == STATE_RESULT_END_TASK) {
            Heap_Free(fieldWarp);
        }
    } while (stateResult == STATE_RESULT_REPEAT_STATE);

    return FALSE;
}

static FieldWarp *FieldWarp_New(enum HeapID heapID, u32 size)
{
    FieldWarp *fieldWarp = Heap_AllocAtEnd(heapID, size);

    GF_ASSERT(fieldWarp != NULL);
    memset(fieldWarp, 0, size);
    return fieldWarp;
}
