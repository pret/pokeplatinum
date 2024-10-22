# 2D Rendering

This document aims to outline and summarize the functionality of the Nintendo DS's
2D rendering system and the wrapping APIs around that system as used in Pokemon
Platinum.

Much of the underlying systems from the Game Boy Advance still applies to the
DS. Thus, this document will aim to only highlight the differences.

## Backgrounds

Backgrounds are rendered in layers; the SDK provides support for 8 total layers
evenly split across the Main and Sub screens. For simplicity, this document will
refer to layers by the indices `0`, `1`, `2`, and `3` to refer to the set of
layers accessible to each of the displays.

### Tiling

Like its predecessors, the DS makes use of a basic tiling system with access
to 656 KB of VRAM. This VRAM chunk is split into 9 total banks of varying sizes:

- Four banks of size 128 KB
- One bank of size 64 KB
- One bank of size 32 KB
- Three banks of size 16 KB

Both the 2D and 3D processing engines can access any of these banks, but
are not permitted to access the same bank concurrently. The 2D processing engine
will access these banks to render each of the various backgrounds, while the 3D
processing engine will fetch textures from these banks during rendering.

Some restrictions apply to accessing each of these banks:

1. The ARM7 co-processor can only access two of the four 128 KB banks.
2. Sprite graphics are not permitted to be stored in this section of VRAM.
3. The main screen is not permitted to access the third 16 KB bank.

### Background Types

The console's 2D engine can generate various types of backgrounds, each with
different supported functions. There are, effectively, three groups of these
types.

#### Character-type Groups

These background types utilize a traditional tiling system, rendering frames by
mapping them from VRAM to simple indexing buffer.

##### Static Backgrounds

This is the most ordinary background type. It supports screen resolutions up to
512x512, 256 on-screen colors, and 16 total palettes (of 16 colors each). It
also supports all the usual effects:

- Horizontal and vertical flipping flags
- Horizontal and vertical scrolling
- Mosaic effects
- Alpha blending
- Priority rendering (which permits "layering" backgrounds atop one another)
- Palette fading

The VRAM buffer supports up to 1024 total tiles for each background of this type.

##### Affine Backgrounds

This background type supports screen resolutions up to 1024x1024, as well as the
usual set of basic affine transformations:

- Translations
- Rotations
- Scaling
- Reflection
- Shearing

However, to support these transformations, the flipping flags are disabled, and
the VRAM buffer supports up to 256 tiles rather than 1024.

##### Affine Extended with Static Functions

This background type is an extension of the Affine type; it supports the same
screen resolutions and set of affine transformations, but restores support for
flipping flags and 1024 tiles.

#### Bitmap-type Groups

Rather than rendering frames from tiles mapped onto an indexing buffer, types
in this group treat VRAM as a true bitmap frame buffer.

##### Affine Extended with 256 Colors

Functionally, this type is identical to a Static with Affine background, but
effects are applied on the full 512x512 bitmap.

##### Affine Extended with Direct Color

This type is similar to the 256 color extension, but the frame buffer now
supports direct 15-bit color, permitting up to 32,768 total on-screen colors.

##### Large Screen

This type treats a single 128KB chunk of VRAM as a frame-buffer of size 1024x512.

#### 3D Background

Backgrounds of this type (which is the only member of its group) treat the
rendering result of the 3D graphics engine as a background layer. Thus,
backgrounds of this type do not support *most* of the previous 2D effects,
but do retain support for horizontal scrolling and alpha blending. In addition,
backgrounds of this type support direct 18-bit color, permitting up to 262,144
total on-screen colors.

### Background Modes

Background types are restricted to various "modes", as controlled by the SDK.
The SDK supports 7 total modes:

| Mode | Layer 0 Type  | Layer 1 Type | Layer 2 Type    | Layer 3 Type    |
| ---: | ------------- | ------------ | --------------- | --------------- |
|    0 | Static / 3D   | Static       | Static          | Static          |
|    1 | Static / 3D   | Static       | Static          | Affine          |
|    2 | Static / 3D   | Static       | Affine          | Affine          |
|    3 | Static / 3D   | Static       | Static          | Affine Extended |
|    4 | Static / 3D   | Static       | Affine          | Affine Extended |
|    5 | Static / 3D   | Static       | Affine Extended | Affine Extended |
|    6 | 3D Background | N/A          | Large Screen    | N/A             |

Each of the displays can be set to its own background mode; this permits, for
example, having affine transformations apply to the main screen, but showing
a simple static HUD on the sub screen.

### The Game Freak API

Game Freak built a minimal wrapping API around the SDK's internals, much of
which is identical to the similar wrapping API built for the Advance generation.
This wrapping API restricts the available background types to the following:

```c
enum BgType {
    BG_TYPE_STATIC = 0,
    BG_TYPE_AFFINE,
    BG_TYPE_STATIC_WITH_AFFINE,
};
```

Backgrounds can be quickly constructed via a simple template system, which allows
storing common properties in ROM:

```c
typedef struct BgTemplate {
    u32 x;
    u32 y;
    u32 bufferSize;
    u32 baseTile;
    u8 screenSize;
    u8 colorMode;
    u8 screenBase;
    u8 charBase;
    u8 bgExtPltt;
    u8 priority;
    u8 areaOver;
    u8 dummy;
    BOOL mosaic;
} BgTemplate;
```

The wrapping API's primary feature is support for scheduling scroll and VRAM
transfer operations for future bulk transformation. Most background update
operations provide `Schedule` alternative, which will perform the operation,
but delay committing the result to VRAM until the next invocation of
`Bg_RunScheduledUpdates`. To illustrate, consider the following functions:

```c
void Bg_FillTilemap(BgConfig *bgConfig, u8 bgLayer, u16 fillVal)
{
    if (bgConfig->bgs[bgLayer].tilemapBuffer == NULL) {
        return;
    }

    MI_CpuFill16(bgConfig->bgs[bgLayer].tilemapBuffer, fillVal, bgConfig->bgs[bgLayer].bufferSize);
    Bg_CopyTilemapBufferToVRAM(bgConfig, bgLayer);
}

void Bg_ScheduleFillTilemap(BgConfig *bgConfig, u8 bgLayer, u16 fillVal)
{
    if (bgConfig->bgs[bgLayer].tilemapBuffer == NULL) {
        return;
    }

    MI_CpuFill16(bgConfig->bgs[bgLayer].tilemapBuffer, fillVal, bgConfig->bgs[bgLayer].bufferSize);
    Bg_ScheduleTilemapTransfer(bgConfig, bgLayer);
}
```

Note that each of these operations perform the same `MI_CpuFill16` operation,
but the latter invokes `Bg_ScheduleTilemapTransfer`, which flags the background
layer for VRAM transfer, usually on the next VBlank callback.
