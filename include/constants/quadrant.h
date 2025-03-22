#ifndef POKEPLATINUM_CONSTANTS_QUADRANT_H
#define POKEPLATINUM_CONSTANTS_QUADRANT_H

#define QUADRANT_COUNT 4

#define QUADRANT_GO_TOP(quadrant)          ((quadrant) - 2)
#define QUADRANT_GO_BOTTOM(quadrant)       ((quadrant) + 2)
#define QUADRANT_GO_RIGHT(quadrant)        ((quadrant) + 1)
#define QUADRANT_GO_LEFT(quadrant)         ((quadrant) - 1)
#define QUADRANT_GO_BOTTOM_RIGHT(quadrant) ((quadrant) + 3)
#define QUADRANT_GO_TOP_LEFT(quadrant)     ((quadrant) - 3)
#define QUADRANT_GO_BOTTOM_LEFT(quadrant)  ((quadrant) + 1)
#define QUADRANT_GO_TOP_RIGHT(quadrant)    ((quadrant) - 1)

enum Quadrant {
    QUADRANT_TOP_LEFT,
    QUADRANT_TOP_RIGHT,
    QUADRANT_BOTTOM_LEFT,
    QUADRANT_BOTTOM_RIGHT,
    QUADRANT_INVALID
};

#endif // POKEPLATINUM_CONSTANTS_QUADRANT_H
