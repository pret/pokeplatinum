#ifndef _DARRAY_H
#define _DARRAY_H

#ifdef __cplusplus
extern "C" {
#endif

#define NOT_FOUND -1

typedef struct DArrayImplementation * DArray;
#if defined(WIN32)
typedef int (__cdecl * ArrayCompareFn)(const void * elem1, const void * elem2);
#else
typedef int (* ArrayCompareFn)(const void * elem1, const void * elem2);
#endif

typedef void (* ArrayMapFn)(void * elem, void * clientData);
typedef int (* ArrayMapFn2)(void * elem, void * clientData);
typedef void (* ArrayElementFreeFn)(void * elem);

DArray ArrayNew(int elemSize, int numElemsToAllocate, ArrayElementFreeFn elemFreeFn);
void ArrayFree(DArray array);
int ArrayLength(const DArray array);
void * ArrayNth(DArray array, int n);
void ArrayAppend(DArray array, const void * newElem);
void ArrayInsertAt(DArray array, const void * newElem, int n);
void ArrayInsertSorted(DArray array, const void * newElem, ArrayCompareFn comparator);
void ArrayDeleteAt(DArray array, int n);
void ArrayRemoveAt(DArray array, int n);
void ArrayReplaceAt(DArray array, const void * newElem, int n);
void ArraySort(DArray array, ArrayCompareFn comparator);
int ArraySearch(DArray array, const void * key, ArrayCompareFn comparator, int fromIndex, int isSorted);
void ArrayMap(DArray array, ArrayMapFn fn, void * clientData);
void ArrayMapBackwards(DArray array, ArrayMapFn fn, void * clientData);
void * ArrayMap2(DArray array, ArrayMapFn2 fn, void * clientData);
void * ArrayMapBackwards2(DArray array, ArrayMapFn2 fn, void * clientData);
void ArrayClear(DArray array);
void * ArrayGetDataPtr(DArray array);
void ArraySetDataPtr(DArray array, void * ptr, int count, int capacity);

#ifdef __cplusplus
}
#endif

#endif
