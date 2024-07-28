#include "spl.h"

#include <nitro/fx/fx.h>

void sub_020A2304(SPLList *list, SPLNode *node)
{
    if (list->p_begin == NULL) {
        list->p_begin = node;
        list->p_end = node;
        node->p_next = NULL;
        node->p_prev = node->p_next;
    } else {
        node->p_next = list->p_begin;
        node->p_prev = NULL;
        list->p_begin->p_prev = node;
        list->p_begin = node;
    }

    list->node_num += 1;
}

void spl_push_back(SPLList *list, SPLNode *node)
{
    return;
}

SPLNode *sub_020A22B8(SPLList *list)
{
    SPLNode *begin;
    SPLNode *node;

    node = NULL;
    begin = list->p_begin;

    if (begin != NULL) {
        node = begin;
        list->p_begin = begin->p_next;
        if (list->p_begin != NULL) {
            begin->p_next->p_prev = NULL;
        } else {
            list->p_begin = NULL;
            list->p_end = NULL;
        }

        list->node_num -= 1;
    }

    return node;
}

SPLNode *spl_pop_back(SPLList *list)
{
    return NULL;
}

SPLNode *sub_020A2238(SPLList *list, SPLNode *node)
{
    SPLNode *next = node->p_next;
    if (next == NULL) {
        if (list->p_begin == node) {
            list->p_begin = NULL;
            list->p_end = NULL;
        } else {
            node->p_prev->p_next = NULL;
            list->p_end = list->p_end->p_prev;
        }
    } else if (list->p_begin == node) {
        list->p_begin = next;
        list->p_begin->p_prev = NULL;
    } else {
        next->p_prev = node->p_prev;
        node->p_prev->p_next = node->p_next;
    }

    list->node_num -= 1;
    return node;
}
