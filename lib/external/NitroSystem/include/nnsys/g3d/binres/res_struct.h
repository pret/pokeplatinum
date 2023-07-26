#ifndef NNSG3D_BINRES_RES_STRUCT_H_
#define NNSG3D_BINRES_RES_STRUCT_H_

#include <nnsys/g3d/config.h>
#define NNS_G3D_RES_INLINE NNS_G3D_INLINE

#ifdef NNS_FROM_TOOL

typedef u32 NNSGfdTexKey;
#else
#include <nnsys/gfd.h>
SDK_COMPILER_ASSERT(sizeof(NNSGfdTexKey) == sizeof(u32));
#endif

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_G3D_SIGNATURE_NSBMD '0DMB'
#define NNS_G3D_SIGNATURE_NSBTX '0XTB'
#define NNS_G3D_SIGNATURE_NSBCA '0ACB'
#define NNS_G3D_SIGNATURE_NSBVA '0AVB'
#define NNS_G3D_SIGNATURE_NSBMA '0AMB'
#define NNS_G3D_SIGNATURE_NSBTP '0PTB'
#define NNS_G3D_SIGNATURE_NSBTA '0ATB'

#define NNS_G3D_DATABLK_MDLSET '0LDM'
#define NNS_G3D_DATABLK_TEX '0XET'
#define NNS_G3D_DATABLK_JNT_ANM '0TNJ'
#define NNS_G3D_DATABLK_VIS_ANM '0SIV'
#define NNS_G3D_DATABLK_MATC_ANM '0TAM'
#define NNS_G3D_DATABLK_TEXPAT_ANM '0TAP'
#define NNS_G3D_DATABLK_TEXSRT_ANM '0TRS'

typedef u16 NNSG3dItemTag;
#define NNS_G3D_ITEMTAG_MAT_STANDARD 0
#define NNS_G3D_ITEMTAG_SHP_STANDARD 0

typedef struct NNSG3dResFileHeader_ {
    union {
        char signature[4];
        u32 sigVal;
    };
    u16 byteOrder;
    u16 version;
    u32 fileSize;
    u16 headerSize;
    u16 dataBlocks;
} NNSG3dResFileHeader;

typedef struct NNSG3dResDataBlockHeader_ {
    union {
        u32 kind;
        char chr[4];
    };
    u32 size;
} NNSG3dResDataBlockHeader;

typedef struct NNSG3dResDictTreeNode_ {
    u8 refBit;
    u8 idxLeft;
    u8 idxRight;
    u8 idxEntry;
} NNSG3dResDictTreeNode;

typedef struct NNSG3dResDict_ {
    u8 revision;
    u8 numEntry;
    u16 sizeDictBlk;
    u16 dummy_;
    u16 ofsEntry;

    NNSG3dResDictTreeNode node[1];
} NNSG3dResDict;

#define NNS_G3D_RESNAME_SIZE (16)
#define NNS_G3D_RESNAME_VALSIZE (NNS_G3D_RESNAME_SIZE / sizeof(u32))

typedef union NNSG3dResName_ {
    char name[NNS_G3D_RESNAME_SIZE];
    u32 val[NNS_G3D_RESNAME_VALSIZE];
} NNSG3dResName;

typedef struct NNSG3dResDictEntryHeader_ {
    u16 sizeUnit;
    u16 ofsName;
    u8 data[4];
} NNSG3dResDictEntryHeader;

typedef enum {
    NNS_G3D_TEXIMAGE_PARAM_TEX_ADDR_MASK  = 0x0000ffff,
    NNS_G3D_TEXIMAGE_PARAM_S_SIZE_MASK    = 0x00700000,
    NNS_G3D_TEXIMAGE_PARAM_T_SIZE_MASK    = 0x03800000,
    NNS_G3D_TEXIMAGE_PARAM_TEXFMT_MASK    = 0x1c000000,
    NNS_G3D_TEXIMAGE_PARAM_TR_MASK        = 0x20000000,

    NNS_G3D_TEXIMAGE_PARAM_TEX_ADDR_SHIFT = 0,
    NNS_G3D_TEXIMAGE_PARAM_S_SIZE_SHIFT   = 20,
    NNS_G3D_TEXIMAGE_PARAM_T_SIZE_SHIFT   = 23,
    NNS_G3D_TEXIMAGE_PARAM_TEXFMT_SHIFT   = 26,
    NNS_G3D_TEXIMAGE_PARAM_TR_SHIFT       = 29
} NNSG3dTexImageParam;

typedef enum {
    NNS_G3D_TEXIMAGE_PARAMEX_ORIGW_MASK  = 0x000007ff,
    NNS_G3D_TEXIMAGE_PARAMEX_ORIGH_MASK  = 0x003ff800,
    NNS_G3D_TEXIMAGE_PARAMEX_WHSAME_MASK = 0x80000000,

    NNS_G3D_TEXIMAGE_PARAMEX_ORIGW_SHIFT  = 0,
    NNS_G3D_TEXIMAGE_PARAMEX_ORIGH_SHIFT  = 11,
    NNS_G3D_TEXIMAGE_PARAMEX_WHSAME_SHIFT = 31
} NNSG3dTexImageParamEx;

typedef struct NNSG3dResDictTexData_ {
    u32 texImageParam;

    u32 extraParam;
} NNSG3dResDictTexData;

typedef enum {
    NNS_G3D_RESTEX_LOADED   = 0x0001
} NNSG3dResTexFlag;

typedef struct NNSG3dResTexInfo_ {
    NNSGfdTexKey vramKey;
    u16 sizeTex;
    u16 ofsDict;
    u16 flag;
    u16 dummy_;
    u32 ofsTex;
} NNSG3dResTexInfo;

typedef enum {
    NNS_G3D_RESTEX4x4_LOADED   = 0x0001
} NNSG3dResTex4x4Flag;

typedef struct NNSG3dResTex4x4Info_ {
    NNSGfdTexKey vramKey;
    u16 sizeTex;
    u16 ofsDict;
    u16 flag;
    u16 dummy_;
    u32 ofsTex;
    u32 ofsTexPlttIdx;
} NNSG3dResTex4x4Info;

typedef struct NNSG3dResDictPlttData_ {
    u16 offset;
    u16 flag;
} NNSG3dResDictPlttData;

typedef enum {
    NNS_G3D_RESPLTT_LOADED   = 0x0001,
    NNS_G3D_RESPLTT_USEPLTT4 = 0x8000
} NNSG3dResPlttFlag;

typedef struct NNSG3dResPlttInfo_ {
    NNSGfdTexKey vramKey;
    u16 sizePltt;
    u16 flag;
    u16 ofsDict;
    u16 dummy_;
    u32 ofsPlttData;
} NNSG3dResPlttInfo;

typedef struct NNSG3dResTex_ {
    NNSG3dResDataBlockHeader header;
    NNSG3dResTexInfo texInfo;
    NNSG3dResTex4x4Info tex4x4Info;
    NNSG3dResPlttInfo plttInfo;
    NNSG3dResDict dict;
} NNSG3dResTex;

typedef struct NNSG3dResDictMatData_ {
    u32 offset;
} NNSG3dResDictMatData;

typedef struct NNSG3dResDictTexToMatIdxData_ {
    u16 offset;
    u8 numIdx;
    u8 flag;
} NNSG3dResDictTexToMatIdxData;

typedef struct NNSG3dResDictPlttToMatIdxData_ {
    u16 offset;
    u8 numIdx;
    u8 flag;
} NNSG3dResDictPlttToMatIdxData;

typedef enum {
    NNS_G3D_MATFLAG_TEXMTX_USE       = 0x0001,
    NNS_G3D_MATFLAG_TEXMTX_SCALEONE  = 0x0002,
    NNS_G3D_MATFLAG_TEXMTX_ROTZERO   = 0x0004,
    NNS_G3D_MATFLAG_TEXMTX_TRANSZERO = 0x0008,
    NNS_G3D_MATFLAG_ORIGWH_SAME      = 0x0010,
    NNS_G3D_MATFLAG_WIREFRAME        = 0x0020,
    NNS_G3D_MATFLAG_DIFFUSE          = 0x0040,
    NNS_G3D_MATFLAG_AMBIENT          = 0x0080,
    NNS_G3D_MATFLAG_VTXCOLOR         = 0x0100,
    NNS_G3D_MATFLAG_SPECULAR         = 0x0200,
    NNS_G3D_MATFLAG_EMISSION         = 0x0400,
    NNS_G3D_MATFLAG_SHININESS        = 0x0800,
    NNS_G3D_MATFLAG_TEXPLTTBASE      = 0x1000,
    NNS_G3D_MATFLAG_EFFECTMTX        = 0x2000
} NNSG3dMatFlag;

typedef struct NNSG3dResMatData_ {
    NNSG3dItemTag itemTag;
    u16 size;
    u32 diffAmb;
    u32 specEmi;
    u32 polyAttr;
    u32 polyAttrMask;
    u32 texImageParam;
    u32 texImageParamMask;
    u16 texPlttBase;
    u16 flag;
    u16 origWidth, origHeight;
    fx32 magW;
    fx32 magH;
} NNSG3dResMatData;

typedef struct NNSG3dResMat_ {
    u16 ofsDictTexToMatList;
    u16 ofsDictPlttToMatList;
    NNSG3dResDict dict;
} NNSG3dResMat;

typedef struct NNSG3dResDictShpData_ {
    u32 offset;
} NNSG3dResDictShpData;

typedef enum {
    NNS_G3D_SHPFLAG_USE_NORMAL     = 0x00000001,
    NNS_G3D_SHPFLAG_USE_COLOR      = 0x00000002,
    NNS_G3D_SHPFLAG_USE_TEXCOORD   = 0x00000004,
    NNS_G3D_SHPFLAG_USE_RESTOREMTX = 0x00000008
} NNSG3dShpFlag;

typedef struct NNSG3dResShpData_ {
    NNSG3dItemTag itemTag;
    u16 size;
    u32 flag;
    u32 ofsDL;
    u32 sizeDL;
} NNSG3dResShpData;

typedef struct NNSG3dResShp_ {
    NNSG3dResDict dict;
} NNSG3dResShp;

typedef struct NNSG3dResEvpMtx_ {
    MtxFx43 invM;
    MtxFx33 invN;
} NNSG3dResEvpMtx;

typedef enum {
    NNS_G3D_SBCTYPE_NORMAL       = 0
} NNSG3dSbcType;

typedef enum {
    NNS_G3D_SCALINGRULE_STANDARD = 0,
    NNS_G3D_SCALINGRULE_MAYA     = 1,
    NNS_G3D_SCALINGRULE_SI3D     = 2
} NNSG3dScalingRule;

typedef enum {
    NNS_G3D_TEXMTXMODE_MAYA      = 0x00,
    NNS_G3D_TEXMTXMODE_SI3D      = 0x01,
    NNS_G3D_TEXMTXMODE_3DSMAX    = 0x02,
    NNS_G3D_TEXMTXMODE_XSI       = 0x03
} NNSG3dTexMtxMode;

typedef struct NNSG3dResMdlInfo_ {
    u8 sbcType;
    u8 scalingRule;
    u8 texMtxMode;
    u8 numNode;

    u8 numMat;
    u8 numShp;
    u8 firstUnusedMtxStackID;
    u8 dummy_;

    fx32 posScale;
    fx32 invPosScale;

    u16 numVertex;
    u16 numPolygon;
    u16 numTriangle;
    u16 numQuad;

    fx16 boxX, boxY, boxZ;
    fx16 boxW, boxH, boxD;

    fx32 boxPosScale;
    fx32 boxInvPosScale;
} NNSG3dResMdlInfo;

typedef struct NNSG3dResDictNodeData_ {
    u32 offset;
} NNSG3dResDictNodeData;

typedef enum {
    NNS_G3D_SRTFLAG_TRANS_ZERO       = 0x0001,
    NNS_G3D_SRTFLAG_ROT_ZERO         = 0x0002,
    NNS_G3D_SRTFLAG_SCALE_ONE        = 0x0004,
    NNS_G3D_SRTFLAG_PIVOT_EXIST      = 0x0008,
    NNS_G3D_SRTFLAG_IDXPIVOT_MASK    = 0x00f0,
    NNS_G3D_SRTFLAG_PIVOT_MINUS      = 0x0100,
    NNS_G3D_SRTFLAG_SIGN_REVC        = 0x0200,
    NNS_G3D_SRTFLAG_SIGN_REVD        = 0x0400,
    NNS_G3D_SRTFLAG_IDXMTXSTACK_MASK = 0xf800,

    NNS_G3D_SRTFLAG_IDENTITY         = NNS_G3D_SRTFLAG_TRANS_ZERO |
                                       NNS_G3D_SRTFLAG_ROT_ZERO |
                                       NNS_G3D_SRTFLAG_SCALE_ONE,

    NNS_G3D_SRTFLAG_IDXPIVOT_SHIFT    = 4,
    NNS_G3D_SRTFLAG_IDXMTXSTACK_SHIFT = 11
} NNSG3dSRTFlag;

typedef struct NNSG3dResNodeData_ {
    u16 flag;
    fx16 _00;
} NNSG3dResNodeData;

typedef struct NNSG3dResNodeInfo_ {
    NNSG3dResDict dict;
} NNSG3dResNodeInfo;

typedef struct NNSG3dResMdl_ {
    u32 size;
    u32 ofsSbc;
    u32 ofsMat;
    u32 ofsShp;
    u32 ofsEvpMtx;
    NNSG3dResMdlInfo info;
    NNSG3dResNodeInfo nodeInfo;
} NNSG3dResMdl;

typedef struct NNSG3dResDictMdlSetData_ {
    u32 offset;
} NNSG3dResDictMdlSetData;

typedef struct NNSG3dResMdlSet_ {
    NNSG3dResDataBlockHeader header;
    NNSG3dResDict dict;
} NNSG3dResMdlSet;

#define NNS_G3D_SBC_NOP 0x00
#define NNS_G3D_SBC_RET 0x01
#define NNS_G3D_SBC_NODE 0x02
#define NNS_G3D_SBC_MTX 0x03
#define NNS_G3D_SBC_MAT 0x04
#define NNS_G3D_SBC_SHP 0x05
#define NNS_G3D_SBC_NODEDESC 0x06
#define NNS_G3D_SBC_BB 0x07
#define NNS_G3D_SBC_BBY 0x08
#define NNS_G3D_SBC_NODEMIX 0x09
#define NNS_G3D_SBC_CALLDL 0x0a
#define NNS_G3D_SBC_POSSCALE 0x0b
#define NNS_G3D_SBC_ENVMAP 0x0c
#define NNS_G3D_SBC_PRJMAP 0x0d

#define NNS_G3D_SBC_NOCMD 0x1f

#define NNS_G3D_SBC_COMMAND_NUM 0x20

#define NNS_G3D_SBCFLG_000 0x00
#define NNS_G3D_SBCFLG_001 0x20
#define NNS_G3D_SBCFLG_010 0x40
#define NNS_G3D_SBCFLG_011 0x60
#define NNS_G3D_SBCFLG_100 0x80
#define NNS_G3D_SBCFLG_101 0xa0
#define NNS_G3D_SBCFLG_110 0xc0
#define NNS_G3D_SBCFLG_111 0xe0

#define NNS_G3D_SBCCMD_MASK 0x1f
#define NNS_G3D_SBCFLG_MASK 0xe0

typedef enum {
    NNS_G3D_SBC_NODEDESC_FLAG_MAYASSC_APPLY  = 0x01,
    NNS_G3D_SBC_NODEDESC_FLAG_MAYASSC_PARENT = 0x02
} NNSG3dSbcNodeDescFlag;

#define NNS_G3D_GET_SBCCMD(x) ((x) & NNS_G3D_SBCCMD_MASK)
#define NNS_G3D_GET_SBCFLG(x) ((u32)((x) & NNS_G3D_SBCFLG_MASK))

typedef struct NNSG3dResAnmHeader_ {
    u8 category0;
    u8 revision;

    u16 category1;
} NNSG3dResAnmHeader;

typedef struct {
    NNSG3dResAnmHeader anmHeader;
    u16 numFrame;
    u16 dummy_;
} NNSG3dResAnmCommon;

typedef struct {
    u32 offset;
} NNSG3dResDictAnmSetData;

typedef struct {
    NNSG3dResDataBlockHeader header;
    NNSG3dResDict dict;
} NNSG3dResAnmSet;

typedef struct NNSG3dResVisAnm_ {
    NNSG3dResAnmHeader anmHeader;
    u16 numFrame;
    u16 numNode;
    u16 size;
    u16 dummy_;

    u32 visData[1];
} NNSG3dResVisAnm;

typedef NNSG3dResDictAnmSetData NNSG3dResDictVisAnmSetData;

typedef NNSG3dResAnmSet NNSG3dResVisAnmSet;

typedef enum {
    NNS_G3D_MATCANM_ELEM_CONST                 = 0x20000000,
    NNS_G3D_MATCANM_ELEM_STEP_1                = 0x00000000,
    NNS_G3D_MATCANM_ELEM_STEP_2                = 0x40000000,
    NNS_G3D_MATCANM_ELEM_STEP_4                = 0x80000000,

    NNS_G3D_MATCANM_ELEM_STEP_MASK             = 0xc0000000,
    NNS_G3D_MATCANM_ELEM_LAST_INTERP_MASK      = 0x1fff0000,
    NNS_G3D_MATCANM_ELEM_OFFSET_CONSTANT_MASK  = 0x0000ffff,

    NNS_G3D_MATCANM_ELEM_OFFSET_CONSTANT_SHIFT = 0,
    NNS_G3D_MATCANM_ELEM_LAST_INTERP_SHIFT     = 16
} NNSG3dMatCElem;

typedef struct NNSG3dResDictMatCAnmData_ {
    u32 diffuse;
    u32 ambient;
    u32 specular;
    u32 emission;
    u32 polygon_alpha;
} NNSG3dResDictMatCAnmData;

typedef enum {
    NNS_G3D_MATCANM_OPTION_INTERPOLATION              = 0x0001,
    NNS_G3D_MATCANM_OPTION_END_TO_START_INTERPOLATION = 0x0002
} NNSG3dMatCAnmOption;

typedef struct NNSG3dResMatCAnm_ {
    NNSG3dResAnmHeader anmHeader;
    u16 numFrame;
    u16 flag;
    NNSG3dResDict dict;
} NNSG3dResMatCAnm;

typedef NNSG3dResDictAnmSetData NNSG3dResDictMatCAnmSetData;

typedef NNSG3dResAnmSet NNSG3dResMatCAnmSet;

typedef struct NNSG3dResTexPatAnmFV_ {
    u16 idxFrame;
    u8 idTex;
    u8 idPltt;
} NNSG3dResTexPatAnmFV;

typedef enum {
    NNS_G3D_TEXPATANM_OPTION_NOPLTT = 0x0001
} NNSG3dTexPatAnmOption;

typedef struct NNSG3dResDictTexPatAnmData_ {
    u16 numFV;
    u16 flag;
    fx16 ratioDataFrame;
    u16 offset;
} NNSG3dResDictTexPatAnmData;

typedef struct NNSG3dResTexPatAnm_ {
    NNSG3dResAnmHeader anmHeader;
    u16 numFrame;
    u8 numTex;
    u8 numPltt;
    u16 ofsTexName;
    u16 ofsPlttName;
    NNSG3dResDict dict;
} NNSG3dResTexPatAnm;

typedef NNSG3dResDictAnmSetData NNSG3dResDictTexPatAnmSetData;

typedef NNSG3dResAnmSet NNSG3dResTexPatAnmSet;

typedef enum {
    NNS_G3D_TEXSRTANM_ELEM_FX16   = 0x10000000,
    NNS_G3D_TEXSRTANM_ELEM_CONST  = 0x20000000,
    NNS_G3D_TEXSRTANM_ELEM_STEP_1 = 0x00000000,
    NNS_G3D_TEXSRTANM_ELEM_STEP_2 = 0x40000000,
    NNS_G3D_TEXSRTANM_ELEM_STEP_4 = 0x80000000,

    NNS_G3D_TEXSRTANM_ELEM_STEP_MASK         = 0xc0000000,
    NNS_G3D_TEXSRTANM_ELEM_LAST_INTERP_MASK  = 0x0000ffff,

    NNS_G3D_TEXSRTANM_ELEM_LAST_INTERP_SHIFT = 0
} NNSG3dTexSRTElem;

typedef struct NNSG3dResDictTexSRTAnmData_ {
    u32 scaleS;
    u32 scaleSEx;

    u32 scaleT;
    u32 scaleTEx;

    u32 rot;
    u32 rotEx;

    u32 transS;
    u32 transSEx;

    u32 transT;
    u32 transTEx;
} NNSG3dResDictTexSRTAnmData;

typedef enum NNSG3dTexSRTAnmOption_ {
    NNS_G3D_TEXSRTANM_OPTION_INTERPOLATION              = 0x01,
    NNS_G3D_TEXSRTANM_OPTION_END_TO_START_INTERPOLATION = 0x02
} NNSG3dTexSRTAnmOption;

typedef struct NNSG3dResTexSRTAnm_ {
    NNSG3dResAnmHeader anmHeader;
    u16 numFrame;
    u8 flag;
    u8 texMtxMode;
    NNSG3dResDict dict;
} NNSG3dResTexSRTAnm;

typedef NNSG3dResDictAnmSetData NNSG3dResDictTexSRTAnmSetData;

typedef NNSG3dResAnmSet NNSG3dResTexSRTAnmSet;

typedef enum {
    NNS_G3D_JNTANM_SRTINFO_IDENTITY    = 0x00000001,
    NNS_G3D_JNTANM_SRTINFO_IDENTITY_T  = 0x00000002,
    NNS_G3D_JNTANM_SRTINFO_BASE_T      = 0x00000004,
    NNS_G3D_JNTANM_SRTINFO_CONST_TX    = 0x00000008,
    NNS_G3D_JNTANM_SRTINFO_CONST_TY    = 0x00000010,
    NNS_G3D_JNTANM_SRTINFO_CONST_TZ    = 0x00000020,
    NNS_G3D_JNTANM_SRTINFO_IDENTITY_R  = 0x00000040,
    NNS_G3D_JNTANM_SRTINFO_BASE_R      = 0x00000080,
    NNS_G3D_JNTANM_SRTINFO_CONST_R     = 0x00000100,
    NNS_G3D_JNTANM_SRTINFO_IDENTITY_S  = 0x00000200,
    NNS_G3D_JNTANM_SRTINFO_BASE_S      = 0x00000400,
    NNS_G3D_JNTANM_SRTINFO_CONST_SX    = 0x00000800,
    NNS_G3D_JNTANM_SRTINFO_CONST_SY    = 0x00001000,
    NNS_G3D_JNTANM_SRTINFO_CONST_SZ    = 0x00002000,

    NNS_G3D_JNTANM_SRTINFO_NODE_MASK   = 0xff000000,
    NNS_G3D_JNTANM_SRTINFO_NODE_SHIFT  = 24
} NNSG3dJntAnmSRTTag;

typedef enum {
    NNS_G3D_JNTANM_TINFO_STEP_1            = 0x00000000,
    NNS_G3D_JNTANM_TINFO_STEP_2            = 0x40000000,
    NNS_G3D_JNTANM_TINFO_STEP_4            = 0x80000000,
    NNS_G3D_JNTANM_TINFO_FX16ARRAY         = 0x20000000,

    NNS_G3D_JNTANM_TINFO_LAST_INTERP_MASK  = 0x1fff0000,
    NNS_G3D_JNTANM_TINFO_STEP_MASK         = 0xc0000000,

    NNS_G3D_JNTANM_TINFO_LAST_INTERP_SHIFT = 16,
    NNS_G3D_JNTANM_TINFO_STEP_SHIFT        = 30
} NNSG3dJntAnmTInfo;

typedef enum {
    NNS_G3D_JNTANM_RINFO_STEP_1            = 0x00000000,
    NNS_G3D_JNTANM_RINFO_STEP_2            = 0x40000000,
    NNS_G3D_JNTANM_RINFO_STEP_4            = 0x80000000,

    NNS_G3D_JNTANM_RINFO_LAST_INTERP_MASK  = 0x1fff0000,
    NNS_G3D_JNTANM_RINFO_STEP_MASK         = 0xc0000000,

    NNS_G3D_JNTANM_RINFO_LAST_INTERP_SHIFT = 16,
    NNS_G3D_JNTANM_RINFO_STEP_SHIFT        = 30
} NNSG3dJntAnmRInfo;

typedef enum {
    NNS_G3D_JNTANM_PIVOTINFO_IDXPIVOT_MASK = 0x000f,
    NNS_G3D_JNTANM_PIVOTINFO_MINUS         = 0x0010,
    NNS_G3D_JNTANM_PIVOTINFO_SIGN_REVC     = 0x0020,
    NNS_G3D_JNTANM_PIVOTINFO_SIGN_REVD     = 0x0040,

    NNS_G3D_JNTANM_PIVOT_INFO_IDXPIVOT_SHIFT = 0
} NNSG3dJntAnmPivotInfo;

typedef enum {
    NNS_G3D_JNTANM_RIDX_PIVOT         = 0x8000,
    NNS_G3D_JNTANM_RIDX_IDXDATA_MASK  = 0x7fff,
    NNS_G3D_JNTANM_RIDX_IDXDATA_SHIFT = 0
} NNSG3dJntAnmRIdx;

typedef enum {
    NNS_G3D_JNTANM_SINFO_STEP_1            = 0x00000000,
    NNS_G3D_JNTANM_SINFO_STEP_2            = 0x40000000,
    NNS_G3D_JNTANM_SINFO_STEP_4            = 0x80000000,
    NNS_G3D_JNTANM_SINFO_FX16ARRAY         = 0x20000000,

    NNS_G3D_JNTANM_SINFO_LAST_INTERP_MASK  = 0x1fff0000,
    NNS_G3D_JNTANM_SINFO_STEP_MASK         = 0xc0000000,

    NNS_G3D_JNTANM_SINFO_LAST_INTERP_SHIFT = 16,
    NNS_G3D_JNTANM_SINFO_STEP_SHIFT        = 30
} NNSG3dJntAnmSInfo;

typedef struct NNSG3dResJntAnmSRTInfo_ {
    u32 info;
    u32 offset;
} NNSG3dResJntAnmSRTInfo;

typedef struct NNSG3dResJntAnmSRTTag_ {
    u32 tag;
} NNSG3dResJntAnmSRTTag;

typedef enum {
    NNS_G3D_JNTANM_OPTION_INTERPOLATION              = 0x01,
    NNS_G3D_JNTANM_OPTION_END_TO_START_INTERPOLATION = 0x02
} NNSG3dJntAnmOption;

typedef struct NNSG3dResJntAnm_ {
    NNSG3dResAnmHeader anmHeader;
    u16 numFrame;
    u16 numNode;
    u32 flag;
    u32 ofsRot3;
    u32 ofsRot5;
} NNSG3dResJntAnm;

typedef NNSG3dResDictAnmSetData NNSG3dResDictJntAnmSetData;

typedef NNSG3dResAnmSet NNSG3dResJntAnmSet;

#ifdef __cplusplus
}
#endif

#endif
