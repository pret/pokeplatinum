#include <nitro/fx/fx.h>
#include <nitro/fx/fx_const.h>

#include "spl.h"

void sub_020A1DA0(SPLParticle *ptcl, UnkSPLStruct4 *res, int lifeRate)
{
    UnkSPLStruct10 *scaleAnim;
    int in, out;
    fx16 start, n, end;

    scaleAnim = res->unk_04;
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

void sub_020A1BD4(SPLParticle *ptcl, UnkSPLStruct4 *res, int lifeRate)
{
    UnkSPLStruct9 *resBase;
    UnkSPLStruct11 *colorAnim;
    int in, peak, out;
    
    colorAnim = res->unk_08;
    resBase = res->unk_00;
    peak = colorAnim->unk_04.unk_05_0;
    out = colorAnim->unk_04.unk_06_0;
    in = colorAnim->unk_04.unk_04_0;

    if (lifeRate < in) {
        ptcl->unk_36 = colorAnim->unk_00;
    } else if (lifeRate < peak) {
        int peakR = GX_RGB_R(resBase->unk_22);
        int startR = GX_RGB_R(colorAnim->unk_00);
        
        int peakG = GX_RGB_G(resBase->unk_22);
        int startG = GX_RGB_G(colorAnim->unk_00);
    
        int peakB = GX_RGB_B(resBase->unk_22);
        int startB = GX_RGB_B(colorAnim->unk_00);
        
        if (colorAnim->unk_08.unk_00_2) { // interpolate
            int a = lifeRate - in;
            int b = peak - in;
    
            ptcl->unk_36 = GX_RGB(
                startR + (a * (int)(peakR - startR)) / b, 
                startG + (a * (int)(peakG - startG)) / b, 
                startB + (a * (int)(peakB - startB)) / b
            );
        } else {
            ptcl->unk_36 = GX_RGB(peakR, peakG, peakB);
        }
    } else if (lifeRate < out) {
        int peakR = GX_RGB_R(resBase->unk_22);
        int endR = GX_RGB_R(colorAnim->unk_02);
        
        int peakG = GX_RGB_G(resBase->unk_22);
        int endG = GX_RGB_G(colorAnim->unk_02);
        
        int peakB = GX_RGB_B(resBase->unk_22);
        int endB = GX_RGB_B(colorAnim->unk_02);
    
        if (colorAnim->unk_08.unk_00_2) { // interpolate
            int a = lifeRate - peak;
            int b = out - peak;
    
            ptcl->unk_36 = GX_RGB(
                peakR + (a * (int)(endR - peakR)) / b, 
                peakG + (a * (int)(endG - peakG)) / b, 
                peakB + (a * (int)(endB - peakB)) / b
            );
        } else {
            ptcl->unk_36 = GX_RGB(endR, endG, endB);
        }
    } else {
        ptcl->unk_36 = colorAnim->unk_02;
    }
}

void sub_020A1AF8(SPLParticle *ptcl, UnkSPLStruct4 *res, int lifeRate)
{
    u32 x;
    UnkSPLStruct12 *alphaAnim = res->unk_0C;
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

    ptcl->unk_2E.unk_00_5 = x * (255 - ((int)(alphaAnim->unk_02.unk_00_0 * rng_next_u32(0x18)) >> 8)) >> 8;
}

void sub_020A1A94(SPLParticle *ptcl, UnkSPLStruct4 *res, int lifeRate)
{
    UnkSPLStruct13 *texAnim = res->unk_10;
    for (int i = 0; i < texAnim->unk_08.unk_00_0; i++) {
        if (lifeRate < texAnim->unk_08.unk_01_0 * (i + 1)) {
            ptcl->unk_2C.unk_00 = texAnim->unk_00[i];
            return;
        }
    }
}

void sub_020A1A48(SPLParticle *ptcl, UnkSPLStruct4 *res, int lifeRate)
{
    ptcl->unk_34 = res->unk_14->unk_04 + ((res->unk_14->unk_04 - FX16_ONE) * (lifeRate - 255)) / 255;
}

void sub_020A19F0(SPLParticle *ptcl, UnkSPLStruct4 *res, int lifeRate)
{
    ptcl->unk_2E.unk_00_5 = ((255 - lifeRate) * 31) / 255;
}
