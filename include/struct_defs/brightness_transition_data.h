#ifndef POKEPLATINUM_BRIGHTNESS_TRANSITION_DATA_H
#define POKEPLATINUM_BRIGHTNESS_TRANSITION_DATA_H

typedef struct {
    int plane_mask;
    u32 screen_select;
    u16 step_count;
    s16 target_brightness;
    u8 padding_0C[4];
} Transition_Data;

#endif // POKEPLATINUM_BRIGHTNESS_TRANSITION_DATA_H
