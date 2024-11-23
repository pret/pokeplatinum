#include "overlay070/ov70_02266E9C.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "overlay063/ov63_0222BE18.h"
#include "overlay066/ov66_0222DDF0.h"
#include "overlay066/struct_ov66_0222DFF8_decl.h"
#include "overlay066/struct_ov66_0222E71C_decl.h"
#include "overlay066/struct_ov66_02231428.h"
#include "overlay070/ov70_0225C9B4.h"
#include "overlay070/ov70_0225D9A4.h"
#include "overlay070/ov70_02262DA8.h"
#include "overlay070/struct_ov70_0225CA20_decl.h"
#include "overlay070/struct_ov70_0225CC54_decl.h"
#include "overlay070/struct_ov70_0225DEE8_decl.h"
#include "overlay070/struct_ov70_022630A4_decl.h"
#include "overlay070/struct_ov70_02263344_decl.h"

#include "enums.h"
#include "list_menu.h"
#include "math.h"
#include "strbuf.h"
#include "unk_02005474.h"

typedef struct {
    ListMenuTemplate unk_00;
    u32 unk_20;
} UnkStruct_ov70_02268E44;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    u32 unk_08;
} UnkStruct_ov70_02269114;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u16 unk_08;
    u16 unk_0A;
    u8 unk_0C;
    u8 unk_0D;
    s16 unk_0E;
    UnkStruct_ov70_0225CC54 *unk_10;
    UnkStruct_ov70_02268E44 unk_14;
    UnkStruct_ov70_02269114 unk_38;
    u16 unk_44;
    u16 unk_46;
    s32 unk_48;
    BOOL unk_4C;
} UnkStruct_ov70_02268BA0;

typedef struct {
    u32 unk_00;
    UnkStruct_ov70_02268E44 unk_04;
} UnkStruct_ov70_02268390;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov70_0226DD5C;

static u32 ov70_02268A3C(const UnkStruct_ov66_0222E71C *param0);
static Strbuf *ov70_02268AAC(UnkStruct_ov70_0225DEE8 *param0, u32 param1, u32 param2);
static Strbuf *ov70_02268AF8(UnkStruct_ov70_0225DEE8 *param0, u32 param1, u32 param2);
static BOOL ov70_02268B50(UnkStruct_ov70_02268BA0 *param0, UnkStruct_ov66_0222DFF8 *param1, u32 param2);
static void ov70_02268BA0(UnkStruct_ov70_02268BA0 *param0);
static void ov70_02268BA4(UnkStruct_ov70_02268BA0 *param0, u8 param1, u8 param2, UnkStruct_ov70_02263344 *param3, u8 param4);
static void ov70_02268BBC(UnkStruct_ov70_02268BA0 *param0, UnkStruct_ov70_02263344 *param1);
static void ov70_02268BD8(UnkStruct_ov70_02268BA0 *param0, UnkStruct_ov70_02263344 *param1, UnkStruct_ov70_0225DEE8 *param2);
static void ov70_02268BF4(UnkStruct_ov70_02268BA0 *param0, UnkStruct_ov66_0222DFF8 *param1, UnkStruct_ov70_0225DEE8 *param2, u32 param3, const UnkStruct_ov66_0222E71C *param4, const UnkStruct_ov66_0222E71C *param5);
static void ov70_02268C44(UnkStruct_ov70_0225DEE8 *param0, u32 param1, u32 param2, const UnkStruct_ov66_0222E71C *param3);
static BOOL ov70_02268CC8(UnkStruct_ov70_02268BA0 *param0, UnkStruct_ov66_0222DFF8 *param1, UnkStruct_ov70_0225DEE8 *param2);
static void ov70_02268D38(UnkStruct_ov70_02268BA0 *param0, UnkStruct_ov66_0222DFF8 *param1, UnkStruct_ov70_0225DEE8 *param2, u32 param3, BOOL param4);
static void ov70_02268D70(UnkStruct_ov70_02268BA0 *param0, UnkStruct_ov70_0225DEE8 *param1);
static void ov70_02268DB8(UnkStruct_ov70_02268BA0 *param0);
static void ov70_02268DC4(UnkStruct_ov70_02268BA0 *param0);
static void ov70_02268DCC(UnkStruct_ov70_02268BA0 *param0, UnkStruct_ov70_0225DEE8 *param1);
static void ov70_02268E08(UnkStruct_ov70_02268BA0 *param0);
static void ov70_02268E20(UnkStruct_ov70_02268BA0 *param0, const UnkStruct_ov66_0222E71C *param1);
static void ov70_02268E44(UnkStruct_ov70_02268E44 *param0, UnkStruct_ov70_0225DEE8 *param1, u32 param2, u32 param3, u32 param4);
static void ov70_02268EEC(UnkStruct_ov70_02268E44 *param0, UnkStruct_ov70_0225DEE8 *param1, u32 param2, u32 param3, u32 param4, u32 param5);
static void ov70_02268FB8(UnkStruct_ov70_02268E44 *param0, UnkStruct_ov70_0225DEE8 *param1);
static void ov70_02269018(UnkStruct_ov70_02268E44 *param0, UnkStruct_ov70_0225DEE8 *param1);
static void ov70_02269090(UnkStruct_ov70_02268E44 *param0, UnkStruct_ov70_0225DEE8 *param1);
static void ov70_02269108(UnkStruct_ov70_02268E44 *param0, UnkStruct_ov70_0225DEE8 *param1);
static void ov70_02269114(UnkStruct_ov70_02269114 *param0);
static void ov70_0226911C(UnkStruct_ov70_02269114 *param0, const UnkStruct_ov66_0222DFF8 *param1, u16 param2, u16 param3);
static void ov70_02269144(UnkStruct_ov70_02269114 *param0, UnkStruct_ov66_0222DFF8 *param1);
static BOOL ov70_02269178(const UnkStruct_ov70_02269114 *param0);
static u16 ov70_02269188(const UnkStruct_ov70_02269114 *param0);

static const ListMenuTemplate Unk_ov70_0226DCBC = {
    NULL,
    NULL,
    NULL,
    NULL,
    0x0,
    0x6,
    0x0,
    0x8,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x0,
    0x0,
    0x0,
    NULL
};

static const UnkStruct_ov70_0226DD5C Unk_ov70_0226DD5C[] = {
    { 0x28, 0x225 },
    { 0x29, 0x226 },
    { 0x2B, 0x227 },
    { 0x2C, 0x228 },
    { 0x2E, 0x22A },
    { 0x2F, 0x22B },
    { 0x30, 0x22C },
    { 0x31, 0x22D },
    { 0x32, 0x22E },
    { 0x33, 0x22F },
    { 0x34, 0x230 },
    { 0x35, 0x231 },
    { 0x36, 0x232 },
    { 0x37, 0x233 },
    { 0x38, 0x234 },
    { 0x39, 0x235 },
    { 0x3A, 0x236 },
    { 0x3B, 0x237 },
    { 0x3C, 0x238 },
    { 0x3D, 0x239 },
    { 0x3E, 0x23A },
    { 0x3F, 0x23B },
    { 0x40, 0x23C },
    { 0x55, 0x23D },
    { 0x56, 0x23E },
    { 0x57, 0x23F },
    { 0x58, 0x240 },
    { 0x59, 0x241 },
    { 0x5A, 0x242 },
    { 0x5B, 0x243 },
    { 0x5C, 0x244 },
    { 0x5D, 0x245 },
    { 0x5E, 0x246 },
    { 0xEC, 0x247 },
    { 0xED, 0x248 },
    { 0xEE, 0x249 },
    { 0xEF, 0x24A },
    { 0xF0, 0x24B },
    { 0xF1, 0x24C },
    { 0xF2, 0x24D },
    { 0xF3, 0x24E },
    { 0xF4, 0x24F },
    { 0xF5, 0x250 },
    { 0xF6, 0x251 },
    { 0xF7, 0x252 },
    { 0xF8, 0x253 },
    { 0xF9, 0x254 },
    { 0xFA, 0x255 },
    { 0xFB, 0x256 },
    { 0xFC, 0x257 },
    { 0xFD, 0x258 },
    { 0xFE, 0x259 },
    { 0xFF, 0x25A },
    { 0x100, 0x25B },
    { 0x101, 0x25C },
    { 0x102, 0x25D },
    { 0x103, 0x25E },
    { 0x104, 0x25F },
    { 0x105, 0x260 },
    { 0x106, 0x261 },
    { 0x107, 0x262 },
    { 0x108, 0x263 },
    { 0x109, 0x264 },
    { 0x10A, 0x265 },
    { 0x10B, 0x266 },
    { 0x10C, 0x267 },
    { 0x10D, 0x268 },
    { 0x10E, 0x269 },
    { 0x10F, 0x26A },
    { 0x110, 0x26B },
    { 0x111, 0x26C },
    { 0x112, 0x26D },
    { 0x113, 0x26E },
    { 0x164, 0x26F },
    { 0x165, 0x270 },
    { 0x166, 0x271 },
    { 0x167, 0x272 },
    { 0x168, 0x273 },
    { 0x169, 0x274 },
    { 0x16A, 0x275 },
    { 0x16B, 0x276 },
    { 0x16C, 0x277 },
    { 0x16D, 0x278 },
    { 0x16E, 0x279 },
    { 0x16F, 0x27A },
    { 0x170, 0x27B },
    { 0x171, 0x27C },
    { 0x172, 0x27D },
    { 0x173, 0x27E },
    { 0x174, 0x27F },
    { 0x175, 0x280 },
    { 0x176, 0x281 },
    { 0x177, 0x282 },
    { 0x178, 0x283 },
    { 0x179, 0x284 },
    { 0x17A, 0x285 },
    { 0x17B, 0x286 },
    { 0x17C, 0x287 },
    { 0x17D, 0x288 },
    { 0x17E, 0x289 },
    { 0x17F, 0x28A },
    { 0x180, 0x28B },
    { 0x181, 0x28C },
    { 0x182, 0x28D },
    { 0x183, 0x28E },
    { 0x184, 0x28F },
    { 0x185, 0x290 },
    { 0x186, 0x291 },
    { 0x187, 0x292 },
    { 0x188, 0x293 },
    { 0x189, 0x294 },
    { 0x18A, 0x295 },
    { 0x18B, 0x296 },
    { 0x18C, 0x297 },
    { 0x1DD, 0x298 },
    { 0x1DE, 0x299 },
    { 0x1DF, 0x29A },
    { 0x1E0, 0x29B },
    { 0x1E1, 0x29C },
    { 0x1E2, 0x29D },
    { 0x1E3, 0x29E },
    { 0x1E4, 0x29F },
    { 0x1E5, 0x2A0 },
    { 0x1E6, 0x2A1 },
    { 0x1FB, 0x2A2 },
    { 0x1FC, 0x2A3 },
    { 0x1FD, 0x2A4 },
    { 0x1FE, 0x2A5 },
    { 0x1FF, 0x2A6 },
    { 0x200, 0x2A7 },
    { 0x201, 0x38D },
    { 0x202, 0x2A8 },
    { 0x2AB, 0x2AD },
    { 0x2AC, 0x2AE },
    { 0x2AF, 0x2B0 },
    { 0x41, 0x2B1 },
    { 0x42, 0x2B2 },
    { 0x43, 0x2B3 },
    { 0x44, 0x2B4 },
    { 0x45, 0x2B5 },
    { 0x46, 0x2B6 },
    { 0x47, 0x2B7 },
    { 0x48, 0x2B8 },
    { 0x49, 0x2B9 },
    { 0x4A, 0x2BA },
    { 0x4B, 0x2BB },
    { 0x4C, 0x2BC },
    { 0x4D, 0x2BD },
    { 0x4E, 0x2BE },
    { 0x4F, 0x2BF },
    { 0x50, 0x2C0 },
    { 0x51, 0x2C1 },
    { 0x52, 0x2C2 },
    { 0x53, 0x2C3 },
    { 0x54, 0x2C4 },
    { 0x5F, 0x2C5 },
    { 0x60, 0x2C6 },
    { 0x61, 0x2C7 },
    { 0x62, 0x2C8 },
    { 0x63, 0x2C9 },
    { 0x64, 0x2CA },
    { 0x65, 0x2CB },
    { 0x66, 0x2CC },
    { 0x67, 0x2CD },
    { 0x68, 0x2CE },
    { 0x69, 0x2CF },
    { 0x6A, 0x2D0 },
    { 0x6B, 0x2D1 },
    { 0x6C, 0x2D2 },
    { 0x6D, 0x2D3 },
    { 0x6E, 0x2D4 },
    { 0x6F, 0x2D5 },
    { 0x70, 0x2D6 },
    { 0x71, 0x2D7 },
    { 0x72, 0x2D8 },
    { 0x114, 0x2D9 },
    { 0x115, 0x2DA },
    { 0x116, 0x2DB },
    { 0x117, 0x2DC },
    { 0x118, 0x2DD },
    { 0x119, 0x2DE },
    { 0x11A, 0x2DF },
    { 0x11B, 0x2E0 },
    { 0x11C, 0x2E1 },
    { 0x11D, 0x2E2 },
    { 0x11E, 0x2E3 },
    { 0x11F, 0x2E4 },
    { 0x120, 0x2E5 },
    { 0x121, 0x2E6 },
    { 0x122, 0x2E7 },
    { 0x123, 0x2E8 },
    { 0x124, 0x2E9 },
    { 0x125, 0x2EA },
    { 0x126, 0x2EB },
    { 0x127, 0x2EC },
    { 0x128, 0x2ED },
    { 0x129, 0x2EE },
    { 0x12A, 0x2EF },
    { 0x12B, 0x2F0 },
    { 0x12C, 0x2F1 },
    { 0x12D, 0x2F2 },
    { 0x12E, 0x2F3 },
    { 0x12F, 0x2F4 },
    { 0x130, 0x2F5 },
    { 0x131, 0x2F6 },
    { 0x132, 0x2F7 },
    { 0x133, 0x2F8 },
    { 0x134, 0x2F9 },
    { 0x135, 0x2FA },
    { 0x136, 0x2FB },
    { 0x137, 0x2FC },
    { 0x138, 0x2FD },
    { 0x139, 0x2FE },
    { 0x13A, 0x2FF },
    { 0x13B, 0x300 },
    { 0x13C, 0x301 },
    { 0x13D, 0x302 },
    { 0x13E, 0x303 },
    { 0x13F, 0x304 },
    { 0x140, 0x305 },
    { 0x141, 0x306 },
    { 0x142, 0x307 },
    { 0x143, 0x308 },
    { 0x144, 0x309 },
    { 0x145, 0x30A },
    { 0x146, 0x30B },
    { 0x147, 0x30C },
    { 0x148, 0x30D },
    { 0x149, 0x30E },
    { 0x14A, 0x30F },
    { 0x14B, 0x310 },
    { 0x14C, 0x311 },
    { 0x14D, 0x312 },
    { 0x14E, 0x313 },
    { 0x14F, 0x314 },
    { 0x150, 0x315 },
    { 0x151, 0x316 },
    { 0x152, 0x317 },
    { 0x153, 0x318 },
    { 0x154, 0x319 },
    { 0x155, 0x31A },
    { 0x156, 0x31B },
    { 0x157, 0x31C },
    { 0x158, 0x31D },
    { 0x159, 0x31E },
    { 0x15A, 0x31F },
    { 0x15B, 0x320 },
    { 0x15C, 0x321 },
    { 0x15D, 0x322 },
    { 0x15E, 0x323 },
    { 0x15F, 0x324 },
    { 0x160, 0x325 },
    { 0x161, 0x326 },
    { 0x162, 0x327 },
    { 0x163, 0x328 },
    { 0x18D, 0x329 },
    { 0x18E, 0x32A },
    { 0x18F, 0x32B },
    { 0x190, 0x32C },
    { 0x191, 0x32D },
    { 0x192, 0x32E },
    { 0x193, 0x32F },
    { 0x194, 0x330 },
    { 0x195, 0x331 },
    { 0x196, 0x332 },
    { 0x197, 0x333 },
    { 0x198, 0x334 },
    { 0x199, 0x335 },
    { 0x19A, 0x336 },
    { 0x19B, 0x337 },
    { 0x19C, 0x338 },
    { 0x19D, 0x339 },
    { 0x19E, 0x33A },
    { 0x19F, 0x33B },
    { 0x1A0, 0x33C },
    { 0x1A1, 0x33D },
    { 0x1A2, 0x33E },
    { 0x1A3, 0x33F },
    { 0x1A4, 0x340 },
    { 0x1A5, 0x341 },
    { 0x1A6, 0x342 },
    { 0x1A7, 0x343 },
    { 0x1A8, 0x344 },
    { 0x1A9, 0x345 },
    { 0x1AA, 0x346 },
    { 0x1AB, 0x347 },
    { 0x1AC, 0x348 },
    { 0x1AD, 0x349 },
    { 0x1AE, 0x34A },
    { 0x1AF, 0x34B },
    { 0x1B0, 0x34C },
    { 0x1B1, 0x34D },
    { 0x1B2, 0x34E },
    { 0x1B3, 0x34F },
    { 0x1B4, 0x350 },
    { 0x1B5, 0x351 },
    { 0x1B6, 0x352 },
    { 0x1B7, 0x353 },
    { 0x1B8, 0x354 },
    { 0x1B9, 0x355 },
    { 0x1BA, 0x356 },
    { 0x1BB, 0x357 },
    { 0x1BC, 0x358 },
    { 0x1BD, 0x359 },
    { 0x1BE, 0x35A },
    { 0x1BF, 0x35B },
    { 0x1C0, 0x35C },
    { 0x1C1, 0x35D },
    { 0x1C2, 0x35E },
    { 0x1C3, 0x35F },
    { 0x1C4, 0x360 },
    { 0x1C5, 0x361 },
    { 0x1C6, 0x362 },
    { 0x1C7, 0x363 },
    { 0x1C8, 0x364 },
    { 0x1C9, 0x365 },
    { 0x1CA, 0x366 },
    { 0x1CB, 0x367 },
    { 0x1CC, 0x368 },
    { 0x1CD, 0x369 },
    { 0x1CE, 0x36A },
    { 0x1CF, 0x36B },
    { 0x1D0, 0x36C },
    { 0x1D1, 0x36D },
    { 0x1D2, 0x36E },
    { 0x1D3, 0x36F },
    { 0x1D4, 0x370 },
    { 0x1D5, 0x371 },
    { 0x1D6, 0x372 },
    { 0x1D7, 0x373 },
    { 0x1D8, 0x374 },
    { 0x1D9, 0x375 },
    { 0x1DA, 0x376 },
    { 0x1DB, 0x377 },
    { 0x1DC, 0x378 },
    { 0x1E7, 0x379 },
    { 0x1E8, 0x37A },
    { 0x1E9, 0x37B },
    { 0x1EA, 0x37C },
    { 0x1EB, 0x37D },
    { 0x1EC, 0x37E },
    { 0x1ED, 0x37F },
    { 0x1EE, 0x380 },
    { 0x1EF, 0x381 },
    { 0x1F0, 0x382 },
    { 0x1F1, 0x383 },
    { 0x1F2, 0x384 },
    { 0x1F3, 0x385 },
    { 0x1F4, 0x386 },
    { 0x1F5, 0x387 },
    { 0x1F6, 0x388 },
    { 0x1F7, 0x389 },
    { 0x1F8, 0x38A },
    { 0x1F9, 0x38B },
    { 0x1FA, 0x38C }
};

BOOL ov70_02266E9C(UnkStruct_ov70_02263344 *param0, UnkStruct_ov70_0225DEE8 *param1, u32 param2)
{
    UnkStruct_ov70_02268BA0 *v0;
    UnkStruct_ov66_0222DFF8 *v1;
    UnkStruct_ov70_022630A4 *v2;
    u32 v3;
    u32 v4;
    Strbuf *v5;
    const UnkStruct_ov66_0222E71C *v6;
    const UnkStruct_ov66_0222E71C *v7;

    v1 = ov70_0225DEE8(param1);
    v2 = ov70_0225DF10(param1);
    v0 = ov70_02262E80(param0);
    v3 = ov66_0222EE30(v1);
    v4 = ov66_0222EE3C(v1);

    if (ov66_0222EE68(v1)) {
        if (v0) {
            if (v0->unk_0A) {
                ov70_02262E88(param0, 32);
                ov70_0225DFCC(param1);
                v0->unk_0A = 0;
            }
        }
    }

    if (v0) {
        v6 = ov66_0222E3BC(v1);

        if (v0->unk_10) {
            v7 = ov66_0222E374(v1, v0->unk_03);
        } else {
            v7 = NULL;
        }
    }

    if (ov70_02262E84(param0) > 0) {
        if (v0->unk_0A) {
            if (v7 == NULL) {
                ov70_02262E88(param0, 32);
                ov70_0225DFCC(param1);
                v0->unk_0A = 0;
            }
        }
    }

    switch (ov70_02262E84(param0)) {
    case 0:

        v0 = ov70_02262E3C(param0, sizeof(UnkStruct_ov70_02268BA0));

        v0->unk_44 = 0;
        v0->unk_46 = 0;
        v0->unk_48 = 0;

        ov70_02269114(&v0->unk_38);

        {
            UnkStruct_ov70_0225CC54 *v8;
            UnkStruct_ov70_0225CA20 *v9;
            UnkStruct_ov70_0225CC54 *v10;
            u32 v11;
            u32 v12;
            BOOL v13;

            v9 = ov70_0225DEF0(param1);
            v10 = ov70_0225CCAC(v9);
            v8 = ov70_0225CE40(v9, v10);

            if (v8 == NULL) {
                v0->unk_0A = 0;
                ov70_02262E88(param0, 38);
                break;
            }

            v11 = ov70_0225CD60(v8, 4);
            v12 = ov70_0225CD60(v10, 6);
            v12 = ov63_0222C0AC(v12);

            ov66_0222EC60(v1);

            v13 = ov70_02268B50(v0, v1, v11);
            v0->unk_10 = v8;

            ov70_0225D030(v8, 0);
            ov70_0225D060(v8, v12);
            ov70_02262EEC(v2, v11, 0);
            Sound_PlayEffect(1508);
            ov66_0222E3E4(v1, 9);

            if (v13 == 1) {
                ov70_0225E328(param1, v11, 0);
                ov70_02262E88(param0, 1);
            } else {
                ov70_02262E88(param0, 34);
                break;
            }
        }
        break;
    case 1: {
        BOOL v14;

        v14 = ov66_0222EC70(v1, v0->unk_03);

        if (v14 == 1) {
            ov70_02262E88(param0, 2);
        } else {
            ov70_02262E88(param0, 34);
        }
    } break;
    case 2:
        switch (v3) {
        case 2:
            ov66_0222EEE4(v1, v0->unk_03);
            ov70_02262E88(param0, 3);
            break;
        case 0:
            ov70_02262E88(param0, 34);
            break;
        case 1:
            break;
        case 3:
        case 4:
        default:
            ov70_02262E88(param0, 32);
            break;
        }
        break;
    case 3:
        ov66_0222EEF4(v1, v0->unk_03);
        ov66_0222F020(v1);
        ov66_0222F040(v1, 7);

        ov70_02268BF4(v0, v1, param1, v0->unk_04, v6, v7);
        ov70_02268BA4(v0, 128, 4, param0, 37);
        break;
    case 4:
        ov70_02268BF4(v0, v1, param1, v0->unk_05, v7, v6);
        ov70_02268BA4(v0, 128, 5, param0, 37);
        ov66_0222ECD4(v1, 0);
        break;
    case 5:
        switch (v3) {
        case 2:
            ov70_0225DFCC(param1);

            if (ov66_0222EE24(v1)) {
                ov70_02262E88(param0, 6);
            } else {
                ov70_02262E88(param0, 8);
            }
            break;
        case 3:
            if (ov70_0225DFDC(param1) == 0) {
                ov70_0225DFBC(param1);
            }

            ov70_02268D70(v0, param1);
            break;
        case 0:
        case 4:
        case 1:
        default:
            ov70_02262E88(param0, 32);
            ov70_0225DFCC(param1);
            break;
        }
        break;
    case 6: {
        BOOL v15;

        v15 = ov70_02268CC8(v0, v1, param1);

        if (v15 == 1) {
            ov70_02268BA4(v0, 128, 7, param0, 37);
        } else {
            ov70_02262E88(param0, 7);
        }
    } break;
    case 7:
        ov70_0225E234(param1, v0->unk_03, 0);

        v5 = ov70_02268AAC(param1, v0->unk_03, 40);

        ov70_0225DF8C(param1, v5);
        ov70_02268BA4(v0, 128, 9, param0, 37);
        break;
    case 8:
        ov70_0225E234(param1, v0->unk_03, 0);
        ov70_0225E234(param1, v0->unk_08, 1);

        v5 = ov70_02268AF8(param1, v0->unk_03, v0->unk_08);

        ov70_0225DF8C(param1, v5);
        ov70_02268BA4(v0, 128, 9, param0, 37);
        break;
    case 9:
        ov70_0225E234(param1, v0->unk_03, 0);

        v5 = ov70_02268AAC(param1, v0->unk_03, 46);

        ov70_0225DF8C(param1, v5);
        ov70_02268BA4(v0, 128, 11, param0, 37);
        break;
    case 10:
        ov70_0225E234(param1, v0->unk_03, 0);

        v5 = ov70_02268AAC(param1, v0->unk_03, 54);

        ov70_0225DF8C(param1, v5);
        ov70_02268BA4(v0, 128, 11, param0, 37);
        break;
    case 11:
        ov70_02268E44(&v0->unk_14, param1, 3, 515, 0);
        ov70_0225E074(param1, &v0->unk_14.unk_00, 0, 0);
        ov70_02268DB8(v0);
        ov70_02262E88(param0, 12);
        break;
    case 12: {
        u32 v16;
        BOOL v17;

        v16 = ov70_0225E0D4(param1);

        switch (v16) {
        case 0:
            ov70_02262E88(param0, 13);
            v17 = 1;
            break;
        case 1:
            ov70_02262E88(param0, 19);

            {
                u32 v18;

                v18 = ov70_0225CD60(v0->unk_10, 4);
                ov66_0222E990(v1, param2, v18);
            }

            v17 = 1;
            break;
        case 2:
            ov66_0222ED7C(v1);
            ov70_02262E88(param0, 33);
            v17 = 1;
            break;
        default:
            ov70_02268DCC(v0, param1);
            v17 = 0;
            break;
        }

        if (v17 == 1) {
            ov70_0225E0E4(param1, NULL, NULL);
            ov70_02269108(&v0->unk_14, param1);
            ov70_02268DC4(v0);
        }
    } break;
    case 13:
        if (ov66_0222E8C4(v6) == ov66_0222E8C4(v7)) {
            v0->unk_0C = 1;

            ov70_0225E234(param1, v0->unk_03, 0);
            ov70_02268D38(v0, v1, param1, 1, 0);

            v5 = ov70_02268AAC(param1, v0->unk_03, 507);

            ov70_0225DF8C(param1, v5);
            ov70_02268BA4(v0, 128, 18, param0, 37);
            ov66_0222ECD4(v1, 4);
        } else {
            v0->unk_0C = 0;

            ov70_0225E234(param1, v0->unk_03, 0);
            ov70_02268D38(v0, v1, param1, 1, 1);
            ov70_02268D38(v0, v1, param1, 2, 0);

            v5 = ov70_02268AAC(param1, v0->unk_03, 508);

            ov70_0225DF8C(param1, v5);
            ov70_02268BA4(v0, 128, 14, param0, 37);
        }
        break;
    case 14:
        ov70_02268E44(&v0->unk_14, param1, 2, 518, 1);
        ov70_0225E074(param1, &v0->unk_14.unk_00, 0, 0);
        ov70_02268DB8(v0);
        ov70_02262E88(param0, 15);
        break;
    case 15: {
        u32 v19;
        BOOL v20;

        v19 = ov70_0225E0D4(param1);

        switch (v19) {
        case 0:
            ov66_0222ECD4(v1, 3);
            ov70_02262E88(param0, 16);
            ov66_0222EF44(v1, v0->unk_03);

            {
                u32 v21;

                v21 = ov70_0225CD60(v0->unk_10, 4);
                ov66_0222E9CC(v1, param2, v21, ov66_0222E8C4(v7));
            }
            v20 = 1;
            break;
        case 1:
            ov70_02262E88(param0, 10);
            v20 = 1;
            break;
        default:
            ov70_02268DCC(v0, param1);
            v20 = 0;
            break;
        }

        if (v20 == 1) {
            ov70_0225E0E4(param1, NULL, NULL);
            ov70_02269108(&v0->unk_14, param1);
            ov70_02268DC4(v0);
        }
    } break;
    case 16:
        ov70_0225E234(param1, v0->unk_03, 0);
        ov70_02268D38(v0, v1, param1, 1, 0);

        v5 = ov70_02268AAC(param1, v0->unk_03, 510);

        ov70_0225DF8C(param1, v5);
        ov70_02268BA4(v0, 128, 17, param0, 37);

        {
            u32 v22;

            v22 = ov66_0222E8C4(v7);
            ov66_0222E528(v1, v22);
        }
        break;
    case 17:
        Sound_PlayEffect(1448);
        ov70_02262E88(param0, 18);
        break;
    case 18:
        switch (v3) {
        case 2:
            ov70_02268E20(v0, v7);

            if (v0->unk_0C == 1) {
                ov70_02262E88(param0, 33);
            } else {
                ov70_02262E88(param0, 10);
            }

            ov70_0225DFCC(param1);
            break;
        case 3:
            if (ov70_0225DFDC(param1) == 0) {
                ov70_0225DFBC(param1);
            }

            ov70_02268D70(v0, param1);
            break;
        case 0:
        case 4:
        case 1:
        default:
            ov70_02262E88(param0, 32);
            ov70_0225DFCC(param1);
            break;
        }
        break;
    case 19:
        ov66_0222ECD4(v1, 5);
        ov70_02262E88(param0, 20);
        break;
    case 20:
        ov70_02268EEC(&v0->unk_14, param1, 30, 4, 519, 0);
        ov70_0225E0A4(param1, &v0->unk_14.unk_00, 0, 0, 8, 3, 23);
        ov70_02262E88(param0, 21);
        ov70_02268DB8(v0);
        break;
    case 21: {
        u32 v23;

        v23 = ov70_0225E0D4(param1);

        switch (v23) {
        case 0xffffffff:
        case 0xfffffffe:
            ov70_02268DCC(v0, param1);
            break;
        default:
            ov70_0225E0E4(param1, NULL, NULL);
            ov70_02269108(&v0->unk_14, param1);
            v0->unk_00 = v23;
            ov70_02262E88(param0, 22);
            break;
        }
    } break;
    case 22:
        ov70_0225E234(param1, v0->unk_03, 0);

        v5 = ov70_02268AAC(param1, v0->unk_03, 477 + v0->unk_00);

        ov70_0225DF8C(param1, v5);
        ov70_02268BA4(v0, 128, 23, param0, 37);
        break;
    case 23:
        ov70_02268E44(&v0->unk_14, param1, 4, 115 + (v0->unk_00 * 4), 0);
        ov70_0225E074(param1, &v0->unk_14.unk_00, 0, 0);
        ov70_02262E88(param0, 24);
        break;
    case 24: {
        u32 v24;

        v24 = ov70_0225E0D4(param1);

        switch (v24) {
        case 0:
        case 1:
        case 2:
        case 3:
            ov70_0225E0E4(param1, NULL, NULL);
            ov70_02269108(&v0->unk_14, param1);
            ov70_02268DC4(v0);

            v0->unk_01 = (v0->unk_00 * 4) + v24;

            ov70_02262E88(param0, 25);
            break;
        default:
            ov70_02268DCC(v0, param1);
            break;
        }
    } break;
    case 25:
        ov70_0226911C(&v0->unk_38, v1, 6 + v0->unk_01, 2);
        ov70_0225E234(param1, v0->unk_03, 0);

        v5 = ov70_02268AAC(param1, v0->unk_03, 357 + v0->unk_01);

        ov70_0225DF8C(param1, v5);
        ov70_02268BA4(v0, 128, 26, param0, 37);
        break;
    case 26:
        ov70_0225E234(param1, v0->unk_03, 0);

        v5 = ov70_02268AAC(param1, v0->unk_03, 85 + v0->unk_00);

        ov70_0225DF8C(param1, v5);
        ov70_02268BA4(v0, 128, 27, param0, 37);
        break;
    case 27: {
        BOOL v25;
        u16 v26;

        v25 = ov70_02269178(&v0->unk_38);

        if (v25 == 1) {
            v26 = ov70_02269188(&v0->unk_38);

            if (v26 == 2) {
                ov70_02262E88(param0, 28);
            } else {
                ov70_02262E88(param0, 32);
                ov70_0225DFCC(param1);
            }
        } else {
            if (ov70_0225DFDC(param1) == 0) {
                ov70_0225DFBC(param1);
            }
        }
    } break;
    case 28:
        switch (v3) {
        case 2:
            ov70_02268E20(v0, v7);
            ov70_02262E88(param0, 29);
            ov70_0225DFCC(param1);
            break;
        case 3:
            if (ov70_0225DFDC(param1) == 0) {
                ov70_0225DFBC(param1);
            }

            ov70_02268D70(v0, param1);
            break;
        case 0:
        case 1:
        case 4:
        default:
            ov70_02262E88(param0, 32);
            ov70_0225DFCC(param1);
            break;
        }
        break;
    case 29: {
        u16 v27 = (v4 - 6);

        if ((v4 >= 126) || (v4 < 6)) {
            ov70_02262E88(param0, 35);
            break;
        }

        ov70_0225E234(param1, v0->unk_03, 0);
        v5 = ov70_02268AAC(param1, v0->unk_03, 236 + v27);
        ov70_0225DF8C(param1, v5);

        if (v27 == v0->unk_01) {
            ov70_02268BA4(v0, 128, 30, param0, 37);
        } else {
            ov70_02268BA4(v0, 128, 31, param0, 37);
        }
    } break;
    case 30:
        ov70_0225E234(param1, v0->unk_03, 0);

        v5 = ov70_02268AAC(param1, v0->unk_03, 51);

        ov70_0225DF8C(param1, v5);
        ov70_02268BA4(v0, 128, 10, param0, 37);
        break;
    case 31:
        ov70_0225E234(param1, v0->unk_03, 0);

        v5 = ov70_02268AAC(param1, v0->unk_03, 50);

        ov70_0225DF8C(param1, v5);
        ov70_02268BA4(v0, 128, 10, param0, 37);
        break;
    case 32:
        ov70_0225E0E4(param1, NULL, NULL);
        ov70_02269108(&v0->unk_14, param1);

        v5 = ov70_02268AAC(param1, v0->unk_03, 45);
        ov70_0225DF8C(param1, v5);
        v0->unk_0A = 0;

        ov70_02268BA4(v0, 128, 38, param0, 36);
        ov66_0222EDC0(v1);
        break;
    case 33:
        ov70_0225E234(param1, v0->unk_03, 0);

        v5 = ov70_02268AAC(param1, v0->unk_03, 43);
        ov70_0225DF8C(param1, v5);
        v0->unk_0A = 0;

        ov70_02268BA4(v0, 128, 38, param0, 36);
        break;
    case 34:
        v5 = ov70_02268AAC(param1, v0->unk_03, 42);
        ov70_0225DF8C(param1, v5);

        v0->unk_0A = 0;

        ov70_02268BA4(v0, 128, 38, param0, 36);
        break;
    case 35:
        ov70_0225E234(param1, v0->unk_03, 0);

        v5 = ov70_02268AAC(param1, v0->unk_03, 356);
        ov70_0225DF8C(param1, v5);
        v0->unk_0A = 0;

        ov70_02268BA4(v0, 128, 38, param0, 36);
        break;
    case 36:
        ov70_02268BBC(v0, param0);
        break;
    case 37:
        ov70_02268BD8(v0, param0, param1);
        break;
    case 38:
        if (v0->unk_44 == 1) {
            ov66_0222E500(v1, v0->unk_46, v0->unk_48);
        }

        ov66_0222EC60(v1);
        ov70_0225DFEC(param1);
        ov66_0222E3E4(v1, 1);

        {
            UnkStruct_ov70_0225CC54 *v28;
            UnkStruct_ov70_0225CA20 *v29;
            u32 v30;

            v29 = ov70_0225DEF0(param1);
            v28 = ov70_0225CCAC(v29);

            ov70_0225CDEC(v29, v28, 1);

            if (v0->unk_10 != NULL) {
                ov70_0225D030(v0->unk_10, 1);

                v30 = ov70_0225CD60(v0->unk_10, 4);

                ov70_02262EEC(v2, v30, 1);
                ov70_0225E3D0(param1);
            }
        }

        ov70_02268BA0(v0);
        ov70_02262E64(param0);

        return 1;
    }

    ov70_02268E08(v0);
    ov70_02269144(&v0->unk_38, v1);

    return 0;
}

BOOL ov70_02267A44(UnkStruct_ov70_02263344 *param0, UnkStruct_ov70_0225DEE8 *param1, u32 param2)
{
    UnkStruct_ov70_02268BA0 *v0;
    UnkStruct_ov66_0222DFF8 *v1;
    u32 v2;
    u32 v3;
    Strbuf *v4;
    const UnkStruct_ov66_0222E71C *v5;
    const UnkStruct_ov66_0222E71C *v6;

    v1 = ov70_0225DEE8(param1);
    v0 = ov70_02262E80(param0);
    v2 = ov66_0222EE30(v1);
    v3 = ov66_0222EE3C(v1);

    if (ov66_0222EE68(v1)) {
        if (v0) {
            if (v0->unk_0A == 1) {
                ov70_02262E88(param0, 26);
                ov70_0225DFCC(param1);
                v0->unk_0A = 0;
            }
        }
    }

    if (v0) {
        v5 = ov66_0222E3BC(v1);
        v6 = ov66_0222E374(v1, v0->unk_03);
    }

    if (ov70_02262E84(param0) > 0) {
        if (v0->unk_0A == 1) {
            if (v6 == NULL) {
                ov70_02262E88(param0, 26);
                ov70_0225DFCC(param1);
                v0->unk_0A = 0;
            }
        }
    }

    switch (ov70_02262E84(param0)) {
    case 0:
        v0 = ov70_02262E3C(param0, sizeof(UnkStruct_ov70_02268BA0));
        v0->unk_44 = 0;
        v0->unk_46 = 0;
        v0->unk_48 = 0;

        {
            u32 v7;
            BOOL v8;

            v7 = ov66_0222EE1C(v1);
            v8 = ov70_02268B50(v0, v1, v7);

            Sound_PlayEffect(1508);
            ov66_0222E3E4(v1, 9);

            if (v8 == 1) {
                ov70_0225E328(param1, v7, 0);
                ov66_0222EEE4(v1, v7);
                ov70_02262E88(param0, 1);
            } else {
                ov70_02262E88(param0, 26);
                break;
            }
        }
        break;
    case 1:
        if (ov66_0222EEAC(v1) == 0) {
            break;
        }

        ov70_02268BF4(v0, v1, param1, v0->unk_05, v6, v5);
        ov70_02268BA4(v0, 128, 2, param0, 30);
        break;
    case 2:
        ov66_0222EEF4(v1, v0->unk_03);
        ov66_0222F020(v1);
        ov66_0222F040(v1, 7);
        ov70_02268BF4(v0, v1, param1, v0->unk_04, v5, v6);
        ov70_02268BA4(v0, 128, 3, param0, 30);
        break;
    case 3:
        switch (v2) {
        case 3:
            ov70_0225DFCC(param1);
            ov66_0222ECD4(v1, 0);

            if (ov66_0222EE24(v1)) {
                ov70_02262E88(param0, 4);
            } else {
                ov70_02262E88(param0, 6);
            }
            break;
        case 2:
            if (ov70_0225DFDC(param1) == 0) {
                ov70_0225DFBC(param1);
            }

            ov70_02268D70(v0, param1);
            break;
        case 1:
        case 4:
        case 0:
        default:
            ov70_02262E88(param0, 26);
            ov70_0225DFCC(param1);
            break;
        }
        break;
    case 4: {
        BOOL v9;

        v9 = ov70_02268CC8(v0, v1, param1);

        if (v9 == 1) {
            ov70_02268BA4(v0, 128, 5, param0, 30);
        } else {
            ov70_02262E88(param0, 5);
        }
    } break;
    case 5:
        ov70_0225E234(param1, v0->unk_03, 0);

        v4 = ov70_02268AAC(param1, v0->unk_03, 40);

        ov70_0225DF8C(param1, v4);
        ov70_02268BA4(v0, 128, 7, param0, 30);
        break;
    case 6:
        ov70_0225E234(param1, v0->unk_03, 0);
        ov70_0225E234(param1, v0->unk_08, 1);

        v4 = ov70_02268AF8(param1, v0->unk_03, v0->unk_08);

        ov70_0225DF8C(param1, v4);
        ov70_02268BA4(v0, 128, 7, param0, 30);
        break;
    case 7:
        ov70_0225E234(param1, v0->unk_03, 0);

        v4 = ov70_02268AAC(param1, v0->unk_03, 47);

        ov70_0225DF8C(param1, v4);
        ov70_02268BA4(v0, 128, 9, param0, 30);
        break;
    case 8:
        ov70_0225E234(param1, v0->unk_03, 0);

        v4 = ov70_02268AAC(param1, v0->unk_03, 53);

        ov70_0225DF8C(param1, v4);
        ov70_02268BA4(v0, 128, 9, param0, 30);
        break;
    case 9:
        switch (v2) {
        case 3:
            switch (v3) {
            case 3:
                ov70_02262E88(param0, 10);
                ov66_0222EEB8(v1);

                v0->unk_4C = 1;

                ov70_02268E20(v0, v6);
                break;
            case 4:
                ov70_02262E88(param0, 14);
                ov66_0222EEB8(v1);
                v0->unk_4C = 1;
                ov70_02268E20(v0, v6);
                break;
            case 5:
                ov66_0222ECD4(v1, 1);
                ov70_02262E88(param0, 15);
                break;
            default:
                ov70_02262E88(param0, 26);
                ov70_0225DFCC(param1);
                break;
            }

            ov70_0225DFCC(param1);
            break;
        case 2:
            if (ov70_0225DFDC(param1) == 0) {
                ov70_0225DFBC(param1);
            }

            ov70_02268D70(v0, param1);
            break;
        case 0:
            ov70_02262E88(param0, 27);
            ov70_0225DFCC(param1);
            break;
        case 1:
        case 4:
        default:
            ov70_02262E88(param0, 26);
            ov70_0225DFCC(param1);
            break;
        }
        break;
    case 10:
        ov70_0225E234(param1, v0->unk_03, 0);
        ov70_02268D38(v0, v1, param1, 1, 1);

        v4 = ov70_02268AAC(param1, v0->unk_03, 511);

        ov70_0225DF8C(param1, v4);
        ov70_02268BA4(v0, 128, 11, param0, 30);
        break;
    case 11:
        ov70_0225E234(param1, v0->unk_03, 0);
        ov70_02268D38(v0, v1, param1, 1, 1);

        v4 = ov70_02268AAC(param1, v0->unk_03, 512);

        ov70_0225DF8C(param1, v4);
        ov70_02268BA4(v0, 128, 12, param0, 30);
        break;
    case 12:
        ov70_0225E234(param1, v0->unk_03, 0);
        ov70_02268D38(v0, v1, param1, 1, 1);

        v4 = ov70_02268AAC(param1, v0->unk_03, 513);

        ov70_0225DF8C(param1, v4);
        ov70_02268BA4(v0, 128, 13, param0, 30);
        break;
    case 13:
        Sound_PlayEffect(1448);
        ov70_0225E234(param1, v0->unk_03, 0);

        v4 = ov70_02268AAC(param1, v0->unk_03, 514);

        ov70_0225DF8C(param1, v4);
        ov70_02268BA4(v0, 128, 8, param0, 30);
        ov66_0222ECD4(v1, 2);

        {
            u32 v10;

            v10 = ov66_0222E8C4(ov66_0222E3BC(v1));
            ov70_0225E378(param1, v10);
        }
        break;
    case 14:
        ov70_0225E234(param1, v0->unk_03, 0);
        ov70_02268D38(v0, v1, param1, 1, 1);

        v4 = ov70_02268AAC(param1, v0->unk_03, 507);

        ov70_0225DF8C(param1, v4);
        ov70_02268BA4(v0, 128, 27, param0, 30);
        ov66_0222ECD4(v1, 2);
        break;
    case 15:
        ov70_0225E234(param1, v0->unk_03, 0);

        v4 = ov70_02268AAC(param1, v0->unk_03, 687);

        ov70_0225DF8C(param1, v4);
        ov70_02268BA4(v0, 128, 16, param0, 30);
        break;
    case 16:
        switch (v2) {
        case 3:
            ov70_02262E88(param0, 17);
            ov70_0225DFCC(param1);
            ov66_0222EEB8(v1);
            v0->unk_4C = 1;
            break;
        case 2:
            if (ov70_0225DFDC(param1) == 0) {
                ov70_0225DFBC(param1);
            }

            ov70_02268D70(v0, param1);
            break;
        case 1:
        case 4:
        case 0:
        default:
            ov70_02262E88(param0, 26);
            ov70_0225DFCC(param1);
            break;
        }
        break;
    case 17:
        if ((v3 < 6) || (v3 >= 126)) {
            ov70_02262E88(param0, 26);
            break;
        }

        v0->unk_02 = v3 - 6;
        v0->unk_00 = v0->unk_02 / 4;

        ov70_0225E234(param1, v0->unk_03, 0);

        v4 = ov70_02268AAC(param1, v0->unk_03, 55 + v0->unk_00);

        ov70_0225DF8C(param1, v4);
        ov70_02268BA4(v0, 128, 18, param0, 30);
        break;
    case 18:
        ov70_0225E234(param1, v0->unk_03, 0);

        v4 = ov70_02268AAC(param1, v0->unk_03, 85 + v0->unk_00);

        ov70_0225DF8C(param1, v4);
        ov70_02268BA4(v0, 128, 19, param0, 30);
        break;
    case 19:
        ov70_0225E234(param1, v0->unk_03, 0);

        v4 = ov70_02268AAC(param1, v0->unk_03, 236 + v0->unk_02);

        ov70_0225DF8C(param1, v4);
        ov70_02268BA4(v0, 128, 20, param0, 30);
        break;
    case 20:
        ov70_0225E234(param1, v0->unk_03, 0);

        v4 = ov70_02268AAC(param1, v0->unk_03, 477 + v0->unk_00);

        ov70_0225DF8C(param1, v4);
        ov70_02268BA4(v0, 128, 21, param0, 30);
        break;
    case 21:
        ov70_02268E44(&v0->unk_14, param1, 5, 115 + (v0->unk_00 * 4), 2);
        ov70_0225E074(param1, &v0->unk_14.unk_00, 0, 0);
        ov70_02268DB8(v0);
        ov70_02262E88(param0, 22);
        break;
    case 22: {
        u32 v11;
        BOOL v12;

        v11 = ov70_0225E0D4(param1);

        switch (v11) {
        case 0:
        case 1:
        case 2:
        case 3:
            v0->unk_01 = (v0->unk_00 * 4) + v11;

            ov66_0222ECD4(v1, v0->unk_01 + 6);
            ov70_02262E88(param0, 23);

            v12 = 1;
            break;
        case 4:
            v0->unk_01 = 126;

            ov66_0222ECD4(v1, v0->unk_01);
            ov70_02262E88(param0, 28);

            v12 = 1;
            break;
        default:
            ov70_02268DCC(v0, param1);
            v12 = 0;
            break;
        }

        if (v12) {
            ov70_0225E0E4(param1, NULL, NULL);
            ov70_02269108(&v0->unk_14, param1);
            ov70_02268DC4(v0);
            ov70_02268E20(v0, v6);
        }
    } break;
    case 23:
        ov70_0225E234(param1, v0->unk_03, 0);
        v4 = ov70_02268AAC(param1, v0->unk_03, 357 + v0->unk_01);
        ov70_0225DF8C(param1, v4);

        if (v0->unk_02 == v0->unk_01) {
            ov70_02268BA4(v0, 128, 24, param0, 30);
        } else {
            ov70_02268BA4(v0, 128, 25, param0, 30);
        }
        break;
    case 24:
        ov70_0225E234(param1, v0->unk_03, 0);

        v4 = ov70_02268AAC(param1, v0->unk_03, 51);

        ov70_0225DF8C(param1, v4);
        ov70_02268BA4(v0, 128, 25, param0, 30);
        break;
    case 25:
        ov70_0225E234(param1, v0->unk_03, 0);

        v4 = ov70_02268AAC(param1, v0->unk_03, 52);

        ov70_0225DF8C(param1, v4);
        ov70_02268BA4(v0, 128, 8, param0, 30);
        break;
    case 26:
        ov70_0225E0E4(param1, NULL, NULL);
        ov70_02269108(&v0->unk_14, param1);

        v4 = ov70_02268AAC(param1, v0->unk_03, 45);
        ov70_0225DF8C(param1, v4);
        v0->unk_0A = 0;

        ov70_02268BA4(v0, 128, 31, param0, 29);
        ov66_0222EDC0(v1);
        break;
    case 27:
        ov70_0225E234(param1, v0->unk_03, 0);

        v4 = ov70_02268AAC(param1, v0->unk_03, 43);
        ov70_0225DF8C(param1, v4);
        v0->unk_0A = 0;

        ov70_02268BA4(v0, 128, 31, param0, 29);
        break;
    case 28:
        ov70_0225E234(param1, v0->unk_03, 0);

        v4 = ov70_02268AAC(param1, v0->unk_03, 49);

        ov70_0225DF8C(param1, v4);
        ov70_02268BA4(v0, 128, 27, param0, 30);
        break;
    case 29:
        ov70_02268BBC(v0, param0);
        break;
    case 30:
        ov70_02268BD8(v0, param0, param1);
        break;
    case 31:
        if (v0->unk_44 == 1) {
            ov66_0222E500(v1, v0->unk_46, v0->unk_48);
        }

        if (v0->unk_4C == 0) {
            ov66_0222EED4(v1, v0->unk_03);
        }

        ov66_0222EC60(v1);
        ov70_0225DFEC(param1);
        ov70_02268BA0(v0);
        ov70_02262E64(param0);
        ov66_0222E3E4(v1, 1);

        {
            UnkStruct_ov70_0225CC54 *v13;
            UnkStruct_ov70_0225CA20 *v14;

            v14 = ov70_0225DEF0(param1);
            v13 = ov70_0225CCAC(v14);

            ov70_0225CDEC(v14, v13, 1);
            ov70_0225E3D0(param1);
        }

        return 1;
    }

    ov70_02268E08(v0);

    return 0;
}

BOOL ov70_02268390(UnkStruct_ov70_02263344 *param0, UnkStruct_ov70_0225DEE8 *param1, u32 param2)
{
    UnkStruct_ov70_02268390 *v0;
    Strbuf *v1;
    UnkStruct_ov66_0222DFF8 *v2;

    v0 = ov70_02262E80(param0);
    v2 = ov70_0225DEE8(param1);

    switch (ov70_02262E84(param0)) {
    case 0:
        v0 = ov70_02262E3C(param0, sizeof(UnkStruct_ov70_02268390));

        Sound_PlayEffect(1500);

        if (ov66_0222E12C(v2) == 1) {
            ov70_02262E88(param0, 2);
        } else {
            if (ov66_0222E170(v2) == 1) {
                ov70_02262E88(param0, 1);
            } else {
                ov70_02262E88(param0, 3);
            }
        }
        break;
    case 1:
        v1 = ov70_0225E20C(param1, 1, 78);
        ov70_0225DF8C(param1, v1);
        v0->unk_00 = 24;
        ov70_02262E88(param0, 23);
        break;
    case 2:
        v1 = ov70_0225E20C(param1, 1, 3);
        ov70_0225DF8C(param1, v1);
        v0->unk_00 = 24;
        ov70_02262E88(param0, 23);
        break;
    case 3:
        v1 = ov70_0225E20C(param1, 1, 15);
        ov70_0225DF8C(param1, v1);
        v0->unk_00 = 4;
        ov70_02262E88(param0, 23);
        break;
    case 4:
        v1 = ov70_0225E20C(param1, 1, 16);
        ov70_0225DF8C(param1, v1);
        v0->unk_00 = 5;
        ov70_02262E88(param0, 23);
        break;
    case 5:
        ov70_02268FB8(&v0->unk_04, param1);
        ov70_0225E0A4(param1, &v0->unk_04.unk_00, 0, 0, 16, 1, 15);
        ov70_02262E88(param0, 6);
        break;
    case 6: {
        u32 v3;
        BOOL v4 = 0;

        v3 = ov70_0225E0D4(param1);

        switch (v3) {
        case 0:
            ov70_02262E88(param0, 7);
            v4 = 1;
            break;
        case 1:
            ov70_02262E88(param0, 8);
            v4 = 1;
            break;
        case 2:
            ov70_02262E88(param0, 13);
            v4 = 1;
            break;
        case 3:
            ov70_02262E88(param0, 14);
            v4 = 1;
            break;
        case 4:
            ov70_02262E88(param0, 15);
            v4 = 1;
            break;
        case 5:
            ov70_02262E88(param0, 21);
            v4 = 1;
            break;
        case 6:
            ov70_02262E88(param0, 16);
            v4 = 1;
            break;
        case 0xfffffffe:
            Sound_PlayEffect(1500);
        case 7:
            ov70_02262E88(param0, 22);
            v4 = 1;
            break;
        default:
            break;
        }

        if (v4 == 1) {
            ov70_0225E0E4(param1, NULL, NULL);
            ov70_02269108(&v0->unk_04, param1);
        }
    } break;
    case 7:
        v1 = ov70_0225E20C(param1, 1, 23);
        ov70_0225DF8C(param1, v1);
        v0->unk_00 = 4;
        ov70_02262E88(param0, 23);
        break;
    case 8:
        ov70_02269090(&v0->unk_04, param1);
        ov70_0225E074(param1, &v0->unk_04.unk_00, 0, 0);
        ov70_02262E88(param0, 9);
        break;
    case 9: {
        u32 v5;
        BOOL v6 = 0;

        v5 = ov70_0225E0D4(param1);

        switch (v5) {
        case 0:
            ov70_02262E88(param0, 10);
            v6 = 1;
            break;
        case 1:
            ov70_02262E88(param0, 11);
            v6 = 1;
            break;
        case 2:
            ov70_02262E88(param0, 12);
            v6 = 1;
            break;
        case 0xfffffffe:
            Sound_PlayEffect(1500);
        case 3:
            ov70_02262E88(param0, 4);
            v6 = 1;
            break;
        default:
            break;
        }

        if (v6 == 1) {
            ov70_0225E0E4(param1, NULL, NULL);
            ov70_02269108(&v0->unk_04, param1);
        }
    } break;
    case 10:
        ov70_0225E27C(param1, UnkEnum_ov66_022324D0_00, 0);
        v1 = ov70_0225E20C(param1, 1, 24);
        ov70_0225DF8C(param1, v1);
        v0->unk_00 = 4;
        ov70_02262E88(param0, 23);
        break;
    case 11:
        ov70_0225E27C(param1, UnkEnum_ov66_022324D0_01, 0);
        v1 = ov70_0225E20C(param1, 1, 25);
        ov70_0225DF8C(param1, v1);
        v0->unk_00 = 4;
        ov70_02262E88(param0, 23);
        break;
    case 12:
        ov70_0225E27C(param1, UnkEnum_ov66_022324D0_02, 0);
        v1 = ov70_0225E20C(param1, 1, 26);
        ov70_0225DF8C(param1, v1);
        v0->unk_00 = 4;
        ov70_02262E88(param0, 23);
        break;
    case 13:
        v1 = ov70_0225E20C(param1, 1, 18);
        ov70_0225DF8C(param1, v1);
        v0->unk_00 = 4;
        ov70_02262E88(param0, 23);
        break;
    case 14:
        v1 = ov70_0225E20C(param1, 1, 19);
        ov70_0225DF8C(param1, v1);
        v0->unk_00 = 4;
        ov70_02262E88(param0, 23);
        break;
    case 15:
        v1 = ov70_0225E20C(param1, 1, 20);
        ov70_0225DF8C(param1, v1);
        v0->unk_00 = 4;
        ov70_02262E88(param0, 23);
        break;
    case 16:
        ov70_02269018(&v0->unk_04, param1);
        ov70_0225E074(param1, &v0->unk_04.unk_00, 0, 0);
        ov70_02262E88(param0, 17);
        break;
    case 17: {
        u32 v7;
        BOOL v8 = 0;

        v7 = ov70_0225E0D4(param1);

        switch (v7) {
        case 0:
            ov70_02262E88(param0, 18);
            v8 = 1;
            break;
        case 1:
            ov70_02262E88(param0, 19);
            v8 = 1;
            break;
        case 2:
            ov70_02262E88(param0, 20);
            v8 = 1;
            break;
        case 0xfffffffe:
            Sound_PlayEffect(1500);
        case 3:
            ov70_02262E88(param0, 4);
            v8 = 1;
            break;
        default:
            break;
        }

        if (v8 == 1) {
            ov70_0225E0E4(param1, NULL, NULL);
            ov70_02269108(&v0->unk_04, param1);
        }
    } break;
    case 18:
        v1 = ov70_0225E20C(param1, 1, 27);
        ov70_0225DF8C(param1, v1);
        v0->unk_00 = 4;
        ov70_02262E88(param0, 23);
        break;
    case 19:
        v1 = ov70_0225E20C(param1, 1, 28);
        ov70_0225DF8C(param1, v1);
        v0->unk_00 = 4;
        ov70_02262E88(param0, 23);
        break;
    case 20:
        v1 = ov70_0225E20C(param1, 1, 29);
        ov70_0225DF8C(param1, v1);
        v0->unk_00 = 4;
        ov70_02262E88(param0, 23);
        break;
    case 21:
        v1 = ov70_0225E20C(param1, 1, 30);
        ov70_0225DF8C(param1, v1);
        v0->unk_00 = 4;
        ov70_02262E88(param0, 23);
        break;
    case 22:
        v1 = ov70_0225E20C(param1, 1, 22);
        ov70_0225DF8C(param1, v1);
        v0->unk_00 = 24;
        ov70_02262E88(param0, 23);
        break;
    case 23:
        if (ov70_0225DFAC(param1)) {
            ov70_02262E88(param0, v0->unk_00);
        }
        break;
    case 24:
        ov70_02262E64(param0);
        ov70_0225DFEC(param1);

        {
            UnkStruct_ov70_0225CA20 *v9;
            UnkStruct_ov70_0225CC54 *v10;

            v9 = ov70_0225DEF0(param1);
            v10 = ov70_0225CCAC(v9);

            ov70_0225CDEC(v9, v10, 1);
        }

        return 1;
    }

    return 0;
}

BOOL ov70_0226889C(UnkStruct_ov70_02263344 *param0, UnkStruct_ov70_0225DEE8 *param1, u32 param2)
{
    UnkStruct_ov70_02268390 *v0;
    UnkStruct_ov66_0222DFF8 *v1;
    Strbuf *v2;

    v0 = ov70_02262E80(param0);
    v1 = ov70_0225DEE8(param1);

    switch (ov70_02262E84(param0)) {
    case 0:
        Sound_PlayEffect(1500);

        if (ov66_0222E12C(v1) == 0) {
            if (ov66_0222E170(v1) == 1) {
                v2 = ov70_0225E20C(param1, 1, 78);

                ov70_0225DF8C(param1, v2);
                ov70_02262E88(param0, 1);
                break;
            }
        } else {
            v2 = ov70_0225E20C(param1, 1, 3);

            ov70_0225DF8C(param1, v2);
            ov70_02262E88(param0, 1);
            break;
        }

        {
            u32 v3;

            v3 = ov66_0222F05C(v1);

            switch (v3) {
            case 0:
                ov70_0225E27C(param1, UnkEnum_ov66_022324D0_00, 0);
                v2 = ov70_0225E20C(param1, 1, 73);
                break;
            case 1:
                ov70_0225E27C(param1, UnkEnum_ov66_022324D0_01, 0);
                v2 = ov70_0225E20C(param1, 1, 73);
                break;
            case 2:
                ov70_0225E27C(param1, UnkEnum_ov66_022324D0_02, 0);
                v2 = ov70_0225E20C(param1, 1, 73);
                break;
            case 3:
                ov70_0225E27C(param1, UnkEnum_ov66_022324D0_05, 0);
                v2 = ov70_0225E20C(param1, 1, 77);
                break;
            case 4:
                ov70_0225E27C(param1, UnkEnum_ov66_022324D0_06, 0);
                v2 = ov70_0225E20C(param1, 1, 77);
                break;
            case 5:
                v2 = ov70_0225E20C(param1, 1, 74);
                break;
            case 6:
                v2 = ov70_0225E20C(param1, 1, 79);
                break;
            case 7:
                v2 = ov70_0225E20C(param1, 1, 75);
                break;
            default:
            case 8:
                v2 = ov70_0225E20C(param1, 1, 76);
                break;
            }

            ov70_0225DF8C(param1, v2);
        }

        ov70_02262E88(param0, 1);
        break;
    case 1:
        if (ov70_0225DFAC(param1)) {
            ov70_02262E88(param0, 2);
        }
        break;
    case 2:
        ov70_0225DFEC(param1);

        {
            UnkStruct_ov70_0225CA20 *v4;
            UnkStruct_ov70_0225CC54 *v5;

            v4 = ov70_0225DEF0(param1);
            v5 = ov70_0225CCAC(v4);
            ov70_0225CDEC(v4, v5, 1);
        }

        return 1;
    }

    return 0;
}

static u32 ov70_02268A3C(const UnkStruct_ov66_0222E71C *param0)
{
    UnkStruct_ov66_02231428 v0;

    v0 = ov66_0222E7C4(param0);

    switch (v0.unk_00_val2_unk_00) {
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
        return 0;
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
        return 1;
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 0:
    case 1:
    case 2:
    case 3:
        return 2;
    }

    GF_ASSERT(0);
    return 1;
}

static Strbuf *ov70_02268AAC(UnkStruct_ov70_0225DEE8 *param0, u32 param1, u32 param2)
{
    BOOL v0;
    UnkStruct_ov66_0222DFF8 *v1;
    int v2;

    v1 = ov70_0225DEE8(param0);
    v0 = ov66_0222E924(v1, param1);

    if (v0 == 1) {
        for (v2 = 0; v2 < NELEMS(Unk_ov70_0226DD5C); v2++) {
            if (param2 == Unk_ov70_0226DD5C[v2].unk_00) {
                param2 = Unk_ov70_0226DD5C[v2].unk_02;
                break;
            }
        }
    }

    return ov70_0225E20C(param0, 3, param2);
}

static Strbuf *ov70_02268AF8(UnkStruct_ov70_0225DEE8 *param0, u32 param1, u32 param2)
{
    BOOL v0, v1;
    UnkStruct_ov66_0222DFF8 *v2;
    u32 v3;

    v2 = ov70_0225DEE8(param0);
    v0 = ov66_0222E924(v2, param1);
    v1 = ov66_0222E924(v2, param2);
    v3 = 41;

    if ((v0 == 1) && (v1 == 1)) {
        v3 = 682;
    } else if ((v0 == 1) && (v1 == 0)) {
        v3 = 550;
    } else if ((v0 == 0) && (v1 == 1)) {
        v3 = 681;
    }

    return ov70_0225E20C(param0, 3, v3);
}

static BOOL ov70_02268B50(UnkStruct_ov70_02268BA0 *param0, UnkStruct_ov66_0222DFF8 *param1, u32 param2)
{
    GF_ASSERT(param2 != DWC_LOBBY_INVALID_USER_ID);

    param0->unk_03 = param2;
    param0->unk_08 = ov66_0222E338(param1);
    param0->unk_0A = 1;

    {
        const UnkStruct_ov66_0222E71C *v0;
        const UnkStruct_ov66_0222E71C *v1;

        v0 = ov66_0222E3BC(param1);
        v1 = ov66_0222E374(param1, param0->unk_03);

        if (v1 == NULL) {
            return 0;
        }

        param0->unk_04 = ov70_02268A3C(v0);
        param0->unk_05 = ov70_02268A3C(v1);
    }

    return 1;
}

static void ov70_02268BA0(UnkStruct_ov70_02268BA0 *param0)
{
    return;
}

static void ov70_02268BA4(UnkStruct_ov70_02268BA0 *param0, u8 param1, u8 param2, UnkStruct_ov70_02263344 *param3, u8 param4)
{
    param0->unk_06 = param1;
    param0->unk_07 = param2;

    ov70_02262E88(param3, param4);
}

static void ov70_02268BBC(UnkStruct_ov70_02268BA0 *param0, UnkStruct_ov70_02263344 *param1)
{
    if (param0->unk_06 > 0) {
        param0->unk_06--;
    } else {
        ov70_02262E88(param1, param0->unk_07);
    }
}

static void ov70_02268BD8(UnkStruct_ov70_02268BA0 *param0, UnkStruct_ov70_02263344 *param1, UnkStruct_ov70_0225DEE8 *param2)
{
    if (ov70_0225DFAC(param2)) {
        ov70_02262E88(param1, param0->unk_07);
    }
}

static void ov70_02268BF4(UnkStruct_ov70_02268BA0 *param0, UnkStruct_ov66_0222DFF8 *param1, UnkStruct_ov70_0225DEE8 *param2, u32 param3, const UnkStruct_ov66_0222E71C *param4, const UnkStruct_ov66_0222E71C *param5)
{
    u32 v0;
    u32 v1, v2;
    static const u16 v3[8][8] = {
        { 31, 31, 31, 31, 31, 31, 31, 31 },
        { 1, 0, 1, 3, 5, 7, 1, 9 },
        { 32, 2, 32, 11, 13, 15, 32, 17 },
        { 12, 4, 12, 33, 19, 21, 12, 23 },
        { 14, 6, 14, 20, 34, 25, 14, 27 },
        { 16, 8, 16, 22, 26, 35, 16, 29 },
        { 31, 31, 31, 31, 31, 31, 31, 31 },
        { 18, 10, 18, 24, 28, 30, 18, 36 },
    };

    ov70_02268C44(param2, 0, param3, param4);
    ov70_02268C44(param2, 1, param3, param5);

    v1 = ov66_0222E80C(param4);
    v2 = ov66_0222E80C(param5);
    v0 = v3[v1][v2];

    ov70_0225DF8C(param2, ov70_0225E20C(param2, 3, v0));
}

static void ov70_02268C44(UnkStruct_ov70_0225DEE8 *param0, u32 param1, u32 param2, const UnkStruct_ov66_0222E71C *param3)
{
    switch (ov66_0222E80C(param3)) {
    case 1:
        ov70_0225E2AC(param0, param1, param2);
        break;
    case 2:
        ov70_0225E2BC(param0, param1, param2);
        break;
    case 3:
        ov70_0225E2CC(param0, param1, param2);
        break;
    case 4:
        ov70_0225E2DC(param0, param1, param2);
        break;
    case 5:
        ov70_0225E2EC(param0, param1, param2);
        break;
    case 7:
        ov70_0225E2FC(param0, param1, param2);
        break;
    default:
        ov70_0225E2BC(param0, param1, param2);
        break;
    }
}

static BOOL ov70_02268CC8(UnkStruct_ov70_02268BA0 *param0, UnkStruct_ov66_0222DFF8 *param1, UnkStruct_ov70_0225DEE8 *param2)
{
    u32 v0;
    const UnkStruct_ov66_0222E71C *v1;
    const UnkStruct_ov66_0222E71C *v2;

    v1 = ov66_0222E3BC(param1);
    v2 = ov66_0222E374(param1, param0->unk_03);

    if (ov66_0222E824(v1) == 0) {
        return 0;
    }

    if (ov66_0222E824(v2) == 0) {
        return 0;
    }

    if (param0->unk_04 != param0->unk_05) {
        switch (param0->unk_05) {
        case 0:
            v0 = 39;
            break;
        case 1:
            v0 = 37;
            break;
        case 2:
            v0 = 38;
            break;
        }

        ov70_0225DF8C(param2, ov70_0225E20C(param2, 3, v0));
        return 1;
    }

    return 0;
}

static void ov70_02268D38(UnkStruct_ov70_02268BA0 *param0, UnkStruct_ov66_0222DFF8 *param1, UnkStruct_ov70_0225DEE8 *param2, u32 param3, BOOL param4)
{
    u32 v0;
    const UnkStruct_ov66_0222E71C *v1;
    const UnkStruct_ov66_0222E71C *v2;

    v1 = ov66_0222E3BC(param1);
    v2 = ov66_0222E374(param1, param0->unk_03);

    if (param4 == 0) {
        v0 = ov66_0222E8C4(v2);
    } else {
        v0 = ov66_0222E8C4(v1);
    }

    ov70_0225E29C(param2, v0, param3);
}

static void ov70_02268D70(UnkStruct_ov70_02268BA0 *param0, UnkStruct_ov70_0225DEE8 *param1)
{
    UnkStruct_ov66_0222DFF8 *v0;
    Strbuf *v1;

    v0 = ov70_0225DEE8(param1);

    if (ov66_0222EE90(v0) == 450) {
        ov70_0225DFCC(param1);
        ov70_0225E234(param1, param0->unk_03, 0);

        v1 = ov70_02268AAC(param1, param0->unk_03, 684);

        ov70_0225DF8C(param1, v1);
        ov70_0225DFBC(param1);
    }
}

static void ov70_02268DB8(UnkStruct_ov70_02268BA0 *param0)
{
    param0->unk_0E = 0;
    param0->unk_0D = 1;
}

static void ov70_02268DC4(UnkStruct_ov70_02268BA0 *param0)
{
    param0->unk_0E = 0;
    param0->unk_0D = 0;
}

static void ov70_02268DCC(UnkStruct_ov70_02268BA0 *param0, UnkStruct_ov70_0225DEE8 *param1)
{
    Strbuf *v0;

    if (param0->unk_0D == 1) {
        if (param0->unk_0E == 450) {
            ov70_0225E234(param1, param0->unk_03, 0);
            v0 = ov70_02268AAC(param1, param0->unk_03, 683);
            ov70_0225DF8C(param1, v0);
        }
    }
}

static void ov70_02268E08(UnkStruct_ov70_02268BA0 *param0)
{
    if (param0->unk_0D == 1) {
        if (param0->unk_0E <= 900) {
            param0->unk_0E++;
        }
    }
}

static void ov70_02268E20(UnkStruct_ov70_02268BA0 *param0, const UnkStruct_ov66_0222E71C *param1)
{
    u32 v0;

    v0 = ov66_0222E7A0(param1);

    param0->unk_44 = 1;
    param0->unk_46 = v0;
    param0->unk_48 = ov66_0222E798(param1);
}

static void ov70_02268E44(UnkStruct_ov70_02268E44 *param0, UnkStruct_ov70_0225DEE8 *param1, u32 param2, u32 param3, u32 param4)
{
    int v0;
    const Strbuf *v1;

    ov70_0225E00C(param1, param2);
    param0->unk_20 = param2;

    for (v0 = 0; v0 < param2; v0++) {
        if ((param4 != 0) && (v0 == (param2 - 1))) {
            if (param4 == 1) {
                v1 = ov70_0225E20C(param1, 3, 517);
            } else {
                v1 = ov70_0225E20C(param1, 3, 235);
            }
        } else {
            v1 = ov70_0225E20C(param1, 3, param3 + v0);
        }

        ov70_0225E044(param1, v1, v0);
    }

    param0->unk_00 = Unk_ov70_0226DCBC;
    param0->unk_00.count = param0->unk_20;

    if (param0->unk_00.maxDisplay > param0->unk_20) {
        param0->unk_00.maxDisplay = param0->unk_20;
    }

    param0->unk_00.choices = ov70_0225E054(param1);
}

static void ov70_02268EEC(UnkStruct_ov70_02268E44 *param0, UnkStruct_ov70_0225DEE8 *param1, u32 param2, u32 param3, u32 param4, u32 param5)
{
    int v0;
    u32 v1;
    u32 v2;
    const Strbuf *v3;
    BOOL v4;

    ov70_0225E020(param1, param3, param2);
    param0->unk_20 = param3;

    for (v0 = 0; v0 < param3; v0++) {
        if ((param5 != 0) && (v0 == (param3 - 1))) {
            v2 = param2;

            if (param5 == 1) {
                v3 = ov70_0225E20C(param1, 3, 517);
            } else {
                v3 = ov70_0225E20C(param1, 3, 235);
            }
        } else {
            do {
                v1 = MTRNG_Next() % param2;
                v2 = v1;
                v4 = ov70_0225E064(param1, v2);
            } while (v4 == 1);

            v3 = ov70_0225E20C(param1, 3, param4 + v1);
        }

        ov70_0225E044(param1, v3, v2);
    }

    param0->unk_00 = Unk_ov70_0226DCBC;
    param0->unk_00.count = param0->unk_20;

    if (param0->unk_00.maxDisplay > param0->unk_20) {
        param0->unk_00.maxDisplay = param0->unk_20;
    }

    param0->unk_00.choices = ov70_0225E054(param1);
}

static void ov70_02268FB8(UnkStruct_ov70_02268E44 *param0, UnkStruct_ov70_0225DEE8 *param1)
{
    int v0;
    Strbuf *v1;
    static const u8 v2[8] = {
        31,
        32,
        33,
        34,
        35,
        40,
        36,
        37,
    };

    ov70_0225E00C(param1, 8);
    param0->unk_20 = 8;

    for (v0 = 0; v0 < 8; v0++) {
        v1 = ov70_0225E20C(param1, 1, v2[v0]);
        ov70_0225E044(param1, v1, v0);
    }

    param0->unk_00 = Unk_ov70_0226DCBC;
    param0->unk_00.count = param0->unk_20;
    param0->unk_00.maxDisplay = param0->unk_20;
    param0->unk_00.choices = ov70_0225E054(param1);
}

static void ov70_02269018(UnkStruct_ov70_02268E44 *param0, UnkStruct_ov70_0225DEE8 *param1)
{
    int v0;
    Strbuf *v1;

    ov70_0225E00C(param1, 4);
    param0->unk_20 = 4;

    for (v0 = 0; v0 < 4 - 1; v0++) {
        ov70_0225E28C(param1, 0 + v0, 0);
        v1 = ov70_0225E20C(param1, 1, 39);
        ov70_0225E044(param1, v1, v0);
    }

    v1 = ov70_0225E20C(param1, 1, 37);

    ov70_0225E044(param1, v1, 4 - 1);

    param0->unk_00 = Unk_ov70_0226DCBC;
    param0->unk_00.count = param0->unk_20;
    param0->unk_00.maxDisplay = param0->unk_20;
    param0->unk_00.choices = ov70_0225E054(param1);
}

static void ov70_02269090(UnkStruct_ov70_02268E44 *param0, UnkStruct_ov70_0225DEE8 *param1)
{
    int v0;
    Strbuf *v1;

    ov70_0225E00C(param1, 4);
    param0->unk_20 = 4;

    for (v0 = 0; v0 < 4 - 1; v0++) {
        ov70_0225E27C(param1, UnkEnum_ov66_022324D0_00 + v0, 0);
        v1 = ov70_0225E20C(param1, 1, 38);
        ov70_0225E044(param1, v1, v0);
    }

    v1 = ov70_0225E20C(param1, 1, 37);

    ov70_0225E044(param1, v1, 4 - 1);

    param0->unk_00 = Unk_ov70_0226DCBC;
    param0->unk_00.count = param0->unk_20;
    param0->unk_00.maxDisplay = param0->unk_20;
    param0->unk_00.choices = ov70_0225E054(param1);
}

static void ov70_02269108(UnkStruct_ov70_02268E44 *param0, UnkStruct_ov70_0225DEE8 *param1)
{
    ov70_0225E034(param1);
}

static void ov70_02269114(UnkStruct_ov70_02269114 *param0)
{
    param0->unk_00 = 0;
}

static void ov70_0226911C(UnkStruct_ov70_02269114 *param0, const UnkStruct_ov66_0222DFF8 *param1, u16 param2, u16 param3)
{
    GF_ASSERT(param0->unk_00 == 0);
    param0->unk_00 = 1;
    param0->unk_02 = param2;
    param0->unk_04 = param3;
    param0->unk_06 = ov66_0222EE30(param1);
}

static void ov70_02269144(UnkStruct_ov70_02269114 *param0, UnkStruct_ov66_0222DFF8 *param1)
{
    u32 v0;

    if (param0->unk_00 == 0) {
        return;
    }

    v0 = ov66_0222EE30(param1);
    param0->unk_08 = v0;

    if (v0 == param0->unk_04) {
        ov66_0222ECD4(param1, param0->unk_02);
        param0->unk_00 = 0;
    } else if (v0 != param0->unk_06) {
        param0->unk_00 = 0;
    }
}

static BOOL ov70_02269178(const UnkStruct_ov70_02269114 *param0)
{
    if (param0->unk_00 == 1) {
        return 0;
    }

    return 1;
}

static u16 ov70_02269188(const UnkStruct_ov70_02269114 *param0)
{
    return param0->unk_08;
}
