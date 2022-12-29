#ifndef NITRO_PRC_ALGO_STANDARD_H_
#define NITRO_PRC_ALGO_STANDARD_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>
#include <nitro/prc/types.h>
#include <nitro/prc/common.h>
#include <nitro/prc/resample.h>
#include <nitro/prc/algo_common.h>

typedef PRCPrototypeDBParam_Common PRCPrototypeDBParam_Standard;

typedef PRCInputPatternParam_Common PRCInputPatternParam_Standard;

typedef PRCInputPattern_Common PRCInputPattern_Standard;

typedef PRCPrototypeDB_Common PRCPrototypeDB_Standard;

typedef struct PRCRecognizeParam_Standard {
    int dummy;
} PRCRecognizeParam_Standard;

static inline void PRC_Init_Standard (void)
{
    PRC_Init_Common();
}

static inline u32 PRC_GetPrototypeDBBufferSize_Standard (const PRCPrototypeList * prototypeList)
{
    return PRC_GetPrototypeDBBufferSize_Common(prototypeList);
}

static inline u32 PRC_GetPrototypeDBBufferSizeEx_Standard (const PRCPrototypeList * prototypeList,
                                                           u32 kindMask,
                                                           BOOL ignoreDisabledEntries,
                                                           const PRCPrototypeDBParam_Standard * param)
{
    return PRC_GetPrototypeDBBufferSizeEx_Common(prototypeList, kindMask, ignoreDisabledEntries,
                                                 param);
}

static inline BOOL PRC_InitPrototypeDB_Standard (PRCPrototypeDB_Standard * protoDB,
                                                 void * buffer, const PRCPrototypeList * prototypeList)
{
    return PRC_InitPrototypeDB_Common(protoDB, buffer, prototypeList);
}

static inline BOOL PRC_InitPrototypeDBEx_Standard (PRCPrototypeDB_Standard * protoDB,
                                                   void * buffer,
                                                   const PRCPrototypeList * prototypeList,
                                                   u32 kindMask,
                                                   BOOL ignoreDisabledEntries,
                                                   const PRCPrototypeDBParam_Standard * param)
{
    return PRC_InitPrototypeDBEx_Common(protoDB, buffer, prototypeList, kindMask,
                                        ignoreDisabledEntries, param);
}

static inline u32 PRC_GetInputPatternBufferSize_Standard (int maxPointCount, int maxStrokeCount)
{
    return PRC_GetInputPatternBufferSize_Common(maxPointCount, maxStrokeCount);
}

static inline BOOL PRC_InitInputPattern_Standard (PRCInputPattern_Standard * pattern,
                                                  void * buffer,
                                                  const PRCStrokes * strokes, int maxPointCount, int maxStrokeCount)
{
    return PRC_InitInputPattern_Common(pattern, buffer, strokes, maxPointCount, maxStrokeCount);
}

static inline BOOL PRC_InitInputPatternEx_Standard (PRCInputPattern_Standard * pattern,
                                                    void * buffer,
                                                    const PRCStrokes * strokes,
                                                    int maxPointCount,
                                                    int maxStrokeCount, const PRCInputPatternParam_Standard * param)
{
    return PRC_InitInputPatternEx_Common(pattern, buffer, strokes, maxPointCount, maxStrokeCount,
                                         param);
}

u32

PRC_GetRecognitionBufferSizeEx_Standard(int maxPointCount,
                                        int maxStrokeCount,
                                        const PRCPrototypeDB_Standard * protoDB,
                                        const PRCRecognizeParam_Standard * param);

static inline u32 PRC_GetRecognitionBufferSize_Standard (int maxPointCount,
                                                         int maxStrokeCount, const PRCPrototypeDB_Standard * protoDB)
{
    return PRC_GetRecognitionBufferSizeEx_Standard(maxPointCount, maxStrokeCount, protoDB, NULL);
}

int

PRC_GetRecognizedEntriesEx_Standard(PRCPrototypeEntry ** resultEntries,
                                    fx32 * resultScores,
                                    int numRanking,
                                    void * buffer,
                                    const PRCInputPattern_Standard * input,
                                    const PRCPrototypeDB_Standard * protoDB,
                                    u32 kindMask, const PRCRecognizeParam_Standard * param);

static inline int PRC_GetRecognizedEntries_Standard (PRCPrototypeEntry ** resultEntries,
                                                     fx32 * resultScores,
                                                     int numRanking,
                                                     void * buffer,
                                                     const PRCInputPattern_Standard * input,
                                                     const PRCPrototypeDB_Standard * protoDB)
{
    return PRC_GetRecognizedEntriesEx_Standard(resultEntries, resultScores, numRanking, buffer,
                                               input, protoDB, PRC_KIND_ALL, NULL);
}

static inline fx32 PRC_GetRecognizedEntryEx_Standard (PRCPrototypeEntry ** resultEntry,
                                                      void * buffer,
                                                      const PRCInputPattern_Standard * input,
                                                      const PRCPrototypeDB_Standard * protoDB,
                                                      u32 kindMask, const PRCRecognizeParam_Standard * param)
{
    fx32 score;
    (void)PRC_GetRecognizedEntriesEx_Standard(resultEntry, &score, 1, buffer, input, protoDB,
                                              kindMask, param);
    return score;
}

static inline fx32 PRC_GetRecognizedEntry_Standard (PRCPrototypeEntry ** resultEntry,
                                                    void * buffer,
                                                    const PRCInputPattern_Standard * input,
                                                    const PRCPrototypeDB_Standard * protoDB)
{
    return PRC_GetRecognizedEntryEx_Standard(resultEntry, buffer, input, protoDB, PRC_KIND_ALL,
                                             NULL);
}

static inline void PRC_GetInputPatternStrokes_Standard (PRCStrokes * strokes, const PRCInputPattern_Standard * input)
{
    PRC_GetInputPatternStrokes_Common(strokes, input);
}

#ifndef PRC_DEFAULT_ALGORITHM
#define PRC_DEFAULT_ALGORITHM "Standard"

typedef PRCPrototypeDBParam_Standard PRCPrototypeDBParam;

typedef PRCInputPatternParam_Standard PRCInputPatternParam;

typedef PRCInputPattern_Standard PRCInputPattern;

typedef PRCPrototypeDB_Standard PRCPrototypeDB;

typedef PRCRecognizeParam_Standard PRCRecognizeParam;

static inline void PRC_Init (void)
{
    PRC_Init_Standard();
}

static inline u32 PRC_GetPrototypeDBBufferSize (const PRCPrototypeList * prototypeList)
{
    return PRC_GetPrototypeDBBufferSize_Standard(prototypeList);
}

static inline u32 PRC_GetPrototypeDBBufferSizeEx (const PRCPrototypeList * prototypeList,
                                                  u32 kindMask,
                                                  BOOL ignoreDisabledEntries, const PRCPrototypeDBParam * param)
{
    return PRC_GetPrototypeDBBufferSizeEx_Standard(prototypeList, kindMask, ignoreDisabledEntries,
                                                   param);
}

static inline BOOL PRC_InitPrototypeDB (PRCPrototypeDB * protoDB, void * buffer, const PRCPrototypeList * prototypeList)
{
    return PRC_InitPrototypeDB_Standard(protoDB, buffer, prototypeList);
}

static inline BOOL PRC_InitPrototypeDBEx (PRCPrototypeDB * protoDB,
                                          void * buffer,
                                          const PRCPrototypeList * prototypeList,
                                          u32 kindMask, BOOL ignoreDisabledEntries, const PRCPrototypeDBParam * param)
{
    return PRC_InitPrototypeDBEx_Standard(protoDB, buffer, prototypeList, kindMask,
                                          ignoreDisabledEntries, param);
}

static inline u32 PRC_GetInputPatternBufferSize (int maxPointCount, int maxStrokeCount)
{
    return PRC_GetInputPatternBufferSize_Standard(maxPointCount, maxStrokeCount);
}

static inline BOOL PRC_InitInputPattern (PRCInputPattern * pattern,
                                         void * buffer, const PRCStrokes * strokes, int maxPointCount, int maxStrokeCount)
{
    return PRC_InitInputPattern_Standard(pattern, buffer, strokes, maxPointCount, maxStrokeCount);
}

static inline BOOL PRC_InitInputPatternEx (PRCInputPattern * pattern,
                                           void * buffer,
                                           const PRCStrokes * strokes,
                                           int maxPointCount, int maxStrokeCount, const PRCInputPatternParam * param)
{
    return PRC_InitInputPatternEx_Standard(pattern, buffer, strokes, maxPointCount, maxStrokeCount,
                                           param);
}

static inline u32 PRC_GetRecognitionBufferSize (int maxPointCount,
                                                int maxStrokeCount, const PRCPrototypeDB_Standard * protoDB)
{
    return PRC_GetRecognitionBufferSize_Standard(maxPointCount, maxStrokeCount, protoDB);
}

static inline u32 PRC_GetRecognitionBufferSizeEx (int maxPointCount,
                                                  int maxStrokeCount,
                                                  const PRCPrototypeDB_Standard * protoDB,
                                                  const PRCRecognizeParam_Standard * param)
{
    return PRC_GetRecognitionBufferSizeEx_Standard(maxPointCount, maxStrokeCount, protoDB, param);
}

static inline fx32 PRC_GetRecognizedEntry (PRCPrototypeEntry ** resultEntry,
                                           void * buffer, const PRCInputPattern * input, const PRCPrototypeDB * protoDB)
{
    return PRC_GetRecognizedEntry_Standard(resultEntry, buffer, input, protoDB);
}

static inline fx32 PRC_GetRecognizedEntryEx (PRCPrototypeEntry ** resultEntry,
                                             void * buffer,
                                             const PRCInputPattern * input,
                                             const PRCPrototypeDB * protoDB,
                                             u32 kindMask, const PRCRecognizeParam * param)
{
    return PRC_GetRecognizedEntryEx_Standard(resultEntry, buffer, input, protoDB, kindMask, param);
}

static inline int PRC_GetRecognizedEntries (PRCPrototypeEntry ** resultEntries,
                                            fx32 * resultScores,
                                            int numRanking,
                                            void * buffer, const PRCInputPattern * input, const PRCPrototypeDB * protoDB)
{
    return PRC_GetRecognizedEntries_Standard(resultEntries, resultScores, numRanking, buffer, input,
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
    return PRC_GetRecognizedEntriesEx_Standard(resultEntries, resultScores, numRanking, buffer,
                                               input, protoDB, kindMask, param);
}

static inline void PRC_GetInputPatternStrokes (PRCStrokes * strokes, const PRCInputPattern * input)
{
    PRC_GetInputPatternStrokes_Standard(strokes, input);
}

#endif

#ifdef __cplusplus
}
#endif

#endif
