#ifndef _HASHTABLE_H
#define _HASHTABLE_H

typedef struct HashImplementation * HashTable;
typedef int (* TableHashFn)(const void * elem, int numBuckets);

#if defined(WIN32)
typedef int (__cdecl * TableCompareFn)(const void * elem1, const void * elem2);
#else
typedef int (* TableCompareFn)(const void * elem1, const void * elem2);
#endif

typedef void (* TableMapFn)(void * elem, void * clientData);
typedef int (* TableMapFn2)(void * elem, void * clientData);
typedef void (* TableElementFreeFn)(void * elem);

#ifdef __cplusplus
extern "C" {
#endif

HashTable TableNew(int elemSize, int nBuckets, TableHashFn hashFn, TableCompareFn compFn, TableElementFreeFn freeFn);
HashTable TableNew2(int elemSize, int nBuckets, int nChains, TableHashFn hashFn, TableCompareFn compFn, TableElementFreeFn freeFn);
void TableFree(HashTable table);
int TableCount(HashTable table);
void TableEnter(HashTable table, const void * newElem);
int TableRemove(HashTable table, const void * delElem);
void * TableLookup(HashTable table, const void * elemKey);
void TableMap(HashTable table, TableMapFn fn, void * clientData);
void TableMapSafe(HashTable table, TableMapFn fn, void * clientData);
void * TableMap2(HashTable table, TableMapFn2 fn, void * clientData);
void * TableMapSafe2(HashTable table, TableMapFn2 fn, void * clientData);
void TableClear(HashTable table);

#ifdef __cplusplus
}
#endif

#endif
