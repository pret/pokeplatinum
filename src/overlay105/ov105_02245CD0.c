#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_02007C7C_decl.h"
#include "struct_defs/struct_02073C74.h"

#include "struct_defs/struct_02008A90.h"

#include "unk_0200762C.h"
#include "gx_layers.h"
#include "unk_0202419C.h"
#include "unk_02073C2C.h"

void ov105_02245CD0(void);
void ov105_02245D50(UnkStruct_02007768 * param0);
UnkStruct_02007C7C * ov105_02245D88(UnkStruct_02007768 * param0, int param1, Pokemon *param2, int param3, int param4, int param5);
void ov105_02245DB8(UnkStruct_02007C7C * param0, int param1);

void ov105_02245CD0 (void)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    G2_SetBG0Priority(0);

    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(0);
    G3X_SetFog(0, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);

    G3_ViewPort(0, 0, 255, 191);
    return;
}

void ov105_02245D50 (UnkStruct_02007768 * param0)
{
    sub_020241B4();

    G3_MtxMode(GX_MTXMODE_PROJECTION);
    G3_Identity();
    G3_MtxMode(GX_MTXMODE_POSITION_VECTOR);
    G3_Identity();

    NNS_G3dGlbFlush();
    NNS_G2dSetupSoftwareSpriteCamera();

    sub_02007768(param0);
    G3_SwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);

    return;
}

UnkStruct_02007C7C * ov105_02245D88 (UnkStruct_02007768 * param0, int param1, Pokemon *param2, int param3, int param4, int param5)
{
    UnkStruct_02008A90 v0;
    UnkStruct_02007C7C * v1;
    int v2;
    u32 v3;

    sub_02075EF4(&v0, param2, 2);

    v2 = 0;
    v1 = sub_02007C34(param0, &v0, param3, (param4 + v2), param5, param1, NULL, NULL);

    return v1;
}

void ov105_02245DB8 (UnkStruct_02007C7C * param0, int param1)
{
    sub_02007DEC(param0, 35, param1);
    return;
}
