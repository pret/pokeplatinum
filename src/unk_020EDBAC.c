#include <nitro.h>
#include <string.h>

#include "generated/movement_actions.h"

#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_020EDF0C.h"

#include "map_object.h"
#include "unk_0206450C.h"
#include "unk_020677F4.h"
#include "unk_02069BE0.h"

extern int (*const gMovementActionFuncs_FaceNorth[])(MapObject *);
extern int (*const gMovementActionFuncs_FaceSouth[])(MapObject *);
extern int (*const gMovementActionFuncs_FaceWest[])(MapObject *);
extern int (*const gMovementActionFuncs_FaceEast[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkSlowerNorth[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkSlowerSouth[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkSlowerWest[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkSlowerEast[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkSlowNorth[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkSlowSouth[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkSlowWest[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkSlowEast[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkNormalNorth[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkNormalSouth[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkNormalWest[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkNormalEast[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkFastNorth[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkFastSouth[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkFastWest[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkFastEast[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkFasterNorth[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkFasterSouth[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkFasterWest[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkFasterEast[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkFastestNorth[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkFastestSouth[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkFastestWest[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkFastestEast[])(MapObject *);
extern int (*const gMovementActionFuncs_RunNorth[])(MapObject *);
extern int (*const gMovementActionFuncs_RunSouth[])(MapObject *);
extern int (*const gMovementActionFuncs_RunWest[])(MapObject *);
extern int (*const gMovementActionFuncs_RunEast[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkOnSpotSlowerNorth[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkOnSpotSlowerSouth[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkOnSpotSlowerWest[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkOnSpotSlowerEast[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkOnSpotSlowNorth[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkOnSpotSlowSouth[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkOnSpotSlowWest[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkOnSpotSlowEast[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkOnSpotNormalNorth[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkOnSpotNormalSouth[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkOnSpotNormalWest[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkOnSpotNormalEast[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkOnSpotFastNorth[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkOnSpotFastSouth[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkOnSpotFastWest[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkOnSpotFastEast[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkOnSpotFasterNorth[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkOnSpotFasterSouth[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkOnSpotFasterWest[])(MapObject *);
extern int (*const gMovementActionFuncs_WalkOnSpotFasterEast[])(MapObject *);
extern int (*const gMovementActionFuncs_044[])(MapObject *);
extern int (*const gMovementActionFuncs_045[])(MapObject *);
extern int (*const gMovementActionFuncs_046[])(MapObject *);
extern int (*const gMovementActionFuncs_047[])(MapObject *);
extern int (*const gMovementActionFuncs_048[])(MapObject *);
extern int (*const gMovementActionFuncs_049[])(MapObject *);
extern int (*const gMovementActionFuncs_050[])(MapObject *);
extern int (*const gMovementActionFuncs_051[])(MapObject *);
extern int (*const gMovementActionFuncs_052[])(MapObject *);
extern int (*const gMovementActionFuncs_053[])(MapObject *);
extern int (*const gMovementActionFuncs_054[])(MapObject *);
extern int (*const gMovementActionFuncs_055[])(MapObject *);
extern int (*const gMovementActionFuncs_056[])(MapObject *);
extern int (*const gMovementActionFuncs_057[])(MapObject *);
extern int (*const gMovementActionFuncs_058[])(MapObject *);
extern int (*const gMovementActionFuncs_059[])(MapObject *);
extern int (*const gMovementActionFuncs_092[])(MapObject *);
extern int (*const gMovementActionFuncs_093[])(MapObject *);
extern int (*const gMovementActionFuncs_094[])(MapObject *);
extern int (*const gMovementActionFuncs_095[])(MapObject *);
extern int (*const gMovementActionFuncs_117[])(MapObject *);
extern int (*const gMovementActionFuncs_118[])(MapObject *);
extern int (*const gMovementActionFuncs_119[])(MapObject *);
extern int (*const gMovementActionFuncs_120[])(MapObject *);
extern int (*const gMovementActionFuncs_Delay1[])(MapObject *);
extern int (*const gMovementActionFuncs_Delay2[])(MapObject *);
extern int (*const gMovementActionFuncs_Delay4[])(MapObject *);
extern int (*const gMovementActionFuncs_Delay8[])(MapObject *);
extern int (*const gMovementActionFuncs_Delay15[])(MapObject *);
extern int (*const gMovementActionFuncs_Delay16[])(MapObject *);
extern int (*const gMovementActionFuncs_Delay32[])(MapObject *);
extern int (*const gMovementActionFuncs_067[])(MapObject *);
extern int (*const gMovementActionFuncs_068[])(MapObject *);
extern int (*const gMovementActionFuncs_SetInvisible[])(MapObject *);
extern int (*const gMovementActionFuncs_SetVisible[])(MapObject *);
extern int (*const gMovementActionFuncs_LockDir[])(MapObject *);
extern int (*const gMovementActionFuncs_UnlockDir[])(MapObject *);
extern int (*const gMovementActionFuncs_073[])(MapObject *);
extern int (*const gMovementActionFuncs_074[])(MapObject *);
extern int (*const gMovementActionFuncs_ExclamationPoint[])(MapObject *);
extern int (*const gMovementActionFuncs_103[])(MapObject *);
extern int (*const gMovementActionFuncs_076[])(MapObject *);
extern int (*const gMovementActionFuncs_077[])(MapObject *);
extern int (*const gMovementActionFuncs_078[])(MapObject *);
extern int (*const gMovementActionFuncs_079[])(MapObject *);
extern int (*const gMovementActionFuncs_080[])(MapObject *);
extern int (*const gMovementActionFuncs_081[])(MapObject *);
extern int (*const gMovementActionFuncs_082[])(MapObject *);
extern int (*const gMovementActionFuncs_083[])(MapObject *);
extern int (*const gMovementActionFuncs_096[])(MapObject *);
extern int (*const gMovementActionFuncs_097[])(MapObject *);
extern int (*const gMovementActionFuncs_098[])(MapObject *);
extern int (*const gMovementActionFuncs_099[])(MapObject *);
extern int (*const gMovementActionFuncs_100[])(MapObject *);
extern int (*const gMovementActionFuncs_101[])(MapObject *);
extern int (*const gMovementActionFuncs_102[])(MapObject *);
extern int (*const gMovementActionFuncs_104[])(MapObject *);
extern int (*const gMovementActionFuncs_105[])(MapObject *);
extern int (*const gMovementActionFuncs_106[])(MapObject *);
extern int (*const gMovementActionFuncs_107[])(MapObject *);
extern int (*const gMovementActionFuncs_108[])(MapObject *);
extern int (*const gMovementActionFuncs_109[])(MapObject *);
extern int (*const gMovementActionFuncs_110[])(MapObject *);
extern int (*const gMovementActionFuncs_111[])(MapObject *);
extern int (*const gMovementActionFuncs_112[])(MapObject *);
extern int (*const gMovementActionFuncs_113[])(MapObject *);
extern int (*const gMovementActionFuncs_114[])(MapObject *);
extern int (*const gMovementActionFuncs_115[])(MapObject *);
extern int (*const gMovementActionFuncs_116[])(MapObject *);
extern int (*const gMovementActionFuncs_145[])(MapObject *);
extern int (*const gMovementActionFuncs_146[])(MapObject *);
extern int (*const gMovementActionFuncs_147[])(MapObject *);
extern int (*const gMovementActionFuncs_148[])(MapObject *);
extern int (*const gMovementActionFuncs_149[])(MapObject *);
extern int (*const gMovementActionFuncs_150[])(MapObject *);
extern int (*const gMovementActionFuncs_151[])(MapObject *);
extern int (*const gMovementActionFuncs_152[])(MapObject *);
extern int (*const gMovementActionFuncs_121[])(MapObject *);
extern int (*const gMovementActionFuncs_122[])(MapObject *);
extern int (*const gMovementActionFuncs_123[])(MapObject *);
extern int (*const gMovementActionFuncs_124[])(MapObject *);
extern int (*const gMovementActionFuncs_125[])(MapObject *);
extern int (*const gMovementActionFuncs_126[])(MapObject *);
extern int (*const gMovementActionFuncs_127[])(MapObject *);
extern int (*const gMovementActionFuncs_128[])(MapObject *);
extern int (*const gMovementActionFuncs_129[])(MapObject *);
extern int (*const gMovementActionFuncs_130[])(MapObject *);
extern int (*const gMovementActionFuncs_131[])(MapObject *);
extern int (*const gMovementActionFuncs_132[])(MapObject *);
extern int (*const gMovementActionFuncs_133[])(MapObject *);
extern int (*const gMovementActionFuncs_134[])(MapObject *);
extern int (*const gMovementActionFuncs_135[])(MapObject *);
extern int (*const gMovementActionFuncs_136[])(MapObject *);
extern int (*const gMovementActionFuncs_137[])(MapObject *);
extern int (*const gMovementActionFuncs_138[])(MapObject *);
extern int (*const gMovementActionFuncs_139[])(MapObject *);
extern int (*const gMovementActionFuncs_140[])(MapObject *);
extern int (*const gMovementActionFuncs_141[])(MapObject *);
extern int (*const gMovementActionFuncs_142[])(MapObject *);
extern int (*const gMovementActionFuncs_143[])(MapObject *);
extern int (*const gMovementActionFuncs_144[])(MapObject *);
extern int (*const gMovementActionFuncs_153[])(MapObject *);

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

// clang-format off
int (*const *const gMovementActionFuncs[MAX_MOVEMENT_ACTION])(MapObject *) = {
    [MOVEMENT_ACTION_FACE_NORTH]                = gMovementActionFuncs_FaceNorth,
    [MOVEMENT_ACTION_FACE_SOUTH]                = gMovementActionFuncs_FaceSouth,
    [MOVEMENT_ACTION_FACE_WEST]                 = gMovementActionFuncs_FaceWest,
    [MOVEMENT_ACTION_FACE_EAST]                 = gMovementActionFuncs_FaceEast,
    [MOVEMENT_ACTION_WALK_SLOWER_NORTH]         = gMovementActionFuncs_WalkSlowerNorth,
    [MOVEMENT_ACTION_WALK_SLOWER_SOUTH]         = gMovementActionFuncs_WalkSlowerSouth,
    [MOVEMENT_ACTION_WALK_SLOWER_WEST]          = gMovementActionFuncs_WalkSlowerWest,
    [MOVEMENT_ACTION_WALK_SLOWER_EAST]          = gMovementActionFuncs_WalkSlowerEast,
    [MOVEMENT_ACTION_WALK_SLOW_NORTH]           = gMovementActionFuncs_WalkSlowNorth,
    [MOVEMENT_ACTION_WALK_SLOW_SOUTH]           = gMovementActionFuncs_WalkSlowSouth,
    [MOVEMENT_ACTION_WALK_SLOW_WEST]            = gMovementActionFuncs_WalkSlowWest,
    [MOVEMENT_ACTION_WALK_SLOW_EAST]            = gMovementActionFuncs_WalkSlowEast,
    [MOVEMENT_ACTION_WALK_NORMAL_NORTH]         = gMovementActionFuncs_WalkNormalNorth,
    [MOVEMENT_ACTION_WALK_NORMAL_SOUTH]         = gMovementActionFuncs_WalkNormalSouth,
    [MOVEMENT_ACTION_WALK_NORMAL_WEST]          = gMovementActionFuncs_WalkNormalWest,
    [MOVEMENT_ACTION_WALK_NORMAL_EAST]          = gMovementActionFuncs_WalkNormalEast,
    [MOVEMENT_ACTION_WALK_FAST_NORTH]           = gMovementActionFuncs_WalkFastNorth,
    [MOVEMENT_ACTION_WALK_FAST_SOUTH]           = gMovementActionFuncs_WalkFastSouth,
    [MOVEMENT_ACTION_WALK_FAST_WEST]            = gMovementActionFuncs_WalkFastWest,
    [MOVEMENT_ACTION_WALK_FAST_EAST]            = gMovementActionFuncs_WalkFastEast,
    [MOVEMENT_ACTION_WALK_FASTER_NORTH]         = gMovementActionFuncs_WalkFasterNorth,
    [MOVEMENT_ACTION_WALK_FASTER_SOUTH]         = gMovementActionFuncs_WalkFasterSouth,
    [MOVEMENT_ACTION_WALK_FASTER_WEST]          = gMovementActionFuncs_WalkFasterWest,
    [MOVEMENT_ACTION_WALK_FASTER_EAST]          = gMovementActionFuncs_WalkFasterEast,
    [MOVEMENT_ACTION_WALK_ON_SPOT_SLOWER_NORTH] = gMovementActionFuncs_WalkOnSpotSlowerNorth,
    [MOVEMENT_ACTION_WALK_ON_SPOT_SLOWER_SOUTH] = gMovementActionFuncs_WalkOnSpotSlowerSouth,
    [MOVEMENT_ACTION_WALK_ON_SPOT_SLOWER_WEST]  = gMovementActionFuncs_WalkOnSpotSlowerWest,
    [MOVEMENT_ACTION_WALK_ON_SPOT_SLOWER_EAST]  = gMovementActionFuncs_WalkOnSpotSlowerEast,
    [MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH]   = gMovementActionFuncs_WalkOnSpotSlowNorth,
    [MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_SOUTH]   = gMovementActionFuncs_WalkOnSpotSlowSouth,
    [MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_WEST]    = gMovementActionFuncs_WalkOnSpotSlowWest,
    [MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_EAST]    = gMovementActionFuncs_WalkOnSpotSlowEast,
    [MOVEMENT_ACTION_WALK_ON_SPOT_NORMAL_NORTH] = gMovementActionFuncs_WalkOnSpotNormalNorth,
    [MOVEMENT_ACTION_WALK_ON_SPOT_NORMAL_SOUTH] = gMovementActionFuncs_WalkOnSpotNormalSouth,
    [MOVEMENT_ACTION_WALK_ON_SPOT_NORMAL_WEST]  = gMovementActionFuncs_WalkOnSpotNormalWest,
    [MOVEMENT_ACTION_WALK_ON_SPOT_NORMAL_EAST]  = gMovementActionFuncs_WalkOnSpotNormalEast,
    [MOVEMENT_ACTION_WALK_ON_SPOT_FAST_NORTH]   = gMovementActionFuncs_WalkOnSpotFastNorth,
    [MOVEMENT_ACTION_WALK_ON_SPOT_FAST_SOUTH]   = gMovementActionFuncs_WalkOnSpotFastSouth,
    [MOVEMENT_ACTION_WALK_ON_SPOT_FAST_WEST]    = gMovementActionFuncs_WalkOnSpotFastWest,
    [MOVEMENT_ACTION_WALK_ON_SPOT_FAST_EAST]    = gMovementActionFuncs_WalkOnSpotFastEast,
    [MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH] = gMovementActionFuncs_WalkOnSpotFasterNorth,
    [MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_SOUTH] = gMovementActionFuncs_WalkOnSpotFasterSouth,
    [MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_WEST]  = gMovementActionFuncs_WalkOnSpotFasterWest,
    [MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_EAST]  = gMovementActionFuncs_WalkOnSpotFasterEast,
    [MOVEMENT_ACTION_044]                       = gMovementActionFuncs_044,
    [MOVEMENT_ACTION_045]                       = gMovementActionFuncs_045,
    [MOVEMENT_ACTION_046]                       = gMovementActionFuncs_046,
    [MOVEMENT_ACTION_047]                       = gMovementActionFuncs_047,
    [MOVEMENT_ACTION_048]                       = gMovementActionFuncs_048,
    [MOVEMENT_ACTION_049]                       = gMovementActionFuncs_049,
    [MOVEMENT_ACTION_050]                       = gMovementActionFuncs_050,
    [MOVEMENT_ACTION_051]                       = gMovementActionFuncs_051,
    [MOVEMENT_ACTION_052]                       = gMovementActionFuncs_052,
    [MOVEMENT_ACTION_053]                       = gMovementActionFuncs_053,
    [MOVEMENT_ACTION_054]                       = gMovementActionFuncs_054,
    [MOVEMENT_ACTION_055]                       = gMovementActionFuncs_055,
    [MOVEMENT_ACTION_056]                       = gMovementActionFuncs_056,
    [MOVEMENT_ACTION_057]                       = gMovementActionFuncs_057,
    [MOVEMENT_ACTION_058]                       = gMovementActionFuncs_058,
    [MOVEMENT_ACTION_059]                       = gMovementActionFuncs_059,
    [MOVEMENT_ACTION_DELAY_1]                   = gMovementActionFuncs_Delay1,
    [MOVEMENT_ACTION_DELAY_2]                   = gMovementActionFuncs_Delay2,
    [MOVEMENT_ACTION_DELAY_4]                   = gMovementActionFuncs_Delay4,
    [MOVEMENT_ACTION_DELAY_8]                   = gMovementActionFuncs_Delay8,
    [MOVEMENT_ACTION_DELAY_15]                  = gMovementActionFuncs_Delay15,
    [MOVEMENT_ACTION_DELAY_16]                  = gMovementActionFuncs_Delay16,
    [MOVEMENT_ACTION_DELAY_32]                  = gMovementActionFuncs_Delay32,
    [MOVEMENT_ACTION_067]                       = gMovementActionFuncs_067,
    [MOVEMENT_ACTION_068]                       = gMovementActionFuncs_068,
    [MOVEMENT_ACTION_SET_INVISIBLE]             = gMovementActionFuncs_SetInvisible,
    [MOVEMENT_ACTION_SET_VISIBLE]               = gMovementActionFuncs_SetVisible,
    [MOVEMENT_ACTION_LOCK_DIR]                  = gMovementActionFuncs_LockDir,
    [MOVEMENT_ACTION_UNLOCK_DIR]                = gMovementActionFuncs_UnlockDir,
    [MOVEMENT_ACTION_073]                       = gMovementActionFuncs_073,
    [MOVEMENT_ACTION_074]                       = gMovementActionFuncs_074,
    [MOVEMENT_ACTION_EXCLAMATION_POINT]         = gMovementActionFuncs_ExclamationPoint,
    [MOVEMENT_ACTION_076]                       = gMovementActionFuncs_076,
    [MOVEMENT_ACTION_077]                       = gMovementActionFuncs_077,
    [MOVEMENT_ACTION_078]                       = gMovementActionFuncs_078,
    [MOVEMENT_ACTION_079]                       = gMovementActionFuncs_079,
    [MOVEMENT_ACTION_080]                       = gMovementActionFuncs_080,
    [MOVEMENT_ACTION_081]                       = gMovementActionFuncs_081,
    [MOVEMENT_ACTION_082]                       = gMovementActionFuncs_082,
    [MOVEMENT_ACTION_083]                       = gMovementActionFuncs_083,
    [MOVEMENT_ACTION_WALK_FASTEST_NORTH]        = gMovementActionFuncs_WalkFastestNorth,
    [MOVEMENT_ACTION_WALK_FASTEST_SOUTH]        = gMovementActionFuncs_WalkFastestSouth,
    [MOVEMENT_ACTION_WALK_FASTEST_WEST]         = gMovementActionFuncs_WalkFastestWest,
    [MOVEMENT_ACTION_WALK_FASTEST_EAST]         = gMovementActionFuncs_WalkFastestEast,
    [MOVEMENT_ACTION_RUN_NORTH]                 = gMovementActionFuncs_RunNorth,
    [MOVEMENT_ACTION_RUN_SOUTH]                 = gMovementActionFuncs_RunSouth,
    [MOVEMENT_ACTION_RUN_WEST]                  = gMovementActionFuncs_RunWest,
    [MOVEMENT_ACTION_RUN_EAST]                  = gMovementActionFuncs_RunEast,
    [MOVEMENT_ACTION_092]                       = gMovementActionFuncs_092,
    [MOVEMENT_ACTION_093]                       = gMovementActionFuncs_093,
    [MOVEMENT_ACTION_094]                       = gMovementActionFuncs_094,
    [MOVEMENT_ACTION_095]                       = gMovementActionFuncs_095,
    [MOVEMENT_ACTION_096]                       = gMovementActionFuncs_096,
    [MOVEMENT_ACTION_097]                       = gMovementActionFuncs_097,
    [MOVEMENT_ACTION_098]                       = gMovementActionFuncs_098,
    [MOVEMENT_ACTION_099]                       = gMovementActionFuncs_099,
    [MOVEMENT_ACTION_100]                       = gMovementActionFuncs_100,
    [MOVEMENT_ACTION_101]                       = gMovementActionFuncs_101,
    [MOVEMENT_ACTION_102]                       = gMovementActionFuncs_102,
    [MOVEMENT_ACTION_103]                       = gMovementActionFuncs_103,
    [MOVEMENT_ACTION_104]                       = gMovementActionFuncs_104,
    [MOVEMENT_ACTION_105]                       = gMovementActionFuncs_105,
    [MOVEMENT_ACTION_106]                       = gMovementActionFuncs_106,
    [MOVEMENT_ACTION_107]                       = gMovementActionFuncs_107,
    [MOVEMENT_ACTION_108]                       = gMovementActionFuncs_108,
    [MOVEMENT_ACTION_109]                       = gMovementActionFuncs_109,
    [MOVEMENT_ACTION_110]                       = gMovementActionFuncs_110,
    [MOVEMENT_ACTION_111]                       = gMovementActionFuncs_111,
    [MOVEMENT_ACTION_112]                       = gMovementActionFuncs_112,
    [MOVEMENT_ACTION_113]                       = gMovementActionFuncs_113,
    [MOVEMENT_ACTION_114]                       = gMovementActionFuncs_114,
    [MOVEMENT_ACTION_115]                       = gMovementActionFuncs_115,
    [MOVEMENT_ACTION_116]                       = gMovementActionFuncs_116,
    [MOVEMENT_ACTION_117]                       = gMovementActionFuncs_117,
    [MOVEMENT_ACTION_118]                       = gMovementActionFuncs_118,
    [MOVEMENT_ACTION_119]                       = gMovementActionFuncs_119,
    [MOVEMENT_ACTION_120]                       = gMovementActionFuncs_120,
    [MOVEMENT_ACTION_121]                       = gMovementActionFuncs_121,
    [MOVEMENT_ACTION_122]                       = gMovementActionFuncs_122,
    [MOVEMENT_ACTION_123]                       = gMovementActionFuncs_123,
    [MOVEMENT_ACTION_124]                       = gMovementActionFuncs_124,
    [MOVEMENT_ACTION_125]                       = gMovementActionFuncs_125,
    [MOVEMENT_ACTION_126]                       = gMovementActionFuncs_126,
    [MOVEMENT_ACTION_127]                       = gMovementActionFuncs_127,
    [MOVEMENT_ACTION_128]                       = gMovementActionFuncs_128,
    [MOVEMENT_ACTION_129]                       = gMovementActionFuncs_129,
    [MOVEMENT_ACTION_130]                       = gMovementActionFuncs_130,
    [MOVEMENT_ACTION_131]                       = gMovementActionFuncs_131,
    [MOVEMENT_ACTION_132]                       = gMovementActionFuncs_132,
    [MOVEMENT_ACTION_133]                       = gMovementActionFuncs_133,
    [MOVEMENT_ACTION_134]                       = gMovementActionFuncs_134,
    [MOVEMENT_ACTION_135]                       = gMovementActionFuncs_135,
    [MOVEMENT_ACTION_136]                       = gMovementActionFuncs_136,
    [MOVEMENT_ACTION_137]                       = gMovementActionFuncs_137,
    [MOVEMENT_ACTION_138]                       = gMovementActionFuncs_138,
    [MOVEMENT_ACTION_139]                       = gMovementActionFuncs_139,
    [MOVEMENT_ACTION_140]                       = gMovementActionFuncs_140,
    [MOVEMENT_ACTION_141]                       = gMovementActionFuncs_141,
    [MOVEMENT_ACTION_142]                       = gMovementActionFuncs_142,
    [MOVEMENT_ACTION_143]                       = gMovementActionFuncs_143,
    [MOVEMENT_ACTION_144]                       = gMovementActionFuncs_144,
    [MOVEMENT_ACTION_145]                       = gMovementActionFuncs_145,
    [MOVEMENT_ACTION_146]                       = gMovementActionFuncs_146,
    [MOVEMENT_ACTION_147]                       = gMovementActionFuncs_147,
    [MOVEMENT_ACTION_148]                       = gMovementActionFuncs_148,
    [MOVEMENT_ACTION_149]                       = gMovementActionFuncs_149,
    [MOVEMENT_ACTION_150]                       = gMovementActionFuncs_150,
    [MOVEMENT_ACTION_151]                       = gMovementActionFuncs_151,
    [MOVEMENT_ACTION_152]                       = gMovementActionFuncs_152,
    [MOVEMENT_ACTION_153]                       = gMovementActionFuncs_153,
};
// clang-format on

static const int Unk_020EDD5C[] = {
    0x0,
    0x1,
    0x2,
    0x3
};

static const int Unk_020EDCDC[] = {
    0x4,
    0x5,
    0x6,
    0x7
};

static const int Unk_020EDC5C[] = {
    0x8,
    0x9,
    0xA,
    0xB
};

static const int Unk_020EDCEC[] = {
    0xC,
    0xD,
    0xE,
    0xf
};

static const int Unk_020EDD2C[] = {
    0x10,
    0x11,
    0x12,
    0x13
};

static const int Unk_020EDCFC[] = {
    0x14,
    0x15,
    0x16,
    0x17
};

static const int Unk_020EDC3C[] = {
    0x18,
    0x19,
    0x1A,
    0x1B
};

static const int Unk_020EDBAC[] = {
    0x1C,
    0x1D,
    0x1E,
    0x1f
};

static const int Unk_020EDD0C[] = {
    0x20,
    0x21,
    0x22,
    0x23
};

static const int Unk_020EDD9C[] = {
    0x24,
    0x25,
    0x26,
    0x27
};

static const int Unk_020EDC8C[] = {
    0x28,
    0x29,
    0x2A,
    0x2B
};

static const int Unk_020EDDBC[] = {
    0x2C,
    0x2D,
    0x2E,
    0x2f
};

static const int Unk_020EDC9C[] = {
    0x30,
    0x31,
    0x32,
    0x33
};

static const int Unk_020EDCBC[] = {
    0x34,
    0x35,
    0x36,
    0x37
};

static const int Unk_020EDBFC[] = {
    0x38,
    0x39,
    0x3A,
    0x3B
};

static const int Unk_020EDC7C[] = {
    0x4C,
    0x4D,
    0x4E,
    0x4f
};

static const int Unk_020EDD7C[] = {
    0x50,
    0x51,
    0x52,
    0x53
};

static const int Unk_020EDC6C[] = {
    0x54,
    0x55,
    0x56,
    0x57
};

static const int Unk_020EDBEC[] = {
    0x58,
    0x59,
    0x5A,
    0x5B
};

static const int Unk_020EDD3C[] = {
    0x5C,
    0x5D,
    0x5C,
    0x5D
};

static const int Unk_020EDC4C[] = {
    0x5E,
    0x5f,
    0x5E,
    0x5f
};

static const int Unk_020EDBDC[] = {
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

const int *const Unk_020EE31C[] = {
    Unk_020EDD5C,
    Unk_020EDCDC,
    Unk_020EDC5C,
    Unk_020EDCEC,
    Unk_020EDD2C,
    Unk_020EDCFC,
    Unk_020EDC3C,
    Unk_020EDBAC,
    Unk_020EDD0C,
    Unk_020EDD9C,
    Unk_020EDC8C,
    Unk_020EDDBC,
    Unk_020EDC9C,
    Unk_020EDCBC,
    Unk_020EDBFC,
    Unk_020EDC7C,
    Unk_020EDD7C,
    Unk_020EDC6C,
    Unk_020EDBEC,
    Unk_020EDD3C,
    Unk_020EDC4C,
    Unk_020EDBDC,
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
