#include <nitro/os.h>
#include <nitro/os/common/alloc.h>

#define OS_ERR_ALLOCFROMHEAP_NOHEAP         "OS_AllocFromHeap(): heap is not initialized."
#define OS_ERR_ALLOCFROMHEAP_INVSIZE        "OS_AllocFromHeap(): invalid size."
#define OS_ERR_ALLOCFROMHEAP_INVHEAP        "OS_AllocFromHeap(): invalid heap handle."
#define OS_ERR_ALLOCFROMHEAP_BROKENHEAP     "OS_AllocFromHeap(): heap is broken."
#define OS_ERR_ALLOCFIXED_NOHEAP            "OS_AllocFixed(): heap is not initialized."
#define OS_ERR_ALLOCFIXED_INVRANGE          "OS_AllocFixed(): invalid range."
#define OS_ERR_FREETOHEAP_NOHEAP            "OS_FreeToHeap(): heap is not initialized."
#define OS_ERR_FREETOHEAP_INVPTR            "OS_FreeToHeap(): invalid pointer."
#define OS_ERR_FREETOHEAP_INVHEAP           "OS_FreeToHeap(): invalid heap handle."
#define OS_ERR_SETCURRENTHEAP_NOHEAP        "OS_SetCurrentHeap(): heap is not initialized."
#define OS_ERR_SETCURRENTHEAP_INVHEAP       "OS_SetCurrentHeap(): invalid heap handle."
#define OS_ERR_INITALLOC_INVNUMHEAPS        "OS_InitAlloc(): invalid number of heaps."
#define OS_ERR_INITALLOC_INVRANGE           "OS_InitAlloc(): invalid range."
#define OS_ERR_INITALLOC_INSRANGE           "OS_InitAlloc(): too small range."
#define OS_ERR_CLEARALLOC_INVID             "OS_ClearAlloc(): invalid arena id."
#define OS_ERR_CREATEHEAP_NOHEAP            "OS_CreateHeap(): heap is not initialized."
#define OS_ERR_CREATEHEAP_INVRANGE          "OS_CreateHeap(): invalid range."
#define OS_ERR_CREATEHEAP_INSRANGE          "OS_CreateHeap(): too small range."
#define OS_ERR_DESTROYHEAP_NOHEAP           "OS_DestroyHeap(): heap is not initialized."
#define OS_ERR_DESTROYHEAP_INVHEAP          "OS_DestroyHeap(): invalid heap handle."
#define OS_ERR_ADDTOHEAP_NOHEAP             "OS_AddToHeap(): heap is not initialized."
#define OS_ERR_ADDTOHEAP_INVHEAP            "OS_AddToHeap(): invalid heap handle."
#define OS_ERR_ADDTOHEAP_INVRANGE           "OS_AddToHeap(): invalid range."
#define OS_ERR_ADDTOHEAP_INSRANGE           "OS_AddToHeap(): too small range."
#define OS_ERR_REFERENT_NOHEAP              "OS_ReferentSize(): heap is not initialized."
#define OS_ERR_REFERENT_INVPTR              "OS_ReferentSize(): invalid pointer."
#define OS_ERR_DUMPHEAP_NOHEAP              "OS_DumpHeap(): heap is not initialized."
#define OS_ERR_DUMPHEAP_INVHEAP             "OS_DumpHeap(): invalid heap handle."
#define OS_ERR_DUMPHEAP_BROKENHEAP          "OS_DumpHeap(): heap is broken."
#define OS_ERR_ALLOCFROMHEAP_INVID          "OS_AllocFromHeap(): illegal arena id."
#define OS_ERR_ALLOCFROMHEAP_NOINFO         "OS_AllocFromHeap(): heap not initialized."
#define OS_ERR_ALLOCFIXED_INVID             "OS_AllocFixed(): illegal arena id."
#define OS_ERR_ALLOCFIXED_NOINFO            "OS_AllocFixed(): heap not initialized."
#define OS_ERR_FREETOHEAP_INVID             "OS_FreeToHeap(): illegal arena id."
#define OS_ERR_FREETOHEAP_NOINFO            "OS_FreeToHeap(): heap not initialized."
#define OS_ERR_SETCURRENTHEAP_INVID         "OS_SetCurrentHeap(): illegal arena id."
#define OS_ERR_SETCURRENTHEAP_NOINFO        "OS_SetCurrentHeap(): heap not initialized."
#define OS_ERR_INITALLOC_INVID              "OS_SetInitAlloc(): illegal arena id."
#define OS_ERR_INITALLOC_INVINFO            "OS_SetInitAlloc(): heap already initialized."
#define OS_ERR_CREATEHEAP_INVID             "OS_CreateHeap(): illegal arena id."
#define OS_ERR_CREATEHEAP_NOINFO            "OS_CreateHeap(): heap not initialized."
#define OS_ERR_DESTROYHEAP_INVID            "OS_DestroyHeap(): illegal arena id."
#define OS_ERR_DESTROYHEAP_NOINFO           "OS_DestroyHeap(): heap not initialized."
#define OS_ERR_ADDTOHEAP_INVID              "OS_AddToHeap(): illegal arena id."
#define OS_ERR_ADDTOHEAP_NOINFO             "OS_AddToHeap(): heap not initialized."
#define OS_ERR_CHECKHEAP_INVID              "OS_CheckHeap(): illegal arena id."
#define OS_ERR_CHECKHEAP_NOINFO             "OS_CheckHeap(): heap not initialized."
#define OS_ERR_REFERENTSIZE_INVID           "OS_ReferentSize(): illegal arena id."
#define OS_ERR_REFERENTSIZE_NOINFO          "OS_ReferrentSize(): heap not initialized."
#define OS_ERR_DUMPHEAP_INVID               "OS_DumpHeap(): illegal arena id."
#define OS_ERR_DUMPHEAP_NOINFO              "OS_DumpHeap(): heap not initialized."
#define OS_ERR_VISITALLOCATED_INVID         "OS_VisitAllocated(): illegal arena id."
#define OS_ERR_VISITALLOCATED_NOINFO        "OS_VisitAllocated(): heap not initialized."

#define OFFSET(n, a)    (((u32) (n)) & ((a) - 1))
#define TRUNC(n, a)     (((u32) (n)) & ~((a) - 1))
#define ROUND(n, a)     (((u32) (n) + (a) - 1) & ~((a) - 1))

#define ALIGNMENT       32
#define MINOBJSIZE      (HEADERSIZE + ALIGNMENT)
#define HEADERSIZE      ROUND(sizeof(Cell), ALIGNMENT)

#define InRange(targ, a, b)                                             \
	((u32)(a) <= (u32)(targ) && (u32)(targ) < (u32)(b))

#define RangeOverlap(aStart, aEnd, bStart, bEnd)                        \
	((u32)(bStart) <= (u32)(aStart) && (u32)(aStart) < (u32)(bEnd) ||   \
	 (u32)(bStart) < (u32)(aEnd) && (u32)(aEnd) <= (u32)(bEnd))

#define RangeSubset(aStart, aEnd, bStart, bEnd)                         \
	((u32)(bStart) <= (u32)(aStart) && (u32)(aEnd) <= (u32)(bEnd))

typedef struct Cell Cell;
typedef struct HeapDesc HeapDesc;

struct Cell {
	Cell *prev;
	Cell *next;
	long size;
#ifdef  SDK_DEBUG
	HeapDesc *hd;
	long requested;
#endif
};

struct HeapDesc {
	long size;
	Cell *free;
	Cell *allocated;
#ifdef  SDK_DEBUG
	u32 paddingBytes;
	u32 headerBytes;
	u32 payloadBytes;
#endif
};

typedef struct {
	volatile OSHeapHandle currentHeap;
	int numHeaps;
	void *arenaStart;
	void *arenaEnd;
	HeapDesc *heapArray;
} OSHeapInfo;

void *OSiHeapInfo[OS_ARENA_MAX] = {
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL
};

static Cell *DLAddFront (Cell *list, Cell *cell)
{
	cell->next = list;
	cell->prev = NULL;
	if (list) {
		list->prev = cell;
	}
	return cell;
}

static Cell *DLLookup (Cell *list, Cell *cell)
{
	for (; list; list = list->next) {
		if (list == cell) {
			return list;
		}
	}
	return NULL;
}

static Cell *DLExtract (Cell *list, Cell *cell)
{
	if (cell->next) {
		cell->next->prev = cell->prev;
	}

	if (cell->prev == NULL) {
		return cell->next;
	} else  {
		cell->prev->next = cell->next;
		return list;
	}
}

static Cell *DLInsert (Cell *list, Cell *cell)
{
	Cell *prev;
	Cell *next;

	for (next = list, prev = NULL; next; prev = next, next = next->next) {
		if (cell <= next) {
			break;
		}
	}

	cell->next = next;
	cell->prev = prev;
	if (next) {
		next->prev = cell;
		if ((char *)cell + cell->size == (char *)next) {

			cell->size += next->size;
			cell->next = next = next->next;
			if (next) {
				next->prev = cell;
			}
		}
	}
	if (prev) {
		prev->next = cell;
		if ((char *)prev + prev->size == (char *)cell) {

			prev->size += cell->size;
			prev->next = next;
			if (next) {
				next->prev = prev;
			}
		}
		return list;
	} else  {
		return cell;
	}
}

static BOOL DLOverlap (Cell *list, void *start, void *end)
{
	Cell *cell;

	for (cell = list; cell; cell = cell->next) {
		if (RangeOverlap(cell, (char *)cell + cell->size, start, end)) {
			return TRUE;
		}
	}
	return FALSE;
}

static long DLSize (Cell *list)
{
	Cell *cell;
	long size = 0;

	for (cell = list; cell; cell = cell->next) {
		size += cell->size;
	}
	return size;
}

void *OS_AllocFromHeap (OSArenaId id, OSHeapHandle heap, u32 size)
{
	OSHeapInfo *heapInfo;
	HeapDesc *hd;
	Cell *cell;
	Cell *newCell;
	long leftoverSize;
	OSIntrMode enabled = OS_DisableInterrupts();

#ifdef  SDK_DEBUG
	long requested = (long)size;
#endif

	SDK_ASSERTMSG(id < OS_ARENA_MAX, OS_ERR_ALLOCFROMHEAP_INVID);
	SDK_ASSERTMSG(OSiHeapInfo[id], OS_ERR_ALLOCFROMHEAP_NOINFO);
	heapInfo = OSiHeapInfo[id];

	if (!heapInfo) {
		(void)OS_RestoreInterrupts(enabled);
		return NULL;
	}

	if (heap < 0) {
		heap = heapInfo->currentHeap;
	}

	SDK_ASSERTMSG(heapInfo->heapArray, OS_ERR_ALLOCFROMHEAP_NOHEAP);
	SDK_ASSERTMSG(0 < ((long)size), OS_ERR_ALLOCFROMHEAP_INVSIZE);
	SDK_ASSERTMSG(0 <= heap && heap < heapInfo->numHeaps, OS_ERR_ALLOCFROMHEAP_INVHEAP);
	SDK_ASSERTMSG(0 <= heapInfo->heapArray[heap].size, OS_ERR_ALLOCFROMHEAP_INVHEAP);

	hd = &heapInfo->heapArray[heap];

	size += HEADERSIZE;
	size = ROUND(size, ALIGNMENT);

	for (cell = hd->free; cell != NULL; cell = cell->next) {
		if ((long)size <= cell->size) {
			break;
		}
	}

	if (cell == NULL) {
#ifdef  SDK_DEBUG
		OS_Printf("OS_AllocFromHeap: Warning- failed to allocate %d bytes\n", size);
#endif
		(void)OS_RestoreInterrupts(enabled);
		return NULL;
	}

	SDK_ASSERTMSG(OFFSET(cell, ALIGNMENT) == 0, OS_ERR_ALLOCFROMHEAP_BROKENHEAP);
	SDK_ASSERTMSG(cell->hd == NULL, OS_ERR_ALLOCFROMHEAP_BROKENHEAP);

	leftoverSize = cell->size - (long)size;
	if (leftoverSize < MINOBJSIZE) {

		hd->free = DLExtract(hd->free, cell);
	} else  {
		cell->size = (long)size;
		newCell = (Cell *) ((char *)cell + size);
		newCell->size = leftoverSize;
#ifdef SDK_DEBUG
		newCell->hd = NULL;
#endif
		newCell->prev = cell->prev;
		newCell->next = cell->next;

		if (newCell->next != NULL) {
			newCell->next->prev = newCell;
		}

		if (newCell->prev != NULL) {
			newCell->prev->next = newCell;
		} else  {
			SDK_ASSERTMSG(hd->free == cell, OS_ERR_ALLOCFROMHEAP_BROKENHEAP);
			hd->free = newCell;
		}
	}

	hd->allocated = DLAddFront(hd->allocated, cell);

#ifdef  SDK_DEBUG
	cell->hd = hd;
	cell->requested = requested;
	hd->headerBytes += HEADERSIZE;
	hd->paddingBytes += cell->size - (HEADERSIZE + requested);
	hd->payloadBytes += requested;
#endif

	(void)OS_RestoreInterrupts(enabled);

	return (void *)((char *)cell + HEADERSIZE);
}

void *OS_AllocFixed (OSArenaId id, void **rstart, void **rend)
{
	OSHeapInfo *heapInfo;
	OSHeapHandle i;
	Cell *cell;
	Cell *newCell;
	HeapDesc *hd;
	void *start = (void *)TRUNC(*rstart, ALIGNMENT);
	void *end = (void *)ROUND(*rend, ALIGNMENT);
	OSIntrMode enabled = OS_DisableInterrupts();

	SDK_ASSERTMSG(id < OS_ARENA_MAX, OS_ERR_ALLOCFIXED_INVID);
	SDK_ASSERTMSG(OSiHeapInfo[id], OS_ERR_ALLOCFIXED_NOINFO);
	heapInfo = OSiHeapInfo[id];

	SDK_ASSERTMSG(heapInfo->heapArray, OS_ERR_ALLOCFIXED_NOHEAP);
	SDK_ASSERTMSG(start < end, OS_ERR_ALLOCFIXED_INVRANGE);
	SDK_ASSERTMSG(RangeSubset(start, end, heapInfo->arenaStart, heapInfo->arenaEnd),
	              OS_ERR_ALLOCFIXED_INVRANGE);

	for (i = 0; i < heapInfo->numHeaps; i++) {
		hd = &heapInfo->heapArray[i];
		if (hd->size < 0) {
			continue;
		}

		if (DLOverlap(hd->allocated, start, end)) {
#ifdef  SDK_DEBUG
			OS_Printf("OS_AllocFixed: Warning - failed to allocate from %p to %p\n", start, end);
#endif
			(void)OS_RestoreInterrupts(enabled);
			return NULL;
		}
	}

	for (i = 0; i < heapInfo->numHeaps; i++) {
		hd = &heapInfo->heapArray[i];

		if (hd->size < 0) {
			continue;
		}

		for (cell = hd->free; cell; cell = cell->next) {
			void *cellEnd = (char *)cell + cell->size;

			if ((char *)cellEnd <= (char *)start) {
				continue;
			}

			if ((char *)end <= (char *)cell) {
				break;
			}

			if (InRange(cell, (char *)start - HEADERSIZE, end) &&
			    InRange((char *)cellEnd, start, (char *)end + MINOBJSIZE)) {
				if ((char *)cell < (char *)start)
					start = (void *)cell;
				if ((char *)end < (char *)cellEnd)
					end = (void *)cellEnd;

				hd->free = DLExtract(hd->free, cell);
				hd->size -= cell->size;
				continue;
			}

			if (InRange(cell, (char *)start - HEADERSIZE, end)) {
				if ((char *)cell < (char *)start) {
					start = (void *)cell;
				}

				SDK_ASSERT(MINOBJSIZE <= (char *)cellEnd - (char *)end);
				newCell = (Cell *) end;
				newCell->size = (char *)cellEnd - (char *)end;
#ifdef  SDK_DEBUG
				newCell->hd = NULL;
#endif
				newCell->next = cell->next;
				if (newCell->next) {
					newCell->next->prev = newCell;
				}
				newCell->prev = cell->prev;
				if (newCell->prev) {
					newCell->prev->next = newCell;
				} else  {
					hd->free = newCell;
				}
				hd->size -= (char *)end - (char *)cell;
				break;
			}

			if (InRange((char *)cellEnd, start, (char *)end + MINOBJSIZE)) {
				if ((char *)end < (char *)cellEnd) {
					end = (void *)cellEnd;
				}

				SDK_ASSERT(MINOBJSIZE <= (char *)start - (char *)cell);
				hd->size -= (char *)cellEnd - (char *)start;
				cell->size = (char *)start - (char *)cell;
				continue;
			}

			SDK_ASSERT(MINOBJSIZE <= (char *)cellEnd - (char *)end);
			newCell = (Cell *) end;
			newCell->size = (char *)cellEnd - (char *)end;
#ifdef  SDK_DEBUG
			newCell->hd = NULL;
#endif
			newCell->next = cell->next;
			if (newCell->next) {
				newCell->next->prev = newCell;
			}
			newCell->prev = cell;
			cell->next = newCell;
			cell->size = (char *)start - (char *)cell;
			hd->size -= (char *)end - (char *)start;
			break;
		}
		SDK_ASSERT(0 <= hd->size);
	}

	SDK_ASSERT(OFFSET(start, ALIGNMENT) == 0);
	SDK_ASSERT(OFFSET(end, ALIGNMENT) == 0);
	SDK_ASSERT(start < end);
	*rstart = start;
	*rend = end;

	(void)OS_RestoreInterrupts(enabled);
	return *rstart;
}

void OS_FreeToHeap (OSArenaId id, OSHeapHandle heap, void *ptr)
{
	OSHeapInfo *heapInfo;
	HeapDesc *hd;
	Cell *cell;

	OSIntrMode enabled = OS_DisableInterrupts();

	SDK_ASSERTMSG(id < OS_ARENA_MAX, OS_ERR_FREETOHEAP_INVID);
	SDK_ASSERTMSG(OSiHeapInfo[id], OS_ERR_FREETOHEAP_NOINFO);
	heapInfo = OSiHeapInfo[id];

	if (heap < 0) {
		heap = heapInfo->currentHeap;
	}

	SDK_ASSERTMSG(heapInfo->heapArray, OS_ERR_FREETOHEAP_NOHEAP);
	SDK_ASSERTMSG(InRange
	                  (ptr, (char *)heapInfo->arenaStart + HEADERSIZE, (char *)heapInfo->arenaEnd),
	              OS_ERR_FREETOHEAP_INVPTR);
	SDK_ASSERTMSG(OFFSET(ptr, ALIGNMENT) == 0, OS_ERR_FREETOHEAP_INVPTR);
	SDK_ASSERTMSG(0 <= heapInfo->heapArray[heap].size, OS_ERR_FREETOHEAP_INVHEAP);

	cell = (Cell *) ((char *)ptr - HEADERSIZE);
	hd = &heapInfo->heapArray[heap];

	SDK_ASSERTMSG(cell->hd == hd, OS_ERR_FREETOHEAP_INVPTR);
	SDK_ASSERTMSG(DLLookup(hd->allocated, cell), OS_ERR_FREETOHEAP_INVPTR);

#ifdef  SDK_DEBUG
	cell->hd = NULL;
	hd->headerBytes -= HEADERSIZE;
	hd->paddingBytes -= cell->size - (HEADERSIZE + cell->requested);
	hd->payloadBytes -= cell->requested;
#endif

	hd->allocated = DLExtract(hd->allocated, cell);
	hd->free = DLInsert(hd->free, cell);

	(void)OS_RestoreInterrupts(enabled);
}

void OS_FreeAllToHeap (OSArenaId id, OSHeapHandle heap)
{
	OSHeapInfo *heapInfo;
	HeapDesc *hd;
	Cell *cell;

	OSIntrMode enabled = OS_DisableInterrupts();

	SDK_ASSERTMSG(id < OS_ARENA_MAX, OS_ERR_FREETOHEAP_INVID);
	SDK_ASSERTMSG(OSiHeapInfo[id], OS_ERR_FREETOHEAP_NOINFO);
	heapInfo = OSiHeapInfo[id];

	if (heap < 0) {
		heap = heapInfo->currentHeap;
	}

	SDK_ASSERTMSG(heapInfo->heapArray, "heap not initialized");
	SDK_ASSERTMSG(0 <= heapInfo->heapArray[heap].size, "invalid heap handle");

	hd = &heapInfo->heapArray[heap];
	while ((cell = hd->allocated) != NULL) {
		SDK_ASSERT(cell->hd == hd);
		SDK_ASSERT(DLLookup(hd->allocated, cell));

#ifdef  SDK_DEBUG
		cell->hd = NULL;
		hd->headerBytes -= HEADERSIZE;
		hd->paddingBytes -= cell->size - (HEADERSIZE + cell->requested);
		hd->payloadBytes -= cell->requested;
#endif

		hd->allocated = DLExtract(hd->allocated, cell);
		hd->free = DLInsert(hd->free, cell);
	}

	(void)OS_RestoreInterrupts(enabled);
}

OSHeapHandle OS_SetCurrentHeap (OSArenaId id, OSHeapHandle heap)
{
	OSHeapInfo *heapInfo;
	OSHeapHandle prev;
	OSIntrMode enabled = OS_DisableInterrupts();

	SDK_ASSERTMSG(id < OS_ARENA_MAX, OS_ERR_SETCURRENTHEAP_INVID);
	SDK_ASSERTMSG(OSiHeapInfo[id], OS_ERR_SETCURRENTHEAP_NOINFO);
	heapInfo = OSiHeapInfo[id];

	SDK_ASSERTMSG(heapInfo->heapArray, OS_ERR_SETCURRENTHEAP_NOHEAP);
	SDK_ASSERTMSG(0 <= heap && heap < heapInfo->numHeaps, OS_ERR_SETCURRENTHEAP_INVHEAP);
	SDK_ASSERTMSG(0 <= heapInfo->heapArray[heap].size, OS_ERR_SETCURRENTHEAP_INVHEAP);
	prev = heapInfo->currentHeap;
	heapInfo->currentHeap = heap;

	(void)OS_RestoreInterrupts(enabled);
	return prev;
}

void *OS_InitAlloc (OSArenaId id, void *arenaStart, void *arenaEnd, int maxHeaps)
{
	OSHeapInfo *heapInfo;
	u32 arraySize;
	OSHeapHandle i;
	OSIntrMode enabled = OS_DisableInterrupts();

	SDK_ASSERTMSG(id < OS_ARENA_MAX, OS_ERR_INITALLOC_INVID);
	SDK_ASSERTMSG(OSiHeapInfo[id] == NULL, OS_ERR_INITALLOC_INVINFO);

	SDK_ASSERTMSG(0 < maxHeaps, OS_ERR_INITALLOC_INVNUMHEAPS);
	SDK_ASSERTMSG((char *)arenaStart < (char *)arenaEnd, OS_ERR_INITALLOC_INVRANGE);
	SDK_ASSERTMSG(maxHeaps <= ((char *)arenaEnd - (char *)arenaStart) / sizeof(HeapDesc),
	              OS_ERR_INITALLOC_INSRANGE);

	heapInfo = arenaStart;
	OSiHeapInfo[id] = heapInfo;

	arraySize = sizeof(HeapDesc) * maxHeaps;
	heapInfo->heapArray = (void *)((u32)arenaStart + sizeof(OSHeapInfo));
	heapInfo->numHeaps = maxHeaps;

	for (i = 0; i < heapInfo->numHeaps; i++) {
		HeapDesc *hd = &heapInfo->heapArray[i];

		hd->size = -1;
		hd->free = hd->allocated = NULL;
#ifdef  SDK_DEBUG
		hd->paddingBytes = hd->headerBytes = hd->payloadBytes = 0;
#endif
	}

	heapInfo->currentHeap = -1;

	arenaStart = (void *)((char *)heapInfo->heapArray + arraySize);
	arenaStart = (void *)ROUND(arenaStart, ALIGNMENT);

	heapInfo->arenaStart = arenaStart;
	heapInfo->arenaEnd = (void *)TRUNC(arenaEnd, ALIGNMENT);
	SDK_ASSERTMSG(MINOBJSIZE <= (char *)heapInfo->arenaEnd - (char *)heapInfo->arenaStart,
	              OS_ERR_INITALLOC_INSRANGE);

	(void)OS_RestoreInterrupts(enabled);
	return heapInfo->arenaStart;
}

void OS_ClearAlloc (OSArenaId id)
{
	SDK_ASSERTMSG(id < OS_ARENA_MAX, OS_ERR_CLEARALLOC_INVID);
	OSiHeapInfo[id] = NULL;
}

OSHeapHandle OS_CreateHeap (OSArenaId id, void *start, void *end)
{
	OSHeapInfo *heapInfo;
	OSHeapHandle heap;
	HeapDesc *hd;
	Cell *cell;

	OSIntrMode enabled = OS_DisableInterrupts();

	SDK_ASSERTMSG(id < OS_ARENA_MAX, OS_ERR_CREATEHEAP_INVID);
	SDK_ASSERTMSG(OSiHeapInfo[id], OS_ERR_CREATEHEAP_NOINFO);
	heapInfo = OSiHeapInfo[id];

	SDK_ASSERTMSG(heapInfo->heapArray, OS_ERR_CREATEHEAP_NOHEAP);
	SDK_ASSERTMSG(start < end, OS_ERR_CREATEHEAP_INVRANGE);
	start = (void *)ROUND(start, ALIGNMENT);
	end = (void *)TRUNC(end, ALIGNMENT);
	SDK_ASSERTMSG(start < end, OS_ERR_CREATEHEAP_INVRANGE);
	SDK_ASSERTMSG(RangeSubset(start, end, heapInfo->arenaStart, heapInfo->arenaEnd),
	              OS_ERR_CREATEHEAP_INVRANGE);
	SDK_ASSERTMSG(MINOBJSIZE <= (char *)end - (char *)start, OS_ERR_CREATEHEAP_INSRANGE);

#ifdef  SDK_DEBUG
	for (heap = 0; heap < heapInfo->numHeaps; heap++) {
		if (heapInfo->heapArray[heap].size < 0) {
			continue;
		}
		SDK_ASSERTMSG(!DLOverlap(heapInfo->heapArray[heap].free, start, end),
		              OS_ERR_CREATEHEAP_INVRANGE);
		SDK_ASSERTMSG(!DLOverlap(heapInfo->heapArray[heap].allocated, start, end),
		              OS_ERR_CREATEHEAP_INVRANGE);
	}
#endif

	for (heap = 0; heap < heapInfo->numHeaps; heap++) {
		hd = &heapInfo->heapArray[heap];
		if (hd->size < 0) {
			hd->size = (char *)end - (char *)start;

			cell = (Cell *) start;
			cell->prev = NULL;
			cell->next = NULL;
			cell->size = hd->size;
#ifdef  SDK_DEBUG
			cell->hd = NULL;
#endif

			hd->free = cell;
			hd->allocated = 0;
#ifdef  SDK_DEBUG
			hd->paddingBytes = hd->headerBytes = hd->payloadBytes = 0;
#endif

			(void)OS_RestoreInterrupts(enabled);
			return heap;
		}
	}

#ifdef  SDK_DEBUG
	OS_Printf("OS_CreateHeap: Warning - Failed to find free heap descriptor.");
#endif

	(void)OS_RestoreInterrupts(enabled);
	return -1;
}

void OS_DestroyHeap (OSArenaId id, OSHeapHandle heap)
{
	OSHeapInfo *heapInfo;
	HeapDesc *hd;
#ifdef  SDK_DEBUG
	long size;
#endif
	OSIntrMode enabled = OS_DisableInterrupts();

	SDK_ASSERTMSG(id < OS_ARENA_MAX, OS_ERR_DESTROYHEAP_INVID);
	SDK_ASSERTMSG(OSiHeapInfo[id], OS_ERR_DESTROYHEAP_NOINFO);
	heapInfo = OSiHeapInfo[id];

	SDK_ASSERTMSG(heapInfo->heapArray, OS_ERR_DESTROYHEAP_NOHEAP);
	SDK_ASSERTMSG(0 <= heap && heap < heapInfo->numHeaps, OS_ERR_DESTROYHEAP_INVHEAP);
	SDK_ASSERTMSG(0 <= heapInfo->heapArray[heap].size, OS_ERR_DESTROYHEAP_INVHEAP);

	hd = &heapInfo->heapArray[heap];

#ifdef SDK_DEBUG

	size = DLSize(hd->free);
	if (hd->size != size) {
		OS_Printf("OS_DestroyHeap(%d): Warning - free list size %d, heap size %d\n", heap, size,
		          hd->size);
	}
#endif

	hd->size = -1;
	hd->free = hd->allocated = NULL;

#ifdef  SDK_DEBUG
	hd->paddingBytes = hd->headerBytes = hd->payloadBytes = 0;
	if (heapInfo->currentHeap == heap) {
		heapInfo->currentHeap = -1;
	}
#endif

	(void)OS_RestoreInterrupts(enabled);
}

void OS_AddToHeap (OSArenaId id, OSHeapHandle heap, void *start, void *end)
{
	OSHeapInfo *heapInfo;
	HeapDesc *hd;
	Cell *cell;
#ifdef  SDK_DEBUG
	OSHeapHandle i;
#endif
	OSIntrMode enabled = OS_DisableInterrupts();

	SDK_ASSERTMSG(id < OS_ARENA_MAX, OS_ERR_ADDTOHEAP_INVID);
	SDK_ASSERTMSG(OSiHeapInfo[id], OS_ERR_ADDTOHEAP_NOINFO);
	heapInfo = OSiHeapInfo[id];

	SDK_ASSERTMSG(heapInfo->heapArray, OS_ERR_ADDTOHEAP_NOHEAP);
	SDK_ASSERTMSG(0 <= heap && heap < heapInfo->numHeaps, OS_ERR_ADDTOHEAP_INVHEAP);
	SDK_ASSERTMSG(0 <= heapInfo->heapArray[heap].size, OS_ERR_ADDTOHEAP_INVHEAP);

	hd = &heapInfo->heapArray[heap];

	SDK_ASSERTMSG(start < end, OS_ERR_ADDTOHEAP_INVRANGE);
	start = (void *)ROUND(start, ALIGNMENT);
	end = (void *)TRUNC(end, ALIGNMENT);
	SDK_ASSERTMSG(MINOBJSIZE <= (char *)end - (char *)start, OS_ERR_ADDTOHEAP_INSRANGE);
	SDK_ASSERTMSG(RangeSubset(start, end, heapInfo->arenaStart, heapInfo->arenaEnd),
	              OS_ERR_ADDTOHEAP_INVRANGE);

#ifdef  SDK_DEBUG

	for (i = 0; i < heapInfo->numHeaps; i++) {
		if (heapInfo->heapArray[i].size < 0) {
			continue;
		}
		SDK_ASSERTMSG(!DLOverlap(heapInfo->heapArray[i].free, start, end),
		              OS_ERR_ADDTOHEAP_INVRANGE);
		SDK_ASSERTMSG(!DLOverlap(heapInfo->heapArray[i].allocated, start, end),
		              OS_ERR_ADDTOHEAP_INVRANGE);
	}
#endif

	cell = (Cell *) start;
	cell->size = (char *)end - (char *)start;
#ifdef  SDK_DEBUG
	cell->hd = NULL;
#endif

	hd->size += cell->size;
	hd->free = DLInsert(hd->free, cell);

	(void)OS_RestoreInterrupts(enabled);
}

#ifndef  SDK_NO_MESSAGE
#define OSi_CHECK( exp )                                                     \
	do                                                                       \
	{                                                                        \
		if ( !(exp))                                                         \
		{                                                                    \
			OS_Printf( "OS_CheckHeap: Failed " #exp " in %d\n", __LINE__ );  \
			goto exit_OS_CheckHeap;                                          \
		}                                                                    \
	} while (0)
#else
#define OSi_CHECK( exp )                                                     \
	do                                                                       \
	{                                                                        \
		if ( !(exp))                                                         \
		{                                                                    \
			goto exit_OS_CheckHeap;  \
		}                                                                    \
	} while (0)
#endif

s32 OS_CheckHeap (OSArenaId id, OSHeapHandle heap)
{
	OSHeapInfo *heapInfo;
	HeapDesc *hd;
	Cell *cell;
	long total = 0;
	long free = 0;
	long retValue = -1;
	OSIntrMode enabled = OS_DisableInterrupts();

	SDK_ASSERTMSG(id < OS_ARENA_MAX, OS_ERR_CHECKHEAP_INVID);
	SDK_ASSERTMSG(OSiHeapInfo[id], OS_ERR_CHECKHEAP_NOINFO);
	heapInfo = OSiHeapInfo[id];

	if (heap == OS_CURRENT_HEAP_HANDLE) {
		heap = heapInfo->currentHeap;
	}
	SDK_ASSERT(heap >= 0);

	OSi_CHECK(heapInfo->heapArray);
	OSi_CHECK(0 <= heap && heap < heapInfo->numHeaps);

	hd = &heapInfo->heapArray[heap];
	OSi_CHECK(0 <= hd->size);

	OSi_CHECK(hd->allocated == NULL || hd->allocated->prev == NULL);
	for (cell = hd->allocated; cell; cell = cell->next) {
		OSi_CHECK(InRange(cell, heapInfo->arenaStart, heapInfo->arenaEnd));
		OSi_CHECK(OFFSET(cell, ALIGNMENT) == 0);
		OSi_CHECK(cell->next == NULL || cell->next->prev == cell);
		OSi_CHECK(MINOBJSIZE <= cell->size);
		OSi_CHECK(OFFSET(cell->size, ALIGNMENT) == 0);

		total += cell->size;
		OSi_CHECK(0 < total && total <= hd->size);

#ifdef  SDK_DEBUG
		OSi_CHECK(cell->hd == hd);
		OSi_CHECK(HEADERSIZE + cell->requested <= cell->size);
#endif
	}

	OSi_CHECK(hd->free == NULL || hd->free->prev == NULL);
	for (cell = hd->free; cell; cell = cell->next) {
		OSi_CHECK(InRange(cell, heapInfo->arenaStart, heapInfo->arenaEnd));
		OSi_CHECK(OFFSET(cell, ALIGNMENT) == 0);
		OSi_CHECK(cell->next == NULL || cell->next->prev == cell);
		OSi_CHECK(MINOBJSIZE <= cell->size);
		OSi_CHECK(OFFSET(cell->size, ALIGNMENT) == 0);
		OSi_CHECK(cell->next == NULL || (char *)cell + cell->size < (char *)cell->next);

		total += cell->size;
		free += cell->size - HEADERSIZE;
		OSi_CHECK(0 < total && total <= hd->size);

#ifdef  SDK_DEBUG
		OSi_CHECK(cell->hd == NULL);
#endif
	}

	OSi_CHECK(total == hd->size);
	retValue = free;

exit_OS_CheckHeap:
	(void)OS_RestoreInterrupts(enabled);
	return retValue;
}

u32 OS_ReferentSize (OSArenaId id, void *ptr)
{
	OSHeapInfo *heapInfo;
	Cell *cell;
	OSIntrMode enabled = OS_DisableInterrupts();

	SDK_ASSERTMSG(id < OS_ARENA_MAX, OS_ERR_REFERENTSIZE_INVID);
	SDK_ASSERTMSG(OSiHeapInfo[id], OS_ERR_REFERENTSIZE_NOINFO);
	heapInfo = OSiHeapInfo[id];

	SDK_ASSERTMSG(heapInfo->heapArray, OS_ERR_REFERENT_NOHEAP);
	SDK_ASSERTMSG(InRange
	                  (ptr, (char *)heapInfo->arenaStart + HEADERSIZE, (char *)heapInfo->arenaEnd),
	              OS_ERR_REFERENT_INVPTR);
	SDK_ASSERTMSG(OFFSET(ptr, ALIGNMENT) == 0, OS_ERR_REFERENT_INVPTR);

	cell = (Cell *) ((char *)ptr - HEADERSIZE);

	SDK_ASSERTMSG(cell->hd, OS_ERR_REFERENT_INVPTR);
	SDK_ASSERTMSG(((char *)cell->hd - (char *)heapInfo->heapArray) % sizeof(HeapDesc) == 0,
	              OS_ERR_REFERENT_INVPTR);
	SDK_ASSERTMSG(heapInfo->heapArray <= cell->hd
	              && cell->hd < &heapInfo->heapArray[heapInfo->numHeaps], OS_ERR_REFERENT_INVPTR);
	SDK_ASSERTMSG(0 <= cell->hd->size, OS_ERR_REFERENT_INVPTR);
	SDK_ASSERTMSG(DLLookup(cell->hd->allocated, cell), OS_ERR_REFERENT_INVPTR);

	(void)OS_RestoreInterrupts(enabled);
	return (u32)(cell->size - HEADERSIZE);
}

void OS_DumpHeap (OSArenaId id, OSHeapHandle heap)
{
#ifndef SDK_FINALROM
	OSHeapInfo *heapInfo;
	HeapDesc *hd;
	Cell *cell;
	OSIntrMode enabled = OS_DisableInterrupts();

	OS_Printf("\nOS_DumpHeap(%d):\n", heap);

	SDK_ASSERTMSG(id < OS_ARENA_MAX, OS_ERR_DUMPHEAP_INVID);
	SDK_ASSERTMSG(OSiHeapInfo[id], OS_ERR_DUMPHEAP_NOINFO);
	heapInfo = OSiHeapInfo[id];

	SDK_ASSERTMSG(heapInfo && heapInfo->heapArray, OS_ERR_DUMPHEAP_NOHEAP);

	if (heap < 0) {
		heap = heapInfo->currentHeap;
	}
	SDK_ASSERTMSG(0 <= heap && heap < heapInfo->numHeaps, OS_ERR_DUMPHEAP_INVHEAP);

	hd = &heapInfo->heapArray[heap];
	if (hd->size < 0) {
		OS_Printf("--------Inactive\n");
		return;
	}

	SDK_ASSERTMSG(0 <= OS_CheckHeap(id, heap), OS_ERR_DUMPHEAP_BROKENHEAP);

#ifdef  SDK_DEBUG
	OS_Printf("padding %d/(%f%%) header %d/(%f%%) payload %d/(%f%%)\n",
	          hd->paddingBytes, 100.0 * hd->paddingBytes / hd->size,
	          hd->headerBytes, 100.0 * hd->headerBytes / hd->size,
	          hd->payloadBytes, 100.0 * hd->payloadBytes / hd->size);
#endif

	OS_Printf("addr\tsize\tend\tprev\tnext\n");
	OS_Printf("--------Allocated\n");
	SDK_ASSERTMSG(hd->allocated == NULL || hd->allocated->prev == NULL, OS_ERR_DUMPHEAP_BROKENHEAP);
	for (cell = hd->allocated; cell; cell = cell->next) {
		OS_Printf("%x\t%d\t%x\t%x\t%x\n",
		          cell, cell->size, (char *)cell + cell->size, cell->prev, cell->next);
	}

	OS_Printf("--------Free\n");
	for (cell = hd->free; cell; cell = cell->next) {
		OS_Printf("%x\t%d\t%x\t%x\t%x\n",
		          cell, cell->size, (char *)cell + cell->size, cell->prev, cell->next);
	}

	(void)OS_RestoreInterrupts(enabled);
#else

#pragma unused( id, heap )

#endif
}

void OS_VisitAllocated (OSArenaId id, OSAllocVisitor visitor)
{
	OSHeapInfo *heapInfo;
	u32 heap;
	Cell *cell;

	OSIntrMode enabled = OS_DisableInterrupts();

	SDK_ASSERTMSG(id < OS_ARENA_MAX, OS_ERR_VISITALLOCATED_INVID);
	SDK_ASSERTMSG(OSiHeapInfo[id], OS_ERR_VISITALLOCATED_NOINFO);
	heapInfo = OSiHeapInfo[id];

	for (heap = 0; heap < heapInfo->numHeaps; heap++) {
		if (heapInfo->heapArray[heap].size >= 0) {
			for (cell = heapInfo->heapArray[heap].allocated; cell; cell = cell->next) {
				visitor((void *)((u8 *)cell + HEADERSIZE), (u32)(cell->size - HEADERSIZE));
			}
		}
	}

	(void)OS_RestoreInterrupts(enabled);
}

u32 OSi_GetTotalAllocSize (OSArenaId id, OSHeapHandle heap, BOOL isHeadInclude)
{
	OSHeapInfo *heapInfo;
	Cell *cell;
	u32 sum = 0;
	OSIntrMode enabled = OS_DisableInterrupts();

	SDK_ASSERT(id < OS_ARENA_MAX);
	heapInfo = OSiHeapInfo[id];
	SDK_ASSERT(heapInfo);
	SDK_ASSERT(heap < heapInfo->numHeaps);

	if (heap < 0) {
		heap = heapInfo->currentHeap;
	}

	if (isHeadInclude) {
		for (cell = heapInfo->heapArray[heap].allocated; cell; cell = cell->next) {
			sum += (u32)(cell->size);
		}
	} else  {
		for (cell = heapInfo->heapArray[heap].allocated; cell; cell = cell->next) {
			sum += (u32)(cell->size - HEADERSIZE);
		}
	}

	(void)OS_RestoreInterrupts(enabled);

	return sum;
}

u32 OS_GetTotalFreeSize (OSArenaId id, OSHeapHandle heap)
{
	OSHeapInfo *heapInfo;
	Cell *cell;
	u32 sum = 0;
	OSIntrMode enabled = OS_DisableInterrupts();

	SDK_ASSERT(id < OS_ARENA_MAX);
	heapInfo = OSiHeapInfo[id];
	SDK_ASSERT(heapInfo);
	SDK_ASSERT(heap < heapInfo->numHeaps);

	if (heap < 0) {
		heap = heapInfo->currentHeap;
	}

	for (cell = heapInfo->heapArray[heap].free; cell; cell = cell->next) {
		sum += (u32)(cell->size - HEADERSIZE);
	}

	(void)OS_RestoreInterrupts(enabled);

	return sum;
}

u32 OS_GetMaxFreeSize (OSArenaId id, OSHeapHandle heap)
{
	OSHeapInfo *heapInfo;
	Cell *cell;
	u32 candidate = 0;
	OSIntrMode enabled = OS_DisableInterrupts();

	SDK_ASSERT(id < OS_ARENA_MAX);
	heapInfo = OSiHeapInfo[id];
	SDK_ASSERT(heapInfo);
	SDK_ASSERT(heap < heapInfo->numHeaps);

	if (heap < 0) {
		heap = heapInfo->currentHeap;
	}

	for (cell = heapInfo->heapArray[heap].free; cell; cell = cell->next) {
		u32 size = (u32)(cell->size - HEADERSIZE);
		if (size > candidate) {
			candidate = size;
		}
	}

	(void)OS_RestoreInterrupts(enabled);

	return candidate;
}

void OS_ClearHeap (OSArenaId id, OSHeapHandle heap, void *start, void *end)
{
	OSHeapInfo *heapInfo;
	HeapDesc *hd;
	Cell *cell;

	OSIntrMode enabled = OS_DisableInterrupts();

	SDK_ASSERTMSG(id < OS_ARENA_MAX, "invalid id");

	heapInfo = OSiHeapInfo[id];

	SDK_ASSERTMSG(heapInfo && heapInfo->heapArray, "heap not initialized");
	SDK_ASSERTMSG(start < end, "invalid range");
	start = (void *)ROUND(start, ALIGNMENT);
	end = (void *)TRUNC(end, ALIGNMENT);
	SDK_ASSERTMSG(start < end, "invalid range");
	SDK_ASSERTMSG(RangeSubset(start, end, heapInfo->arenaStart, heapInfo->arenaEnd),
	              "invalid range");
	SDK_ASSERTMSG(MINOBJSIZE <= (char *)end - (char *)start, "too small range");

	if (heap < 0) {
		heap = heapInfo->currentHeap;
	}

	hd = &heapInfo->heapArray[heap];
	hd->size = (char *)end - (char *)start;

	cell = (Cell *) start;
	cell->prev = NULL;
	cell->next = NULL;
	cell->size = hd->size;
#ifdef  SDK_DEBUG
	cell->hd = NULL;
#endif

	hd->free = cell;
	hd->allocated = 0;
#ifdef  SDK_DEBUG
	hd->paddingBytes = hd->headerBytes = hd->payloadBytes = 0;
#endif

	(void)OS_RestoreInterrupts(enabled);
}