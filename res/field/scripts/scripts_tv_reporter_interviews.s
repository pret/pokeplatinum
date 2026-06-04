#include "macros/scrcmd.inc"
#include "res/text/bank/tv_reporter_interviews.h"


    ScriptEntry TVReporterInterviews_UnusedEntry10150
    ScriptEntry TVReporterInterviews_BattleTower
    ScriptEntry TVReporterInterviews_UnusedEntry10152
    ScriptEntry TVReporterInterviews_HearthomeCityPokemonFanClub
    ScriptEntry TVReporterInterviews_UnusedEntry10154
    ScriptEntry TVReporterInterviews_PoketchCo1F
    ScriptEntry TVReporterInterviews_ContestHallLobby
    ScriptEntry TVReporterInterviews_UnusedEntry10157
    ScriptEntry TVReporterInterviews_JubilifeTV2F
    ScriptEntry TVReporterInterviews_CanalaveCityWestHouse
    ScriptEntry TVReporterInterviews_PoffinHouse
    ScriptEntry TVReporterInterviews_UnusedEntry10161
    ScriptEntry TVReporterInterviews_HearthomeCityGates
    ScriptEntry TVReporterInterviews_BattleHall
    ScriptEntry TVReporterInterviews_Route214GateToVeilstoneCity
    ScriptEntry TVReporterInterviews_SetSegmentInYourFace2
    ScriptEntry TVReporterInterviews_SetSegmentInYourFace3
    ScriptEntry TVReporterInterviews_SetSegmentInYourFace4
    ScriptEntry TVReporterInterviews_BattleFrontier
    ScriptEntryEnd

TVReporterInterviews_UnusedEntry10150:
    SetVar VAR_0x8000, TV_PROGRAM_SEGMENT_INTERVIEW_UNUSED_01
    GoTo TVReporterInterviews_AskDoInterview

TVReporterInterviews_BattleTower:
    SetVar VAR_0x8000, TV_PROGRAM_SEGMENT_BATTLE_TOWER_CORNER
    GoTo TVReporterInterviews_AskDoInterview

TVReporterInterviews_UnusedEntry10152:
    SetVar VAR_0x8000, TV_PROGRAM_SEGMENT_INTERVIEW_UNUSED_03
    GoTo TVReporterInterviews_AskDoInterview

TVReporterInterviews_HearthomeCityPokemonFanClub:
    SetVar VAR_0x8000, TV_PROGRAM_SEGMENT_YOUR_POKEMON_CORNER
    GoTo TVReporterInterviews_AskDoInterview

TVReporterInterviews_UnusedEntry10154:
    SetVar VAR_0x8000, TV_PROGRAM_SEGMENT_INTERVIEW_UNUSED_05
    GoTo TVReporterInterviews_AskDoInterview

TVReporterInterviews_PoketchCo1F:
    SetVar VAR_0x8000, TV_PROGRAM_SEGMENT_THE_POKETCH_WATCH
    GoTo TVReporterInterviews_AskDoInterview

TVReporterInterviews_ContestHallLobby:
    SetVar VAR_0x8000, TV_PROGRAM_SEGMENT_CONTEST_HALL
    GoTo TVReporterInterviews_AskDoInterview

TVReporterInterviews_UnusedEntry10157:
    SetVar VAR_0x8000, TV_PROGRAM_SEGMENT_INTERVIEW_UNUSED_08
    GoTo TVReporterInterviews_AskDoInterview

TVReporterInterviews_JubilifeTV2F:
    SetVar VAR_0x8000, TV_PROGRAM_SEGMENT_RIGHT_ON_PHOTO_CORNER
    GoTo TVReporterInterviews_AskDoInterview

TVReporterInterviews_CanalaveCityWestHouse:
    SetVar VAR_0x8000, TV_PROGRAM_SEGMENT_STREET_CORNER_PERSONALITY_CHECKUP
    GoTo TVReporterInterviews_AskDoInterview

TVReporterInterviews_PoffinHouse:
    SetVar VAR_0x8000, TV_PROGRAM_SEGMENT_THREE_CHEERS_FOR_POFFIN_CORNER
    GoTo TVReporterInterviews_AskDoInterview

TVReporterInterviews_UnusedEntry10161:
    SetVar VAR_0x8000, TV_PROGRAM_SEGMENT_INTERVIEW_UNUSED_12
    GoTo TVReporterInterviews_AskDoInterview

TVReporterInterviews_HearthomeCityGates:
    SetVar VAR_0x8000, TV_PROGRAM_SEGMENT_AMITY_SQUARE_WATCH
    GoTo TVReporterInterviews_AskDoInterview

TVReporterInterviews_BattleHall:
    SetVar VAR_0x8000, TV_PROGRAM_SEGMENT_BATTLE_FRONTIER_FRONTLINE_NEWS_SINGLE
    GoTo TVReporterInterviews_AskDoInterview

TVReporterInterviews_Route214GateToVeilstoneCity:
    GoToIfEq VAR_RANDOM_INTERVIEW_QUESTION, 1, TVReporterInterviews_SetSegmentInYourFace2
    GoToIfEq VAR_RANDOM_INTERVIEW_QUESTION, 2, TVReporterInterviews_SetSegmentInYourFace3
    GoToIfEq VAR_RANDOM_INTERVIEW_QUESTION, 3, TVReporterInterviews_SetSegmentInYourFace4
    SetVar VAR_0x8000, TV_PROGRAM_SEGMENT_IN_YOUR_FACE_INTERVIEW_QUESTION_1
    GoTo TVReporterInterviews_AskDoInterview

TVReporterInterviews_SetSegmentInYourFace2:
    SetVar VAR_0x8000, TV_PROGRAM_SEGMENT_IN_YOUR_FACE_INTERVIEW_QUESTION_2
    GoTo TVReporterInterviews_AskDoInterview

TVReporterInterviews_SetSegmentInYourFace3:
    SetVar VAR_0x8000, TV_PROGRAM_SEGMENT_IN_YOUR_FACE_INTERVIEW_QUESTION_3
    GoTo TVReporterInterviews_AskDoInterview

TVReporterInterviews_SetSegmentInYourFace4:
    SetVar VAR_0x8000, TV_PROGRAM_SEGMENT_IN_YOUR_FACE_INTERVIEW_QUESTION_4
    GoTo TVReporterInterviews_AskDoInterview

TVReporterInterviews_BattleFrontier:
    SetVar VAR_0x8000, 19
    GoTo TVReporterInterviews_AskDoInterview

TVReporterInterviews_AskDoInterview:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckTVInterviewEligible VAR_0x8000, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, TVReporterInterviews_ThanksForSharingThoughts
    Message TVReporterInterviews_Text_MayIDoQuickInterview
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, TVReporterInterviews_DoInterview
    GoTo TVReporterInterviews_ThatsTooBad
    End

TVReporterInterviews_DoInterview:
    LoadTVInterviewMessage VAR_0x8000, VAR_0x8004, VAR_0x8005
    MessageFromBank VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8000, TV_PROGRAM_SEGMENT_STREET_CORNER_PERSONALITY_CHECKUP, TVReporterInterviews_TypeMenu
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    ChooseCustomMessageWord 0, VAR_RESULT, VAR_0x8004
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0, TVReporterInterviews_ThatsTooBad
    SaveTVInterviewResponse VAR_0x8000, VAR_0x8004
    GoTo TVReporterInterviews_ThanksForSharingThoughts
    End

TVReporterInterviews_TypeMenu:
    InitLocalTextListMenu 1, 1, 0, VAR_0x8004
    AddListMenuEntry TVReporterInterviews_Text_Normal, 1
    AddListMenuEntry TVReporterInterviews_Text_Fire, 2
    AddListMenuEntry TVReporterInterviews_Text_Water, 3
    AddListMenuEntry TVReporterInterviews_Text_Electric, 4
    AddListMenuEntry TVReporterInterviews_Text_Grass, 5
    AddListMenuEntry TVReporterInterviews_Text_Ice, 6
    AddListMenuEntry TVReporterInterviews_Text_Fighting, 7
    AddListMenuEntry TVReporterInterviews_Text_Poison, 8
    AddListMenuEntry TVReporterInterviews_Text_Ground, 9
    AddListMenuEntry TVReporterInterviews_Text_Flying, 10
    AddListMenuEntry TVReporterInterviews_Text_Psychic, 11
    AddListMenuEntry TVReporterInterviews_Text_Bug, 12
    AddListMenuEntry TVReporterInterviews_Text_Rock, 13
    AddListMenuEntry TVReporterInterviews_Text_Ghost, 14
    AddListMenuEntry TVReporterInterviews_Text_Dragon, 15
    AddListMenuEntry TVReporterInterviews_Text_Dark, 16
    AddListMenuEntry TVReporterInterviews_Text_Steel, 17
    ShowListMenu
    GoToIfEq VAR_0x8004, -2, TVReporterInterviews_ThatsTooBad
    SaveTVInterviewResponse VAR_0x8000, VAR_0x8004
    GoTo TVReporterInterviews_ThanksForSharingThoughts
    End

TVReporterInterviews_ThanksForSharingThoughts:
    Message TVReporterInterviews_Text_ThanksForSharingThoughts
    WaitButton
    GoTo TVReporterInterviews_End
    End

TVReporterInterviews_ThatsTooBad:
    Message TVReporterInterviews_Text_ThatsTooBad
    WaitButton
    GoTo TVReporterInterviews_End
    End

TVReporterInterviews_End:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
