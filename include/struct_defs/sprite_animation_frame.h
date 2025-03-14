#ifndef POKEPLATINUM_SPRITE_ANIMATION_DATA_H
#define POKEPLATINUM_SPRITE_ANIMATION_DATA_H

#define MAX_ANIMATION_FRAMES 10

/**
 * @brief By-frame data definition for animating a sprite.
 */
typedef struct SpriteAnimationFrame {
    s8 spriteFrame; ///< Which frame of the sprite to use for this frame of the animation.
    u8 frameDelay; ///< How long this animation frame should last.
    s8 xOffset; ///< Horizontal shift to apply to the sprite for this animation frame.
    s8 yOffset; ///< Vertical shift to apply to the sprite for this animation frame.
} SpriteAnimationFrame;

#endif // POKEPLATINUM_SPRITE_ANIMATION_DATA_H
