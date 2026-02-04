#ifndef GDS_INTERNAL_H
#define GDS_INTERNAL_H
#include <nitro/os/common/mutex.h>
#include <nitro/os/common/thread.h>
#include <nitro/types.h>

#include "gds.h"

typedef struct {
    UnkStruct_ov62_022349A8_sub1 unk_00;
    int unk_138;
    int unk_13C;
    char unk_140[0x100];
    u16 unk_240;
    int unk_244;
    int unk_248;
    int unk_24C;
    int unk_250;
    int unk_254;
    void *unk_258;
    int unk_25C;
    void *unk_260;
    int unk_264;
    int unk_268;
    int unk_26C;
    int unk_270;
    OSThread unk_274;
    OSMutex unk_334;
} UnkStruct_ov61_0222E764;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    long unk_04;
    long unk_08;
} UnkStruct_ov61_0222DD8C;

typedef struct {
    long unk_00;
    UnkStruct_ov62_022349A8_sub3_sub2 unk_04;
} UnkStruct_ov61_0222DDCC;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    UnkStruct_ov62_022349A8_sub3_sub4 unk_04;
    int unk_14;
    int unk_18;
} UnkStruct_ov61_0222DF60;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
} UnkStruct_ov61_0222DFA8;

typedef struct {
    u64 unk_00;
    u32 unk_08;
} UnkStruct_ov61_0222E058;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    UnkStruct_ov62_022349A8_sub1 unk_04;
    void *unk_136;
} UnkStruct_ov61_0222D1FC;

UnkStruct_ov61_0222E764 Unk_ov61_0222E764;

void ov61_0222CEDC(void);
BOOL ov61_0222CF40(char *url, int port, UnkStruct_ov62_022349A8_sub1 *param2);
void ov61_0222D040(void);
BOOL ov61_0222D1FC(int param0, void *param1, void *param2, int param3);
int ov61_0222D3E8(void);
void *ov61_0222D3F8(void);
int ov61_0222D430(void);
int ov61_0222D464(void);

void *ov61_0222D498(u32 size);
void ov61_0222D4AC(void *ptr);
void ov61_0222D4C8(void);
void ov61_0222D4DC(void);
int ov61_0222D4F0(void);
int ov61_0222D508(void);
int ov61_0222D510(void);
void ov61_0222D53C(void);
int ov61_0222D54C(void);
BOOL ov61_0222D6A0(void);
void ov61_0222D770(void);
BOOL ov61_0222D7B0(void);
BOOL ov61_0222D8F8(void);
BOOL ov61_0222DA0C(void);
void ov61_0222DB8C(u32 param0);
BOOL ov61_0222DB98(void);

void ov61_0222E0B8(u8 *param0, int param1, u8 *param2);
void ov61_0222E110(u8 *param0, int param1, u8 *param2);
int ov61_0222E168(int param0);
int ov61_0222E2A8(int param0);

void ov61_0222E478(void *param0, char *param1);

#endif // GDS_INTERNAL_H
