//
// map.h
//
// Copyright (c) 2014 Joao Cordeiro
// MIT licensed

#ifndef __MAP_H__
#define __MAP_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <string.h>

//

/**
 * \brief Node structure.
 */
typedef struct map_node_t map_node_t;
struct map_node_t {
    char* key;
    void* value;

    struct map_node_t* next;
};

/**
 * \brief Map structure.
 */
typedef struct map_t map_t;
struct map_t {
    /** Head node */
    struct map_node_t* head;

    /** Number of elements in the map. */
    size_t size;

    /** Function to use when comparing map keys. */
    int (*cmp_func)(const char*, const char*);

    /** Function to use when deleting map values. */
    void (*free_func)(void*);
};


// Create and delete map functions

#define new_borrow_map() (map_t){ NULL, 0, strcmp, NULL }
#define new_owning_map() (map_t){ NULL, 0, strcmp, free }

/**
 * \brief Create a new map.
 * Until something else is specifically set, this map will
 * not do anything on entry deletion and will use strcmp to
 * compare values.
 * \param cs Case sensitivity to use in key comparison.
 * \return New map or NULL on failure.
 */
struct map_t* new_map();

/**
 * \brief Save the pointer to the function to use to free map values.
 * \param f Pointer to the function that is to be called on value deletion.
 */
void map_set_free_func(struct map_t* map, void (*f)(void*));

/**
 * \brief Save the pointer to the function to use compare map keys.
 * \param f Pointer to the function that is to be called on key comparison.
 */
void map_set_cmp_func(struct map_t* map, int (*f)(const char*, const char*));

/**
 * \brief Destroy map. Free all memory.
 */
void destroy_map(struct map_t** map);


// Map access functions.

/**
 * \brief Get the value that corresponds to a key.
 * \return Value associated with the key. NULL if not found.
 */
void* map_get(struct map_t* map, const char* key);

/**
 * \brief Set a value in a map.
 * Adds a new entry if the key does not exist,
 * or replaces the value if it exists.
 * \return 0 if successful. -1 if it fails.
 */
int map_set(struct map_t* map, const char* key, void* value);

/**
 * \brief Remove an entry from the map.
 */
void map_del(struct map_t* map, const char* key);


// Utility functions

/**
 * \brief Get number of elements in a map.
 * \param map Map to be analysed.
 * \return Number of elements in a map.
 */
size_t map_size(const struct map_t* map);

#ifdef __cplusplus
}
#endif

#endif
