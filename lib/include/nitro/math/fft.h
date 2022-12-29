#ifndef NITRO_MATH_FFT_H_
#define NITRO_MATH_FFT_H_

#include <nitro/types.h>
#include <nitro/fx/fx.h>

#ifdef __cplusplus
extern "C" {
#endif

void MATH_MakeFFTSinTable(fx16 * sinTable, u32 nShift);

void MATHi_FFT(fx32 * data, u32 nShift, const fx16 * sinTable);

void MATHi_IFFT(fx32 * data, u32 nShift, const fx16 * sinTable);

void MATH_FFT(fx32 * data, u32 nShift, const fx16 * sinTable);

void MATH_IFFT(fx32 * data, u32 nShift, const fx16 * sinTable);

void MATH_FFTReal(fx32 * data, u32 nShift, const fx16 * sinTable, const fx16 * sinTable2);

void MATH_IFFTReal(fx32 * data, u32 nShift, const fx16 * sinTable, const fx16 * sinTable2);

#ifdef __cplusplus
}
#endif

#endif
