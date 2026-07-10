#include <nitro.h>
#include <simulator/sim.h>
#include "simulator/gui.h"
#include <stdbool.h>

#include "savedata.h"
#include "bag.h"
#include "item.h"
#include "charcode_convert.h"
#include "generated/items.h"

#include "sim_gui_prj.h"

static ImVec2 s_btnSize = {100, 20};

static int s_itemNum = 1;
static int s_itemQty = 1;
static const char * s_itemNames[MAX_ITEMS] = {0};

#define ITEM_NAME_SIZE 32

void GUI_CreateItem_Init() {
    for(int i=0; i < MAX_ITEMS; i++) {
        String *itemStr = String_Init(ITEM_NAME_SIZE, HEAP_ID_SYSTEM);
        Item_LoadName(itemStr, i, HEAP_ID_SYSTEM);

        if(s_itemNames[i] == NULL) {
            char * itemNameBuf = malloc(sizeof(char) * itemStr->size + 1);
            CharCode_ToAsciiString(itemStr->data, itemNameBuf, itemStr->size);
            itemNameBuf[itemStr->size] = 0;
            s_itemNames[i] = itemNameBuf;
        }
        String_Free(itemStr);
    }
}

void GUI_CreateItem_Main(bool * p_open) {
    igBegin("Create Item", p_open, 0);
    igCombo_Str_arr("Item", &s_itemNum, s_itemNames, MAX_ITEMS, 10);

    // Qty
    igInputInt("Qty", &s_itemQty, 1, 1, 0);
    if(s_itemQty < 1) {
        s_itemQty = 1;
    } else if (s_itemQty > 999) {
        s_itemQty = 999;
    }


    if(igButton("Create Item", s_btnSize)) {
        SaveData * mySaveData = SaveData_Ptr();
        Bag_TryAddItem(SaveData_GetBag(mySaveData), s_itemNum, s_itemQty, HEAP_ID_SYSTEM);
    }
    igEnd();
}
