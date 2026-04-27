#include "macros/scrcmd.inc"
#include "res/text/bank/villa.h"
#include "res/field/events/events_villa.h"


    ScriptEntry Villa_OnTransition
    ScriptEntry Villa_Rival
    ScriptEntry Villa_Counterpart
    ScriptEntry Villa_ProfRowan
    ScriptEntry Villa_Mom
    ScriptEntry Villa_Roark
    ScriptEntry Villa_Gardenia
    ScriptEntry Villa_Fantina
    ScriptEntry Villa_Maylene
    ScriptEntry Villa_CrasherWake
    ScriptEntry Villa_Byron
    ScriptEntry Villa_Candice
    ScriptEntry Villa_Volkner
    ScriptEntry Villa_Cynthia
    ScriptEntry Villa_Flint
    ScriptEntry Villa_MayleneAndCandice
    ScriptEntry Villa_TriggerFantina
    ScriptEntry Villa_TriggerCrasherWake
    ScriptEntry Villa_TriggerCandice
    ScriptEntry Villa_TriggerCynthia
    ScriptEntry Villa_Furniture_Table
    ScriptEntry Villa_Furniture_BigSofa
    ScriptEntry Villa_Furniture_SmallSofa
    ScriptEntry Villa_Furniture_Bed
    ScriptEntry Villa_Furniture_NightTable
    ScriptEntry Villa_Furniture_TVDummy
    ScriptEntry Villa_Furniture_AudioSystem
    ScriptEntry Villa_Furniture_Bookshelf
    ScriptEntry Villa_Furniture_Rack
    ScriptEntry Villa_Furniture_Houseplant
    ScriptEntry Villa_Furniture_PCDesk
    ScriptEntry Villa_Furniture_MusicBox
    ScriptEntry Villa_Furniture_PokemonBust
    ScriptEntry Villa_Furniture_PokemonBustSilver
    ScriptEntry Villa_Furniture_Piano
    ScriptEntry Villa_Furniture_GuestSet
    ScriptEntry Villa_Furniture_WallClock
    ScriptEntry Villa_Furniture_Masterpiece
    ScriptEntry Villa_Furniture_TeaSet
    ScriptEntry Villa_Furniture_Chandelier
    ScriptEntry Villa_OnFrameFirstEntry
    ScriptEntry Villa_SchoolKidM
    ScriptEntry Villa_TriggerDontGoYet
    ScriptEntry Villa_OrderForm
    ScriptEntryEnd

Villa_OnTransition:
    InitPersistedMapFeaturesForVilla
    GetPlayerGender VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, GENDER_MALE, Villa_SetCounterpartGraphicsDawn
    CallIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, Villa_SetCounterpartGraphicsLucas
    GoToIfSet FLAG_VILLA_VISITOR_OUTSIDE, Villa_OnTransitionEnd
    SetFlag FLAG_HIDE_VILLA_RIVAL
    SetFlag FLAG_HIDE_VILLA_COUNTERPART
    SetFlag FLAG_HIDE_VILLA_PROF_ROWAN
    SetFlag FLAG_HIDE_VILLA_MOM
    SetFlag FLAG_HIDE_VILLA_ROARK
    SetFlag FLAG_HIDE_VILLA_GARDENIA
    SetFlag FLAG_HIDE_VILLA_FANTINA
    SetFlag FLAG_HIDE_VILLA_MAYLENE
    SetFlag FLAG_HIDE_VILLA_CRASHER_WAKE
    SetFlag FLAG_HIDE_VILLA_BYRON
    SetFlag FLAG_HIDE_VILLA_CANDICE
    SetFlag FLAG_HIDE_VILLA_VOLKNER
    SetFlag FLAG_HIDE_VILLA_CYNTHIA
    SetFlag FLAG_HIDE_VILLA_FLINT
    GoToIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_NONE, Villa_DontShowVisitor
    SetVar VAR_MAP_LOCAL_F, VAR_RESORT_VILLA_VISITOR
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_RIVAL, Villa_ShowRival
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_COUNTERPART, Villa_ShowCounterpart
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_PROF_ROWAN, Villa_TryShowProfRowan
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_MOM, Villa_ShowMom
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_ROARK, Villa_TryShowRoark
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_GARDENIA, Villa_TryShowGardenia
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_FANTINA, Villa_OnTransitionFantinaReturn
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_MAYLENE, Villa_TryShowMaylene
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_CRASHER_WAKE, Villa_OnTransitionWakeReturn
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_BYRON, Villa_TryShowByron
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_CANDICE, Villa_OnTransitionCandiceReturn
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_VOLKNER, Villa_ShowVolkner
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_CYNTHIA, Villa_OnTransitionCynthiaReturn
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_FLINT_VOLKNER, Villa_ShowFlintAndVolkner
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_MAYLENE_CANDICE, Villa_ShowMayleneAndCandice
    End

Villa_OnTransitionEnd:
    End

Villa_SetCounterpartGraphicsDawn:
    SetVar VAR_OBJ_GFX_ID_1, OBJ_EVENT_GFX_PLAYER_F
    Return

Villa_SetCounterpartGraphicsLucas:
    SetVar VAR_OBJ_GFX_ID_1, OBJ_EVENT_GFX_PLAYER_M
    Return

Villa_DontShowVisitor:
    End

Villa_ShowRival:
    ClearFlag FLAG_HIDE_VILLA_RIVAL
    Return

Villa_ShowCounterpart:
    ClearFlag FLAG_HIDE_VILLA_COUNTERPART
    Return

Villa_TryShowProfRowan:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, Villa_TryShowVisitorReturn
    ClearFlag FLAG_HIDE_VILLA_PROF_ROWAN
    Return

Villa_ShowMom:
    ClearFlag FLAG_HIDE_VILLA_MOM
    Return

Villa_TryShowRoark:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, Villa_TryShowVisitorReturn
    ClearFlag FLAG_HIDE_VILLA_ROARK
    Return

Villa_TryShowGardenia:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, Villa_TryShowVisitorReturn
    ClearFlag FLAG_HIDE_VILLA_GARDENIA
    Return

Villa_OnTransitionFantinaReturn:
    Return

Villa_TryShowMaylene:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, Villa_TryShowVisitorReturn
    ClearFlag FLAG_HIDE_VILLA_MAYLENE
    Return

Villa_OnTransitionWakeReturn:
    Return

Villa_TryShowByron:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, Villa_TryShowVisitorReturn
    ClearFlag FLAG_HIDE_VILLA_BYRON
    Return

Villa_OnTransitionCandiceReturn:
    Return

Villa_ShowVolkner:
    ClearFlag FLAG_HIDE_VILLA_VOLKNER
    Return

Villa_OnTransitionCynthiaReturn:
    Return

Villa_ShowFlintAndVolkner:
    ClearFlag FLAG_HIDE_VILLA_FLINT
    ClearFlag FLAG_HIDE_VILLA_VOLKNER
    Return

Villa_ShowMayleneAndCandice:
    SetObjectEventPos LOCALID_MAYLENE, 6, 8
    SetObjectEventPos LOCALID_CANDICE, 7, 8
    ClearFlag FLAG_HIDE_VILLA_MAYLENE
    ClearFlag FLAG_HIDE_VILLA_CANDICE
    Return

Villa_TryShowVisitorReturn:
    Return

Villa_Rival:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferRivalName 0
    BufferPlayerName 1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, Villa_RivalMessage0
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, Villa_RivalMessage1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, Villa_RivalMessage2
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, Villa_RivalMessage3
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, Villa_RivalMessage4
    GoTo Villa_VisitorEnd
    End

Villa_RivalMessage0:
    Message Villa_Text_RivalMessage0
    Return

Villa_RivalMessage1:
    Message Villa_Text_RivalMessage1
    Return

Villa_RivalMessage2:
    Message Villa_Text_RivalMessage2
    Return

Villa_RivalMessage3:
    Message Villa_Text_RivalMessage3
    Return

Villa_RivalMessage4:
    Message Villa_Text_RivalMessage4
    Return

Villa_Counterpart:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, Villa_CounterpartMessage0
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, Villa_CounterpartMessage1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, Villa_CounterpartMessage2
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, Villa_CounterpartMessage3
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, Villa_CounterpartMessage4
    GoTo Villa_VisitorEnd
    End

Villa_CounterpartMessage0:
    GetPlayerGender VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, GENDER_MALE, Villa_DawnMessage0
    CallIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, Villa_LucasMessage0
    Return

Villa_CounterpartMessage1:
    GetPlayerGender VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, GENDER_MALE, Villa_DawnMessage1
    CallIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, Villa_LucasMessage1
    Return

Villa_CounterpartMessage2:
    GetPlayerGender VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, GENDER_MALE, Villa_DawnMessage2
    CallIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, Villa_LucasMessage2
    Return

Villa_CounterpartMessage3:
    GetPlayerGender VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, GENDER_MALE, Villa_DawnMessage3
    CallIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, Villa_LucasMessage3
    Return

Villa_CounterpartMessage4:
    GetPlayerGender VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, GENDER_MALE, Villa_DawnMessage4
    CallIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, Villa_LucasMessage4
    Return

Villa_DawnMessage0:
    Message Villa_Text_DawnMessage0
    Return

Villa_LucasMessage0:
    Message Villa_Text_LucasMessage0
    Return

Villa_DawnMessage1:
    Message Villa_Text_DawnMessage1
    Return

Villa_LucasMessage1:
    Message Villa_Text_LucasMessage1
    Return

Villa_DawnMessage2:
    Message Villa_Text_DawnMessage2
    Return

Villa_LucasMessage2:
    Message Villa_Text_LucasMessage2
    Return

Villa_DawnMessage3:
    Message Villa_Text_DawnMessage3
    Return

Villa_LucasMessage3:
    Message Villa_Text_LucasMessage3
    Return

Villa_DawnMessage4:
    Message Villa_Text_DawnMessage4
    Return

Villa_LucasMessage4:
    Message Villa_Text_LucasMessage4
    Return

Villa_ProfRowan:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, Villa_RowanMessage0
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, Villa_RowanMessage1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, Villa_RowanMessage2
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, Villa_RowanMessage3
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, Villa_RowanMessage4
    GoTo Villa_VisitorEnd
    End

Villa_RowanMessage0:
    Message Villa_Text_RowanMessage0
    Return

Villa_RowanMessage1:
    Message Villa_Text_RowanMessage1
    Return

Villa_RowanMessage2:
    Message Villa_Text_RowanMessage2
    Return

Villa_RowanMessage3:
    Message Villa_Text_RowanMessage3
    Return

Villa_RowanMessage4:
    Message Villa_Text_RowanMessage4
    Return

Villa_Mom:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferRivalName 0
    BufferPlayerName 1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, Villa_MomMessage0
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, Villa_MomMessage1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, Villa_MomMessage2
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, Villa_MomMessage3
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, Villa_MomMessage4
    GoTo Villa_VisitorEnd
    End

Villa_MomMessage0:
    Message Villa_Text_MomMessage0
    Return

Villa_MomMessage1:
    Message Villa_Text_MomMessage1
    Return

Villa_MomMessage2:
    Message Villa_Text_MomMessage2
    Return

Villa_MomMessage3:
    Message Villa_Text_MomMessage3
    Return

Villa_MomMessage4:
    Message Villa_Text_MomMessage4
    Return

Villa_Roark:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, Villa_RoarkMessage0
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, Villa_RoarkMessage1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, Villa_RoarkMessage2
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, Villa_RoarkMessage3
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, Villa_RoarkMessage4
    GoTo Villa_VisitorEnd
    End

Villa_RoarkMessage0:
    Message Villa_Text_RoarkMessage0
    Return

Villa_RoarkMessage1:
    Message Villa_Text_RoarkMessage1
    Return

Villa_RoarkMessage2:
    Message Villa_Text_RoarkMessage2
    Return

Villa_RoarkMessage3:
    Message Villa_Text_RoarkMessage3
    Return

Villa_RoarkMessage4:
    Message Villa_Text_RoarkMessage4
    Return

Villa_Gardenia:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, Villa_GardeniaMessage0
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, Villa_GardeniaMessage1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, Villa_GardeniaMessage2
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, Villa_GardeniaMessage3
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, Villa_GardeniaMessage4
    GoTo Villa_VisitorEnd
    End

Villa_GardeniaMessage0:
    Message Villa_Text_GardeniaMessage0
    Return

Villa_GardeniaMessage1:
    Message Villa_Text_GardeniaMessage1
    Return

Villa_GardeniaMessage2:
    Message Villa_Text_GardeniaMessage2
    Return

Villa_GardeniaMessage3:
    Message Villa_Text_GardeniaMessage3
    Return

Villa_GardeniaMessage4:
    Message Villa_Text_GardeniaMessage4
    Return

Villa_Fantina:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, Villa_FantinaMessage0
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, Villa_FantinaMessage1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, Villa_FantinaMessage2
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, Villa_FantinaMessage3
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, Villa_FantinaMessage4
    GoTo Villa_VisitorEnd
    End

Villa_FantinaMessage0:
    Message Villa_Text_FantinaMessage0
    Return

Villa_FantinaMessage1:
    Message Villa_Text_FantinaMessage1
    Return

Villa_FantinaMessage2:
    Message Villa_Text_FantinaMessage2
    Return

Villa_FantinaMessage3:
    Message Villa_Text_FantinaMessage3
    Return

Villa_FantinaMessage4:
    Message Villa_Text_FantinaMessage4
    Return

Villa_Maylene:
    GoToIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_MAYLENE_CANDICE, Villa_MayleneAndCandice
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, Villa_MayleneMessage0
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, Villa_MayleneMessage1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, Villa_MayleneMessage2
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, Villa_MayleneMessage3
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, Villa_MayleneMessage4
    GoTo Villa_VisitorEnd
    End

Villa_MayleneMessage0:
    Message Villa_Text_MayleneMessage0
    Return

Villa_MayleneMessage1:
    Message Villa_Text_MayleneMessage1
    Return

Villa_MayleneMessage2:
    Message Villa_Text_MayleneMessage2
    Return

Villa_MayleneMessage3:
    Message Villa_Text_MayleneMessage3
    Return

Villa_MayleneMessage4:
    Message Villa_Text_MayleneMessage4
    Return

Villa_CrasherWake:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, Villa_WakeMessage0
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, Villa_WakeMessage1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, Villa_WakeMessage2
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, Villa_WakeMessage3
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, Villa_WakeMessage4
    GoTo Villa_VisitorEnd
    End

Villa_WakeMessage0:
    BufferRivalName 0
    Message Villa_Text_WakeMessage0
    Return

Villa_WakeMessage1:
    Message Villa_Text_WakeMessage1
    Return

Villa_WakeMessage2:
    BufferRivalName 0
    Message Villa_Text_WakeMessage2
    Return

Villa_WakeMessage3:
    Message Villa_Text_WakeMessage3
    Return

Villa_WakeMessage4:
    Message Villa_Text_WakeMessage4
    Return

Villa_Byron:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, Villa_ByronMessage0
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, Villa_ByronMessage1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, Villa_ByronMessage2
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, Villa_ByronMessage3
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, Villa_ByronMessage4
    GoTo Villa_VisitorEnd
    End

Villa_ByronMessage0:
    Message Villa_Text_ByronMessage0
    Return

Villa_ByronMessage1:
    Message Villa_Text_ByronMessage1
    Return

Villa_ByronMessage2:
    Message Villa_Text_ByronMessage2
    Return

Villa_ByronMessage3:
    Message Villa_Text_ByronMessage3
    Return

Villa_ByronMessage4:
    Message Villa_Text_ByronMessage4
    Return

Villa_Candice:
    GoToIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_MAYLENE_CANDICE, Villa_MayleneAndCandice
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, Villa_CandiceMessage0
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, Villa_CandiceMessage1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, Villa_CandiceMessage2
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, Villa_CandiceMessage3
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, Villa_CandiceMessage4
    GoTo Villa_VisitorEnd
    End

Villa_CandiceMessage0:
    Message Villa_Text_CandiceMessage0
    Return

Villa_CandiceMessage1:
    Message Villa_Text_CandiceMessage1
    Return

Villa_CandiceMessage2:
    Message Villa_Text_CandiceMessage2
    Return

Villa_CandiceMessage3:
    Message Villa_Text_CandiceMessage3
    Return

Villa_CandiceMessage4:
    Message Villa_Text_CandiceMessage4
    Return

Villa_Volkner:
    GoToIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_FLINT_VOLKNER, Villa_FlintAndVolkner
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, Villa_VolknerMessage0
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, Villa_VolknerMessage1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, Villa_VolknerMessage2
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, Villa_VolknerMessage3
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, Villa_VolknerMessage4
    GoTo Villa_VisitorEnd
    End

Villa_VolknerMessage0:
    Message Villa_Text_VolknerMessage0
    Return

Villa_VolknerMessage1:
    Message Villa_Text_VolknerMessage1
    Return

Villa_VolknerMessage2:
    Message Villa_Text_VolknerMessage2
    Return

Villa_VolknerMessage3:
    Message Villa_Text_VolknerMessage3
    Return

Villa_VolknerMessage4:
    Message Villa_Text_VolknerMessage4
    Return

Villa_FlintAndVolkner:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, Villa_FlintAndVolknerMessage0
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, Villa_FlintAndVolknerMessage1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, Villa_FlintAndVolknerMessage2
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, Villa_FlintAndVolknerMessage3
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, Villa_FlintAndVolknerMessage4
    GoTo Villa_VisitorEnd
    End

Villa_FlintAndVolknerMessage0:
    FacePlayer
    Message Villa_Text_FlintAndVolknerMessage0
    Return

Villa_FlintAndVolknerMessage1:
    FacePlayer
    Message Villa_Text_FlintAndVolknerMessage1
    Return

Villa_FlintAndVolknerMessage2:
    ApplyMovement LOCALID_VOLKNER, Villa_Movement_VolknerFaceFlint
    ApplyMovement LOCALID_FLINT, Villa_Movement_FlintFaceVolkner
    WaitMovement
    Message Villa_Text_FlintAndVolknerMessage2
    Return

Villa_FlintAndVolknerMessage3:
    ApplyMovement LOCALID_VOLKNER, Villa_Movement_VolknerFaceFlint
    ApplyMovement LOCALID_FLINT, Villa_Movement_FlintFaceVolkner
    WaitMovement
    Message Villa_Text_FlintAndVolknerMessage3
    Return

Villa_FlintAndVolknerMessage4:
    ApplyMovement LOCALID_VOLKNER, Villa_Movement_VolknerFaceFlint
    ApplyMovement LOCALID_FLINT, Villa_Movement_FlintFaceVolkner
    WaitMovement
    Message Villa_Text_FlintAndVolknerMessage4
    Return

    .balign 4, 0
Villa_Movement_VolknerFaceFlint:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Villa_Movement_FlintFaceVolkner:
    WalkOnSpotNormalWest
    EndMovement

Villa_Cynthia:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, Villa_CynthiaMessage0
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, Villa_CynthiaMessage1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, Villa_CynthiaMessage2
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, Villa_CynthiaMessage3
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, Villa_CynthiaMessage4
    GoTo Villa_VisitorEnd
    End

Villa_CynthiaMessage0:
    Message Villa_Text_CynthiaMessage0
    Return

Villa_CynthiaMessage1:
    Message Villa_Text_CynthiaMessage1
    Return

Villa_CynthiaMessage2:
    Message Villa_Text_CynthiaMessage2
    Return

Villa_CynthiaMessage3:
    Message Villa_Text_CynthiaMessage3
    Return

Villa_CynthiaMessage4:
    Message Villa_Text_CynthiaMessage4
    Return

Villa_Flint:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, Villa_FlintMessage0
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, Villa_FlintMessage1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, Villa_FlintMessage2
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, Villa_FlintMessage3
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, Villa_FlintMessage4
    GoTo Villa_VisitorEnd
    End

Villa_FlintMessage0:
    FacePlayer
    Message Villa_Text_FlintMessage0
    Return

Villa_FlintMessage1:
    FacePlayer
    Message Villa_Text_FlintMessage1
    Return

Villa_FlintMessage2:
    ApplyMovement LOCALID_VOLKNER, Villa_Movement_VolknerFaceFlint
    ApplyMovement LOCALID_FLINT, Villa_Movement_FlintFaceVolkner
    WaitMovement
    Message Villa_Text_FlintAndVolknerMessage2
    Return

Villa_FlintMessage3:
    ApplyMovement LOCALID_VOLKNER, Villa_Movement_VolknerFaceFlint
    ApplyMovement LOCALID_FLINT, Villa_Movement_FlintFaceVolkner
    WaitMovement
    Message Villa_Text_FlintAndVolknerMessage3
    Return

Villa_FlintMessage4:
    ApplyMovement LOCALID_VOLKNER, Villa_Movement_VolknerFaceFlint
    ApplyMovement LOCALID_FLINT, Villa_Movement_FlintFaceVolkner
    WaitMovement
    Message Villa_Text_FlintAndVolknerMessage4
    Return

Villa_MayleneAndCandice:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    BufferPlayerName 1
    ApplyMovement LOCALID_CANDICE, Villa_Movement_CandiceFaceMaylene
    ApplyMovement LOCALID_MAYLENE, Villa_Movement_MayleneFaceCandice
    WaitMovement
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 0, Villa_MayleneAndCandiceMessage0
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 1, Villa_MayleneAndCandiceMessage1
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 2, Villa_MayleneAndCandiceMessage2
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 3, Villa_MayleneAndCandiceMessage3
    CallIfEq VAR_RESORT_VILLA_VISITOR_MESSAGE_NUM, 4, Villa_MayleneAndCandiceMessage4
    GoTo Villa_VisitorEnd
    End

Villa_MayleneAndCandiceMessage0:
    Message Villa_Text_MayleneAndCandiceMessage0
    Return

Villa_MayleneAndCandiceMessage1:
    Message Villa_Text_MayleneAndCandiceMessage1
    Return

Villa_MayleneAndCandiceMessage2:
    Message Villa_Text_MayleneAndCandiceMessage2
    Return

Villa_MayleneAndCandiceMessage3:
    Message Villa_Text_MayleneAndCandiceMessage3
    Return

Villa_MayleneAndCandiceMessage4:
    GoToIfUnset FLAG_VILLA_FURNITURE_TEA_SET, Villa_MayleneAndCandiceMessage0
    Message Villa_Text_MayleneAndCandiceMessage4
    Return

    .balign 4, 0
Villa_Movement_MayleneFaceCandice:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Villa_Movement_CandiceFaceMaylene:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

Villa_VisitorEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

Villa_TriggerFantina:
    LockAll
    PlaySE SEQ_SE_DP_DOOR_OPEN
    ClearFlag FLAG_HIDE_VILLA_FANTINA
    SetObjectEventPos LOCALID_FANTINA, 11, 11
    SetObjectEventMovementType LOCALID_FANTINA, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir LOCALID_FANTINA, DIR_NORTH
    AddObject LOCALID_FANTINA
    WaitSE SEQ_SE_DP_DOOR_OPEN
    ApplyMovement LOCALID_PLAYER, Villa_Movement_PlayerWatchFantinaEnter
    ApplyMovement LOCALID_FANTINA, Villa_Movement_FantinaEnter
    WaitMovement
    SetFlag FLAG_VILLA_VISITOR_OUTSIDE
    SetVar VAR_MAP_LOCAL_F, 0
    ReleaseAll
    End

    .balign 4, 0
Villa_Movement_PlayerWatchFantinaEnter:
    WalkOnSpotNormalSouth
    Delay8 5
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
Villa_Movement_FantinaEnter:
    WalkNormalWest 2
    WalkNormalNorth 5
    WalkNormalWest 3
    EndMovement

Villa_TriggerCrasherWake:
    LockAll
    PlaySE SEQ_SE_DP_DOOR_OPEN
    ClearFlag FLAG_HIDE_VILLA_CRASHER_WAKE
    SetObjectEventPos LOCALID_CRASHER_WAKE, 11, 11
    SetObjectEventMovementType LOCALID_CRASHER_WAKE, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir LOCALID_CRASHER_WAKE, DIR_NORTH
    AddObject LOCALID_CRASHER_WAKE
    WaitSE SEQ_SE_DP_DOOR_OPEN
    ApplyMovement LOCALID_PLAYER, Villa_Movement_PlayerWatchWakeEnter
    ApplyMovement LOCALID_CRASHER_WAKE, Villa_Movement_WakeEnter
    WaitMovement
    SetFlag FLAG_VILLA_VISITOR_OUTSIDE
    SetVar VAR_MAP_LOCAL_F, 0
    ReleaseAll
    End

    .balign 4, 0
Villa_Movement_WakeEnter:
    WalkNormalEast 8
    EndMovement

    .balign 4, 0
Villa_Movement_PlayerWatchWakeEnter:
    WalkOnSpotNormalSouth
    Delay8 3
    WalkOnSpotNormalEast
    EndMovement

Villa_TriggerCandice:
    LockAll
    PlaySE SEQ_SE_DP_DOOR_OPEN
    ClearFlag FLAG_HIDE_VILLA_CANDICE
    SetObjectEventPos LOCALID_CANDICE, 11, 11
    SetObjectEventMovementType LOCALID_CANDICE, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir LOCALID_CANDICE, DIR_NORTH
    AddObject LOCALID_CANDICE
    WaitSE SEQ_SE_DP_DOOR_OPEN
    ApplyMovement LOCALID_PLAYER, Villa_Movement_PlayerWatchCandiceEnter
    ApplyMovement LOCALID_CANDICE, Villa_Movement_CandiceEnter
    WaitMovement
    SetFlag FLAG_VILLA_VISITOR_OUTSIDE
    SetVar VAR_MAP_LOCAL_F, 0
    ReleaseAll
    End

    .balign 4, 0
Villa_Movement_CandiceEnter:
    WalkNormalWest 2
    WalkNormalNorth 3
    WalkNormalWest 2
    EndMovement

    .balign 4, 0
Villa_Movement_PlayerWatchCandiceEnter:
    WalkOnSpotNormalSouth
    Delay8 4
    WalkOnSpotNormalWest
    EndMovement

Villa_TriggerCynthia:
    LockAll
    PlaySE SEQ_SE_DP_DOOR_OPEN
    ClearFlag FLAG_HIDE_VILLA_CYNTHIA
    SetObjectEventPos LOCALID_CYNTHIA, 11, 11
    SetObjectEventMovementType LOCALID_CYNTHIA, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir LOCALID_CYNTHIA, DIR_NORTH
    AddObject LOCALID_CYNTHIA
    WaitSE SEQ_SE_DP_DOOR_OPEN
    ApplyMovement LOCALID_PLAYER, Villa_Movement_PlayerWatchCynthiaEnter
    ApplyMovement LOCALID_CYNTHIA, Villa_Movement_CynthiaEnter
    WaitMovement
    SetFlag FLAG_VILLA_VISITOR_OUTSIDE
    SetVar VAR_MAP_LOCAL_F, 0
    ReleaseAll
    End

    .balign 4, 0
Villa_Movement_CynthiaEnter:
    WalkNormalWest 8
    WalkNormalNorth 6
    EndMovement

    .balign 4, 0
Villa_Movement_PlayerWatchCynthiaEnter:
    WalkOnSpotNormalSouth
    Delay8 5
    WalkOnSpotNormalWest
    EndMovement

Villa_Furniture_Table:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message Villa_Text_DescriptionTable
    GoTo Villa_Furniture_End
    End

Villa_Furniture_BigSofa:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message Villa_Text_DescriptionBigSofa
    GoTo Villa_Furniture_End
    End

Villa_Furniture_SmallSofa:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message Villa_Text_DescriptionSmallSofa
    GoTo Villa_Furniture_End
    End

Villa_Furniture_Bed:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message Villa_Text_DescriptionBed
    GoTo Villa_Furniture_End
    End

Villa_Furniture_NightTable:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message Villa_Text_DescriptionNightTable
    GoTo Villa_Furniture_End
    End

Villa_Furniture_TVDummy:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message Villa_Text_DescriptionTV
    GoTo Villa_Furniture_End
    End

Villa_Furniture_AudioSystem:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    PlayMusic SEQ_PL_AUDIO
    Message Villa_Text_DescriptionAudioSystem
    GoTo Villa_Furniture_End
    End

Villa_Furniture_Bookshelf:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message Villa_Text_DescriptionBookshelf
    GoTo Villa_Furniture_End
    End

Villa_Furniture_Rack:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_VILLA_FURNITURE_MUSIC_BOX, Villa_StartMusicBox
    Message Villa_Text_DescriptionRack
    GoTo Villa_Furniture_End
    End

Villa_Furniture_Houseplant:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message Villa_Text_DescriptionHouseplant
    GoTo Villa_Furniture_End
    End

Villa_Furniture_PCDesk:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    BufferPlayerName 0
    Message Villa_Text_DescriptionPCDesk
    GoTo Villa_Furniture_End
    End

Villa_Furniture_MusicBox:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GoTo Villa_StartMusicBox
    End

Villa_StartMusicBox:
    Message Villa_Text_DescriptionMusicBox
    GoTo Villa_SetScenePlayBGMMusicBox
    End

Villa_SetScenePlayBGMMusicBox:
    GetCurrentBGM VAR_0x8004
    SetScenePlayBGMMusicBox
    SetVar VAR_0x8007, 0
    WaitTime 1, VAR_RESULT
    GoTo Villa_WaitSceneEndOrABPress
    End

Villa_WaitSceneEndOrABPress:
    AddVar VAR_0x8007, 1
    WaitTime 1, VAR_RESULT
    Dummy1F9 VAR_0x8007
    CheckABPress VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, Villa_RestoreSceneAndBGM
    Dummy1F9 VAR_0x8007
    GoToIfEq VAR_0x8007, 600, Villa_RestoreSceneAndBGM
    GoTo Villa_WaitSceneEndOrABPress
    End

Villa_RestoreSceneAndBGM:
    SetFieldScene VAR_0x8004
    CloseMessage
    ReleaseAll
    End

Villa_Unused:
    Message Villa_Text_DescriptionChandelier
    Return

Villa_Furniture_PokemonBust:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message Villa_Text_DescriptionPokemonBust
    GoTo Villa_Furniture_End
    End

Villa_Furniture_PokemonBustSilver:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message Villa_Text_DescriptionPokemonBustSilver
    GoTo Villa_Furniture_End
    End

Villa_Furniture_Piano:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    PlayMusic SEQ_PL_PIANO
    Message Villa_Text_DescriptionPiano
    GoTo Villa_Furniture_End
    End

Villa_Furniture_GuestSet:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message Villa_Text_DescriptionGuestSet
    GoTo Villa_Furniture_End
    End

Villa_Furniture_WallClock:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message Villa_Text_DescriptionWallClock
    GoTo Villa_Furniture_End
    End

Villa_Furniture_Masterpiece:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message Villa_Text_DescriptionMasterpiece
    GoTo Villa_Furniture_End
    End

Villa_Furniture_TeaSet:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message Villa_Text_DescriptionTeaSet
    GoTo Villa_Furniture_End
    End

Villa_Furniture_Chandelier:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message Villa_Text_DescriptionChandelier
    GoTo Villa_Furniture_End
    End

Villa_Furniture_End:
    WaitButton
    CloseMessage
    ReleaseAll
    End

Villa_OnFrameFirstEntry:
    LockAll
    SetVar VAR_VILLA_STATE, 1
    ShowMoney 21, 1
    Message Villa_Text_OriginalFurnitureIsGone
    InitLocalTextListMenu 1, 1, 0, VAR_0x8002
    AddListMenuEntry Villa_Text_EntryTableFree, 0
    ShowListMenu
    GoToIfNe VAR_0x8002, VILLA_FURNITURE_TABLE, Villa_OrderTable
    Call Villa_BuyFurniture
    CloseMessage
    Call Villa_WarpAndShowDeliveryGuyAndBook
    ReleaseAll
    End

Villa_OrderTable:
    Message Villa_Text_OrderTable
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

Villa_SchoolKidM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ShowMoney 21, 1
    Message Villa_Text_OrderTable
    InitLocalTextListMenu 1, 1, 0, VAR_0x8002
    AddListMenuEntry Villa_Text_EntryTableFree, 0
    ShowListMenu
    GoToIfNe VAR_0x8002, VILLA_FURNITURE_TABLE, Villa_OrderTable2
    Call Villa_BuyFurniture
    CloseMessage
    Call Villa_WarpAndShowDeliveryGuyAndBook
    ReleaseAll
    End

Villa_ShowFurnitureListMenu:
    InitLocalTextListMenu 1, 1, 0, VAR_0x8002
    Call Villa_AddMenuEntryTable
    Call Villa_AddMenuEntryBigSofa
    Call Villa_AddMenuEntrySmallSofa
    Call Villa_AddMenuEntryBed
    Call Villa_AddMenuEntryNightTable
    Call Villa_AddMenuEntryTV
    Call Villa_AddMenuEntryAudioSystem
    Call Villa_AddMenuEntryBookshelf
    Call Villa_AddMenuEntryRack
    Call Villa_AddMenuEntryHouseplant
    Call Villa_AddMenuEntryPCDesk
    Call Villa_TryAddMenuEntryMusicBox
    Call Villa_TryAddMenuEntryPokemonBust
    Call Villa_TryAddMenuEntryPokemonBustSilver
    Call Villa_TryAddMenuEntryPiano
    Call Villa_TryAddMenuEntryGuestSet
    Call Villa_TryAddMenuEntryWallClock
    Call Villa_TryAddMenuEntryMasterpiece
    Call Villa_TryAddMenuEntryTeaSet
    Call Villa_TryAddMenuEntryChandelier
    ShowListMenuSetWidth 18
    Return

Villa_BuyFurniture:
    PlaySE SEQ_SE_DP_REGI
    CallIfEq VAR_0x8002, VILLA_FURNITURE_TABLE, Villa_BuyFurniture_Table
    CallIfEq VAR_0x8002, VILLA_FURNITURE_BIG_SOFA, Villa_BuyFurniture_BigSofa
    CallIfEq VAR_0x8002, VILLA_FURNITURE_SMALL_SOFA, Villa_BuyFurniture_SmallSofa
    CallIfEq VAR_0x8002, VILLA_FURNITURE_BED, Villa_BuyFurniture_Bed
    CallIfEq VAR_0x8002, VILLA_FURNITURE_NIGHT_TABLE, Villa_BuyFurniture_NightTable
    CallIfEq VAR_0x8002, VILLA_FURNITURE_TV, Villa_BuyFurniture_TV
    CallIfEq VAR_0x8002, VILLA_FURNITURE_AUDIO_SYSTEM, Villa_BuyFurniture_AudioSystem
    CallIfEq VAR_0x8002, VILLA_FURNITURE_BOOKSHELF, Villa_BuyFurniture_Bookshelf
    CallIfEq VAR_0x8002, VILLA_FURNITURE_RACK, Villa_BuyFurniture_Rack
    CallIfEq VAR_0x8002, VILLA_FURNITURE_HOUSEPLANT, Villa_BuyFurniture_Houseplant
    CallIfEq VAR_0x8002, VILLA_FURNITURE_PC_DESK, Villa_BuyFurniture_PCDesk
    CallIfEq VAR_0x8002, VILLA_FURNITURE_MUSIC_BOX, Villa_BuyFurniture_MusicBox
    CallIfEq VAR_0x8002, VILLA_FURNITURE_POKEMON_BUST, Villa_BuyFurniture_PokemonBust
    CallIfEq VAR_0x8002, VILLA_FURNITURE_POKEMON_BUST_SILVER, Villa_BuyFurniture_PokemonBustSilver
    CallIfEq VAR_0x8002, VILLA_FURNITURE_PIANO, Villa_BuyFurniture_Piano
    CallIfEq VAR_0x8002, VILLA_FURNITURE_GUEST_SET, Villa_BuyFurniture_GuestSet
    CallIfEq VAR_0x8002, VILLA_FURNITURE_WALL_CLOCK, Villa_BuyFurniture_WallClock
    CallIfEq VAR_0x8002, VILLA_FURNITURE_MASTERPIECE, Villa_BuyFurniture_Masterpiece
    CallIfEq VAR_0x8002, VILLA_FURNITURE_TEA_SET, Villa_BuyFurniture_TeaSet
    CallIfEq VAR_0x8002, VILLA_FURNITURE_CHANDELIER, Villa_BuyFurniture_Chandelier
    UpdateMoneyDisplay
    WaitSE SEQ_SE_DP_REGI
    HideMoney
    SaveTVSegmentHomeAndManor VAR_0x8002
    Return

Villa_WarpAndShowDeliveryGuyAndBook:
    ClearFlag FLAG_HIDE_VILLA_DELIVERY_GUY
    ClearFlag FLAG_HIDE_VILLA_BOOK
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_VILLA, 0, 10, 6, DIR_SOUTH
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_0x8002, VILLA_FURNITURE_TABLE, Villa_DeliverFreeTable
    GoToIfNe VAR_0x8002, VILLA_FURNITURE_TABLE, Villa_DeliveringOrder
    End

Villa_AddTableRival:
    Call Villa_TryRemoveVisitor
    GoToIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_RIVAL, Villa_AddRival
    SetObjectEventPos LOCALID_RIVAL, 11, 11
    SetObjectEventMovementType LOCALID_RIVAL, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir LOCALID_RIVAL, DIR_NORTH
    Return

Villa_AddRival:
    SetObjectEventPos LOCALID_RIVAL, 10, 8
    SetObjectEventMovementType LOCALID_RIVAL, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir LOCALID_RIVAL, DIR_NORTH
    ClearFlag FLAG_HIDE_VILLA_RIVAL
    AddObject LOCALID_RIVAL
    Return

Villa_AddSmallSofaCounterpart:
    Call Villa_TryRemoveVisitor
    GoToIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_COUNTERPART, Villa_AddCounterpart
    SetObjectEventPos LOCALID_COUNTERPART, 11, 11
    SetObjectEventMovementType LOCALID_COUNTERPART, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir LOCALID_COUNTERPART, DIR_NORTH
    Return

Villa_AddCounterpart:
    SetObjectEventPos LOCALID_COUNTERPART, 10, 8
    SetObjectEventMovementType LOCALID_COUNTERPART, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir LOCALID_COUNTERPART, DIR_NORTH
    ClearFlag FLAG_HIDE_VILLA_COUNTERPART
    AddObject LOCALID_COUNTERPART
    Return

Villa_AddBookshelfRowan:
    Call Villa_TryRemoveVisitor
    GoToIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_PROF_ROWAN, Villa_TryAddRowan
    GoTo Villa_SetPositionBookshelfRowan
    End

Villa_SetPositionBookshelfRowan:
    SetObjectEventPos LOCALID_PROF_ROWAN, 11, 11
    SetObjectEventMovementType LOCALID_PROF_ROWAN, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir LOCALID_PROF_ROWAN, DIR_NORTH
    Return

Villa_TryAddRowan:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, Villa_SetPositionBookshelfRowan
    SetObjectEventPos LOCALID_PROF_ROWAN, 10, 8
    SetObjectEventMovementType LOCALID_PROF_ROWAN, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir LOCALID_PROF_ROWAN, DIR_NORTH
    ClearFlag FLAG_HIDE_VILLA_PROF_ROWAN
    AddObject LOCALID_PROF_ROWAN
    Return

Villa_AddHouseplantGardenia:
    Call Villa_TryRemoveVisitor
    GoToIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_GARDENIA, Villa_TryAddGardenia
    GoTo Villa_SetPositionHouseplantGardenia
    End

Villa_SetPositionHouseplantGardenia:
    SetObjectEventPos LOCALID_GARDENIA, 11, 11
    SetObjectEventMovementType LOCALID_GARDENIA, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir LOCALID_GARDENIA, DIR_NORTH
    Return

Villa_TryAddGardenia:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, Villa_SetPositionHouseplantGardenia
    SetObjectEventPos LOCALID_GARDENIA, 10, 8
    SetObjectEventMovementType LOCALID_GARDENIA, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir LOCALID_GARDENIA, DIR_NORTH
    ClearFlag FLAG_HIDE_VILLA_GARDENIA
    AddObject LOCALID_GARDENIA
    Return

Villa_AddPianoCynthia:
    Call Villa_TryRemoveVisitor
    GoToIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_CYNTHIA, Villa_AddCynthia
    SetObjectEventPos LOCALID_CYNTHIA, 11, 11
    SetObjectEventMovementType LOCALID_CYNTHIA, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir LOCALID_CYNTHIA, DIR_NORTH
    Return

Villa_AddCynthia:
    SetObjectEventPos LOCALID_CYNTHIA, 10, 8
    SetObjectEventMovementType LOCALID_CYNTHIA, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir LOCALID_CYNTHIA, DIR_NORTH
    ClearFlag FLAG_HIDE_VILLA_CYNTHIA
    AddObject LOCALID_CYNTHIA
    Return

Villa_EnterTableRival:
    CallIfNe VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_RIVAL, Villa_RivalEnter
    SetFlag FLAG_VILLA_VISITOR_INSIDE
    SetVar VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_NONE
    ApplyMovement LOCALID_PLAYER, Villa_Movement_PlayerWalkOnSpotSouth
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message Villa_Text_RivalMessageEntry
    CloseMessage
    ApplyMovement LOCALID_RIVAL, Villa_Movement_RivalLeave
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_RIVAL
    Return

Villa_RivalEnter:
    ClearFlag FLAG_HIDE_VILLA_RIVAL
    AddObject LOCALID_RIVAL
    PlaySE SEQ_SE_DP_DOOR_OPEN
    WaitSE SEQ_SE_DP_DOOR_OPEN
    ApplyMovement LOCALID_RIVAL, Villa_Movement_VisitorEnter
    WaitMovement
    Return

Villa_EnterSmallSofaCounterpart:
    CallIfNe VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_COUNTERPART, Villa_CounterpartEnter
    SetFlag FLAG_VILLA_VISITOR_INSIDE
    SetVar VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_COUNTERPART
    BufferRivalName 0
    BufferPlayerName 1
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, Villa_SmallSofaDawn
    GoToIfEq VAR_RESULT, GENDER_FEMALE, Villa_SmallSofaLucas
    End

Villa_SmallSofaDawn:
    Message Villa_Text_DawnMessageEntry
    GoTo Villa_SmallSofaCounterpartEnd
    End

Villa_SmallSofaLucas:
    Message Villa_Text_LucasMessageEntry
    GoTo Villa_SmallSofaCounterpartEnd
    End

Villa_SmallSofaCounterpartEnd:
    CloseMessage
    Return

Villa_CounterpartEnter:
    ClearFlag FLAG_HIDE_VILLA_COUNTERPART
    AddObject LOCALID_COUNTERPART
    PlaySE SEQ_SE_DP_DOOR_OPEN
    WaitSE SEQ_SE_DP_DOOR_OPEN
    ApplyMovement LOCALID_COUNTERPART, Villa_Movement_VisitorEnter
    WaitMovement
    Return

Villa_EnterBookshelfRowan:
    CallIfNe VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_PROF_ROWAN, Villa_RowanEnter
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_PROF_ROWAN, Villa_TryRowanEnter
    SetFlag FLAG_VILLA_VISITOR_INSIDE
    SetFlag FLAG_HIDE_RESORT_AREA_PROF_ROWAN
    SetVar VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_PROF_ROWAN
    BufferRivalName 0
    BufferPlayerName 1
    Message Villa_Text_RowanMessageEntry
    CloseMessage
    Return

Villa_TryRowanEnter:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, Villa_RowanEnter
    Return

Villa_RowanEnter:
    ClearFlag FLAG_HIDE_VILLA_PROF_ROWAN
    AddObject LOCALID_PROF_ROWAN
    PlaySE SEQ_SE_DP_DOOR_OPEN
    WaitSE SEQ_SE_DP_DOOR_OPEN
    ApplyMovement LOCALID_PROF_ROWAN, Villa_Movement_VisitorEnter
    WaitMovement
    Return

Villa_EnterHouseplantGardenia:
    CallIfNe VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_GARDENIA, Villa_GardeniaEnter
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_GARDENIA, Villa_TryGardeniaEnter
    SetFlag FLAG_VILLA_VISITOR_INSIDE
    SetFlag FLAG_HIDE_RESORT_AREA_MAYLENE
    SetVar VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_GARDENIA
    BufferRivalName 0
    BufferPlayerName 1
    Message Villa_Text_GardeniaMessageEntry
    CloseMessage
    Return

Villa_TryGardeniaEnter:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, Villa_GardeniaEnter
    Return

Villa_GardeniaEnter:
    ClearFlag FLAG_HIDE_VILLA_GARDENIA
    AddObject LOCALID_GARDENIA
    PlaySE SEQ_SE_DP_DOOR_OPEN
    WaitSE SEQ_SE_DP_DOOR_OPEN
    ApplyMovement LOCALID_GARDENIA, Villa_Movement_VisitorEnter
    WaitMovement
    Return

Villa_EnterPianoCynthia:
    CallIfNe VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_CYNTHIA, Villa_CynthiaEnter
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_CYNTHIA, Villa_TryCynthiaEnter
    SetFlag FLAG_VILLA_VISITOR_INSIDE
    SetVar VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_CYNTHIA
    SetVar VAR_MAP_LOCAL_F, 0
    SetFlag FLAG_VILLA_VISITOR_OUTSIDE
    BufferRivalName 0
    BufferPlayerName 1
    Message Villa_Text_CynthiaMessageEntry
    CloseMessage
    Return

Villa_TryCynthiaEnter:
    GoToIfUnset FLAG_VILLA_VISITOR_OUTSIDE, Villa_CynthiaEnter
    Return

Villa_CynthiaEnter:
    ClearFlag FLAG_HIDE_VILLA_CYNTHIA
    AddObject LOCALID_CYNTHIA
    PlaySE SEQ_SE_DP_DOOR_OPEN
    WaitSE SEQ_SE_DP_DOOR_OPEN
    ApplyMovement LOCALID_CYNTHIA, Villa_Movement_VisitorEnter
    WaitMovement
    Return

    .balign 4, 0
Villa_Movement_PlayerWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Villa_Movement_VisitorEnter:
    WalkNormalWest
    WalkNormalNorth 3
    EndMovement

    .balign 4, 0
Villa_Movement_RivalLeave:
    WalkNormalSouth 3
    WalkNormalEast
    WalkOnSpotNormalSouth
    EndMovement

Villa_OrderTable2:
    Message Villa_Text_OrderTable
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

Villa_DeliverFreeTable:
    Message Villa_Text_DeliveringOrderKeepOrdering
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    RemoveObject LOCALID_DELIVERY_GUY
    FadeScreenIn
    WaitFadeScreen
    ApplyMovement LOCALID_SCHOOL_KID_M, Villa_Movement_SchoolKidMFacePlayer
    ApplyMovement LOCALID_PLAYER, Villa_Movement_PlayerFaceSchoolKidM
    WaitMovement
    Message Villa_Text_FinallyRidOfVilla
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    RemoveObject LOCALID_SCHOOL_KID_M
    Call Villa_TryAddFurnitureVisitor
    FadeScreenIn
    WaitFadeScreen
    Call Villa_TryEnterFurnitureVisitor
    SetVar VAR_VILLA_STATE, 2
    Return

    .balign 4, 0
Villa_Movement_PlayerFaceSchoolKidM:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
Villa_Movement_SchoolKidMFacePlayer:
    WalkOnSpotNormalEast
    EndMovement

Villa_UnusedMovement:
    WalkNormalSouth 3
    WalkNormalEast
    WalkOnSpotNormalSouth
    EndMovement

Villa_DeliveringOrder:
    Call Villa_CheckHasAllFurniture
    GoToIfEq VAR_RESULT, TRUE, Villa_HasAllFurniture
    Message Villa_Text_DeliveringOrder
    GoTo Villa_DeliveryGuyLeaveTryVisitorEnter
    End

Villa_DeliveryGuyLeaveTryVisitorEnter:
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    RemoveObject LOCALID_DELIVERY_GUY
    Call Villa_TryAddFurnitureVisitor
    FadeScreenIn
    WaitFadeScreen
    Call Villa_TryEnterFurnitureVisitor
    Return

Villa_HasAllFurniture:
    IncrementTrainerScore TRAINER_SCORE_EVENT_BOUGHT_ALL_VILLA_FURNITURE
    Message Villa_Text_DeliveringOrderOutOfFurniture
    GoTo Villa_DeliveryGuyLeaveTryVisitorEnter
    End

Villa_TryAddFurnitureVisitor:
    CallIfEq VAR_0x8002, VILLA_FURNITURE_TABLE, Villa_AddTableRival
    CallIfEq VAR_0x8002, VILLA_FURNITURE_SMALL_SOFA, Villa_AddSmallSofaCounterpart
    CallIfEq VAR_0x8002, VILLA_FURNITURE_BOOKSHELF, Villa_AddBookshelfRowan
    CallIfEq VAR_0x8002, VILLA_FURNITURE_HOUSEPLANT, Villa_AddHouseplantGardenia
    CallIfEq VAR_0x8002, VILLA_FURNITURE_PIANO, Villa_AddPianoCynthia
    Return

Villa_TryEnterFurnitureVisitor:
    CallIfEq VAR_0x8002, VILLA_FURNITURE_TABLE, Villa_EnterTableRival
    CallIfEq VAR_0x8002, VILLA_FURNITURE_SMALL_SOFA, Villa_EnterSmallSofaCounterpart
    CallIfEq VAR_0x8002, VILLA_FURNITURE_BOOKSHELF, Villa_EnterBookshelfRowan
    CallIfEq VAR_0x8002, VILLA_FURNITURE_HOUSEPLANT, Villa_EnterHouseplantGardenia
    CallIfEq VAR_0x8002, VILLA_FURNITURE_PIANO, Villa_EnterPianoCynthia
    Return

Villa_TriggerDontGoYet:
    LockAll
    ApplyMovement LOCALID_SCHOOL_KID_M, Villa_Movement_SchoolKidMWalkOnSpotSouth
    WaitMovement
    Message Villa_Text_DontGoYet
    CloseMessage
    ApplyMovement LOCALID_PLAYER, Villa_Movement_PlayerWalkNorth
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
Villa_Movement_SchoolKidMWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Villa_Movement_PlayerWalkNorth:
    WalkNormalNorth
    EndMovement

Villa_OrderForm:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    ShowMoney 21, 1
    BufferPlayerName 1
    Message Villa_Text_PlayerOpenedOrderForm
    Call Villa_CheckHasAllFurniture
    GoToIfEq VAR_RESULT, TRUE, Villa_ListOfPurchases
    GoTo Villa_OrderWhichFurniture
    End

Villa_ListOfPurchases:
    Message Villa_Text_ListOfPurchases
    GoTo Villa_TryBuyFurniture
    End

Villa_OrderWhichFurniture:
    Message Villa_Text_OrderWhichFurniture
    GoTo Villa_TryBuyFurniture
    End

Villa_TryBuyFurniture:
    Call Villa_ShowFurnitureListMenu
    SetVar VAR_0x8003, TRUE
    CallIfEq VAR_0x8002, VILLA_FURNITURE_TABLE, Villa_CheckCanBuyTable
    CallIfEq VAR_0x8002, VILLA_FURNITURE_BIG_SOFA, Villa_CheckCanBuyBigSofa
    CallIfEq VAR_0x8002, VILLA_FURNITURE_SMALL_SOFA, Villa_CheckCanBuySmallSofa
    CallIfEq VAR_0x8002, VILLA_FURNITURE_BED, Villa_CheckCanBuyBedSofa
    CallIfEq VAR_0x8002, VILLA_FURNITURE_NIGHT_TABLE, Villa_CheckCanBuyNightTable
    CallIfEq VAR_0x8002, VILLA_FURNITURE_TV, Villa_CheckCanBuyTV
    CallIfEq VAR_0x8002, VILLA_FURNITURE_AUDIO_SYSTEM, Villa_CheckCanBuyAudioSystem
    CallIfEq VAR_0x8002, VILLA_FURNITURE_BOOKSHELF, Villa_CheckCanBuyBookshelf
    CallIfEq VAR_0x8002, VILLA_FURNITURE_RACK, Villa_CheckCanBuyRack
    CallIfEq VAR_0x8002, VILLA_FURNITURE_HOUSEPLANT, Villa_CheckCanBuyHouseplant
    CallIfEq VAR_0x8002, VILLA_FURNITURE_PC_DESK, Villa_CheckCanBuyPCDesk
    CallIfEq VAR_0x8002, VILLA_FURNITURE_MUSIC_BOX, Villa_CheckCanBuyMusicBox
    CallIfEq VAR_0x8002, VILLA_FURNITURE_POKEMON_BUST, Villa_CheckCanBuyPokemonBust
    CallIfEq VAR_0x8002, VILLA_FURNITURE_POKEMON_BUST_SILVER, Villa_CheckCanBuyPokemonBustSilver
    CallIfEq VAR_0x8002, VILLA_FURNITURE_PIANO, Villa_CheckCanBuyPiano
    CallIfEq VAR_0x8002, VILLA_FURNITURE_GUEST_SET, Villa_CheckCanBuyGuestSet
    CallIfEq VAR_0x8002, VILLA_FURNITURE_WALL_CLOCK, Villa_CheckCanBuyWallClock
    CallIfEq VAR_0x8002, VILLA_FURNITURE_MASTERPIECE, Villa_CheckCanBuyMasterpiece
    CallIfEq VAR_0x8002, VILLA_FURNITURE_TEA_SET, Villa_CheckCanBuyTeaSet
    CallIfEq VAR_0x8002, VILLA_FURNITURE_CHANDELIER, Villa_CheckCanBuyChandelier
    GoToIfEq VAR_0x8002, -2, Villa_CanceledOrder
    GoToIfEq VAR_0x8003, FALSE, Villa_AlreadyBoughtOne
    Message Villa_Text_OrderChosenFurniture
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, Villa_CanceledOrder
    CallIfEq VAR_0x8002, VILLA_FURNITURE_TABLE, Villa_CheckMoney_Table
    CallIfEq VAR_0x8002, VILLA_FURNITURE_BIG_SOFA, Villa_CheckMoney_BigSofa
    CallIfEq VAR_0x8002, VILLA_FURNITURE_SMALL_SOFA, Villa_CheckMoney_SmallSofa
    CallIfEq VAR_0x8002, VILLA_FURNITURE_BED, Villa_CheckMoney_Bed
    CallIfEq VAR_0x8002, VILLA_FURNITURE_NIGHT_TABLE, Villa_CheckMoney_NightTable
    CallIfEq VAR_0x8002, VILLA_FURNITURE_TV, Villa_CheckMoney_TV
    CallIfEq VAR_0x8002, VILLA_FURNITURE_AUDIO_SYSTEM, Villa_CheckMoney_AudioSystem
    CallIfEq VAR_0x8002, VILLA_FURNITURE_BOOKSHELF, Villa_CheckMoney_Bookshelf
    CallIfEq VAR_0x8002, VILLA_FURNITURE_RACK, Villa_CheckMoney_Rack
    CallIfEq VAR_0x8002, VILLA_FURNITURE_HOUSEPLANT, Villa_CheckMoney_Houseplant
    CallIfEq VAR_0x8002, VILLA_FURNITURE_PC_DESK, Villa_CheckMoney_PCDesk
    CallIfEq VAR_0x8002, VILLA_FURNITURE_MUSIC_BOX, Villa_CheckMoney_MusicBox
    CallIfEq VAR_0x8002, VILLA_FURNITURE_POKEMON_BUST, Villa_CheckMoney_PokemonBust
    CallIfEq VAR_0x8002, VILLA_FURNITURE_POKEMON_BUST_SILVER, Villa_CheckMoney_PokemonBustSilver
    CallIfEq VAR_0x8002, VILLA_FURNITURE_PIANO, Villa_CheckMoney_Piano
    CallIfEq VAR_0x8002, VILLA_FURNITURE_GUEST_SET, Villa_CheckMoney_GuestSet
    CallIfEq VAR_0x8002, VILLA_FURNITURE_WALL_CLOCK, Villa_CheckMoney_WallClock
    CallIfEq VAR_0x8002, VILLA_FURNITURE_MASTERPIECE, Villa_CheckMoney_Masterpiece
    CallIfEq VAR_0x8002, VILLA_FURNITURE_TEA_SET, Villa_CheckMoney_TeaSet
    CallIfEq VAR_0x8002, VILLA_FURNITURE_CHANDELIER, Villa_CheckMoney_Chandelier
    GoToIfEq VAR_0x8003, FALSE, Villa_NotEnoughMoney
    Call Villa_BuyFurniture
    CloseMessage
    Call Villa_WarpAndShowDeliveryGuyAndBook
    ReleaseAll
    End

Villa_AlreadyBoughtOne:
    Message Villa_Text_AlreadyBoughtOne
    GoTo Villa_OrderFormWaitButton
    End

Villa_NotEnoughMoney:
    Message Villa_Text_NotEnoughMoney
    GoTo Villa_OrderFormWaitButton
    End

Villa_CanceledOrder:
    GoTo Villa_OrderFormEnd
    End

Villa_OrderFormWaitButton:
    WaitButton
    GoTo Villa_OrderFormEnd
    End

Villa_OrderFormEnd:
    CloseMessage
    HideMoney
    ReleaseAll
    End

Villa_CheckHasAllFurniture:
    GoToIfUnset FLAG_VILLA_FURNITURE_TABLE, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_BIG_SOFA, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_SMALL_SOFA, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_BED, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_NIGHT_TABLE, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_TV, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_AUDIO_SYSTEM, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_BOOKSHELF, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_RACK, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_HOUSEPLANT, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_PC_DESK, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_MUSIC_BOX, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_POKEMON_BUST, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_POKEMON_BUST_SILVER, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_PIANO, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_GUEST_SET, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_WALL_CLOCK, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_MASTERPIECE, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_TEA_SET, Villa_DoesntHaveAllFurniture
    GoToIfUnset FLAG_VILLA_FURNITURE_CHANDELIER, Villa_DoesntHaveAllFurniture
    SetVar VAR_RESULT, TRUE
    Return

Villa_DoesntHaveAllFurniture:
    SetVar VAR_RESULT, FALSE
    Return

Villa_AddMenuEntryTable:
    BufferValuePaddingDigits 0, 0, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_TABLE, Villa_AddMenuEntryTableAvailable
    CallIfSet FLAG_VILLA_FURNITURE_TABLE, Villa_AddMenuEntryTableSoldOut
    Return

Villa_AddMenuEntryBigSofa:
    BufferValuePaddingDigits 0, 120000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_BIG_SOFA, Villa_AddMenuEntryBigSofaAvailable
    CallIfSet FLAG_VILLA_FURNITURE_BIG_SOFA, Villa_AddMenuEntryBigSofaSoldOut
    Return

Villa_AddMenuEntrySmallSofa:
    BufferValuePaddingDigits 0, 90000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_SMALL_SOFA, Villa_AddMenuEntrySmallSofaAvailable
    CallIfSet FLAG_VILLA_FURNITURE_SMALL_SOFA, Villa_AddMenuEntrySmallSofaSoldOut
    Return

Villa_AddMenuEntryBed:
    BufferValuePaddingDigits 0, 187000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_BED, Villa_AddMenuEntryBedAvailable
    CallIfSet FLAG_VILLA_FURNITURE_BED, Villa_AddMenuEntryBedSoldOut
    Return

Villa_AddMenuEntryNightTable:
    BufferValuePaddingDigits 0, 58000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_NIGHT_TABLE, Villa_AddMenuEntryNightTableAvailable
    CallIfSet FLAG_VILLA_FURNITURE_NIGHT_TABLE, Villa_AddMenuEntryNightTableSoldOut
    Return

Villa_AddMenuEntryTV:
    BufferValuePaddingDigits 0, 220000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_TV, Villa_AddMenuEntryTVAvailable
    CallIfSet FLAG_VILLA_FURNITURE_TV, Villa_AddMenuEntryTVSoldOut
    Return

Villa_AddMenuEntryAudioSystem:
    BufferValuePaddingDigits 0, 160000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_AUDIO_SYSTEM, Villa_AddMenuEntryAudioSystemAvailable
    CallIfSet FLAG_VILLA_FURNITURE_AUDIO_SYSTEM, Villa_AddMenuEntryAudioSystemSoldOut
    Return

Villa_AddMenuEntryBookshelf:
    BufferValuePaddingDigits 0, 150000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_BOOKSHELF, Villa_AddMenuEntryBookshelfAvailable
    CallIfSet FLAG_VILLA_FURNITURE_BOOKSHELF, Villa_AddMenuEntryBookshelfSoldOut
    Return

Villa_AddMenuEntryRack:
    BufferValuePaddingDigits 0, 127000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_RACK, Villa_AddMenuEntryRackAvailable
    CallIfSet FLAG_VILLA_FURNITURE_RACK, Villa_AddMenuEntryRackSoldOut
    Return

Villa_AddMenuEntryHouseplant:
    BufferValuePaddingDigits 0, 120000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_HOUSEPLANT, Villa_AddMenuEntryHouseplantAvailable
    CallIfSet FLAG_VILLA_FURNITURE_HOUSEPLANT, Villa_AddMenuEntryHouseplantSoldOut
    Return

Villa_AddMenuEntryPCDesk:
    BufferValuePaddingDigits 0, 168000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_PC_DESK, Villa_AddMenuEntryPCDeskAvailable
    CallIfSet FLAG_VILLA_FURNITURE_PC_DESK, Villa_AddMenuEntryPCDeskSoldOut
    Return

Villa_TryAddMenuEntryMusicBox:
    GoToIfUnset FLAG_VILLA_FURNITURE_RACK, Villa_DontAddMenuEntry
    BufferValuePaddingDigits 0, 25300, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_MUSIC_BOX, Villa_AddMenuEntryMusicBoxAvailable
    CallIfSet FLAG_VILLA_FURNITURE_MUSIC_BOX, Villa_AddMenuEntryMusicBoxSoldOut
    Return

Villa_TryAddMenuEntryPokemonBust:
    CheckMetFurnitureRequirements VILLA_FURNITURE_POKEMON_BUST + 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, Villa_DontAddMenuEntry
    BufferValuePaddingDigits 0, 150000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_POKEMON_BUST, Villa_AddMenuEntryPokemonBustAvailable
    CallIfSet FLAG_VILLA_FURNITURE_POKEMON_BUST, Villa_AddMenuEntryPokemonBustSoldOut
    Return

Villa_TryAddMenuEntryPokemonBustSilver:
    CheckMetFurnitureRequirements VILLA_FURNITURE_POKEMON_BUST_SILVER + 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, Villa_DontAddMenuEntry
    BufferValuePaddingDigits 0, 150000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_POKEMON_BUST_SILVER, Villa_AddMenuEntryPokemonBustSilverAvailable
    CallIfSet FLAG_VILLA_FURNITURE_POKEMON_BUST_SILVER, Villa_AddMenuEntryPokemonBustSilverSoldOut
    Return

Villa_TryAddMenuEntryPiano:
    CheckMetFurnitureRequirements VILLA_FURNITURE_PIANO + 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, Villa_DontAddMenuEntry
    BufferValuePaddingDigits 0, 146700, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_PIANO, Villa_AddMenuEntryPianoAvailable
    CallIfSet FLAG_VILLA_FURNITURE_PIANO, Villa_AddMenuEntryPianoSoldOut
    Return

Villa_TryAddMenuEntryGuestSet:
    CheckMetFurnitureRequirements VILLA_FURNITURE_GUEST_SET + 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, Villa_DontAddMenuEntry
    BufferValuePaddingDigits 0, 208000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_GUEST_SET, Villa_AddMenuEntryGuestSetAvailable
    CallIfSet FLAG_VILLA_FURNITURE_GUEST_SET, Villa_AddMenuEntryGuestSetSoldOut
    Return

Villa_TryAddMenuEntryWallClock:
    CheckMetFurnitureRequirements VILLA_FURNITURE_WALL_CLOCK + 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, Villa_DontAddMenuEntry
    BufferValuePaddingDigits 0, 52000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_WALL_CLOCK, Villa_AddMenuEntryWallClockAvailable
    CallIfSet FLAG_VILLA_FURNITURE_WALL_CLOCK, Villa_AddMenuEntryWallClockSoldOut
    Return

Villa_TryAddMenuEntryMasterpiece:
    CheckMetFurnitureRequirements VILLA_FURNITURE_MASTERPIECE + 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, Villa_DontAddMenuEntry
    BufferValuePaddingDigits 0, 140000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_MASTERPIECE, Villa_AddMenuEntryMasterpieceAvailable
    CallIfSet FLAG_VILLA_FURNITURE_MASTERPIECE, Villa_AddMenuEntryMasterpieceSoldOut
    Return

Villa_TryAddMenuEntryTeaSet:
    GoToIfUnset FLAG_VILLA_FURNITURE_GUEST_SET, Villa_DontAddMenuEntry
    BufferValuePaddingDigits 0, 108000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_TEA_SET, Villa_AddMenuEntryTeaSetAvailable
    CallIfSet FLAG_VILLA_FURNITURE_TEA_SET, Villa_AddMenuEntryTeaSetSoldOut
    Return

Villa_TryAddMenuEntryChandelier:
    CheckMetFurnitureRequirements VILLA_FURNITURE_CHANDELIER + 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, Villa_DontAddMenuEntry
    BufferValuePaddingDigits 0, 120000, PADDING_MODE_SPACES, 6
    CallIfUnset FLAG_VILLA_FURNITURE_CHANDELIER, Villa_AddMenuEntryChandelierAvailable
    CallIfSet FLAG_VILLA_FURNITURE_CHANDELIER, Villa_AddMenuEntryChandelierSoldOut
    Return

Villa_DontAddMenuEntry:
    Return

Villa_AddMenuEntryTableAvailable:
    AddListMenuEntry Villa_Text_EntryTableAvailable, 0
    Return

Villa_AddMenuEntryTableSoldOut:
    AddListMenuEntry Villa_Text_EntryTableSoldOut, 0
    Return

Villa_AddMenuEntryBigSofaAvailable:
    AddListMenuEntry Villa_Text_EntryBigSofaAvailable, 1
    Return

Villa_AddMenuEntryBigSofaSoldOut:
    AddListMenuEntry Villa_Text_EntryBigSofaSoldOut, 1
    Return

Villa_AddMenuEntrySmallSofaAvailable:
    AddListMenuEntry Villa_Text_EntrySmallSofaAvailable, 2
    Return

Villa_AddMenuEntrySmallSofaSoldOut:
    AddListMenuEntry Villa_Text_EntrySmallSofaSoldOut, 2
    Return

Villa_AddMenuEntryBedAvailable:
    AddListMenuEntry Villa_Text_EntryBedAvailable, 3
    Return

Villa_AddMenuEntryBedSoldOut:
    AddListMenuEntry Villa_Text_EntryBedSoldOut, 3
    Return

Villa_AddMenuEntryNightTableAvailable:
    AddListMenuEntry Villa_Text_EntryNightTableAvailable, 4
    Return

Villa_AddMenuEntryNightTableSoldOut:
    AddListMenuEntry Villa_Text_EntryNightTableSoldOut, 4
    Return

Villa_AddMenuEntryTVAvailable:
    AddListMenuEntry Villa_Text_EntryTVAvailable, 5
    Return

Villa_AddMenuEntryTVSoldOut:
    AddListMenuEntry Villa_Text_EntryTVSoldOut, 5
    Return

Villa_AddMenuEntryAudioSystemAvailable:
    AddListMenuEntry Villa_Text_EntryAudioSystemAvailable, 6
    Return

Villa_AddMenuEntryAudioSystemSoldOut:
    AddListMenuEntry Villa_Text_EntryAudioSystemSoldOut, 6
    Return

Villa_AddMenuEntryBookshelfAvailable:
    AddListMenuEntry Villa_Text_EntryBookshelfAvailable, 7
    Return

Villa_AddMenuEntryBookshelfSoldOut:
    AddListMenuEntry Villa_Text_EntryBookshelfSoldOut, 7
    Return

Villa_AddMenuEntryRackAvailable:
    AddListMenuEntry Villa_Text_EntryRackAvailable, 8
    Return

Villa_AddMenuEntryRackSoldOut:
    AddListMenuEntry Villa_Text_EntryRackSoldOut, 8
    Return

Villa_AddMenuEntryHouseplantAvailable:
    AddListMenuEntry Villa_Text_EntryHouseplantAvailable, 9
    Return

Villa_AddMenuEntryHouseplantSoldOut:
    AddListMenuEntry Villa_Text_EntryHouseplantSoldOut, 9
    Return

Villa_AddMenuEntryPCDeskAvailable:
    AddListMenuEntry Villa_Text_EntryPCDeskAvailable, 10
    Return

Villa_AddMenuEntryPCDeskSoldOut:
    AddListMenuEntry Villa_Text_EntryPCDeskSoldOut, 10
    Return

Villa_AddMenuEntryMusicBoxAvailable:
    AddListMenuEntry Villa_Text_EntryMusicBoxAvailable, 11
    Return

Villa_AddMenuEntryMusicBoxSoldOut:
    AddListMenuEntry Villa_Text_EntryMusicBoxSoldOut, 11
    Return

Villa_AddMenuEntryPokemonBustAvailable:
    AddListMenuEntry Villa_Text_EntryPokemonBustAvailable, 12
    Return

Villa_AddMenuEntryPokemonBustSoldOut:
    AddListMenuEntry Villa_Text_EntryPokemonBustSoldOut, 12
    Return

Villa_AddMenuEntryPokemonBustSilverAvailable:
    AddListMenuEntry Villa_Text_EntryPokemonBustSilverAvailable, 13
    Return

Villa_AddMenuEntryPokemonBustSilverSoldOut:
    AddListMenuEntry Villa_Text_EntryPokemonBustSilverSoldOut, 13
    Return

Villa_AddMenuEntryPianoAvailable:
    AddListMenuEntry Villa_Text_EntryPianoAvailable, 14
    Return

Villa_AddMenuEntryPianoSoldOut:
    AddListMenuEntry Villa_Text_EntryPianoSoldOut, 14
    Return

Villa_AddMenuEntryGuestSetAvailable:
    AddListMenuEntry Villa_Text_EntryGuestSetAvailable, 15
    Return

Villa_AddMenuEntryGuestSetSoldOut:
    AddListMenuEntry Villa_Text_EntryGuestSetSoldOut, 15
    Return

Villa_AddMenuEntryWallClockAvailable:
    AddListMenuEntry Villa_Text_EntryWallClockAvailable, 16
    Return

Villa_AddMenuEntryWallClockSoldOut:
    AddListMenuEntry Villa_Text_EntryWallClockSoldOut, 16
    Return

Villa_AddMenuEntryMasterpieceAvailable:
    AddListMenuEntry Villa_Text_EntryMasterpieceAvailable, 17
    Return

Villa_AddMenuEntryMasterpieceSoldOut:
    AddListMenuEntry Villa_Text_EntryMasterpieceSoldOut, 17
    Return

Villa_AddMenuEntryTeaSetAvailable:
    AddListMenuEntry Villa_Text_EntryTeaSetAvailable, 18
    Return

Villa_AddMenuEntryTeaSetSoldOut:
    AddListMenuEntry Villa_Text_EntryTeaSetSoldOut, 18
    Return

Villa_AddMenuEntryChandelierAvailable:
    AddListMenuEntry Villa_Text_EntryChandelierAvailable, 19
    Return

Villa_AddMenuEntryChandelierSoldOut:
    AddListMenuEntry Villa_Text_EntryChandelierSoldOut, 19
    Return

Villa_CheckCanBuyTable:
    GoToIfSet FLAG_VILLA_FURNITURE_TABLE, Villa_CantBuyFurniture
    Return

Villa_CheckCanBuyBigSofa:
    GoToIfSet FLAG_VILLA_FURNITURE_BIG_SOFA, Villa_CantBuyFurniture
    Return

Villa_CheckCanBuySmallSofa:
    GoToIfSet FLAG_VILLA_FURNITURE_SMALL_SOFA, Villa_CantBuyFurniture
    Return

Villa_CheckCanBuyBedSofa:
    GoToIfSet FLAG_VILLA_FURNITURE_BED, Villa_CantBuyFurniture
    Return

Villa_CheckCanBuyNightTable:
    GoToIfSet FLAG_VILLA_FURNITURE_NIGHT_TABLE, Villa_CantBuyFurniture
    Return

Villa_CheckCanBuyTV:
    GoToIfSet FLAG_VILLA_FURNITURE_TV, Villa_CantBuyFurniture
    Return

Villa_CheckCanBuyAudioSystem:
    GoToIfSet FLAG_VILLA_FURNITURE_AUDIO_SYSTEM, Villa_CantBuyFurniture
    Return

Villa_CheckCanBuyBookshelf:
    GoToIfSet FLAG_VILLA_FURNITURE_BOOKSHELF, Villa_CantBuyFurniture
    Return

Villa_CheckCanBuyRack:
    GoToIfSet FLAG_VILLA_FURNITURE_RACK, Villa_CantBuyFurniture
    Return

Villa_CheckCanBuyHouseplant:
    GoToIfSet FLAG_VILLA_FURNITURE_HOUSEPLANT, Villa_CantBuyFurniture
    Return

Villa_CheckCanBuyPCDesk:
    GoToIfSet FLAG_VILLA_FURNITURE_PC_DESK, Villa_CantBuyFurniture
    Return

Villa_CheckCanBuyMusicBox:
    GoToIfSet FLAG_VILLA_FURNITURE_MUSIC_BOX, Villa_CantBuyFurniture
    Return

Villa_CheckCanBuyPokemonBust:
    GoToIfSet FLAG_VILLA_FURNITURE_POKEMON_BUST, Villa_CantBuyFurniture
    Return

Villa_CheckCanBuyPokemonBustSilver:
    GoToIfSet FLAG_VILLA_FURNITURE_POKEMON_BUST_SILVER, Villa_CantBuyFurniture
    Return

Villa_CheckCanBuyPiano:
    GoToIfSet FLAG_VILLA_FURNITURE_PIANO, Villa_CantBuyFurniture
    Return

Villa_CheckCanBuyGuestSet:
    GoToIfSet FLAG_VILLA_FURNITURE_GUEST_SET, Villa_CantBuyFurniture
    Return

Villa_CheckCanBuyWallClock:
    GoToIfSet FLAG_VILLA_FURNITURE_WALL_CLOCK, Villa_CantBuyFurniture
    Return

Villa_CheckCanBuyMasterpiece:
    GoToIfSet FLAG_VILLA_FURNITURE_MASTERPIECE, Villa_CantBuyFurniture
    Return

Villa_CheckCanBuyTeaSet:
    GoToIfSet FLAG_VILLA_FURNITURE_TEA_SET, Villa_CantBuyFurniture
    Return

Villa_CheckCanBuyChandelier:
    GoToIfSet FLAG_VILLA_FURNITURE_CHANDELIER, Villa_CantBuyFurniture
    Return

Villa_CantBuyFurniture:
    SetVar VAR_0x8003, FALSE
    Return

Villa_CheckMoney_Table:
    CheckMoney VAR_0x8003, 0
    Return

Villa_CheckMoney_BigSofa:
    CheckMoney VAR_0x8003, 120000
    Return

Villa_CheckMoney_SmallSofa:
    CheckMoney VAR_0x8003, 90000
    Return

Villa_CheckMoney_Bed:
    CheckMoney VAR_0x8003, 187000
    Return

Villa_CheckMoney_NightTable:
    CheckMoney VAR_0x8003, 58000
    Return

Villa_CheckMoney_TV:
    CheckMoney VAR_0x8003, 220000
    Return

Villa_CheckMoney_AudioSystem:
    CheckMoney VAR_0x8003, 160000
    Return

Villa_CheckMoney_Bookshelf:
    CheckMoney VAR_0x8003, 150000
    Return

Villa_CheckMoney_Rack:
    CheckMoney VAR_0x8003, 127000
    Return

Villa_CheckMoney_Houseplant:
    CheckMoney VAR_0x8003, 120000
    Return

Villa_CheckMoney_PCDesk:
    CheckMoney VAR_0x8003, 168000
    Return

Villa_CheckMoney_MusicBox:
    CheckMoney VAR_0x8003, 25300
    Return

Villa_CheckMoney_PokemonBust:
    CheckMoney VAR_0x8003, 150000
    Return

Villa_CheckMoney_PokemonBustSilver:
    CheckMoney VAR_0x8003, 150000
    Return

Villa_CheckMoney_Piano:
    CheckMoney VAR_0x8003, 146700
    Return

Villa_CheckMoney_GuestSet:
    CheckMoney VAR_0x8003, 208000
    Return

Villa_CheckMoney_WallClock:
    CheckMoney VAR_0x8003, 52000
    Return

Villa_CheckMoney_Masterpiece:
    CheckMoney VAR_0x8003, 140000
    Return

Villa_CheckMoney_TeaSet:
    CheckMoney VAR_0x8003, 108000
    Return

Villa_CheckMoney_Chandelier:
    CheckMoney VAR_0x8003, 120000
    Return

Villa_BuyFurniture_Table:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 0
    RemoveMoney 0
    SetFlag FLAG_VILLA_FURNITURE_TABLE
    Return

Villa_BuyFurniture_BigSofa:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 120000
    RemoveMoney 120000
    SetFlag FLAG_VILLA_FURNITURE_BIG_SOFA
    Return

Villa_BuyFurniture_SmallSofa:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 90000
    RemoveMoney 90000
    SetFlag FLAG_VILLA_FURNITURE_SMALL_SOFA
    Return

Villa_BuyFurniture_Bed:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 187000
    RemoveMoney 187000
    SetFlag FLAG_VILLA_FURNITURE_BED
    Return

Villa_BuyFurniture_NightTable:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 58000
    RemoveMoney 58000
    SetFlag FLAG_VILLA_FURNITURE_NIGHT_TABLE
    Return

Villa_BuyFurniture_TV:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 220000
    RemoveMoney 220000
    SetFlag FLAG_VILLA_FURNITURE_TV
    Return

Villa_BuyFurniture_AudioSystem:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 160000
    RemoveMoney 160000
    SetFlag FLAG_VILLA_FURNITURE_AUDIO_SYSTEM
    Return

Villa_BuyFurniture_Bookshelf:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 150000
    RemoveMoney 150000
    SetFlag FLAG_VILLA_FURNITURE_BOOKSHELF
    Return

Villa_BuyFurniture_Rack:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 127000
    RemoveMoney 127000
    SetFlag FLAG_VILLA_FURNITURE_RACK
    Return

Villa_BuyFurniture_Houseplant:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 120000
    RemoveMoney 120000
    SetFlag FLAG_VILLA_FURNITURE_HOUSEPLANT
    Return

Villa_BuyFurniture_PCDesk:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 168000
    RemoveMoney 168000
    SetFlag FLAG_VILLA_FURNITURE_PC_DESK
    Return

Villa_BuyFurniture_MusicBox:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 25300
    RemoveMoney 25300
    SetFlag FLAG_VILLA_FURNITURE_MUSIC_BOX
    Return

Villa_BuyFurniture_PokemonBust:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 150000
    RemoveMoney 150000
    SetFlag FLAG_VILLA_FURNITURE_POKEMON_BUST
    Return

Villa_BuyFurniture_PokemonBustSilver:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 150000
    RemoveMoney 150000
    SetFlag FLAG_VILLA_FURNITURE_POKEMON_BUST_SILVER
    Return

Villa_BuyFurniture_Piano:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 146700
    RemoveMoney 146700
    SetFlag FLAG_VILLA_FURNITURE_PIANO
    Return

Villa_BuyFurniture_GuestSet:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 208000
    RemoveMoney 208000
    SetFlag FLAG_VILLA_FURNITURE_GUEST_SET
    Return

Villa_BuyFurniture_WallClock:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 52000
    RemoveMoney 52000
    SetFlag FLAG_VILLA_FURNITURE_WALL_CLOCK
    Return

Villa_BuyFurniture_Masterpiece:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 140000
    RemoveMoney 140000
    SetFlag FLAG_VILLA_FURNITURE_MASTERPIECE
    Return

Villa_BuyFurniture_TeaSet:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 108000
    RemoveMoney 108000
    SetFlag FLAG_VILLA_FURNITURE_TEA_SET
    Return

Villa_BuyFurniture_Chandelier:
    AddToGameRecordBigValue RECORD_MONEY_SPENT, 120000
    RemoveMoney 120000
    SetFlag FLAG_VILLA_FURNITURE_CHANDELIER
    Return

Villa_TryRemoveVisitor:
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_RIVAL, Villa_RemoveRival
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_COUNTERPART, Villa_RemoveCounterpart
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_PROF_ROWAN, Villa_TryRemoveRowan
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_MOM, Villa_RemoveMom
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_ROARK, Villa_TryRemoveRoark
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_GARDENIA, Villa_TryRemoveGardenia
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_FANTINA, Villa_TryRemoveFantina
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_MAYLENE, Villa_TryRemoveMaylene
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_CRASHER_WAKE, Villa_TryRemoveWake
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_BYRON, Villa_TryRemoveByron
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_CANDICE, Villa_TryRemoveCandice
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_VOLKNER, Villa_RemoveVolkner
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_CYNTHIA, Villa_TryRemoveCynthia
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_FLINT_VOLKNER, Villa_RemoveFlintAndVolkner
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_MAYLENE_CANDICE, Villa_RemoveMayleneAndCandice
    Return

Villa_RemoveRival:
    RemoveObject LOCALID_RIVAL
    Return

Villa_RemoveCounterpart:
    RemoveObject LOCALID_COUNTERPART
    Return

Villa_TryRemoveRowan:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, Villa_HideOutsideVisitors
    RemoveObject LOCALID_PROF_ROWAN
    Return

Villa_RemoveMom:
    RemoveObject LOCALID_MOM
    Return

Villa_TryRemoveRoark:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, Villa_HideOutsideVisitors
    RemoveObject LOCALID_ROARK
    Return

Villa_TryRemoveGardenia:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, Villa_HideOutsideVisitors
    RemoveObject LOCALID_GARDENIA
    Return

Villa_TryRemoveFantina:
    GoToIfUnset FLAG_VILLA_VISITOR_OUTSIDE, Villa_DontRemoveVisitor
    RemoveObject LOCALID_FANTINA
    Return

Villa_TryRemoveMaylene:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, Villa_HideOutsideVisitors
    RemoveObject LOCALID_MAYLENE
    Return

Villa_TryRemoveWake:
    GoToIfUnset FLAG_VILLA_VISITOR_OUTSIDE, Villa_DontRemoveVisitor
    RemoveObject LOCALID_CRASHER_WAKE
    Return

Villa_TryRemoveByron:
    GoToIfUnset FLAG_VILLA_VISITOR_INSIDE, Villa_HideOutsideVisitors
    RemoveObject LOCALID_BYRON
    Return

Villa_TryRemoveCandice:
    GoToIfUnset FLAG_VILLA_VISITOR_OUTSIDE, Villa_DontRemoveVisitor
    RemoveObject LOCALID_CANDICE
    Return

Villa_RemoveVolkner:
    RemoveObject LOCALID_VOLKNER
    Return

Villa_TryRemoveCynthia:
    GoToIfUnset FLAG_VILLA_VISITOR_OUTSIDE, Villa_DontRemoveVisitor
    RemoveObject LOCALID_CYNTHIA
    Return

Villa_RemoveFlintAndVolkner:
    RemoveObject LOCALID_FLINT
    RemoveObject LOCALID_VOLKNER
    Return

Villa_RemoveMayleneAndCandice:
    RemoveObject LOCALID_MAYLENE
    RemoveObject LOCALID_CANDICE
    Return

Villa_DontRemoveVisitor:
    Return

Villa_HideOutsideVisitors:
    SetFlag FLAG_HIDE_RESORT_AREA_PROF_ROWAN
    SetFlag FLAG_HIDE_RESORT_AREA_ROARK
    SetFlag FLAG_HIDE_RESORT_AREA_GARDENIA
    SetFlag FLAG_HIDE_RESORT_AREA_MAYLENE
    SetFlag FLAG_HIDE_RESORT_AREA_BYRON
    Return

    .balign 4, 0
