#ifndef POKEPLATINUM_STRUCT_OV104_0223A348_SUB2_H
#define POKEPLATINUM_STRUCT_OV104_0223A348_SUB2_H

typedef struct {
    union {
        struct {
            u16 unk_00_val1_0 : 11;
            u16 unk_00_val1_11 : 5;
        };
        u16 unk_00_val2;
    };
    u16 unk_02;
    u16 unk_04[4];
    u32 unk_0C;
    u32 unk_10;
    union {
        struct {
            u32 unk_14_val1_0 : 5;
            u32 unk_14_val1_5 : 5;
            u32 unk_14_val1_10 : 5;
            u32 unk_14_val1_15 : 5;
            u32 unk_14_val1_20 : 5;
            u32 unk_14_val1_25 : 5;
            u32 unk_14_val1_30 : 1;
            u32 : 1;
        };
        u32 unk_14_val2;
    };
    union {
        struct {
            u8 unk_18_val1_00;
            u8 unk_18_val1_01;
            u8 unk_18_val1_02;
            u8 unk_18_val1_03;
            u8 unk_18_val1_04;
            u8 unk_18_val1_05;
        };
        u8 unk_18_val2[6];
    };
    union {
        struct {
            u8 unk_1E_val1_0 : 2;
            u8 unk_1E_val1_2 : 2;
            u8 unk_1E_val1_4 : 2;
            u8 unk_1E_val1_6 : 2;
        };
        u8 unk_1E_val2;
    };
    u8 unk_1F;
    u8 unk_20;
    u8 unk_21;
    u16 unk_22[11];
} UnkStruct_ov104_0223A348_sub2;

#endif // POKEPLATINUM_STRUCT_OV104_0223A348_SUB2_H
