#ifndef NITRO_PRC_ALGO_LIGHT_H_
#define NITRO_PRC_ALGO_LIGHT_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>
#include <nitro/prc/types.h>
#include <nitro/prc/common.h>
#include <nitro/prc/resample.h>
#include <nitro/prc/algo_common.h>

typedef PRCPrototypeDBParam_Common PRCPrototypeDBParam_Light;

typedef PRCInputPatternParam_Common PRCInputPatternParam_Light;

typedef PRCInputPattern_Common PRCInputPattern_Light;

typedef PRCPrototypeDB_Common PRCPrototypeDB_Light;

typedef struct PRCRecognizeParam_Light {
    int dummy;
} PRCRecognizeParam_Light;

static inline void PRC_Init_Light (void)
{
    PRC_Init_Common();
}

static inline u32 PRC_GetPrototypeDBBufferSize_Light (const PRCPrototypeList * prototypeList)
{
    return PRC_GetPrototypeDBBufferSize_Common(prototypeList);
}

static inline u32 PRC_GetPrototypeDBBufferSizeEx_Light (const PRCPrototypeList * prototypeList,
                                                        u32 kindMask,
                                                        BOOL ignoreDisabledEntries,
                                                        const PRCPrototypeDBParam_Light * param)
{
    return PRC_GetPrototypeDBBufferSizeEx_Common(prototypeList, kindMask, ignoreDisabledEntries,
                                                 param);
}

static inline BOOL PRC_InitPrototypeDB_Light (PRCPrototypeDB_Light * protoDB,
                                              void * buffer, const PRCPrototypeList * prototypeList)
{
    return PRC_InitPrototypeDB_Common(protoDB, buffer, prototypeList);
}

static inline BOOL PRC_InitPrototypeDBEx_Light (PRCPrototypeDB_Light * protoDB,
                                                void * buffer,
                                                const PRCPrototypeList * prototypeList,
                                                u32 kindMask,
                                                BOOL ignoreDisabledEntries, const PRCPrototypeDBParam_Light * param)
{
    return PRC_InitPrototypeDBEx_Common(protoDB, buffer, prototypeList, kindMask,
                                        ignoreDisabledEntries, param);
}

static inline u32 PRC_GetInputPatternBufferSize_Light (int maxPointCount, int maxStrokeCount)
{
    return PRC_GetInputPatternBufferSize_Common(maxPointCount, maxStrokeCount);
}

static inline BOOL PRC_InitInputPattern_Light (PRCInputPattern_Light * pattern,
                                               void * buffer,
                                               const PRCStrokes * strokes, int maxPointCount, int maxStrokeCount)
{
    return PRC_InitInputPattern_Common(pattern, buffer, strokes, maxPointCount, maxStrokeCount);
}

static inline BOOL PRC_InitInputPatternEx_Light (PRCInputPattern_Light * pattern,
                                                 void * buffer,
                                                 const PRCStrokes * strokes,
                                                 int maxPointCount,
                                                 int maxStrokeCount, const PRCInputPatternParam_Light * param)
{
    return PRC_InitInputPatternEx_Common(pattern, buffer, strokes, maxPointCount, maxStrokeCount,
                                         param);
}

u32

PRC_GetRecognitionBufferSizeEx_Light(int maxPointCount,
                                     int maxStrokeCount,
                                     const PRCPrototypeDB_Light * protoDB,
                                     const PRCRecognizeParam_Light * param);

static inline u32 PRC_GetRecognitionBufferSize_Light (int maxPointCount,
                                                      int maxStrokeCount, const PRCPrototypeDB_Light * protoDB)
{
    return PRC_GetRecognitionBufferSizeEx_Light(maxPointCount, maxStrokeCount, protoDB, NULL);
}

int

PRC_GetRecognizedEntriesEx_Light(PRCPrototypeEntry ** resultEntries,
                                 fx32 * resultScores,
                                 int numRanking,
                                 void * buffer,
                                 const PRCInputPattern_Light * input,
                                 const PRCPrototypeDB_Light * protoDB,
                                 u32 kindMask, const PRCRecognizeParam_Light * param);

static inline int PRC_GetRecognizedEntries_Light (PRCPrototypeEntry ** resultEntries,
                                                  fx32 * resultScores,
                                                  int numRanking,
                                                  void * buffer,
                                                  const PRCInputPattern_Light * input,
                                                  const PRCPrototypeDB_Light * protoDB)
{
    return PRC_GetRecognizedEntriesEx_Light(resultEntries, resultScores, numRanking, buffer, input,
                                            protoDB, PRC_KIND_ALL, NULL);
}

static inline fx32 PRC_GetRecognizedEntryEx_Light (PRCPrototypeEntry ** resultEntry,
                                                   void * buffer,
                                                   const PRCInputPattern_Light * input,
                                                   const PRCPrototypeDB_Light * protoDB,
                                                   u32 kindMask, const PRCRecognizeParam_Light * param)
{
    fx32 score;
    (void)PRC_GetRecognizedEntriesEx_Light(resultEntry, &score, 1, buffer, input, protoDB, kindMask,
                                           param);
    return score;
}

static inline fx32 PRC_GetRecognizedEntry_Light (PRCPrototypeEntry ** resultEntry,
                                                 void * buffer,
                                                 const PRCInputPattern_Light * input,
                                                 const PRCPrototypeDB_Light * protoDB)
{
    return PRC_GetRecognizedEntryEx_Light(resultEntry, buffer, input, protoDB, PRC_KIND_ALL, NULL);
}

static inline void PRC_GetInputPatternStrokes_Light (PRCStrokes * strokes, const PRCInputPattern_Light * input)
{
    PRC_GetInputPatternStrokes_Common(strokes, input);
}

#ifndef PRC_DEFAULT_ALGORITHM
#define PRC_DEFAULT_ALGORITHM "Light"

typedef PRCPrototypeDBParam_Light PRCPrototypeDBParam;

typedef PRCInputPatternParam_Light PRCInputPatternParam;

typedef PRCInputPattern_Light PRCInputPattern;

typedef PRCPrototypeDB_Light PRCPrototypeDB;

typedef PRCRecognizeParam_Light PRCRecognizeParam;

static inline void PRC_Init (void)
{
    PRC_Init_Light();
}

static inline u32 PRC_GetPrototypeDBBufferSize (const PRCPrototypeList * prototypeList)
{
    return PRC_GetPrototypeDBBufferSize_Light(prototypeList);
}

static inline u32 PRC_GetPrototypeDBBufferSizeEx (const PRCPrototypeList * prototypeList,
                                                  u32 kindMask,
                                                  BOOL ignoreDisabledEntries, const PRCPrototypeDBParam * param)
{
    return PRC_GetPrototypeDBBufferSizeEx_Light(prototypeList, kindMask, ignoreDisabledEntries,
                                                param);
}

static inline BOOL PRC_InitPrototypeDB (PRCPrototypeDB * protoDB, void * buffer, const PRCPrototypeList * prototypeList)
{
    return PRC_InitPrototypeDB_Light(protoDB, buffer, prototypeList);
}

static inline BOOL PRC_InitPrototypeDBEx (PRCPrototypeDB * protoDB,
                                          void * buffer,
                                          const PRCPrototypeList * prototypeList,
                                          u32 kindMask, BOOL ignoreDisabledEntries, const PRCPrototypeDBParam * param)
{
    return PRC_InitPrototypeDBEx_Light(protoDB, buffer, prototypeList, kindMask,
                                       ignoreDisabledEntries, param);
}

static inline u32 PRC_GetInputPatternBufferSize (int maxPointCount, int maxStrokeCount)
{
    return PRC_GetInputPatternBufferSize_Light(maxPointCount, maxStrokeCount);
}

static inline BOOL PRC_InitInputPattern (PRCInputPattern * pattern,
                                         void * buffer, const PRCStrokes * strokes, int maxPointCount, int maxStrokeCount)
{
    return PRC_InitInputPattern_Light(pattern, buffer, strokes, maxPointCount, maxStrokeCount);
}

static inline BOOL PRC_InitInputPatternEx (PRCInputPattern * pattern,
                                           void * buffer,
                                           const PRCStrokes * strokes,
                                           int maxPointCount, int maxStrokeCount, const PRCInputPatternParam * param)
{
    return PRC_InitInputPatternEx_Light(pattern, buffer, strokes, maxPointCount, maxStrokeCount,
                                        param);
}

static inline u32 PRC_GetRecognitionBufferSize (int maxPointCount,
                                                int maxStrokeCount, const PRCPrototypeDB_Light * protoDB)
{
    return PRC_GetRecognitionBufferSize_Light(maxPointCount, maxStrokeCount, protoDB);
}

static inline u32 PRC_GetRecognitionBufferSizeEx (int maxPointCount,
                                                  int maxStrokeCount,
                                                  const PRCPrototypeDB_Light * protoDB,
                                                  const PRCRecognizeParam_Light * param)
{
    return PRC_GetRecognitionBufferSizeEx_Light(maxPointCount, maxStrokeCount, protoDB, param);
}

static inline fx32 PRC_GetRecognizedEntry (PRCPrototypeEntry ** resultEntry,
                                           void * buffer, const PRCInputPattern * input, const PRCPrototypeDB * protoDB)
{
    return PRC_GetRecognizedEntry_Light(resultEntry, buffer, input, protoDB);
}

static inline fx32 PRC_GetRecognizedEntryEx (PRCPrototypeEntry ** resultEntry,
                                             void * buffer,
                                             const PRCInputPattern * input,
                                             const PRCPrototypeDB * protoDB,
                                             u32 kindMask, const PRCRecognizeParam * param)
{
    return PRC_GetRecognizedEntryEx_Light(resultEntry, buffer, input, protoDB, kindMask, param);
}

static inline int PRC_GetRecognizedEntries (PRCPrototypeEntry ** resultEntries,
                                            fx32 * resultScores,
                                            int numRanking,
                                            void * buffer, const PRCInputPattern * input, const PRCPrototypeDB * protoDB)
{
    return PRC_GetRecognizedEntries_Light(resultEntries, resultScores, numRanking, buffer, input,
                                          protoDB);
}

static inline int PRC_GetRecognizedEntriesEx (PRCPrototypeEntry ** resultEntries,
                                              fx32 * resultScores,
                                              int numRanking,
                                              void * buffer,
                                              const PRCInputPattern * input,
                                              const PRCPrototypeDB * protoDB,
                                              u32 kindMask, const PRCRecognizeParam * param)
{
    return PRC_GetRecognizedEntriesEx_Light(resultEntries, resultScores, numRanking, buffer, input,
                                            protoDB, kindMask, param);
}

static inline void PRC_GetInputPatternStrokes (PRCStrokes * strokes, const PRCInputPattern * input)
{
    PRC_GetInputPatternStrokes_Light(strokes, input);
}

#endif

#ifdef __cplusplus
}
#endif

#endif
