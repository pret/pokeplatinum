#ifndef POKEPLATINUM_CELL_TRANSFER_H
#define POKEPLATINUM_CELL_TRANSFER_H

#include <nnsys.h>

NNSG2dCellTransferState *CellTransfer_New(int capacity, enum HeapID heapID);
void CellTransfer_Update(void);
void CellTransfer_Free(NNSG2dCellTransferState *transferStates);

#endif // POKEPLATINUM_CELL_TRANSFER_H
