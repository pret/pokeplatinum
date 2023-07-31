#ifndef NITRO_PRC_ALGO_FINE_H_
#define NITRO_PRC_ALGO_FINE_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>
#include <nitro/prc/types.h>
#include <nitro/prc/common.h>
#include <nitro/prc/resample.h>
#include <nitro/prc/algo_common.h>

#define PRC_LENGTH_FILTER_DEFAULT_THRESHOLD_FINE normalizeSize
#define PRC_LENGTH_FILTER_DEFAULT_RATIO_FINE 3

typedef PRCPrototypeDBParam_Common PRCPrototypeDBParam_Fine;

typedef PRCInputPatternParam_Common PRCInputPatternParam_Fine;

typedef PRCInputPattern_Common PRCInputPattern_Fine;

typedef PRCPrototypeDB_Common PRCPrototypeDB_Fine;

typedef struct PRCRecognizeParam_Fine {
    int lengthFilterThreshold;
    int lengthFilterRatio;
} PRCRecognizeParam_Fine;

static inline void PRC_Init_Fine (void)
{
    PRC_Init_Common();
}

static inline u32 PRC_GetPrototypeDBBufferSize_Fine (const PRCPrototypeList * prototypeList)
{
    return PRC_GetPrototypeDBBufferSize_Common(prototypeList);
}

static inline u32 PRC_GetPrototypeDBBufferSizeEx_Fine (const PRCPrototypeList * prototypeList,
                                                       u32 kindMask,
                                                       BOOL ignoreDisabledEntries,
                                                       const PRCPrototypeDBParam_Fine * param)
{
    return PRC_GetPrototypeDBBufferSizeEx_Common(prototypeList, kindMask, ignoreDisabledEntries,
                                                 param);
}

static inline BOOL PRC_InitPrototypeDB_Fine (PRCPrototypeDB_Fine * protoDB,
                                             void * buffer, const PRCPrototypeList * prototypeList)
{
    return PRC_InitPrototypeDB_Common(protoDB, buffer, prototypeList);
}

static inline BOOL PRC_InitPrototypeDBEx_Fine (PRCPrototypeDB_Fine * protoDB,
                                               void * buffer,
                                               const PRCPrototypeList * prototypeList,
                                               u32 kindMask,
                                               BOOL ignoreDisabledEntries, const PRCPrototypeDBParam_Fine * param)
{
    return PRC_InitPrototypeDBEx_Common(protoDB, buffer, prototypeList, kindMask,
                                        ignoreDisabledEntries, param);
}

static inline u32 PRC_GetInputPatternBufferSize_Fine (int maxPointCount, int maxStrokeCount)
{
    return PRC_GetInputPatternBufferSize_Common(maxPointCount, maxStrokeCount);
}

static inline BOOL PRC_InitInputPattern_Fine (PRCInputPattern_Fine * pattern,
                                              void * buffer,
                                              const PRCStrokes * strokes, int maxPointCount, int maxStrokeCount)
{
    return PRC_InitInputPattern_Common(pattern, buffer, strokes, maxPointCount, maxStrokeCount);
}

static inline BOOL PRC_InitInputPatternEx_Fine (PRCInputPattern_Fine * pattern,
                                                void * buffer,
                                                const PRCStrokes * strokes,
                                                int maxPointCount,
                                                int maxStrokeCount, const PRCInputPatternParam_Fine * param)
{
    return PRC_InitInputPatternEx_Common(pattern, buffer, strokes, maxPointCount, maxStrokeCount,
                                         param);
}

u32

PRC_GetRecognitionBufferSizeEx_Fine(int maxPointCount,
                                    int maxStrokeCount,
                                    const PRCPrototypeDB_Fine * protoDB,
                                    const PRCRecognizeParam_Fine * param);

static inline u32 PRC_GetRecognitionBufferSize_Fine (int maxPointCount,
                                                     int maxStrokeCount, const PRCPrototypeDB_Fine * protoDB)
{
    return PRC_GetRecognitionBufferSizeEx_Fine(maxPointCount, maxStrokeCount, protoDB, NULL);
}

int

PRC_GetRecognizedEntriesEx_Fine(PRCPrototypeEntry ** resultEntries,
                                fx32 * resultScores,
                                int numRanking,
                                void * buffer,
                                const PRCInputPattern_Fine * input,
                                const PRCPrototypeDB_Fine * protoDB,
                                u32 kindMask, const PRCRecognizeParam_Fine * param);

static inline int PRC_GetRecognizedEntries_Fine (PRCPrototypeEntry ** resultEntries,
                                                 fx32 * resultScores,
                                                 int numRanking,
                                                 void * buffer,
                                                 const PRCInputPattern_Fine * input, const PRCPrototypeDB_Fine * protoDB)
{
    return PRC_GetRecognizedEntriesEx_Fine(resultEntries, resultScores, numRanking, buffer, input,
                                           protoDB, PRC_KIND_ALL, NULL);
}

static inline fx32 PRC_GetRecognizedEntryEx_Fine (PRCPrototypeEntry ** resultEntry,
                                                  void * buffer,
                                                  const PRCInputPattern_Fine * input,
                                                  const PRCPrototypeDB_Fine * protoDB,
                                                  u32 kindMask, const PRCRecognizeParam_Fine * param)
{
    fx32 score;
    (void)PRC_GetRecognizedEntriesEx_Fine(resultEntry, &score, 1, buffer, input, protoDB, kindMask,
                                          param);
    return score;
}

static inline fx32 PRC_GetRecognizedEntry_Fine (PRCPrototypeEntry ** resultEntry,
                                                void * buffer,
                                                const PRCInputPattern_Fine * input, const PRCPrototypeDB_Fine * protoDB)
{
    return PRC_GetRecognizedEntryEx_Fine(resultEntry, buffer, input, protoDB, PRC_KIND_ALL, NULL);
}

static inline void PRC_GetInputPatternStrokes_Fine (PRCStrokes * strokes, const PRCInputPattern_Fine * input)
{
    PRC_GetInputPatternStrokes_Common(strokes, input);
}

#ifndef PRC_DEFAULT_ALGORITHM
#define PRC_DEFAULT_ALGORITHM "Fine"

typedef PRCPrototypeDBParam_Fine PRCPrototypeDBParam;

typedef PRCInputPatternParam_Fine PRCInputPatternParam;

typedef PRCInputPattern_Fine PRCInputPattern;

typedef PRCPrototypeDB_Fine PRCPrototypeDB;

typedef PRCRecognizeParam_Fine PRCRecognizeParam;

static inline void PRC_Init (void)
{
    PRC_Init_Fine();
}

static inline u32 PRC_GetPrototypeDBBufferSize (const PRCPrototypeList * prototypeList)
{
    return PRC_GetPrototypeDBBufferSize_Fine(prototypeList);
}

static inline u32 PRC_GetPrototypeDBBufferSizeEx (const PRCPrototypeList * prototypeList,
                                                  u32 kindMask,
                                                  BOOL ignoreDisabledEntries, const PRCPrototypeDBParam * param)
{
    return PRC_GetPrototypeDBBufferSizeEx_Fine(prototypeList, kindMask, ignoreDisabledEntries,
                                               param);
}

static inline BOOL PRC_InitPrototypeDB (PRCPrototypeDB * protoDB, void * buffer, const PRCPrototypeList * prototypeList)
{
    return PRC_InitPrototypeDB_Fine(protoDB, buffer, prototypeList);
}

static inline BOOL PRC_InitPrototypeDBEx (PRCPrototypeDB * protoDB,
                                          void * buffer,
                                          const PRCPrototypeList * prototypeList,
                                          u32 kindMask, BOOL ignoreDisabledEntries, const PRCPrototypeDBParam * param)
{
    return PRC_InitPrototypeDBEx_Fine(protoDB, buffer, prototypeList, kindMask,
                                      ignoreDisabledEntries, param);
}

static inline u32 PRC_GetInputPatternBufferSize (int maxPointCount, int maxStrokeCount)
{
    return PRC_GetInputPatternBufferSize_Fine(maxPointCount, maxStrokeCount);
}

static inline BOOL PRC_InitInputPattern (PRCInputPattern * pattern,
                                         void * buffer, const PRCStrokes * strokes, int maxPointCount, int maxStrokeCount)
{
    return PRC_InitInputPattern_Fine(pattern, buffer, strokes, maxPointCount, maxStrokeCount);
}

static inline BOOL PRC_InitInputPatternEx (PRCInputPattern * pattern,
                                           void * buffer,
                                           const PRCStrokes * strokes,
                                           int maxPointCount, int maxStrokeCount, const PRCInputPatternParam * param)
{
    return PRC_InitInputPatternEx_Fine(pattern, buffer, strokes, maxPointCount, maxStrokeCount,
                                       param);
}

static inline u32 PRC_GetRecognitionBufferSize (int maxPointCount,
                                                int maxStrokeCount, const PRCPrototypeDB_Fine * protoDB)
{
    return PRC_GetRecognitionBufferSize_Fine(maxPointCount, maxStrokeCount, protoDB);
}

static inline u32 PRC_GetRecognitionBufferSizeEx (int maxPointCount,
                                                  int maxStrokeCount,
                                                  const PRCPrototypeDB_Fine * protoDB,
                                                  const PRCRecognizeParam_Fine * param)
{
    return PRC_GetRecognitionBufferSizeEx_Fine(maxPointCount, maxStrokeCount, protoDB, param);
}

static inline fx32 PRC_GetRecognizedEntry (PRCPrototypeEntry ** resultEntry,
                                           void * buffer, const PRCInputPattern * input, const PRCPrototypeDB * protoDB)
{
    return PRC_GetRecognizedEntry_Fine(resultEntry, buffer, input, protoDB);
}

static inline fx32 PRC_GetRecognizedEntryEx (PRCPrototypeEntry ** resultEntry,
                                             void * buffer,
                                             const PRCInputPattern * input,
                                             const PRCPrototypeDB * protoDB,
                                             u32 kindMask, const PRCRecognizeParam * param)
{
    return PRC_GetRecognizedEntryEx_Fine(resultEntry, buffer, input, protoDB, kindMask, param);
}

static inline int PRC_GetRecognizedEntries (PRCPrototypeEntry ** resultEntries,
                                            fx32 * resultScores,
                                            int numRanking,
                                            void * buffer, const PRCInputPattern * input, const PRCPrototypeDB * protoDB)
{
    return PRC_GetRecognizedEntries_Fine(resultEntries, resultScores, numRanking, buffer, input,
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
    return PRC_GetRecognizedEntriesEx_Fine(resultEntries, resultScores, numRanking, buffer, input,
                                           protoDB, kindMask, param);
}

static inline void PRC_GetInputPatternStrokes (PRCStrokes * strokes, const PRCInputPattern * input)
{
    PRC_GetInputPatternStrokes_Fine(strokes, input);
}

#endif

#ifdef __cplusplus
}
#endif

#endif
