#include <nitro.h>
#include <string.h>

#include "generated/movement_actions.h"

#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_020EDF0C.h"

#include "map_object.h"
#include "unk_0206450C.h"
#include "unk_020677F4.h"
#include "unk_02069BE0.h"

extern BOOL (*const gMovementActionFuncs_FaceNorth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_FaceSouth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_FaceWest[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_FaceEast[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkSlowerNorth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkSlowerSouth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkSlowerWest[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkSlowerEast[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkSlowNorth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkSlowSouth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkSlowWest[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkSlowEast[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkNormalNorth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkNormalSouth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkNormalWest[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkNormalEast[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkFastNorth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkFastSouth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkFastWest[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkFastEast[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkFasterNorth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkFasterSouth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkFasterWest[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkFasterEast[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkFastestNorth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkFastestSouth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkFastestWest[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkFastestEast[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_RunNorth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_RunSouth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_RunWest[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_RunEast[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkOnSpotSlowerNorth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkOnSpotSlowerSouth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkOnSpotSlowerWest[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkOnSpotSlowerEast[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkOnSpotSlowNorth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkOnSpotSlowSouth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkOnSpotSlowWest[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkOnSpotSlowEast[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkOnSpotNormalNorth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkOnSpotNormalSouth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkOnSpotNormalWest[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkOnSpotNormalEast[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkOnSpotFastNorth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkOnSpotFastSouth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkOnSpotFastWest[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkOnSpotFastEast[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkOnSpotFasterNorth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkOnSpotFasterSouth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkOnSpotFasterWest[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkOnSpotFasterEast[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_JumpOnSpotSlowNorth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_JumpOnSpotSlowSouth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_JumpOnSpotSlowWest[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_JumpOnSpotSlowEast[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_JumpOnSpotFastNorth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_JumpOnSpotFastSouth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_JumpOnSpotFastWest[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_JumpOnSpotFastEast[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_JumpNearFastNorth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_JumpNearFastSouth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_JumpNearFastWest[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_JumpNearFastEast[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_JumpFarNorth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_JumpFarSouth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_JumpFarWest[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_JumpFarEast[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_JumpNearSlowWest[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_JumpNearSlowEast[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_JumpFartherWest[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_JumpFartherEast[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_117[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_118[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_119[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_120[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_Delay1[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_Delay2[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_Delay4[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_Delay8[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_Delay15[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_Delay16[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_Delay32[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WarpOut[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WarpIn[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_SetInvisible[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_SetVisible[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_LockDir[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_UnlockDir[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_PauseAnimation[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_ResumeAnimation[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_EmoteExclamationMark[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_EmoteQuestionMark[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkSlightlyFastNorth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkSlightlyFastSouth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkSlightlyFastWest[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkSlightlyFastEast[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkSlightlyFasterNorth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkSlightlyFasterSouth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkSlightlyFasterWest[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkSlightlyFasterEast[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkEverSoSlightlyFastNorth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkEverSoSlightlyFastSouth[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkEverSoSlightlyFastWest[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_WalkEverSoSlightlyFastEast[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_NurseJoyBow[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_RevealTrainer[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_PlayerGive[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_PlayerReceive[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_105[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_106[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_107[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_108[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_109[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_110[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_111[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_112[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_113[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_114[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_115[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_116[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_145[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_146[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_147[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_148[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_149[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_150[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_151[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_152[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_121[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_122[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_123[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_124[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_125[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_126[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_127[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_128[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_129[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_130[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_131[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_132[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_133[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_134[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_135[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_136[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_137[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_138[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_139[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_140[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_141[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_142[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_143[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_144[])(MapObject *);
extern BOOL (*const gMovementActionFuncs_153[])(MapObject *);

static const UnkStruct_020EDF0C Unk_020EDF0C = {
    0x0,
    sub_020633E0,
    sub_020633E4,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDE58 = {
    0x1,
    sub_020633E0,
    sub_020633E4,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE308 = {
    0x2,
    sub_0206453C,
    sub_020645C0,
    sub_02064624,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE2F4 = {
    0x3,
    sub_02064628,
    sub_02064690,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE2E0 = {
    0x3,
    sub_02064638,
    sub_02064690,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDEE4 = {
    0x3,
    sub_02064648,
    sub_02064690,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE2B8 = {
    0x3,
    sub_02064658,
    sub_02064690,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDE94 = {
    0x3,
    sub_02064548,
    sub_020645C0,
    sub_02064624,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDEBC = {
    0x3,
    sub_02064554,
    sub_020645C0,
    sub_02064624,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDED0 = {
    0x3,
    sub_02064560,
    sub_020645C0,
    sub_02064624,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE268 = {
    0x3,
    sub_0206456C,
    sub_020645C0,
    sub_02064624,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE254 = {
    0x3,
    sub_02064578,
    sub_020645C0,
    sub_02064624,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE240 = {
    0x3,
    sub_02064584,
    sub_020645C0,
    sub_02064624,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDF70 = {
    0x3,
    sub_02064590,
    sub_020645C0,
    sub_02064624,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE218 = {
    0x3,
    sub_0206459C,
    sub_020645C0,
    sub_02064624,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE204 = {
    0x3,
    sub_020645A8,
    sub_020645C0,
    sub_02064624,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDFC0 = {
    0x3,
    sub_020645B4,
    sub_020645C0,
    sub_02064624,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDFD4 = {
    0x3,
    sub_0206493C,
    sub_02064918,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE1C8 = {
    0x3,
    sub_02064948,
    sub_02064918,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE1B4 = {
    0x3,
    sub_02064954,
    sub_02064918,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE1A0 = {
    0x3,
    sub_02064960,
    sub_02064918,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE024 = {
    0x3,
    sub_02064990,
    sub_020649A8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE178 = {
    0x3,
    sub_0206499C,
    sub_020649A8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE164 = {
    0x3,
    sub_02064AF0,
    sub_02064AFC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE060 = {
    0x3,
    sub_02064C28,
    sub_02064C48,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE074 = {
    0x3,
    sub_02064DC8,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE128 = {
    0x3,
    sub_02064DD8,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE114 = {
    0x3,
    sub_02064DE8,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE0B0 = {
    0x3,
    sub_02064DF8,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE0C4 = {
    0x3,
    sub_02064E08,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE0EC = {
    0x3,
    sub_02064E18,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE100 = {
    0x3,
    sub_02064E28,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE13C = {
    0x3,
    sub_02064E38,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE150 = {
    0x3,
    sub_02064E48,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE18C = {
    0x3,
    sub_02064E58,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE1DC = {
    0x3,
    sub_02064E68,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE1F0 = {
    0x3,
    sub_02064E78,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE22C = {
    0x3,
    sub_02064E88,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE27C = {
    0x3,
    sub_02064E98,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE290 = {
    0x3,
    sub_02064EA8,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE2A4 = {
    0x3,
    sub_02064EB8,
    sub_02064EC8,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE2CC = {
    0x3,
    sub_0206505C,
    sub_020650DC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDFE8 = {
    0x3,
    sub_0206506C,
    sub_020650DC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDDCC = {
    0x3,
    sub_0206507C,
    sub_020650DC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDDE0 = {
    0x3,
    sub_0206508C,
    sub_020650DC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDDF4 = {
    0x3,
    sub_0206509C,
    sub_020650DC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDF98 = {
    0x3,
    sub_020650AC,
    sub_020650DC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDE08 = {
    0x3,
    sub_020650BC,
    sub_020650DC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDE1C = {
    0x3,
    sub_020650CC,
    sub_020650DC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDE30 = {
    0x2f,
    sub_02067840,
    sub_02067850,
    sub_0206786C,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDF48 = {
    0x3,
    sub_02069BE0,
    sub_02069C0C,
    sub_02069C44,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDE44 = {
    0x3,
    sub_02069DF4,
    sub_02069E1C,
    sub_02069E4C,
    sub_02069E50
};

static const UnkStruct_020EDF0C Unk_020EDF20 = {
    0x33,
    sub_0206A104,
    sub_0206A134,
    sub_0206A158,
    sub_0206A168
};

static const UnkStruct_020EDF0C Unk_020EDE6C = {
    0x34,
    sub_0206A110,
    sub_0206A134,
    sub_0206A158,
    sub_0206A168
};

static const UnkStruct_020EDF0C Unk_020EDEF8 = {
    0x35,
    sub_0206A11C,
    sub_0206A134,
    sub_0206A158,
    sub_0206A168
};

static const UnkStruct_020EDF0C Unk_020EDE80 = {
    0x36,
    sub_0206A128,
    sub_0206A134,
    sub_0206A158,
    sub_0206A168
};

static const UnkStruct_020EDF0C Unk_020EDEA8 = {
    0x37,
    sub_0206A25C,
    sub_0206A2BC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDF34 = {
    0x38,
    sub_0206A268,
    sub_0206A2BC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDF5C = {
    0x39,
    sub_0206A274,
    sub_0206A2BC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDF84 = {
    0x3A,
    sub_0206A280,
    sub_0206A2BC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDFAC = {
    0x3B,
    sub_0206A28C,
    sub_0206A2BC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EDFFC = {
    0x3C,
    sub_0206A298,
    sub_0206A2BC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE010 = {
    0x3D,
    sub_0206A2A4,
    sub_0206A2BC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE038 = {
    0x3E,
    sub_0206A2B0,
    sub_0206A2BC,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE04C = {
    0x3f,
    sub_0206A490,
    sub_0206A4C0,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE088 = {
    0x40,
    sub_0206A49C,
    sub_0206A4C0,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE09C = {
    0x41,
    sub_0206A4A8,
    sub_0206A4C0,
    sub_020633E8,
    sub_020633EC
};

static const UnkStruct_020EDF0C Unk_020EE0D8 = {
    0x42,
    sub_0206A4B4,
    sub_0206A4C0,
    sub_020633E8,
    sub_020633EC
};

const UnkStruct_020EDF0C *const Unk_020EE3A8[] = {
    &Unk_020EDF0C,
    &Unk_020EDE58,
    &Unk_020EE308,
    &Unk_020EE2F4,
    &Unk_020EE2E0,
    &Unk_020EDEE4,
    &Unk_020EDE94,
    &Unk_020EDEBC,
    &Unk_020EDED0,
    &Unk_020EE268,
    &Unk_020EE254,
    &Unk_020EE240,
    &Unk_020EDF70,
    &Unk_020EE218,
    &Unk_020EDFD4,
    &Unk_020EE1C8,
    &Unk_020EE1B4,
    &Unk_020EE1A0,
    &Unk_020EE024,
    &Unk_020EE178,
    &Unk_020EE060,
    &Unk_020EE074,
    &Unk_020EE128,
    &Unk_020EE114,
    &Unk_020EE0B0,
    &Unk_020EE0C4,
    &Unk_020EE0EC,
    &Unk_020EE100,
    &Unk_020EE13C,
    &Unk_020EE150,
    &Unk_020EE18C,
    &Unk_020EE1DC,
    &Unk_020EE1F0,
    &Unk_020EE22C,
    &Unk_020EE27C,
    &Unk_020EE290,
    &Unk_020EE2A4,
    &Unk_020EE2CC,
    &Unk_020EDFE8,
    &Unk_020EDDCC,
    &Unk_020EDDE0,
    &Unk_020EDDF4,
    &Unk_020EDF98,
    &Unk_020EDE08,
    &Unk_020EDE1C,
    &Unk_020EE204,
    &Unk_020EDFC0,
    &Unk_020EDE30,
    &Unk_020EDF48,
    &Unk_020EE164,
    &Unk_020EDE44,
    &Unk_020EDF20,
    &Unk_020EDE6C,
    &Unk_020EDEF8,
    &Unk_020EDE80,
    &Unk_020EDEA8,
    &Unk_020EDF34,
    &Unk_020EDF5C,
    &Unk_020EDF84,
    &Unk_020EDFAC,
    &Unk_020EDFFC,
    &Unk_020EE010,
    &Unk_020EE038,
    &Unk_020EE04C,
    &Unk_020EE088,
    &Unk_020EE09C,
    &Unk_020EE0D8,
    &Unk_020EE2B8
};

BOOL (*const *const gMovementActionFuncs[MAX_MOVEMENT_ACTION])(MapObject *) = {
    gMovementActionFuncs_FaceNorth,
    gMovementActionFuncs_FaceSouth,
    gMovementActionFuncs_FaceWest,
    gMovementActionFuncs_FaceEast,
    gMovementActionFuncs_WalkSlowerNorth,
    gMovementActionFuncs_WalkSlowerSouth,
    gMovementActionFuncs_WalkSlowerWest,
    gMovementActionFuncs_WalkSlowerEast,
    gMovementActionFuncs_WalkSlowNorth,
    gMovementActionFuncs_WalkSlowSouth,
    gMovementActionFuncs_WalkSlowWest,
    gMovementActionFuncs_WalkSlowEast,
    gMovementActionFuncs_WalkNormalNorth,
    gMovementActionFuncs_WalkNormalSouth,
    gMovementActionFuncs_WalkNormalWest,
    gMovementActionFuncs_WalkNormalEast,
    gMovementActionFuncs_WalkFastNorth,
    gMovementActionFuncs_WalkFastSouth,
    gMovementActionFuncs_WalkFastWest,
    gMovementActionFuncs_WalkFastEast,
    gMovementActionFuncs_WalkFasterNorth,
    gMovementActionFuncs_WalkFasterSouth,
    gMovementActionFuncs_WalkFasterWest,
    gMovementActionFuncs_WalkFasterEast,
    gMovementActionFuncs_WalkOnSpotSlowerNorth,
    gMovementActionFuncs_WalkOnSpotSlowerSouth,
    gMovementActionFuncs_WalkOnSpotSlowerWest,
    gMovementActionFuncs_WalkOnSpotSlowerEast,
    gMovementActionFuncs_WalkOnSpotSlowNorth,
    gMovementActionFuncs_WalkOnSpotSlowSouth,
    gMovementActionFuncs_WalkOnSpotSlowWest,
    gMovementActionFuncs_WalkOnSpotSlowEast,
    gMovementActionFuncs_WalkOnSpotNormalNorth,
    gMovementActionFuncs_WalkOnSpotNormalSouth,
    gMovementActionFuncs_WalkOnSpotNormalWest,
    gMovementActionFuncs_WalkOnSpotNormalEast,
    gMovementActionFuncs_WalkOnSpotFastNorth,
    gMovementActionFuncs_WalkOnSpotFastSouth,
    gMovementActionFuncs_WalkOnSpotFastWest,
    gMovementActionFuncs_WalkOnSpotFastEast,
    gMovementActionFuncs_WalkOnSpotFasterNorth,
    gMovementActionFuncs_WalkOnSpotFasterSouth,
    gMovementActionFuncs_WalkOnSpotFasterWest,
    gMovementActionFuncs_WalkOnSpotFasterEast,
    gMovementActionFuncs_JumpOnSpotSlowNorth,
    gMovementActionFuncs_JumpOnSpotSlowSouth,
    gMovementActionFuncs_JumpOnSpotSlowWest,
    gMovementActionFuncs_JumpOnSpotSlowEast,
    gMovementActionFuncs_JumpOnSpotFastNorth,
    gMovementActionFuncs_JumpOnSpotFastSouth,
    gMovementActionFuncs_JumpOnSpotFastWest,
    gMovementActionFuncs_JumpOnSpotFastEast,
    gMovementActionFuncs_JumpNearFastNorth,
    gMovementActionFuncs_JumpNearFastSouth,
    gMovementActionFuncs_JumpNearFastWest,
    gMovementActionFuncs_JumpNearFastEast,
    gMovementActionFuncs_JumpFarNorth,
    gMovementActionFuncs_JumpFarSouth,
    gMovementActionFuncs_JumpFarWest,
    gMovementActionFuncs_JumpFarEast,
    gMovementActionFuncs_Delay1,
    gMovementActionFuncs_Delay2,
    gMovementActionFuncs_Delay4,
    gMovementActionFuncs_Delay8,
    gMovementActionFuncs_Delay15,
    gMovementActionFuncs_Delay16,
    gMovementActionFuncs_Delay32,
    gMovementActionFuncs_WarpOut,
    gMovementActionFuncs_WarpIn,
    gMovementActionFuncs_SetInvisible,
    gMovementActionFuncs_SetVisible,
    gMovementActionFuncs_LockDir,
    gMovementActionFuncs_UnlockDir,
    gMovementActionFuncs_PauseAnimation,
    gMovementActionFuncs_ResumeAnimation,
    gMovementActionFuncs_EmoteExclamationMark,
    gMovementActionFuncs_WalkSlightlyFastNorth,
    gMovementActionFuncs_WalkSlightlyFastSouth,
    gMovementActionFuncs_WalkSlightlyFastWest,
    gMovementActionFuncs_WalkSlightlyFastEast,
    gMovementActionFuncs_WalkSlightlyFasterNorth,
    gMovementActionFuncs_WalkSlightlyFasterSouth,
    gMovementActionFuncs_WalkSlightlyFasterWest,
    gMovementActionFuncs_WalkSlightlyFasterEast,
    gMovementActionFuncs_WalkFastestNorth,
    gMovementActionFuncs_WalkFastestSouth,
    gMovementActionFuncs_WalkFastestWest,
    gMovementActionFuncs_WalkFastestEast,
    gMovementActionFuncs_RunNorth,
    gMovementActionFuncs_RunSouth,
    gMovementActionFuncs_RunWest,
    gMovementActionFuncs_RunEast,
    gMovementActionFuncs_JumpNearSlowWest,
    gMovementActionFuncs_JumpNearSlowEast,
    gMovementActionFuncs_JumpFartherWest,
    gMovementActionFuncs_JumpFartherEast,
    gMovementActionFuncs_WalkEverSoSlightlyFastNorth,
    gMovementActionFuncs_WalkEverSoSlightlyFastSouth,
    gMovementActionFuncs_WalkEverSoSlightlyFastWest,
    gMovementActionFuncs_WalkEverSoSlightlyFastEast,
    gMovementActionFuncs_NurseJoyBow,
    gMovementActionFuncs_RevealTrainer,
    gMovementActionFuncs_PlayerGive,
    gMovementActionFuncs_EmoteQuestionMark,
    gMovementActionFuncs_PlayerReceive,
    gMovementActionFuncs_105,
    gMovementActionFuncs_106,
    gMovementActionFuncs_107,
    gMovementActionFuncs_108,
    gMovementActionFuncs_109,
    gMovementActionFuncs_110,
    gMovementActionFuncs_111,
    gMovementActionFuncs_112,
    gMovementActionFuncs_113,
    gMovementActionFuncs_114,
    gMovementActionFuncs_115,
    gMovementActionFuncs_116,
    gMovementActionFuncs_117,
    gMovementActionFuncs_118,
    gMovementActionFuncs_119,
    gMovementActionFuncs_120,
    gMovementActionFuncs_121,
    gMovementActionFuncs_122,
    gMovementActionFuncs_123,
    gMovementActionFuncs_124,
    gMovementActionFuncs_125,
    gMovementActionFuncs_126,
    gMovementActionFuncs_127,
    gMovementActionFuncs_128,
    gMovementActionFuncs_129,
    gMovementActionFuncs_130,
    gMovementActionFuncs_131,
    gMovementActionFuncs_132,
    gMovementActionFuncs_133,
    gMovementActionFuncs_134,
    gMovementActionFuncs_135,
    gMovementActionFuncs_136,
    gMovementActionFuncs_137,
    gMovementActionFuncs_138,
    gMovementActionFuncs_139,
    gMovementActionFuncs_140,
    gMovementActionFuncs_141,
    gMovementActionFuncs_142,
    gMovementActionFuncs_143,
    gMovementActionFuncs_144,
    gMovementActionFuncs_145,
    gMovementActionFuncs_146,
    gMovementActionFuncs_147,
    gMovementActionFuncs_148,
    gMovementActionFuncs_149,
    gMovementActionFuncs_150,
    gMovementActionFuncs_151,
    gMovementActionFuncs_152,
    gMovementActionFuncs_153,
};

static const int sMovementActionCodes_Face[] = {
    0x0,
    0x1,
    0x2,
    0x3
};

static const int sMovementActionCodes_WalkSlower[] = {
    0x4,
    0x5,
    0x6,
    0x7
};

static const int sMovementActionCodes_WalkSlow[] = {
    0x8,
    0x9,
    0xA,
    0xB
};

static const int sMovementActionCodes_WalkNormal[] = {
    0xC,
    0xD,
    0xE,
    0xf
};

static const int sMovementActionCodes_WalkFast[] = {
    0x10,
    0x11,
    0x12,
    0x13
};

static const int sMovementActionCodes_WalkFaster[] = {
    0x14,
    0x15,
    0x16,
    0x17
};

static const int sMovementActionCodes_WalkOnSpotSlower[] = {
    0x18,
    0x19,
    0x1A,
    0x1B
};

static const int sMovementActionCodes_WalkOnSpotSlow[] = {
    0x1C,
    0x1D,
    0x1E,
    0x1f
};

static const int sMovementActionCodes_WalkOnSpotNormal[] = {
    0x20,
    0x21,
    0x22,
    0x23
};

static const int sMovementActionCodes_WalkOnSpotFast[] = {
    0x24,
    0x25,
    0x26,
    0x27
};

static const int sMovementActionCodes_WalkOnSpotFaster[] = {
    0x28,
    0x29,
    0x2A,
    0x2B
};

static const int sMovementActionCodes_JumpOnSpotSlow[] = {
    0x2C,
    0x2D,
    0x2E,
    0x2f
};

static const int sMovementActionCodes_JumpOnSpotFast[] = {
    0x30,
    0x31,
    0x32,
    0x33
};

static const int sMovementActionCodes_JumpNearFast[] = {
    0x34,
    0x35,
    0x36,
    0x37
};

static const int sMovementActionCodes_JumpFar[] = {
    0x38,
    0x39,
    0x3A,
    0x3B
};

static const int sMovementActionCodes_WalkSlightlyFast[] = {
    0x4C,
    0x4D,
    0x4E,
    0x4f
};

static const int sMovementActionCodes_WalkSlightlyFaster[] = {
    0x50,
    0x51,
    0x52,
    0x53
};

static const int sMovementActionCodes_WalkFastest[] = {
    0x54,
    0x55,
    0x56,
    0x57
};

static const int sMovementActionCodes_Run[] = {
    0x58,
    0x59,
    0x5A,
    0x5B
};

static const int sMovementActionCodes_JumpNearSlow[] = {
    0x5C,
    0x5D,
    0x5C,
    0x5D
};

static const int sMovementActionCodes_JumpFarther[] = {
    0x5E,
    0x5f,
    0x5E,
    0x5f
};

static const int sMovementActionCodes_WalkEverSoSlightlyFast[] = {
    0x60,
    0x61,
    0x62,
    0x63
};

static const int Unk_020EDC2C[] = {
    0x75,
    0x76,
    0x77,
    0x78
};

static const int Unk_020EDCCC[] = {
    0x69,
    0x6A,
    0x6B,
    0x6C
};

static const int Unk_020EDC0C[] = {
    0x6D,
    0x6E,
    0x6f,
    0x70
};

static const int Unk_020EDCAC[] = {
    0x71,
    0x72,
    0x73,
    0x74
};

static const int Unk_020EDC1C[] = {
    0x91,
    0x92,
    0x93,
    0x94
};

static const int Unk_020EDD8C[] = {
    0x95,
    0x96,
    0x97,
    0x98
};

static const int Unk_020EDD4C[] = {
    0x79,
    0x7A,
    0x7B,
    0x7C
};

static const int Unk_020EDD1C[] = {
    0x7D,
    0x7E,
    0x7f,
    0x80
};

static const int Unk_020EDD6C[] = {
    0x81,
    0x82,
    0x83,
    0x84
};

static const int Unk_020EDBCC[] = {
    0x85,
    0x86,
    0x87,
    0x88
};

static const int Unk_020EDDAC[] = {
    0x89,
    0x8A,
    0x8B,
    0x8C
};

static const int Unk_020EDBBC[] = {
    0x8D,
    0x8E,
    0x8f,
    0x90
};

const int *const gMovementActionCodes[] = {
    sMovementActionCodes_Face,
    sMovementActionCodes_WalkSlower,
    sMovementActionCodes_WalkSlow,
    sMovementActionCodes_WalkNormal,
    sMovementActionCodes_WalkFast,
    sMovementActionCodes_WalkFaster,
    sMovementActionCodes_WalkOnSpotSlower,
    sMovementActionCodes_WalkOnSpotSlow,
    sMovementActionCodes_WalkOnSpotNormal,
    sMovementActionCodes_WalkOnSpotFast,
    sMovementActionCodes_WalkOnSpotFaster,
    sMovementActionCodes_JumpOnSpotSlow,
    sMovementActionCodes_JumpOnSpotFast,
    sMovementActionCodes_JumpNearFast,
    sMovementActionCodes_JumpFar,
    sMovementActionCodes_WalkSlightlyFast,
    sMovementActionCodes_WalkSlightlyFaster,
    sMovementActionCodes_WalkFastest,
    sMovementActionCodes_Run,
    sMovementActionCodes_JumpNearSlow,
    sMovementActionCodes_JumpFarther,
    sMovementActionCodes_WalkEverSoSlightlyFast,
    Unk_020EDCCC,
    Unk_020EDC0C,
    Unk_020EDC2C,
    Unk_020EDCAC,
    Unk_020EDD4C,
    Unk_020EDD1C,
    Unk_020EDD6C,
    Unk_020EDBCC,
    Unk_020EDDAC,
    Unk_020EDBBC,
    Unk_020EDC1C,
    Unk_020EDD8C,
    NULL
};
