#include "unk_0205DAC8.h"

#include <nitro.h>
#include <string.h>

static const u8 Unk_020ED8C4[] = {
    0x0,
    0x0,
    0x2,
    0x2,
    0x0,
    0x2,
    0x2,
    0x0,
    0x2,
    0x0,
    0x0,
    0x2,
    0x0,
    0x0,
    0x0,
    0x0,
    0x3,
    0x3,
    0x3,
    0x1,
    0x1,
    0x3,
    0x0,
    0x0,
    0x0,
    0x1,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x3,
    0x0,
    0x2,
    0x2,
    0x0,
    0x0,
    0x0,
    0x0,
    0x3,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x1,
    0x1,
    0x1,
    0x1,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x2,
    0x1,
    0x0,
    0x0,
    0x0,
    0x2,
    0x1,
    0x0,
    0x0,
    0x2,
    0x1,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x2,
    0x2,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0
};

BOOL sub_0205DAC8(u8 param0)
{
    return param0 == 0x2;
}

BOOL sub_0205DAD4(u8 param0)
{
    return param0 == 0x3;
}

BOOL sub_0205DAE0(u8 param0)
{
    return param0 == 0x80;
}

BOOL sub_0205DAEC(u8 param0)
{
    return param0 == 0x69;
}

BOOL sub_0205DAF8(u8 param0)
{
    return param0 == 0x62;
}

BOOL sub_0205DB04(u8 param0)
{
    return param0 == 0x63;
}

BOOL sub_0205DB10(u8 param0)
{
    return param0 == 0x64;
}

BOOL sub_0205DB1C(u8 param0)
{
    return param0 == 0x65;
}

BOOL sub_0205DB28(u8 param0)
{
    return param0 == 0x6c;
}

BOOL sub_0205DB34(u8 param0)
{
    return param0 == 0x6d;
}

BOOL sub_0205DB40(u8 param0)
{
    return param0 == 0x6e;
}

BOOL sub_0205DB4C(u8 param0)
{
    return param0 == 0x6f;
}

BOOL sub_0205DB58(u8 param0)
{
    return (Unk_020ED8C4[param0] & 0x1) != 0;
}

BOOL sub_0205DB6C(u8 param0)
{
    return param0 == 0x21;
}

BOOL sub_0205DB78(u8 param0)
{
    return param0 == 0x17;
}

BOOL sub_0205DB84(u8 param0)
{
    return param0 == 0x3a;
}

BOOL sub_0205DB90(u8 param0)
{
    return param0 == 0x3b;
}

BOOL sub_0205DB9C(u8 param0)
{
    return param0 == 0x39;
}

BOOL sub_0205DBA8(u8 param0)
{
    return param0 == 0x38;
}

BOOL sub_0205DBB4(u8 param0)
{
    return param0 == 0x5a;
}

BOOL sub_0205DBC0(u8 param0)
{
    return param0 == 0x5b;
}

BOOL sub_0205DBCC(u8 param0)
{
    return param0 == 0x5c;
}

BOOL sub_0205DBD8(u8 param0)
{
    return param0 == 0x5d;
}

BOOL sub_0205DBE4(u8 param0)
{
    return param0 == 0x83;
}

BOOL sub_0205DBF0(u8 param0)
{
    return param0 == 0x85;
}

BOOL sub_0205DBFC(u8 param0)
{
    return param0 == 0x56;
}

BOOL sub_0205DC08(u8 param0)
{
    return param0 == 0x57;
}

BOOL sub_0205DC14(u8 param0)
{
    return param0 == 0x58;
}

BOOL sub_0205DC20(u8 param0)
{
    return param0 == 0x59;
}

BOOL sub_0205DC2C(u8 param0)
{
    return param0 == 0x6a;
}

BOOL TileBehavior_IsEscalator(u8 param0)
{
    return param0 == 0x6b;
}

BOOL sub_0205DC44(u8 param0)
{
    return param0 == 0x5e;
}

BOOL sub_0205DC50(u8 param0)
{
    return param0 == 0x5f;
}

BOOL sub_0205DC5C(u8 param0)
{
    return param0 == 0x20;
}

BOOL sub_0205DC68(u8 param0)
{
    return param0 == 0x4b;
}

BOOL sub_0205DC74(u8 param0)
{
    return param0 == 0x4c;
}

BOOL sub_0205DC80(u8 param0)
{
    return param0 == 0xe0;
}

BOOL sub_0205DC8C(u8 param0)
{
    return param0 == 0xea;
}

BOOL sub_0205DC98(u8 param0)
{
    return param0 == 0xe1;
}

BOOL sub_0205DCA4(u8 param0)
{
    return param0 == 0xe2;
}

BOOL sub_0205DCB0(u8 param0)
{
    return param0 == 0xe4;
}

BOOL sub_0205DCBC(u8 param0)
{
    return param0 == 0xe5;
}

BOOL sub_0205DCC8(u8 param0)
{
    return param0 == 0xeb;
}

BOOL sub_0205DCD4(u8 param0)
{
    return param0 == 0xec;
}

BOOL sub_0205DCE0(u8 param0)
{
    return (param0 == 0xa4) || (param0 == 0xa5);
}

BOOL sub_0205DCF0(u8 param0)
{
    return param0 == 0xa5;
}

BOOL sub_0205DCFC(u8 param0)
{
    return (param0 == 0xa6) || (param0 == 0xa7);
}

BOOL sub_0205DD0C(u8 param0)
{
    return param0 == 0xa7;
}

BOOL sub_0205DD18(u8 param0)
{
    return (param0 == 0xa1) || (param0 == 0xa2) || (param0 == 0xa3) || (param0 == 0xa8);
}

BOOL sub_0205DD38(u8 param0)
{
    return param0 == 0xa8;
}

BOOL sub_0205DD44(u8 param0)
{
    return param0 == 0xa1;
}

BOOL sub_0205DD50(u8 param0)
{
    return param0 == 0xa2;
}

BOOL sub_0205DD5C(u8 param0)
{
    return param0 == 0xa3;
}

BOOL sub_0205DD68(u8 param0)
{
    return (param0 == 0xd9) || (param0 == 0xda);
}

BOOL sub_0205DD78(u8 param0)
{
    return param0 == 0xd9;
}

BOOL sub_0205DD84(u8 param0)
{
    return param0 == 0xda;
}

BOOL sub_0205DD90(u8 param0)
{
    return param0 == 0xd7;
}

BOOL sub_0205DD9C(u8 param0)
{
    return param0 == 0xd8;
}

BOOL sub_0205DDA8(u8 param0)
{
    return param0 == 0x8;
}

BOOL sub_0205DDB4(u8 param0)
{
    return param0 == 0x13;
}

BOOL sub_0205DDC0(u8 param0)
{
    return param0 == 0xdb;
}

BOOL sub_0205DDCC(u8 param0)
{
    return (param0 == 0x32) || (param0 == 0x34) || (param0 == 0x35) || (param0 == 0x49);
}

BOOL sub_0205DDF0(u8 param0)
{
    return (param0 == 0x33) || (param0 == 0x36) || (param0 == 0x37) || (param0 == 0x49);
}

BOOL sub_0205DE14(u8 param0)
{
    return (param0 == 0x31) || (param0 == 0x35) || (param0 == 0x37) || (param0 == 0x4a);
}

BOOL sub_0205DE38(u8 param0)
{
    return (param0 == 0x30) || (param0 == 0x34) || (param0 == 0x36) || (param0 == 0x4a);
}

BOOL sub_0205DE5C(u8 param0)
{
    return (param0 == 0x16) || (param0 == 0x1d);
}

BOOL sub_0205DE6C(u8 param0)
{
    if ((Unk_020ED8C4[param0] & 0x2) != 0) {
        return 1;
    } else {
        return 0;
    }
}

BOOL sub_0205DE84(u8 param0)
{
    return param0 == 0x86;
}

BOOL sub_0205DE90(u8 param0)
{
    return (param0 == 0x16) || (param0 == 0x10) || (param0 == 0x1d) || (param0 == 0x2c);
}

BOOL sub_0205DEB4(u8 param0)
{
    return param0 == 0x40;
}

BOOL sub_0205DEC0(u8 param0)
{
    return param0 == 0x41;
}

BOOL sub_0205DECC(u8 param0)
{
    return param0 == 0x42;
}

BOOL sub_0205DED8(u8 param0)
{
    return param0 == 0x43;
}

BOOL TileBehavior_IsWarp(u8 param0)
{
    return param0 == 0x67;
}

BOOL sub_0205DEF0(u8 param0)
{
    return param0 == 0x70;
}

BOOL sub_0205DEFC(u8 param0)
{
    return (param0 == 0x71) || (param0 == 0x72) || (param0 == 0x73) || (param0 == 0x74) || (param0 == 0x75) || (param0 == 0x76) || (param0 == 0x77) || (param0 == 0x78) || (param0 == 0x79) || (param0 == 0x7a) || (param0 == 0x7b) || (param0 == 0x7c) || (param0 == 0x7d);
}

BOOL sub_0205DF10(u8 param0)
{
    return (param0 == 0x73) || (param0 == 0x78) || (param0 == 0x7c);
}

BOOL sub_0205DF34(u8 param0)
{
    return (param0 == 0x74) || (param0 == 0x79) || (param0 == 0x7d);
}

BOOL sub_0205DF58(u8 param0)
{
    return param0 == 0x75;
}

BOOL sub_0205DF64(u8 param0)
{
    return (param0 == 0x76) || (param0 == 0x77) || (param0 == 0x78) || (param0 == 0x79);
}

BOOL sub_0205DF78(u8 param0)
{
    return (param0 == 0x7a) || (param0 == 0x7b) || (param0 == 0x7c) || (param0 == 0x7d);
}

BOOL sub_0205DF8C(u8 param0)
{
    return param0 == 0xff;
}

u8 sub_0205DF98(void)
{
    return 0xff;
}

BOOL sub_0205DF9C(u8 param0)
{
    return (param0 == 0x2c) || (param0 == 0x1d);
}

BOOL sub_0205DFAC(u8 param0)
{
    return param0 == 0xa9;
}

BOOL sub_0205DFB8(u8 param0)
{
    return param0 == 0x2d;
}
