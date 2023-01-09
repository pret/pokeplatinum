#include <nnsys/g3d/binres/res_struct_accessor.h>

void * NNS_G3dGetResDataByName (const NNSG3dResDict * dict, const NNSG3dResName * name) {
    NNS_G3D_NULL_ASSERT(dict);

    if (!name) {
        return NULL;
    }

    if (dict->numEntry < 16) {
        u32 idx;
        const NNSG3dResName * n;
        u32 v0 = name->val[0];
        u32 v1 = name->val[1];
        u32 v2 = name->val[2];
        u32 v3 = name->val[3];

        for (idx = 0; idx < dict->numEntry; ++idx) {
            n = NNS_G3dGetResNameByIdx(dict, idx);
            if (n->val[0] == v0 &&
                n->val[1] == v1 &&
                n->val[2] == v2 &&
                n->val[3] == v3) {
                return NNS_G3dGetResDataByIdx(dict, idx);
            }
        }
    } else {
        const NNSG3dResName * n;
        const NNSG3dResDictTreeNode * treeBase;
        const NNSG3dResDictTreeNode * p, * x;

        treeBase = &dict->node[0];
        p = treeBase;

        if (p->idxLeft != 0) {
            x = treeBase + p->idxLeft;
            while (p->refBit > x->refBit) {
                p = x;

                x = treeBase + *(&x->idxLeft +
                                 ((name->val[x->refBit >> 5] >> (x->refBit & 31)) & 1));
            }

            n = NNS_G3dGetResNameByIdx(dict, x->idxEntry);

            if (n->val[0] == name->val[0] &&
                n->val[1] == name->val[1] &&
                n->val[2] == name->val[2] &&
                n->val[3] == name->val[3]) {
                return NNS_G3dGetResDataByIdx(dict, x->idxEntry);
            }
        }
    }
    return NULL;
}

int NNS_G3dGetResDictIdxByName (const NNSG3dResDict * dict, const NNSG3dResName * name) {
    NNS_G3D_NULL_ASSERT(dict);

    if (!name) {
        return -1;
    }

    if (dict->numEntry < 16) {
        u32 idx;
        const NNSG3dResName * n;
        u32 v0 = name->val[0];
        u32 v1 = name->val[1];
        u32 v2 = name->val[2];
        u32 v3 = name->val[3];

        for (idx = 0; idx < dict->numEntry; ++idx) {
            n = NNS_G3dGetResNameByIdx(dict, idx);
            if (n->val[0] == v0 &&
                n->val[1] == v1 &&
                n->val[2] == v2 &&
                n->val[3] == v3) {
                return (int)idx;
            }
        }
    } else {
        const NNSG3dResName * n;
        const NNSG3dResDictTreeNode * treeBase;
        const NNSG3dResDictTreeNode * p, * x;

        treeBase = &dict->node[0];

        p = treeBase;

        if (p->idxLeft != 0) {
            x = treeBase + p->idxLeft;
            while (p->refBit > x->refBit) {
                p = x;

                x = treeBase + *(&x->idxLeft +
                                 ((name->val[x->refBit >> 5] >> (x->refBit & 31)) & 1));
            }

            n = NNS_G3dGetResNameByIdx(dict, x->idxEntry);

            if (n->val[0] == name->val[0] &&
                n->val[1] == name->val[1] &&
                n->val[2] == name->val[2] &&
                n->val[3] == name->val[3]) {
                return x->idxEntry;
            }
        }
    }
    return -1;
}

NNSG3dResDataBlockHeader * NNS_G3dGetDataBlockHeaderByIdx (const NNSG3dResFileHeader * header, u32 idx) {
    u32 * blks;
    NNS_G3D_NULL_ASSERT(header);

    if (idx < header->dataBlocks) {
        blks = (u32 *)((u8 *)header + header->headerSize);
        return (NNSG3dResDataBlockHeader *)((u8 *)header + blks[idx]);
    } else {
        return NULL;
    }
}

NNSG3dResMdlSet * NNS_G3dGetMdlSet (const NNSG3dResFileHeader * header) {
    u32 * blks;
    NNS_G3D_NULL_ASSERT(header);
    NNS_G3D_ASSERT(header->sigVal == NNS_G3D_SIGNATURE_NSBMD);
    NNS_G3D_ASSERTMSG(header->version == (2 | (0 << 8)), ".nsbmd version is different. convert again.");

    blks = (u32 *)((u8 *)header + header->headerSize);
    return (NNSG3dResMdlSet *)((u8 *)header + blks[0]);
}

NNSG3dResTex * NNS_G3dGetTex (const NNSG3dResFileHeader * header) {
    u32 * blks;
    NNS_G3D_NULL_ASSERT(header);
    NNS_G3D_ASSERT(
        header->sigVal == NNS_G3D_SIGNATURE_NSBMD ||
        header->sigVal == NNS_G3D_SIGNATURE_NSBTX
    );

    blks = (u32 *)((u8 *)header + header->headerSize);

    if (header->dataBlocks == 1) {
        if (header->sigVal == NNS_G3D_SIGNATURE_NSBTX) {
            return (NNSG3dResTex *)((u8 *)header + blks[0]);
        } else {
            return NULL;
        }
    } else {
        return (NNSG3dResTex *)((u8 *)header + blks[1]);
    }
}
