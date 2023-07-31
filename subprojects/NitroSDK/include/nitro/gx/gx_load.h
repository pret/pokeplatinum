#ifndef NITRO_GX_LOAD_H_
#define NITRO_GX_LOAD_H_

#include <nitro/gx/gxcommon.h>
#include <nitro/gx/gx_vramcnt.h>

#ifdef __cplusplus
extern "C" {
#endif

void GX_LoadBGPltt(const void * pSrc, u32 offset, u32 szByte);
void GX_LoadOBJPltt(const void * pSrc, u32 offset, u32 szByte);
void GX_LoadOAM(const void * pSrc, u32 offset, u32 szByte);
void GX_LoadOBJ(const void * pSrc, u32 offset, u32 szByte);

void GX_LoadBG0Scr(const void * pSrc, u32 offset, u32 szByte);
void GX_LoadBG1Scr(const void * pSrc, u32 offset, u32 szByte);
void GX_LoadBG2Scr(const void * pSrc, u32 offset, u32 szByte);
void GX_LoadBG3Scr(const void * pSrc, u32 offset, u32 szByte);

void GX_LoadBG0Char(const void * pSrc, u32 offset, u32 szByte);
void GX_LoadBG1Char(const void * pSrc, u32 offset, u32 szByte);
void GX_LoadBG2Char(const void * pSrc, u32 offset, u32 szByte);
void GX_LoadBG3Char(const void * pSrc, u32 offset, u32 szByte);

void GX_BeginLoadBGExtPltt(void);
void GX_LoadBGExtPltt(const void * pSrc, u32 destSlotAddr, u32 szByte);
void GX_EndLoadBGExtPltt(void);

void GX_BeginLoadOBJExtPltt(void);
void GX_LoadOBJExtPltt(const void * pSrc, u32 destSlotAddr, u32 szByte);
void GX_EndLoadOBJExtPltt(void);

void GXS_LoadBGPltt(const void * pSrc, u32 offset, u32 szByte);
void GXS_LoadOBJPltt(const void * pSrc, u32 offset, u32 szByte);
void GXS_LoadOAM(const void * pSrc, u32 offset, u32 szByte);
void GXS_LoadOBJ(const void * pSrc, u32 offset, u32 szByte);

void GXS_LoadBG0Scr(const void * pSrc, u32 offset, u32 szByte);
void GXS_LoadBG1Scr(const void * pSrc, u32 offset, u32 szByte);
void GXS_LoadBG2Scr(const void * pSrc, u32 offset, u32 szByte);
void GXS_LoadBG3Scr(const void * pSrc, u32 offset, u32 szByte);

void GXS_LoadBG0Char(const void * pSrc, u32 offset, u32 szByte);
void GXS_LoadBG1Char(const void * pSrc, u32 offset, u32 szByte);
void GXS_LoadBG2Char(const void * pSrc, u32 offset, u32 szByte);
void GXS_LoadBG3Char(const void * pSrc, u32 offset, u32 szByte);

void GXS_BeginLoadBGExtPltt(void);
void GXS_LoadBGExtPltt(const void * pSrc, u32 destSlotAddr, u32 szByte);
void GXS_EndLoadBGExtPltt(void);

void GXS_BeginLoadOBJExtPltt(void);
void GXS_LoadOBJExtPltt(const void * pSrc, u32 destSlotAddr, u32 szByte);
void GXS_EndLoadOBJExtPltt(void);

void GX_BeginLoadTex(void);
void GX_LoadTex(const void * pSrc, u32 destSlotAddr, u32 szByte);
void GX_EndLoadTex(void);
void GX_LoadTexEx(GXVRamTex tex, const void * pSrc, u32 destSlotAddr, u32 szByte);

void GX_BeginLoadTexPltt(void);
void GX_LoadTexPltt(const void * pSrc, u32 destSlotAddr, u32 szByte);
void GX_EndLoadTexPltt(void);
void GX_LoadTexPlttEx(GXVRamTexPltt texPltt, const void * pSrc, u32 destSlotAddr, u32 szByte);

void GX_BeginLoadClearImage(void);
void GX_LoadClearImageColor(const void * pSrc, u32 szByte);
void GX_LoadClearImageDepth(const void * pSrc, u32 szByte);
void GX_EndLoadClearImage(void);

static inline void GX_LoadBG2Bmp (const void * pSrc, u32 offset, u32 szByte)
{
    GX_LoadBG2Scr(pSrc, offset, szByte);
}

static inline void GX_LoadBG3Bmp (const void * pSrc, u32 offset, u32 szByte)
{
    GX_LoadBG3Scr(pSrc, offset, szByte);
}

static inline void GXS_LoadBG2Bmp (const void * pSrc, u32 offset, u32 szByte)
{
    GXS_LoadBG2Scr(pSrc, offset, szByte);
}

static inline void GXS_LoadBG3Bmp (const void * pSrc, u32 offset, u32 szByte)
{
    GXS_LoadBG3Scr(pSrc, offset, szByte);
}

#ifdef __cplusplus
}
#endif

#endif
