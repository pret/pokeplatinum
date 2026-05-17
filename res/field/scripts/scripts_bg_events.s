#include "macros/scrcmd.inc"
#include "res/text/bank/bg_events.h"


    ScriptEntry BgEvents_SmallBookshelf1
    ScriptEntry BgEvents_SmallBookshelf2
    ScriptEntry BgEvents_Bookshelf1
    ScriptEntry BgEvents_Bookshelf2
    ScriptEntry BgEvents_TrashCan
    ScriptEntry BgEvents_MartShelf1
    ScriptEntry BgEvents_MartShelf2
    ScriptEntry BgEvents_MartShelf3
    ScriptEntry BgEvents_TownMap
    ScriptEntryEnd

BgEvents_SmallBookshelf1:
    EventMessage BgEvents_Text_SmallBookshelf1
    End

BgEvents_SmallBookshelf2:
    EventMessage BgEvents_Text_SmallBookshelf2
    End

BgEvents_Bookshelf1:
    EventMessage BgEvents_Text_Bookshelf1
    End

BgEvents_Bookshelf2:
    EventMessage BgEvents_Text_Bookshelf2
    End

BgEvents_TrashCan:
    EventMessage BgEvents_Text_TrashCan
    End

BgEvents_MartShelf1:
    EventMessage BgEvents_Text_MartShelf1
    End

BgEvents_MartShelf2:
    EventMessage BgEvents_Text_MartShelf2
    End

BgEvents_MartShelf3:
    EventMessage BgEvents_Text_MartShelf3
    End

BgEvents_TownMap:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FadeScreenOut
    WaitFadeScreen
    OpenRegionMap
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End
