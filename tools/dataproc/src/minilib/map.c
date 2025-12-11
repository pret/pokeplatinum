//
// map.c
//
// Copyright (c) 2014 Joao Cordeiro
// MIT licensed

#ifdef __APPLE__
#include <stdlib.h>
#include <strings.h>
#else
#include <malloc.h>
#endif
#include <stdio.h>
#include "map.h"

// Utility functions

/**
 * \brief Create a node.
 * \param key Entry key.
 * \param value Entry value.
 * \return A new node object. In case of error, returns NULL.
 */
static struct map_node_t* new_map_node(const char* key, void* value)
{
    struct map_node_t* new_node = NULL;

    new_node = (struct map_node_t*)malloc(sizeof(struct map_node_t));

    if (new_node) {
        new_node->next = NULL;
        new_node->value = value;

        new_node->key = (char*)malloc(strlen(key) + 1);
        if (!new_node->key) {
            free(new_node);
            return NULL;
        }

        strcpy(new_node->key, key);
    }

    return new_node;
}

struct map_find_results_t {
    struct map_node_t* prev_node;
    struct map_node_t* node;
    unsigned short exact_match;
};

/**
 * \brief Find a node with a given key.
 * \param map Map to search for the key in.
 * \param key Key to search for.
 * \return Pointer to node if found. NULL otherwise.
 */
static struct map_find_results_t map_find(struct map_t* map, const char* key)
{
    struct map_find_results_t results;

    results.prev_node = NULL;
    results.node = NULL;
    results.exact_match = 0;

    struct map_node_t* node;
    for (node = map->head; node != NULL; node = node->next) {
        int cmp = (*map->cmp_func)(key, node->key);

        if (cmp <= 0) {
            results.node = node;
            results.exact_match = (cmp == 0);
            return results;
        }

        results.prev_node = node;
    }

    return results;
}


// Lib functions

struct map_t* new_map()
{
    struct map_t* map = NULL;

    map = (struct map_t*)malloc(sizeof(struct map_t));

    if (map) {
        map->head = NULL;
        map->size = 0;
        map->cmp_func = strcmp;
        map->free_func = NULL;
    }

    return map;
}

void map_set_free_func(struct map_t* map, void (*f)(void*))
{
    map->free_func = f;
}

void map_set_cmp_func(struct map_t* map, int (*f)(const char*, const char*))
{
    map->cmp_func = f;
}

void destroy_map(struct map_t** map)
{
    struct map_node_t* node;
    struct map_node_t* next_node;

    for (node = (*map)->head; node != NULL; node = next_node) {
        free(node->key);

        if ((*map)->free_func && node->value) {
            (*(*map)->free_func)(node->value);
        }

        next_node = node->next;
        free(node);
        node = NULL;
    }

    free(*map);
    *map = NULL;
}


void* map_get(struct map_t* map, const char* key)
{
    const struct map_find_results_t find_result = map_find(map, key);

    if (find_result.exact_match) {
        return find_result.node->value;
    }

    return NULL;
}

int map_set(struct map_t* map, const char* key, void* value)
{
    const struct map_find_results_t find_result = map_find(map, key);

    // found node with same key
    if (find_result.exact_match) {
        if (map->free_func && find_result.node->value) {
            (*map->free_func)(find_result.node->value);
        }

        find_result.node->value = value;
        return 0;
    }

    // create the new node.
    struct map_node_t* new_node = new_map_node(key, value);

    if (!new_node) {
        return -1;
    }

    // empty list
    if (map->head == NULL) {
        map->head = new_node;
        map->size = 1;
        return 0;
    }

    // put the new node in the proper place
    struct map_node_t* node = find_result.node;
    struct map_node_t* prev_node = find_result.prev_node;

    new_node->next = node;

    if (prev_node) {
        prev_node->next = new_node;
    } else {
        map->head = new_node;
    }

    map->size++;
    return 0;
}

void map_del(struct map_t* map, const char* key)
{
    struct map_find_results_t find_results = map_find(map, key);

    if (!find_results.exact_match) {
        return;
    }

    struct map_node_t* node = find_results.node;

    if (map->free_func && node->value) {
        (*map->free_func)(node->value);
    }

    if (node == map->head) {
        map->head = map->head->next;
    } else {
        find_results.prev_node->next = node->next;
    }

    free(node->key);
    free(node);

    map->size--;
}


size_t map_size(const struct map_t* map)
{
    return map->size;
}
