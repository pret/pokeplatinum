#ifndef POKEPLATINUM_STRUCT_OV17_0224B7BC_H
#define POKEPLATINUM_STRUCT_OV17_0224B7BC_H

typedef struct {
    s32 unk_00;
    s32 unk_04;
    s32 unk_08;
    s32 unk_0C;
    u8 unk_10;
    union {
        struct {
            s16 unk_00;
            s16 unk_02;
        } unk_14_val1;
        struct {
            s32 unk_00;
            s32 unk_04;
        } unk_14_val2;
        struct {
            u32 unk_00;
            int unk_04;
            int unk_08;
            int unk_0C;
            int unk_10;
        } unk_14_val3;
    };
} UnkStruct_ov17_0224B7BC;

#endif // POKEPLATINUM_STRUCT_OV17_0224B7BC_H
