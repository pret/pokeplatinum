#ifndef POKEPLATINUM_SPIDER_GRAPH_H
#define POKEPLATINUM_SPIDER_GRAPH_H

#include <nitro.h>

// Q2 | Q1
// ---+---
// Q3 | Q4
enum {
    RECT_Q1 = 0,
    RECT_Q2,
    RECT_Q3,
    RECT_Q4,
    MAX_SPIDER_GRAPH_RECT
};

enum {
    VTX_TOP_LEFT = 0,
    VTX_TOP_RIGHT,
    VTX_BOTTOM_LEFT,
    VTX_BOTTOM_RIGHT,
    MAX_SPIDER_GRAPH_RECT_VTX
};

enum {
    SPIDER_GRAPH_STATE_INITIAL = 0,
    // the states in between are never referred to directly, but involve drawing the rectangles
    SPIDER_GRAPH_STATE_FINISH_DRAW = 3,
    SPIDER_GRAPH_STATE_END,
};

typedef struct SpiderGraphVtxBounds {
    VecFx16 max;
    VecFx16 min;
    VecFx16 valueLength;
} SpiderGraphVtxBounds;

typedef struct SpiderGraphRectangle {
    VecFx16 topLeft;
    VecFx16 topRight;
    VecFx16 bottomLeft;
    VecFx16 bottomRight;
} SpiderGraphRectangle;

typedef struct SpiderGraph {
    SpiderGraphRectangle currRects[MAX_SPIDER_GRAPH_RECT];
    SpiderGraphRectangle deltaRects[MAX_SPIDER_GRAPH_RECT];
    SpiderGraphRectangle maxRects[MAX_SPIDER_GRAPH_RECT];
    u32 state;
} SpiderGraph;

#endif // POKEPLATINUM_SPIDER_GRAPH_H
