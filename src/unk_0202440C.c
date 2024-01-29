#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0202440C_decl.h"
#include "struct_decls/struct_0202442C_decl.h"
#include "struct_decls/struct_02024440_decl.h"
#include "struct_decls/struct_0202F264_decl.h"
#include "struct_decls/struct_020308A0_decl.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0202DF8C.h"

#include "savedata/save_table.h"

#include "unk_02014D38.h"
#include "unk_020244AC.h"
#include "unk_02025CB0.h"
#include "unk_02025E08.h"
#include "unk_0202602C.h"
#include "unk_020261E4.h"
#include "unk_0202631C.h"
#include "unk_020277A4.h"
#include "unk_02027F84.h"
#include "unk_02028124.h"
#include "unk_0202854C.h"
#include "unk_020298BC.h"
#include "poffin.h"
#include "unk_0202ACE0.h"
#include "unk_0202B37C.h"
#include "unk_0202B604.h"
#include "unk_0202C7FC.h"
#include "unk_0202C858.h"
#include "unk_0202C9F4.h"
#include "unk_0202CC64.h"
#include "unk_0202CD50.h"
#include "unk_0202D778.h"
#include "unk_0202D7A8.h"
#include "unk_0202DA40.h"
#include "unk_0202DAB4.h"
#include "unk_0202DF8C.h"
#include "unk_0202E2CC.h"
#include "unk_0202E840.h"
#include "unk_0202EEC0.h"
#include "unk_0202F108.h"
#include "unk_0202F1D4.h"
#include "unk_0203061C.h"
#include "unk_02030880.h"
#include "unk_02030CE8.h"
#include "unk_02030EA4.h"
#include "unk_0203A6DC.h"
#include "unk_020507CC.h"
#include "unk_02056720.h"
#include "unk_020797C8.h"
#include "party.h"
#include "unk_0207D3B8.h"

const SaveTableEntry gSaveTable[] = {
    { SAVE_TABLE_ENTRY_SYSTEM,                SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)SystemData_SaveSize,        (SaveEntryInitFunc)SystemData_Init        },
    { SAVE_TABLE_ENTRY_PLAYER,                SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)Player_SaveSize,            (SaveEntryInitFunc)Player_Init            },
    { SAVE_TABLE_ENTRY_PARTY,                 SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)Party_SaveSize,             (SaveEntryInitFunc)Party_Init             },
    { SAVE_TABLE_ENTRY_BAG,                   SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)Bag_SaveSize,               (SaveEntryInitFunc)Bag_Init               },
    { SAVE_TABLE_ENTRY_EVENTS,                SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)FieldEvents_SaveSize,       (SaveEntryInitFunc)FieldEvents_Init       },
    { SAVE_TABLE_ENTRY_POKETCH,               SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)Poketch_SaveSize,           (SaveEntryInitFunc)Poketch_Init           },
    { SAVE_TABLE_ENTRY_FIELD_PLAYER_STATE,    SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)FieldPlayerState_SaveSize,  (SaveEntryInitFunc)FieldPlayerState_Init  },
    { SAVE_TABLE_ENTRY_POKEDEX,               SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)Pokedex_SaveSize,           (SaveEntryInitFunc)Pokedex_Init           },
    { SAVE_TABLE_ENTRY_DAYCARE,               SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)Daycare_SaveSize,           (SaveEntryInitFunc)Daycare_Init           },
    { SAVE_TABLE_ENTRY_PAL_PAD,               SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)PalPad_SaveSize,            (SaveEntryInitFunc)PalPad_Init            },
    { SAVE_TABLE_ENTRY_MISC,                  SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)MiscSaveBlock_SaveSize,     (SaveEntryInitFunc)MiscSaveBlock_Init     },
    { SAVE_TABLE_ENTRY_FIELD_OVERWORLD_STATE, SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)FieldOWState_SaveSize,      (SaveEntryInitFunc)FieldOWState_Init      },
    { SAVE_TABLE_ENTRY_UNDERGROUND,           SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)Underground_SaveSize,       (SaveEntryInitFunc)Underground_Init       },
    { SAVE_TABLE_ENTRY_REGULATION_BATTLES,    SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)RegulationBattles_SaveSize, (SaveEntryInitFunc)RegulationBattles_Init },
    { SAVE_TABLE_ENTRY_IMAGE_CLIPS,           SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)ImageClip_SaveSize,         (SaveEntryInitFunc)ImageClip_Init         },
    { SAVE_TABLE_ENTRY_MAIL,                  SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)Mail_SaveSize,              (SaveEntryInitFunc)Mail_Init              },
    { SAVE_TABLE_ENTRY_POFFINS,               SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)Poffin_SaveSize,            (SaveEntryInitFunc)Poffin_Init            },
    { SAVE_TABLE_ENTRY_RANDOM_GROUP,          SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)RandomGroup_SaveSize,       (SaveEntryInitFunc)RandomGroup_Init       },
    { SAVE_TABLE_ENTRY_JOURNAL,               SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)Journal_SaveSize,           (SaveEntryInitFunc)Journal_Init           },
    { SAVE_TABLE_ENTRY_TRAINER_CARD,          SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)TrainerCard_SaveSize,       (SaveEntryInitFunc)TrainerCard_Init       },
    { SAVE_TABLE_ENTRY_GAME_RECORDS,          SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)GameRecord_SaveSize,        (SaveEntryInitFunc)GameRecord_Init        },
    { SAVE_TABLE_ENTRY_BALL_SEALS,            SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)BallSeal_SaveSize,          (SaveEntryInitFunc)BallSeal_Init          },
    { SAVE_TABLE_ENTRY_CHATOT,                SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)ChatotCry_SaveSize,         (SaveEntryInitFunc)ChatotCry_Init         },
    { SAVE_TABLE_ENTRY_FRONTIER,              SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)Frontier_SaveSize,          (SaveEntryInitFunc)Frontier_Init          },
    { SAVE_TABLE_ENTRY_RIBBONS,               SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)Ribbons_SaveSize,           (SaveEntryInitFunc)Ribbons_Init           },
    { SAVE_TABLE_ENTRY_ENCOUNTERS,            SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)SpecialEncounter_SaveSize,  (SaveEntryInitFunc)SpecialEncounter_Init  },
    { SAVE_TABLE_ENTRY_GLOBAL_TRADE,          SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)GlobalTrade_SaveSize,       (SaveEntryInitFunc)GlobalTrade_Init       },
    { SAVE_TABLE_ENTRY_TV_BROADCAST,          SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)TVBroadcast_SaveSize,       (SaveEntryInitFunc)TVBroadcast_Init       },
    { SAVE_TABLE_ENTRY_RANKINGS,              SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)Rankings_SaveSize,          (SaveEntryInitFunc)Rankings_Init          },
    { SAVE_TABLE_ENTRY_WIFI_LIST,             SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)WiFiList_SaveSize,          (SaveEntryInitFunc)WiFiList_Init          },
    { SAVE_TABLE_ENTRY_WIFI_HISTORY,          SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)WiFiHistory_SaveSize,       (SaveEntryInitFunc)WiFiHistory_Init       },
    { SAVE_TABLE_ENTRY_MYSTERY_GIFT,          SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)MysteryGift_SaveSize,       (SaveEntryInitFunc)MysteryGift_Init       },
    { SAVE_TABLE_ENTRY_PAL_PARK_TRANSFER,     SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)PalParkTransfer_SaveSize,   (SaveEntryInitFunc)PalParkTransfer_Init   },
    { SAVE_TABLE_ENTRY_CONTESTS,              SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)Contest_SaveSize,           (SaveEntryInitFunc)Contest_Init           },
    { SAVE_TABLE_ENTRY_SENTENCE,              SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)Sentence_SaveSize,          (SaveEntryInitFunc)Sentence_Init          },
    { SAVE_TABLE_ENTRY_EMAIL,                 SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)Email_SaveSize,             (SaveEntryInitFunc)Email_Init             },
    { SAVE_TABLE_ENTRY_WIFI_QUESTIONS,        SAVE_BLOCK_ID_NORMAL, (SaveEntrySizeFunc)WiFiQuestion_SaveSize,      (SaveEntryInitFunc)WiFiQuestion_Init      },
    { SAVE_TABLE_ENTRY_PC_BOXES,              SAVE_BLOCK_ID_BOXES,  (SaveEntrySizeFunc)PCBoxes_SaveSize,          (SaveEntryInitFunc)PCBoxes_Init            },
};

const int gSaveTableSize = NELEMS(gSaveTable);

TVBroadcast * SaveData_TVBroadcast (SaveData * param0)
{
    SaveData_CRC(27);
    return SaveData_Get(param0, 27);
}

PCBoxes * SaveData_PCBoxes (SaveData * param0)
{
    return SaveData_Get(param0, 37);
}

MysteryGift * SaveData_MysteryGift (SaveData * param0)
{
    SaveData_CRC(31);
    return SaveData_Get(param0, 31);
}

PalParkTransfer * SaveData_PalParkTransfer (SaveData * param0)
{
    return SaveData_Get(param0, 32);
}

const SaveTableEntry gExtraSaveTable[] = {
    { EXTRA_SAVE_TABLE_ENTRY_HALL_OF_FAME,    SAVE_PAGE_MAX,      (SaveEntrySizeFunc)HallOfFame_SaveSize,      (SaveEntryInitFunc)HallOfFame_Init      },
    { EXTRA_SAVE_TABLE_ENTRY_FRONTIER,        SAVE_PAGE_MAX + 3,  (SaveEntrySizeFunc)Frontier_Extra_SaveSize,  (SaveEntryInitFunc)Frontier_Extra_Init  },
    { EXTRA_SAVE_TABLE_ENTRY_MY_RECORDINGS,   SAVE_PAGE_MAX + 4,  (SaveEntrySizeFunc)BattleRecording_SaveSize, (SaveEntryInitFunc)BattleRecording_Init },
    { EXTRA_SAVE_TABLE_ENTRY_DL_RECORDINGS_0, SAVE_PAGE_MAX + 6,  (SaveEntrySizeFunc)BattleRecording_SaveSize, (SaveEntryInitFunc)BattleRecording_Init },
    { EXTRA_SAVE_TABLE_ENTRY_DL_RECORDINGS_1, SAVE_PAGE_MAX + 8,  (SaveEntrySizeFunc)BattleRecording_SaveSize, (SaveEntryInitFunc)BattleRecording_Init },
    { EXTRA_SAVE_TABLE_ENTRY_DL_RECORDINGS_2, SAVE_PAGE_MAX + 10, (SaveEntrySizeFunc)BattleRecording_SaveSize, (SaveEntryInitFunc)BattleRecording_Init },
};

const int gExtraSaveTableSize = NELEMS(gExtraSaveTable);

HallOfFame * SaveData_HallOfFame (SaveData * param0, int param1, int * param2)
{
    return SaveDataExtra_Get(param0, param1, 0, param2);
}

int SaveData_SaveHallOfFame (SaveData * param0, HallOfFame * param1)
{
    return SaveDataExtra_Save(param0, 0, param1);
}

BattleRecording * SaveData_BattleRecording (SaveData * param0, int param1, int * param2, int param3)
{
    BOOL v0;
    return SaveDataExtra_Mirror(param0, param1, 2 + param3, param2, &v0);
}

int SaveData_SaveBattleRecording (SaveData * param0, BattleRecording * param1, int param2)
{
    return SaveDataExtra_SaveMirror(param0, 2 + param2, param1);
}

BattleFrontierStage * SaveData_BattleFrontierStage (SaveData * param0, int param1, int * param2)
{
    BOOL v0;
    return SaveDataExtra_Mirror(param0, param1, 1, param2, &v0);
}

int SaveData_SaveBattleFrontierStage (SaveData * param0, BattleFrontierStage * param1)
{
    return SaveDataExtra_SaveMirror(param0, 1, param1);
}
