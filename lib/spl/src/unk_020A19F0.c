#include <nitro/fx/fx.h>
#include <nitro/fx/fx_const.h>

#include "spl_random.h"
#include "spl_internal.h"


void sub_020A1DA0(SPLParticle *ptcl, SPLResource *res, int lifeRate)
{
    SPLScaleAnim *scaleAnim;
    int in, out;
    fx16 start, n, end;

    scaleAnim = res->scaleAnim;
    in = scaleAnim->unk_06.val2_00;
    out = scaleAnim->unk_06.val2_01;

    if (lifeRate < in) {
        start = scaleAnim->unk_00;
        n = scaleAnim->unk_02;
        ptcl->unk_34 = start + ((lifeRate * (n - start)) / in);
    } else if (lifeRate >= out) {
        end = scaleAnim->unk_04;
        n = scaleAnim->unk_02;
        ptcl->unk_34 = end + (((lifeRate - 255) * (end - n)) / (255 - out));
    } else {
        ptcl->unk_34 = scaleAnim->unk_02;
    }
}

void sub_020A1BD4(SPLParticle *ptcl, SPLResource *res, int lifeRate)
{
    SPLResourceHeader *resBase;
    SPLColorAnim *colorAnim;
    int in, peak, out;
    
    colorAnim = res->colorAnim;
    resBase = res->header;
    peak = colorAnim->unk_04.unk_05_0;
    out = colorAnim->unk_04.unk_06_0;
    in = colorAnim->unk_04.unk_04_0;

    if (lifeRate < in) {
        ptcl->color = colorAnim->startColor;
    } else if (lifeRate < peak) {
        int peakR = GX_RGB_R(resBase->color);
        int startR = GX_RGB_R(colorAnim->startColor);
        
        int peakG = GX_RGB_G(resBase->color);
        int startG = GX_RGB_G(colorAnim->startColor);
    
        int peakB = GX_RGB_B(resBase->color);
        int startB = GX_RGB_B(colorAnim->startColor);
        
        if (colorAnim->unk_08.unk_00_2) { // interpolate
            int a = lifeRate - in;
            int b = peak - in;
    
            ptcl->color = GX_RGB(
                startR + (a * (int)(peakR - startR)) / b, 
                startG + (a * (int)(peakG - startG)) / b, 
                startB + (a * (int)(peakB - startB)) / b
            );
        } else {
            ptcl->color = GX_RGB(peakR, peakG, peakB);
        }
    } else if (lifeRate < out) {
        int peakR = GX_RGB_R(resBase->color);
        int endR = GX_RGB_R(colorAnim->endColor);
        
        int peakG = GX_RGB_G(resBase->color);
        int endG = GX_RGB_G(colorAnim->endColor);
        
        int peakB = GX_RGB_B(resBase->color);
        int endB = GX_RGB_B(colorAnim->endColor);
    
        if (colorAnim->unk_08.unk_00_2) { // interpolate
            int a = lifeRate - peak;
            int b = out - peak;
    
            ptcl->color = GX_RGB(
                peakR + (a * (int)(endR - peakR)) / b, 
                peakG + (a * (int)(endG - peakG)) / b, 
                peakB + (a * (int)(endB - peakB)) / b
            );
        } else {
            ptcl->color = GX_RGB(endR, endG, endB);
        }
    } else {
        ptcl->color = colorAnim->endColor;
    }
}

void sub_020A1AF8(SPLParticle *ptcl, SPLResource *res, int lifeRate)
{
    u32 x;
    SPLAlphaAnim *alphaAnim = res->alphaAnim;
    int maxA = alphaAnim->unk_04.val2_00;
    int maxB = alphaAnim->unk_04.val2_01;

    if (lifeRate < maxA) {
        x = ((lifeRate * (alphaAnim->unk_00.val2_00_5 - alphaAnim->unk_00.val2_00_0)) / alphaAnim->unk_04.val2_00);
        x += alphaAnim->unk_00.val2_00_0;
    } else if (lifeRate < maxB) {
        x = alphaAnim->unk_00.val2_00_5;
    } else {
        x = ((lifeRate - 255) * (alphaAnim->unk_00.val2_01_2 - alphaAnim->unk_00.val2_00_5)) / (255 - alphaAnim->unk_04.val2_01);
        x += alphaAnim->unk_00.val2_01_2;
    }

    ptcl->visibility.animAlpha = SPLRandom_ScaledRangeFX32(x, alphaAnim->unk_02.unk_00_0);
}

void sub_020A1A94(SPLParticle *ptcl, SPLResource *res, int lifeRate)
{
    SPLTexAnim *texAnim = res->texAnim;
    for (int i = 0; i < texAnim->param.frameCount; i++) {
        if (lifeRate < texAnim->param.unk_01_0 * (i + 1)) {
            ptcl->misc.texture = texAnim->textures[i];
            return;
        }
    }
}

void sub_020A1A48(SPLParticle *ptcl, SPLResource *res, int lifeRate)
{
    ptcl->unk_34 = res->childResource->unk_04 + ((res->childResource->unk_04 - FX16_ONE) * (lifeRate - 255)) / 255;
}

void sub_020A19F0(SPLParticle *ptcl, SPLResource *res, int lifeRate)
{
    ptcl->visibility.animAlpha = ((255 - lifeRate) * 31) / 255;
}
