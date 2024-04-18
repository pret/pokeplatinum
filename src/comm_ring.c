#include <nitro.h>
#include <string.h>

#include "comm_ring.h"
#include "communication_system.h"

static int sub_020322BC(CommRing * ring, int param1);
static int sub_0203229C(CommRing * ring);

void sub_02032188 (CommRing * ring, u8 * param1, int param2)
{
    ring->unk_00 = param1;
    ring->unk_0A = param2;
    ring->startIndex = 0;
    ring->unk_06 = 0;
    ring->unk_08 = 0;
}

void sub_02032198 (CommRing * ring, u8 * param1, int param2, int param3)
{
    int v0, v1;

    if (sub_0203229C(ring) <= param2) {
        sub_020363BC();
        return;
    }

    v1 = 0;

    for (v0 = ring->unk_08; v0 < ring->unk_08 + param2; v0++, v1++) {
        GF_ASSERT(param1);
        ring->unk_00[sub_020322BC(ring, v0)] = param1[v1];
    }

    ring->unk_08 = sub_020322BC(ring, v0);
}

int sub_020321F4 (CommRing * ring, u8 * param1, int param2)
{
    int v0, v1;

    v0 = sub_02032220(ring, param1, param2);
    ring->startIndex = sub_020322BC(ring, ring->startIndex + v0);

    return v0;
}

u8 sub_02032210 (CommRing * ring)
{
    u8 v0;

    sub_020321F4(ring, &v0, 1);
    return v0;
}

int sub_02032220 (CommRing * ring, u8 * param1, int param2)
{
    int v0, v1;

    v1 = 0;

    for (v0 = ring->startIndex; v0 < ring->startIndex + param2; v0++, v1++) {
        if (ring->unk_06 == sub_020322BC(ring, v0)) {
            return v1;
        }

        param1[v1] = ring->unk_00[sub_020322BC(ring, v0)];
    }

    return v1;
}

int CommRing_DataSize (CommRing * ring)
{
    if (ring->startIndex > ring->unk_06) {
        return ring->unk_0A + ring->unk_06 - ring->startIndex;
    }

    return ring->unk_06 - ring->startIndex;
}

int sub_0203228C (CommRing * ring)
{
    return ring->unk_0A - CommRing_DataSize(ring);
}

static int sub_0203229C (CommRing * ring)
{
    if (ring->startIndex > ring->unk_08) {
        return ring->startIndex - ring->unk_08;
    }

    return ring->unk_0A - (ring->unk_08 - ring->startIndex);
}

int sub_020322BC (CommRing * ring, int param1)
{
    return param1 % ring->unk_0A;
}

void sub_020322D0 (CommRing * ring)
{
    ring->unk_06 = ring->unk_08;
}
