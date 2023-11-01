#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200B358_decl.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "struct_decls/struct_02026218_decl.h"
#include "struct_decls/struct_02026224_decl.h"
#include "struct_decls/struct_02026310_decl.h"
#include "struct_decls/struct_0202CC84_decl.h"
#include "struct_decls/struct_0202CD88_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0203CDB0.h"

#include "message.h"
#include "unk_0200B29C.h"
#include "unk_0200B358.h"
#include "unk_02017038.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "strbuf.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_020261E4.h"
#include "unk_0202CC64.h"
#include "unk_0202CD50.h"
#include "unk_020559DC.h"
#include "pokemon.h"
#include "party.h"
#include "item.h"
#include "unk_02092494.h"
#include "overlay005/ov5_021E622C.h"

const u16 Unk_ov5_021F9FA2[] = {
    (1) + 20000,
    113,
    130,
    219,
    204,
    80,
    345,
    320,
    174,
    275,
    267,
    133,
    437,
    (4) + 20000,
    187,
    246,
    157,
    44,
    200,
    251,
    14,
    349,
    242,
    407,
    232,
    394,
    (7) + 20000,
    243,
    114,
    54,
    193,
    175,
    287,
    300,
    281,
    330,
    252,
    392,
    453,
    (16) + 20000,
    228,
    185,
    193,
    211,
    314,
    403,
    413,
    253,
    (19) + 20000,
    103,
    172,
    154,
    44,
    68,
    179,
    253,
    207,
    387,
    382,
    (21) + 20000,
    185,
    206,
    184,
    98,
    161,
    310,
    143,
    18,
    253,
    (23) + 20000,
    228,
    21,
    180,
    251,
    305,
    184,
    342,
    50,
    (27) + 20000,
    175,
    219,
    68,
    229,
    157,
    232,
    14,
    306,
    400,
    (29) + 20000,
    48,
    50,
    36,
    116,
    204,
    68,
    251,
    228,
    (32) + 20000,
    68,
    50,
    48,
    36,
    133,
    93,
    251,
    389,
    (37) + 20000,
    185,
    95,
    175,
    180,
    50,
    336,
    244,
    257,
    394,
    326,
    412,
    (41) + 20000,
    98,
    228,
    185,
    16,
    18,
    174,
    417,
    95,
    428,
    413,
    (43) + 20000,
    14,
    75,
    175,
    235,
    204,
    275,
    321,
    (46) + 20000,
    206,
    103,
    68,
    60,
    175,
    230,
    113,
    228,
    232,
    450,
    440,
    (48) + 20000,
    226,
    103,
    202,
    324,
    97,
    234,
    390,
    450,
    (50) + 20000,
    185,
    103,
    246,
    228,
    251,
    253,
    157,
    426,
    310,
    (52) + 20000,
    180,
    204,
    95,
    133,
    244,
    274,
    316,
    175,
    387,
    386,
    (54) + 20000,
    95,
    60,
    193,
    113,
    248,
    94,
    238,
    287,
    109,
    281,
    426,
    (56) + 20000,
    157,
    193,
    96,
    68,
    179,
    251,
    279,
    265,
    370,
    (58) + 20000,
    34,
    219,
    242,
    37,
    83,
    336,
    257,
    38,
    394,
    (60) + 20000,
    54,
    150,
    61,
    114,
    170,
    346,
    301,
    341,
    287,
    283,
    (63) + 20000,
    227,
    112,
    282,
    7,
    9,
    8,
    379,
    385,
    (66) + 20000,
    113,
    96,
    27,
    227,
    265,
    68,
    157,
    370,
    7,
    9,
    8,
    418,
    (69) + 20000,
    14,
    227,
    115,
    235,
    141,
    275,
    345,
    388,
    321,
    (72) + 20000,
    62,
    243,
    229,
    114,
    219,
    109,
    282,
    367,
    (74) + 20000,
    5,
    157,
    335,
    359,
    175,
    (77) + 20000,
    172,
    37,
    24,
    95,
    204,
    38,
    32,
    (79) + 20000,
    219,
    187,
    248,
    23,
    300,
    214,
    173,
    382,
    335,
    428,
    (83) + 20000,
    211,
    193,
    119,
    16,
    98,
    175,
    297,
    174,
    343,
    189,
    400,
    (84) + 20000,
    98,
    48,
    114,
    185,
    175,
    283,
    119,
    413,
    (86) + 20000,
    122,
    195,
    50,
    32,
    21,
    227,
    252,
    333,
    324,
    (88) + 20000,
    114,
    212,
    122,
    286,
    174,
    325,
    153,
    425,
    254,
    256,
    255,
    (90) + 20000,
    61,
    36,
    112,
    229,
    103,
    333,
    341,
    (92) + 20000,
    149,
    195,
    114,
    310,
    261,
    288,
    153,
    7,
    8,
    9,
    (95) + 20000,
    157,
    175,
    153,
    335,
    111,
    205,
    350,
    (96) + 20000,
    112,
    274,
    272,
    7,
    9,
    8,
    417,
    260,
    427,
    (98) + 20000,
    91,
    114,
    133,
    175,
    21,
    282,
    14,
    321,
    246,
    (102) + 20000,
    235,
    236,
    115,
    246,
    244,
    275,
    174,
    267,
    381,
    437,
    (104) + 20000,
    157,
    246,
    187,
    103,
    130,
    195,
    14,
    24,
    442,
    (108) + 20000,
    187,
    222,
    34,
    174,
    265,
    214,
    173,
    164,
    133,
    359,
    (109) + 20000,
    103,
    149,
    60,
    194,
    220,
    261,
    288,
    180,
    174,
    (111) + 20000,
    242,
    179,
    157,
    68,
    222,
    14,
    174,
    306,
    407,
    423,
    424,
    422,
    (113) + 20000,
    217,
    118,
    215,
    312,
    164,
    68,
    270,
    356,
    (114) + 20000,
    175,
    93,
    72,
    115,
    133,
    73,
    267,
    283,
    437,
    (115) + 20000,
    23,
    193,
    116,
    219,
    50,
    68,
    306,
    164,
    38,
    283,
    359,
    (116) + 20000,
    175,
    62,
    190,
    50,
    150,
    82,
    225,
    324,
    (118) + 20000,
    60,
    114,
    56,
    214,
    300,
    189,
    401,
    (122) + 20000,
    248,
    95,
    102,
    244,
    252,
    271,
    109,
    358,
    298,
    (123) + 20000,
    68,
    219,
    226,
    13,
    179,
    113,
    203,
    318,
    405,
    400,
    (127) + 20000,
    31,
    175,
    206,
    185,
    98,
    370,
    364,
    (131) + 20000,
    193,
    164,
    321,
    287,
    349,
    174,
    214,
    32,
    246,
    250,
    90,
    (133) + 20000,
    204,
    175,
    203,
    174,
    321,
    273,
    281,
    313,
    343,
    (138) + 20000,
    61,
    62,
    21,
    48,
    114,
    157,
    191,
    282,
    378,
    390,
    (140) + 20000,
    61,
    62,
    229,
    91,
    175,
    282,
    109,
    341,
    196,
    103,
    (142) + 20000,
    18,
    228,
    193,
    211,
    225,
    174,
    372,
    (143) + 20000,
    122,
    204,
    38,
    174,
    90,
    164,
    18,
    228,
    (147) + 20000,
    113,
    54,
    114,
    48,
    225,
    349,
    407,
    (152) + 20000,
    22,
    73,
    68,
    246,
    175,
    267,
    275,
    320,
    437,
    312,
    378,
    (155) + 20000,
    154,
    98,
    179,
    37,
    193,
    343,
    336,
    306,
    38,
    24,
    394,
    (158) + 20000,
    242,
    37,
    56,
    246,
    157,
    300,
    346,
    337,
    8,
    232,
    349,
    (161) + 20000,
    38,
    228,
    163,
    116,
    179,
    164,
    271,
    274,
    387,
    204,
    343,
    (163) + 20000,
    119,
    48,
    185,
    17,
    18,
    143,
    297,
    97,
    101,
    (165) + 20000,
    60,
    117,
    318,
    405,
    103,
    227,
    282,
    450,
    (167) + 20000,
    60,
    50,
    49,
    226,
    228,
    324,
    390,
    398,
    (170) + 20000,
    175,
    103,
    133,
    60,
    250,
    97,
    54,
    (172) + 20000,
    179,
    117,
    217,
    227,
    3,
    273,
    268,
    252,
    9,
    321,
    (173) + 20000,
    217,
    118,
    133,
    187,
    150,
    102,
    273,
    164,
    313,
    343,
    (174) + 20000,
    195,
    217,
    185,
    273,
    313,
    387,
    343,
    356,
    (175) + 20000,
    217,
    119,
    64,
    193,
    248,
    164,
    244,
    417,
    375,
    381,
    (177) + 20000,
    114,
    65,
    98,
    185,
    211,
    244,
    297,
    287,
    428,
    389,
    (179) + 20000,
    36,
    34,
    219,
    103,
    115,
    316,
    268,
    260,
    28,
    (183) + 20000,
    113,
    217,
    133,
    248,
    187,
    195,
    48,
    164,
    453,
    276,
    287,
    (185) + 20000,
    120,
    29,
    106,
    111,
    205,
    328,
    (187) + 20000,
    93,
    227,
    38,
    115,
    133,
    270,
    244,
    312,
    388,
    (190) + 20000,
    68,
    103,
    228,
    97,
    180,
    21,
    3,
    251,
    252,
    343,
    340,
    (191) + 20000,
    320,
    227,
    73,
    267,
    174,
    270,
    275,
    230,
    (193) + 20000,
    18,
    179,
    141,
    324,
    318,
    364,
    185,
    228,
    (194) + 20000,
    34,
    246,
    219,
    174,
    300,
    254,
    256,
    255,
    68,
    227,
    24,
    (198) + 20000,
    18,
    65,
    119,
    17,
    143,
    109,
    297,
    195,
    375,
    103,
    185,
    (200) + 20000,
    103,
    194,
    244,
    286,
    262,
    389,
    425,
    174,
    180,
    466,
    (203) + 20000,
    36,
    133,
    193,
    248,
    251,
    244,
    273,
    277,
    24,
    243,
    (204) + 20000,
    115,
    42,
    175,
    129,
    68,
    328,
    279,
    38,
    390,
    (206) + 20000,
    117,
    246,
    157,
    44,
    29,
    310,
    174,
    376,
    277,
    173,
    (207) + 20000,
    232,
    17,
    13,
    68,
    328,
    97,
    226,
    38,
    364,
    400,
    440,
    (209) + 20000,
    118,
    185,
    115,
    217,
    242,
    215,
    173,
    265,
    370,
    423,
    424,
    422,
    (211) + 20000,
    175,
    114,
    61,
    48,
    310,
    324,
    398,
    (213) + 20000,
    230,
    282,
    270,
    367,
    328,
    189,
    (214) + 20000,
    106,
    117,
    175,
    206,
    279,
    228,
    38,
    (215) + 20000,
    68,
    180,
    193,
    115,
    44,
    306,
    252,
    458,
    386,
    228,
    420,
    8,
    (216) + 20000,
    242,
    36,
    69,
    68,
    232,
    313,
    281,
    214,
    238,
    38,
    370,
    400,
    (218) + 20000,
    151,
    257,
    174,
    108,
    262,
    254,
    255,
    256,
    (220) + 20000,
    36,
    44,
    34,
    157,
    246,
    341,
    333,
    38,
    90,
    174,
    (222) + 20000,
    157,
    103,
    54,
    133,
    112,
    275,
    109,
    333,
    267,
    392,
    (223) + 20000,
    62,
    190,
    48,
    114,
    103,
    86,
    350,
    173,
    175,
    (225) + 20000,
    62,
    98,
    248,
    150,
    229,
    301,
    420,
    8,
    (226) + 20000,
    239,
    56,
    114,
    21,
    300,
    157,
    243,
    346,
    150,
    (227) + 20000,
    65,
    228,
    18,
    143,
    174,
    413,
    372,
    (228) + 20000,
    83,
    99,
    228,
    68,
    180,
    179,
    251,
    261,
    424,
    422,
    417,
    386,
    (231) + 20000,
    116,
    34,
    246,
    173,
    68,
    90,
    283,
    420,
    (234) + 20000,
    180,
    50,
    44,
    207,
    244,
    326,
    37,
    24,
    428,
    (236) + 20000,
    229,
    136,
    183,
    170,
    270,
    68,
    410,
    418,
    (238) + 20000,
    96,
    244,
    252,
    273,
    8,
    357,
    (239) + 20000,
    2,
    112,
    27,
    96,
    238,
    7,
    8,
    223,
    (240) + 20000,
    2,
    5,
    112,
    103,
    238,
    9,
    183,
    223,
    394,
    (241) + 20000,
    217,
    179,
    69,
    203,
    244,
    174,
    270,
    214,
    146,
    359,
    38,
    386,
    (246) + 20000,
    228,
    23,
    200,
    116,
    246,
    349,
    174,
    334,
    372,
    442,
    (252) + 20000,
    242,
    300,
    283,
    73,
    225,
    306,
    388,
    24,
    320,
    235,
    345,
    437,
    (255) + 20000,
    68,
    179,
    203,
    207,
    157,
    265,
    306,
    226,
    97,
    400,
    387,
    364,
    (258) + 20000,
    287,
    253,
    174,
    23,
    301,
    243,
    68,
    246,
    250,
    44,
    38,
    426,
    (261) + 20000,
    310,
    305,
    343,
    43,
    281,
    389,
    423,
    424,
    422,
    382,
    (263) + 20000,
    204,
    228,
    164,
    321,
    271,
    270,
    189,
    (270) + 20000,
    235,
    75,
    230,
    73,
    175,
    55,
    321,
    (273) + 20000,
    73,
    133,
    98,
    13,
    36,
    206,
    388,
    417,
    (276) + 20000,
    228,
    48,
    287,
    119,
    99,
    143,
    18,
    413,
    (278) + 20000,
    54,
    239,
    97,
    16,
    346,
    392,
    282,
    (280) + 20000,
    50,
    261,
    212,
    262,
    194,
    288,
    425,
    109,
    (283) + 20000,
    193,
    341,
    60,
    56,
    170,
    324,
    450,
    (285) + 20000,
    313,
    207,
    204,
    206,
    270,
    388,
    358,
    402,
    (287) + 20000,
    228,
    163,
    34,
    173,
    306,
    174,
    214,
    359,
    400,
    (290) + 20000,
    203,
    185,
    16,
    318,
    405,
    400,
    450,
    (293) + 20000,
    36,
    173,
    207,
    326,
    265,
    108,
    283,
    (296) + 20000,
    185,
    197,
    193,
    270,
    238,
    279,
    223,
    68,
    358,
    418,
    (298) + 20000,
    227,
    47,
    287,
    21,
    321,
    313,
    (299) + 20000,
    222,
    205,
    153,
    38,
    335,
    (300) + 20000,
    270,
    244,
    253,
    313,
    273,
    226,
    164,
    321,
    387,
    252,
    428,
    389,
    (302) + 20000,
    244,
    105,
    236,
    417,
    260,
    (303) + 20000,
    14,
    206,
    305,
    244,
    246,
    321,
    389,
    423,
    424,
    422,
    386,
    (304) + 20000,
    283,
    34,
    23,
    265,
    174,
    103,
    442,
    407,
    (307) + 20000,
    7,
    9,
    8,
    193,
    252,
    226,
    223,
    384,
    385,
    427,
    418,
    (309) + 20000,
    242,
    29,
    253,
    174,
    129,
    435,
    423,
    424,
    422,
    (311) + 20000,
    164,
    273,
    47,
    186,
    (312) + 20000,
    164,
    273,
    47,
    186,
    (313) + 20000,
    226,
    318,
    271,
    227,
    405,
    (314) + 20000,
    226,
    318,
    74,
    227,
    405,
    (315) + 20000,
    191,
    235,
    42,
    178,
    79,
    75,
    170,
    437,
    (316) + 20000,
    138,
    151,
    123,
    220,
    174,
    194,
    (318) + 20000,
    56,
    38,
    37,
    246,
    (320) + 20000,
    38,
    37,
    207,
    173,
    214,
    174,
    90,
    321,
    111,
    34,
    (322) + 20000,
    336,
    184,
    34,
    205,
    111,
    23,
    281,
    246,
    426,
    257,
    (324) + 20000,
    284,
    203,
    214,
    281,
    89,
    90,
    (325) + 20000,
    248,
    326,
    164,
    271,
    428,
    133,
    243,
    (327) + 20000,
    227,
    157,
    274,
    50,
    226,
    273,
    271,
    265,
    252,
    272,
    427,
    (328) + 20000,
    116,
    98,
    16,
    175,
    210,
    (331) + 20000,
    320,
    51,
    298,
    223,
    68,
    67,
    265,
    345,
    402,
    (333) + 20000,
    97,
    114,
    228,
    99,
    297,
    407,
    (335) + 20000,
    175,
    24,
    13,
    68,
    46,
    174,
    154,
    400,
    232,
    458,
    (336) + 20000,
    254,
    256,
    255,
    34,
    184,
    372,
    400,
    (339) + 20000,
    37,
    250,
    209,
    56,
    175,
    36,
    (341) + 20000,
    300,
    283,
    34,
    246,
    282,
    276,
    232,
    (345) + 20000,
    112,
    105,
    243,
    157,
    378,
    321,
    (347) + 20000,
    229,
    282,
    14,
    157,
    103,
    28,
    440,
    (349) + 20000,
    243,
    225,
    300,
    95,
    113,
    109,
    54,
    114,
    321,
    (351) + 20000,
    248,
    244,
    381,
    50,
    133,
    466,
    (352) + 20000,
    50,
    277,
    271,
    252,
    417,
    146,
    (353) + 20000,
    50,
    194,
    193,
    310,
    286,
    228,
    425,
    371,
    109,
    (355) + 20000,
    286,
    194,
    220,
    288,
    262,
    185,
    466,
    (357) + 20000,
    29,
    21,
    13,
    73,
    267,
    437,
    235,
    174,
    348,
    (358) + 20000,
    50,
    174,
    95,
    138,
    273,
    248,
    (359) + 20000,
    226,
    185,
    38,
    277,
    174,
    164,
    212,
    428,
    386,
    389,
    372,
    382,
    (361) + 20000,
    335,
    191,
    205,
    50,
    117,
    (363) + 20000,
    346,
    254,
    256,
    255,
    281,
    157,
    174,
    90,
    324,
    (366) + 20000,
    287,
    300,
    34,
    48,
    112,
    109,
    392,
    (369) + 20000,
    222,
    130,
    346,
    133,
    214,
    157,
    401,
    173,
    189,
    (370) + 20000,
    150,
    48,
    346,
    300,
    445,
    392,
    (371) + 20000,
    56,
    37,
    82,
    239,
    349,
    424,
    421,
    407,
    (387) + 20000,
    388,
    74,
    321,
    34,
    38,
    328,
    402,
    37,
    133,
    276,
    (390) + 20000,
    7,
    9,
    24,
    227,
    257,
    116,
    270,
    252,
    299,
    68,
    (393) + 20000,
    458,
    48,
    281,
    300,
    189,
    173,
    175,
    97,
    392,
    56,
    (396) + 20000,
    297,
    31,
    228,
    310,
    28,
    193,
    38,
    (399) + 20000,
    98,
    346,
    38,
    154,
    111,
    205,
    316,
    401,
    (403) + 20000,
    423,
    424,
    422,
    98,
    336,
    36,
    (406) + 20000,
    191,
    235,
    42,
    178,
    79,
    75,
    170,
    437,
    326,
    (408) + 20000,
    242,
    37,
    38,
    43,
    21,
    23,
    18,
    359,
    (410) + 20000,
    29,
    184,
    116,
    38,
    350,
    34,
    103,
    174,
    90,
    (417) + 20000,
    343,
    44,
    313,
    111,
    205,
    260,
    175,
    (418) + 20000,
    189,
    29,
    154,
    163,
    316,
    3,
    210,
    226,
    (420) + 20000,
    75,
    230,
    321,
    267,
    320,
    312,
    (422) + 20000,
    68,
    243,
    254,
    256,
    255,
    281,
    262,
    174,
    133,
    90,
    (425) + 20000,
    262,
    34,
    194,
    50,
    114,
    95,
    (427) + 20000,
    313,
    252,
    227,
    186,
    458,
    213,
    67,
    327,
    415,
    9,
    8,
    7,
    (431) + 20000,
    44,
    39,
    98,
    28,
    313,
    372,
    (433) + 20000,
    50,
    174,
    95,
    138,
    273,
    248,
    105,
    (434) + 20000,
    228,
    43,
    123,
    38,
    242,
    184,
    310,
    386,
    (438) + 20000,
    120,
    29,
    106,
    111,
    205,
    328,
    (439) + 20000,
    248,
    95,
    102,
    244,
    252,
    271,
    109,
    358,
    298,
    361,
    204,
    (440) + 20000,
    217,
    118,
    215,
    312,
    164,
    68,
    270,
    356,
    387,
    (441) + 20000,
    227,
    101,
    97,
    417,
    48,
    (442) + 20000,
    194,
    220,
    108,
    286,
    288,
    425,
    (443) + 20000,
    225,
    200,
    239,
    184,
    38,
    37,
    232,
    328,
    34,
    442,
    (446) + 20000,
    122,
    204,
    38,
    174,
    164,
    18,
    228,
    428,
    (447) + 20000,
    238,
    197,
    44,
    170,
    327,
    136,
    97,
    410,
    242,
    67,
    334,
    299,
    418,
    (449) + 20000,
    254,
    256,
    255,
    174,
    303,
    34,
    328,
    (451) + 20000,
    185,
    103,
    28,
    163,
    109,
    18,
    97,
    228,
    400,
    (453) + 20000,
    382,
    364,
    223,
    29,
    410,
    96,
    252,
    358,
    265,
    238,
    418,
    (455) + 20000,
    79,
    78,
    75,
    21,
    235,
    345,
    73,
    388,
    (456) + 20000,
    186,
    204,
    175,
    401,
    150,
    60,
    321,
    97,
    (458) + 20000,
    239,
    56,
    114,
    21,
    300,
    157,
    243,
    346,
    150,
    324,
    (459) + 20000,
    73,
    345,
    402,
    74,
    38,
    54,
    23,
    0xffff,
};

typedef struct {
    int unk_00[4];
    int unk_10[4];
    int unk_20[4];
    u16 unk_30[50];
    u16 unk_94[16];
} UnkStruct_ov5_021E6948;

void ov5_021E6DE8(Pokemon * param0, u16 param1, UnkStruct_02026310 * param2, u32 param3, u8 param4);
void sub_020262C0(UnkStruct_02026224 * param0);
static u8 ov5_021E70FC(UnkStruct_02026310 * param0);
static int ov5_021E6F6C(Party * param0);
static u8 ov5_021E6FF0(BoxPokemon ** param0);
void ov5_021E6B40(UnkStruct_02026310 * param0);
int ov5_021E6630(UnkStruct_02026310 * param0, u8 param1, UnkStruct_0200B358 * param2);
u8 ov5_021E6640(UnkStruct_02026310 * param0, int param1, UnkStruct_0200B358 * param2);
u16 ov5_021E73A0(Party * param0, int param1, UnkStruct_0200B358 * param2);
u8 ov5_021E73C8(UnkStruct_02026310 * param0);
void ov5_021E72BC(UnkStruct_02026310 * param0, UnkStruct_0200B358 * param1);
static void ov5_021E62C4(Party * param0, int param1, UnkStruct_02026218 * param2, SaveData * param3);
static int ov5_021E7110(UnkStruct_0203CDB0 * param0);

static BoxPokemon * ov5_021E622C (UnkStruct_02026310 * param0, int param1)
{
    return sub_02026220(sub_02026218(param0, param1));
}

static UnkStruct_02026310 * Unk_ov5_02202124;

u8 ov5_021E6238 (UnkStruct_02026310 * param0)
{
    u8 v0, v1;
    BoxPokemon * v2;

    v0 = 0;

    for (v1 = 0; v1 < 2; v1++) {
        v2 = sub_02026220(sub_02026218(param0, v1));

        if (BoxPokemon_GetValue(v2, MON_DATA_SPECIES, NULL) != 0) {
            v0++;
        }
    }

    return v0;
}

int ov5_021E6270 (UnkStruct_02026310 * param0)
{
    u8 v0;
    BoxPokemon * v1;

    Unk_ov5_02202124 = param0;

    for (v0 = 0; v0 < 2; v0++) {
        v1 = sub_02026220(sub_02026218(param0, v0));

        if (BoxPokemon_GetValue(v1, MON_DATA_SPECIES, NULL) == 0) {
            return v0;
        }
    }

    return -1;
}

static int ov5_021E62B0 (BoxPokemon * param0)
{
    int v0 = BoxPokemon_GetValue(param0, MON_DATA_HELD_ITEM, NULL);
    return Item_IsMail(v0);
}

static void ov5_021E62C4 (Party * param0, int param1, UnkStruct_02026218 * param2, SaveData * param3)
{
    int v0;
    Pokemon * v1 = Party_GetPokemonBySlotIndex(param0, param1);
    const u16 * v2;
    u16 v3[10 + 1];
    UnkStruct_02026224 * v4 = sub_02026224(param2);
    BoxPokemon * v5 = sub_02026220(param2);
    TrainerInfo * v6 = sub_02025E38(param3);

    v2 = TrainerInfo_Name(v6);
    Pokemon_GetValue(v1, MON_DATA_NICKNAME, v3);

    if (ov5_021E62B0(Pokemon_GetBoxPokemon(v1))) {
        Pokemon_GetValue(v1, MON_DATA_170, sub_02026230(v4));
    }

    BoxPokemon_FromPokemon(v1, v5);
    BoxPokemon_SetShayminForm(v5, 0);
    sub_02026258(param2, 0);
    Party_RemovePokemonBySlotIndex(param0, param1);

    if (Party_HasSpecies(param0, 441) == 0) {
        UnkStruct_0202CC84 * v7 = sub_0202CC98(param3);
        sub_0202CCA8(v7);
    }
}

void ov5_021E6358 (Party * param0, int param1, UnkStruct_02026310 * param2, SaveData * param3)
{
    int v0;
    UnkStruct_0202CD88 * v1 = sub_0202CD88(param3);

    sub_0202CF28(v1, 1 + 39);
    v0 = ov5_021E6270(param2);
    ov5_021E62C4(param0, param1, sub_02026218(param2, v0), param3);
}

static void ov5_021E638C (UnkStruct_02026310 * param0)
{
    UnkStruct_02026218 * v0, * v1;
    BoxPokemon * v2, * v3;

    v0 = sub_02026218(param0, 0);
    v1 = sub_02026218(param0, 1);
    v2 = sub_02026220(v0);
    v3 = sub_02026220(v1);

    if (BoxPokemon_GetValue(v2, MON_DATA_SPECIES, NULL) == 0) {
        if (BoxPokemon_GetValue(v3, MON_DATA_SPECIES, NULL) != 0) {
            sub_020262A8(v0, v1);
            sub_020262F4(v1);
        }
    }
}

static void ov5_021E63E0 (Pokemon * param0)
{
    int v0, v1 = 0, v2;
    u16 v3;
    u16 v4;

    for (v0 = 0; v0 < 100; v0++) {
        if (Pokemon_ShouldLevelUp(param0)) {
            v1 = 0;

            while ((v4 = Pokemon_LevelUpMove(param0, &v1, &v3)) != 0) {
                if (v4 == 0xffff) {
                    Pokemon_ReplaceMove(param0, v3);
                }
            }
        } else {
            break;
        }
    }

    Pokemon_CalcLevelAndStats(param0);
}

static int ov5_021E6444 (Party * param0, UnkStruct_02026218 * param1, UnkStruct_0200B358 * param2)
{
    Pokemon * v0 = Pokemon_New(4);
    BoxPokemon * v1 = sub_02026220(param1);
    UnkStruct_02026224 * v2 = sub_02026224(param1);
    u32 v3;
    u16 v4;

    sub_0200B5CC(param2, 0, v1);
    v4 = BoxPokemon_GetValue(v1, MON_DATA_SPECIES, NULL);
    Pokemon_FromBoxPokemon(v1, v0);

    if (Pokemon_GetValue(v0, MON_DATA_LEVEL, NULL) != 100) {
        v3 = Pokemon_GetValue(v0, MON_DATA_EXP, NULL);
        v3 += sub_02026228(param1);
        Pokemon_SetValue(v0, 8, (u8 *)&v3);
        ov5_021E63E0(v0);
    }

    if (ov5_021E62B0(v1)) {
        Pokemon_SetValue(v0, 170, sub_02026230(v2));
    }

    Party_AddPokemon(param0, v0);
    BoxPokemon_Init(v1);
    sub_02026258(param1, 0);
    Heap_FreeToHeap(v0);

    return v4;
}

u16 ov5_021E64F8 (Party * param0, UnkStruct_0200B358 * param1, UnkStruct_02026310 * param2, u8 param3)
{
    u16 v0;
    UnkStruct_02026218 * v1 = sub_02026218(param2, param3);

    v0 = ov5_021E6444(param0, v1, param1);
    ov5_021E638C(param2);

    return v0;
}

int ov5_021E6520 (BoxPokemon * param0, u32 param1)
{
    Pokemon * v0 = Pokemon_New(4);
    BoxPokemon * v1 = Pokemon_GetBoxPokemon(v0);
    int v2;
    u32 v3;

    BoxPokemon_Copy(param0, v1);

    v3 = BoxPokemon_GetValue(v1, MON_DATA_EXP, NULL);
    v3 += param1;

    BoxPokemon_SetValue(v1, 8, (u8 *)&v3);
    v2 = BoxPokemon_GetLevel(v1);
    Heap_FreeToHeap(v0);

    return v2;
}

int ov5_021E6568 (UnkStruct_02026218 * param0)
{
    u8 v0, v1;
    BoxPokemon * v2;

    v2 = sub_02026220(param0);
    v0 = BoxPokemon_GetLevel(v2);
    v1 = ov5_021E6520(v2, sub_02026228(param0));

    return v1 - v0;
}

int ov5_021E6590 (UnkStruct_02026218 * param0)
{
    u8 v0;
    BoxPokemon * v1;

    v1 = sub_02026220(param0);
    v0 = ov5_021E6520(v1, sub_02026228(param0));

    return v0;
}

u8 ov5_021E65B0 (UnkStruct_02026218 * param0, UnkStruct_0200B358 * param1)
{
    int v0;
    Strbuf* v1;
    u16 v2[10 + 1];
    BoxPokemon * v3 = sub_02026220(param0);

    v0 = ov5_021E6568(param0);

    sub_0200B60C(param1, 1, v0, 3, 0, 1);
    sub_0200B5CC(param1, 0, v3);

    return v0;
}

int ov5_021E65EC (UnkStruct_02026218 * param0, UnkStruct_0200B358 * param1)
{
    u16 v0;
    BoxPokemon * v1 = sub_02026220(param0);

    v0 = ov5_021E6568(param0);
    sub_0200B5CC(param1, 0, v1);

    v0 = v0 * 100 + 100;
    sub_0200B60C(param1, 1, v0, 5, 0, 1);

    return v0;
}

int ov5_021E6630 (UnkStruct_02026310 * param0, u8 param1, UnkStruct_0200B358 * param2)
{
    UnkStruct_02026218 * v0;

    v0 = sub_02026218(param0, param1);
    return ov5_021E65EC(v0, param2);
}

u8 ov5_021E6640 (UnkStruct_02026310 * param0, int param1, UnkStruct_0200B358 * param2)
{
    UnkStruct_02026218 * v0 = sub_02026218(param0, param1);
    BoxPokemon * v1 = sub_02026220(v0);

    if (BoxPokemon_GetValue(v1, MON_DATA_SPECIES, NULL)) {
        return ov5_021E65B0(v0, param2);
    }

    return 0;
}

static void ov5_021E6668 (UnkStruct_02026310 * param0, BoxPokemon * param1[])
{
    param1[0] = ov5_021E622C(param0, 0);
    param1[1] = ov5_021E622C(param0, 1);
}

static int ov5_021E6684 (UnkStruct_02026310 * param0)
{
    int v0;
    int v1[2], v2 = -1, v3;
    BoxPokemon * v4[2];

    ov5_021E6668(param0, v4);

    for (v0 = 0; v0 < 2; v0++) {
        if (BoxPokemon_GetGender(v4[v0]) == 1) {
            v2 = v0;
        }
    }

    for (v3 = 0, v0 = 0; v0 < 2; v0++) {
        if ((v1[v0] = BoxPokemon_GetValue(v4[v0], MON_DATA_SPECIES, NULL)) == 132) {
            v3++;
            v2 = v0;
        }
    }

    if (v3 == 2) {
        if (LCRNG_Next() >= (0xffff / 2)) {
            v2 = 0;
        } else {
            v2 = 1;
        }
    }

    if (BoxPokemon_GetValue(v4[v2], MON_DATA_HELD_ITEM, NULL) == 229) {
        if (LCRNG_Next() >= (0xffff / 2)) {
            return -1;
        }
    } else {
        return -1;
    }

    return v2;
}

void ov5_021E6720 (UnkStruct_02026310 * param0)
{
    u32 v0 = 0, v1;
    int v2, v3;
    int v4 = 0;

    if ((v2 = ov5_021E6684(param0)) < 0) {
        sub_02026270(param0, MTRNG_Next());
    } else {
        BoxPokemon * v5 = ov5_021E622C(param0, v2);

        v0 = BoxPokemon_GetValue(v5, MON_DATA_PERSONALITY, NULL);
        v3 = Pokemon_GetNatureOf(v0);

        while (TRUE) {
            v1 = MTRNG_Next();

            if ((v3 == Pokemon_GetNatureOf(v1)) && (v1 != 0)) {
                break;
            }

            if (++v4 > 2400) {
                break;
            }
        }

        sub_02026270(param0, v1);
    }
}

static void ov5_021E6778 (u8 * param0, u8 param1)
{
    int v0, v1;
    u8 v2[6];

    param0[param1] = 0xff;

    for (v0 = 0; v0 < 6; v0++) {
        v2[v0] = param0[v0];
    }

    v1 = 0;

    for (v0 = 0; v0 < 6; v0++) {
        if (v2[v0] != 0xff) {
            param0[v1++] = v2[v0];
        }
    }
}

static void ov5_021E67B0 (Pokemon * param0, UnkStruct_02026310 * param1)
{
    u8 v0[3], v1, v2[6], v3[3], v4;

    for (v1 = 0; v1 < 6; v1++) {
        v2[v1] = v1;
    }

    for (v1 = 0; v1 < 3; v1++) {
        v0[v1] = v2[LCRNG_Next() % (6 - v1)];
        ov5_021E6778(v2, v1);
    }

    for (v1 = 0; v1 < 3; v1++) {
        v3[v1] = LCRNG_Next() % 2;
    }

    for (v1 = 0; v1 < 3; v1++) {
        BoxPokemon * v5 = ov5_021E622C(param1, v3[v1]);

        switch (v0[v1]) {
        case 0:
            v4 = BoxPokemon_GetValue(v5, MON_DATA_HP_IV, NULL);
            Pokemon_SetValue(param0, 70, (u8 *)&v4);
            break;
        case 1:
            v4 = BoxPokemon_GetValue(v5, MON_DATA_ATK_IV, NULL);
            Pokemon_SetValue(param0, 71, (u8 *)&v4);
            break;
        case 2:
            v4 = BoxPokemon_GetValue(v5, MON_DATA_DEF_IV, NULL);
            Pokemon_SetValue(param0, 72, (u8 *)&v4);
            break;
        case 3:
            v4 = BoxPokemon_GetValue(v5, MON_DATA_SPEED_IV, NULL);
            Pokemon_SetValue(param0, 73, (u8 *)&v4);
            break;
        case 4:
            v4 = BoxPokemon_GetValue(v5, MON_DATA_SPATK_IV, NULL);
            Pokemon_SetValue(param0, 74, (u8 *)&v4);
            break;
        case 5:
            v4 = BoxPokemon_GetValue(v5, MON_DATA_SPDEF_IV, NULL);
            Pokemon_SetValue(param0, 75, (u8 *)&v4);
            break;
        }
    }
}

static u8 ov5_021E68D8 (Pokemon * param0, u16 * param1)
{
    u16 v0, v1, v2, v3;

    v2 = 0;
    v1 = 0;
    v0 = Pokemon_GetValue(param0, MON_DATA_SPECIES, NULL);

    for (v3 = 0; v3 < 1909; v3++) {
        if (Unk_ov5_021F9FA2[v3] == (20000 + v0)) {
            v1 = v3 + 1;
            break;
        }
    }

    for (v3 = 0; v3 < 16; v3++) {
        if (Unk_ov5_021F9FA2[v1 + v3] > 20000) {
            break;
        } else {
            param1[v3] = Unk_ov5_021F9FA2[v1 + v3];
            v2++;
        }
    }

    return v2;
}

static void ov5_021E6948 (Pokemon * param0, BoxPokemon * param1, BoxPokemon * param2)
{
    u16 v0, v1, v2, v3, v4, v5, v6;
    UnkStruct_ov5_021E6948 * v7 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021E6948));

    v2 = 0;

    MI_CpuClearFast(v7, sizeof(UnkStruct_ov5_021E6948));

    v3 = Pokemon_GetValue(param0, MON_DATA_SPECIES, NULL);
    v6 = Pokemon_GetValue(param0, MON_DATA_FORM, NULL);
    v4 = Pokemon_LoadLevelUpMoveIdsOf(v3, v6, v7->unk_30);

    for (v0 = 0; v0 < 4; v0++) {
        v7->unk_00[v0] = BoxPokemon_GetValue(param1, 54 + v0, NULL);
        v7->unk_20[v0] = BoxPokemon_GetValue(param2, 54 + v0, NULL);
    }

    v5 = ov5_021E68D8(param0, v7->unk_94);

    for (v0 = 0; v0 < 4; v0++) {
        if (v7->unk_00[v0] != 0) {
            for (v1 = 0; v1 < v5; v1++) {
                if (v7->unk_00[v0] == v7->unk_94[v1]) {
                    if (Pokemon_AddMove(param0, v7->unk_00[v0]) == 0xffff) {
                        Pokemon_ReplaceMove(param0, v7->unk_00[v0]);
                    }
                    break;
                }
            }
        } else {
            break;
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (v7->unk_00[v0] != 0) {
            for (v1 = 0; v1 < 100; v1++) {
                if (v7->unk_00[v0] == Item_MoveForTMHM(328 + v1)) {
                    if (Pokemon_CanFormLearnTM(v3, v6, v1)) {
                        if (Pokemon_AddMove(param0, v7->unk_00[v0]) == 0xffff) {
                            Pokemon_ReplaceMove(param0, v7->unk_00[v0]);
                        }
                    }
                }
            }
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (v7->unk_00[v0] == 0) {
            break;
        }

        for (v1 = 0; v1 < 4; v1++) {
            if ((v7->unk_00[v0] == v7->unk_20[v1]) && (v7->unk_00[v0] != 0)) {
                v7->unk_10[v2++] = v7->unk_00[v0];
            }
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (v7->unk_10[v0] == 0) {
            break;
        }

        for (v1 = 0; v1 < v4; v1++) {
            if (v7->unk_30[v1] != 0) {
                if (v7->unk_10[v0] == v7->unk_30[v1]) {
                    if (Pokemon_AddMove(param0, v7->unk_10[v0]) == 0xffff) {
                        Pokemon_ReplaceMove(param0, v7->unk_10[v0]);
                    }
                    break;
                }
            }
        }
    }

    Heap_FreeToHeap(v7);
}

void ov5_021E6B40 (UnkStruct_02026310 * param0)
{
    sub_02026270(param0, 0);
    sub_02026278(param0, 0);
}

static const u16 Unk_ov5_021F9F6C[9][3] = {
    {0x168, 0xFF, 0xCA},
    {0x12A, 0xFE, 0xB7},
    {0x1B7, 0x13A, 0x7A},
    {0x1B6, 0x13B, 0xB9},
    {0x1BE, 0x13C, 0x8F},
    {0x1CA, 0x13D, 0xE2},
    {0x196, 0x13E, 0x13B},
    {0x1B8, 0x13F, 0x71},
    {0x1B1, 0x140, 0x166}
};

static u16 ov5_021E6B54 (u16 param0, UnkStruct_02026310 * param1)
{
    u16 v0, v1, v2, v3;
    BoxPokemon * v4[2];

    ov5_021E6668(param1, v4);

    for (v3 = 0; v3 < 9; v3++) {
        if (param0 == Unk_ov5_021F9F6C[v3][0]) {
            v2 = v3;
            break;
        }
    }

    if (v3 == 9) {
        return param0;
    }

    v0 = BoxPokemon_GetValue(v4[0], MON_DATA_HELD_ITEM, NULL);
    v1 = BoxPokemon_GetValue(v4[1], MON_DATA_HELD_ITEM, NULL);

    if ((v0 != Unk_ov5_021F9F6C[v2][1]) && (v1 != Unk_ov5_021F9F6C[v2][1])) {
        param0 = Unk_ov5_021F9F6C[v2][2];
    }

    return param0;
}

static void ov5_021E6BD0 (Pokemon * param0, UnkStruct_02026310 * param1)
{
    int v0, v1;
    BoxPokemon * v2[2];

    ov5_021E6668(param1, v2);

    v0 = BoxPokemon_GetValue(v2[0], MON_DATA_HELD_ITEM, NULL);
    v1 = BoxPokemon_GetValue(v2[1], MON_DATA_HELD_ITEM, NULL);

    if ((v0 == 236) || (v1 == 236)) {
        if (Pokemon_AddMove(param0, 344) == 0xffff) {
            Pokemon_ReplaceMove(param0, 344);
        }
    }
}

static u16 ov5_021E6C20 (UnkStruct_02026310 * param0, u8 param1[])
{
    u16 v0[2], v1, v2, v3, v4, v5;
    BoxPokemon * v6[2];

    ov5_021E6668(param0, v6);

    v2 = 0;

    for (v1 = 0; v1 < 2; v1++) {
        if ((v0[v1] = BoxPokemon_GetValue(v6[v1], MON_DATA_SPECIES, NULL)) == 132) {
            param1[0] = v1 ^ 1;
            param1[1] = v1;
        } else if (BoxPokemon_GetGender(v6[v1]) == 1) {
            param1[0] = v1;
            param1[1] = v1 ^ 1;
        }
    }

    v3 = v0[param1[0]];
    v4 = sub_02076F84(v3);

    if (v4 == 29) {
        if (sub_02026248(param0) & 0x8000) {
            v4 = 32;
        } else {
            v4 = 29;
        }
    }

    if (v4 == 314) {
        if (sub_02026248(param0) & 0x8000) {
            v4 = 313;
        } else {
            v4 = 314;
        }
    }

    if (v4 == 490) {
        v4 = 489;
    }

    if ((v0[param1[1]] == 132) && (BoxPokemon_GetGender(v6[param1[0]]) != 1)) {
        v5 = param1[1];
        param1[1] = param1[0];
        param1[0] = v5;
    }

    return v4;
}

void ov5_021E6CF0 (Pokemon * param0, u16 param1, u8 param2, TrainerInfo * param3, int param4, int param5)
{
    u8 v0, v1, v2;
    u16 v3;
    u8 v4 = PokemonPersonalData_GetSpeciesValue(param1, 19);
    Strbuf* v5;

    Pokemon_InitWith(param0, param1, 1, 32, 0, 0, 0, 0);

    v0 = 0;
    v3 = 4;

    Pokemon_SetValue(param0, 155, &v3);
    Pokemon_SetValue(param0, 9, &v4);
    Pokemon_SetValue(param0, 156, &v0);

    if (param2) {
        Pokemon_SetValue(param0, 152, &param2);
    }

    v2 = 1;
    Pokemon_SetValue(param0, 76, &v2);

    v5 = sub_0200B32C(494, 4);
    Pokemon_SetValue(param0, 119, v5);
    Strbuf_Free(v5);

    if (param4 == 4) {
        u32 v6 = TrainerInfo_ID(param3);
        u32 v7 = TrainerInfo_Gender(param3);
        Strbuf* v8 = TrainerInfo_NameNewStrbuf(param3, 32);

        Pokemon_SetValue(param0, 145, v8);
        Pokemon_SetValue(param0, 7, &v6);
        Pokemon_SetValue(param0, 157, &v7);
        Strbuf_Free(v8);
    }

    sub_0209304C(param0, param3, param4, param5, 0);
}

void ov5_021E6DE8 (Pokemon * param0, u16 param1, UnkStruct_02026310 * param2, u32 param3, u8 param4)
{
    u8 v0;
    u16 v1;
    u32 v2;
    Strbuf* v3;
    u8 v4 = PokemonPersonalData_GetSpeciesValue(param1, 19);

    v2 = sub_02026248(param2);

    if (sub_02026280(param2)) {
        int v5;

        if (Pokemon_IsPersonalityShiny(param3, v2) == 0) {
            for (v5 = 0; v5 < 4; v5++) {
                v2 = ARNG_Next(v2);

                if (Pokemon_IsPersonalityShiny(param3, v2)) {
                    break;
                }
            }
        } else {
            (void)0;
        }
    }

    Pokemon_InitWith(param0, param1, 1, 32, 1, v2, 0, 0);

    v0 = 0;
    v1 = 4;

    Pokemon_SetValue(param0, 155, &v1);
    Pokemon_SetValue(param0, 9, &v4);
    Pokemon_SetValue(param0, 156, &v0);
    Pokemon_SetValue(param0, 112, &param4);

    v3 = sub_0200B32C(494, 4);

    Pokemon_SetValue(param0, 119, v3);
    Strbuf_Free(v3);
}

void ov5_021E6EA8 (UnkStruct_02026310 * param0, Party * param1, TrainerInfo * param2)
{
    u16 v0;
    u8 v1[2], v2;
    Pokemon * v3 = Pokemon_New(4);

    v0 = ov5_021E6C20(param0, v1);
    v0 = ov5_021E6B54(v0, param0);

    {
        u32 v4 = TrainerInfo_ID(param2);
        BoxPokemon * v5 = ov5_021E622C(param0, v1[0]);
        u8 v6 = BoxPokemon_GetValue(v5, MON_DATA_FORM, NULL);

        ov5_021E6DE8(v3, v0, param0, v4, v6);
    }

    ov5_021E67B0(v3, param0);
    ov5_021E6948(v3, ov5_021E622C(param0, v1[1]), ov5_021E622C(param0, v1[0]));

    sub_0209304C(v3, param2, 3, sub_02017070(1, 0), 4);

    if (v0 == 172) {
        ov5_021E6BD0(v3, param0);
    }

    v2 = 1;
    Pokemon_SetValue(v3, 76, &v2);

    Party_AddPokemon(param1, v3);
    ov5_021E6B40(param0);
    Heap_FreeToHeap(v3);
}

static int ov5_021E6F6C (Party * param0)
{
    u8 v0;
    u8 v1;
    int v2;

    v2 = Party_GetCurrentCount(param0);

    for (v0 = 0; v0 < v2; v0++) {
        if (Pokemon_GetValue(Party_GetPokemonBySlotIndex(param0, v0), MON_DATA_173, NULL) == 0) {
            v1 = Pokemon_GetValue(Party_GetPokemonBySlotIndex(param0, v0), MON_DATA_ABILITY, NULL);

            if ((v1 == 40) || (v1 == 49)) {
                return 2;
            }
        }
    }

    return 1;
}

static u8 ov5_021E6FC0 (u16 * param0, u16 * param1)
{
    int v0, v1;

    for (v0 = 0; v0 < 2; v0++) {
        for (v1 = 0; v1 < 2; v1++) {
            if (param0[v0] == param1[v1]) {
                return 1;
            }
        }
    }

    return 0;
}

static u8 ov5_021E6FF0 (BoxPokemon ** param0)
{
    u16 v0[2][2], v1[2];
    u32 v2[2], v3[2], v4, v5;

    for (v5 = 0; v5 < 2; v5++) {
        v1[v5] = BoxPokemon_GetValue(param0[v5], MON_DATA_SPECIES, NULL);
        v2[v5] = BoxPokemon_GetValue(param0[v5], MON_DATA_OT_ID, NULL);
        v4 = BoxPokemon_GetValue(param0[v5], MON_DATA_PERSONALITY, NULL);
        v3[v5] = Pokemon_GetGenderOf(v1[v5], v4);
        v0[v5][0] = PokemonPersonalData_GetSpeciesValue(v1[v5], 22);
        v0[v5][1] = PokemonPersonalData_GetSpeciesValue(v1[v5], 23);
    }

    if ((v0[0][0] == 15) || (v0[1][0] == 15)) {
        return 0;
    }

    if ((v0[0][0] == 13) && (v0[1][0] == 13)) {
        return 0;
    }

    if ((v0[0][0] == 13) || (v0[1][0] == 13)) {
        if (v2[0] == v2[1]) {
            return 20;
        } else {
            return 50;
        }
    }

    if (v3[0] == v3[1]) {
        return 0;
    }

    if ((v3[0] == 2) || (v3[1] == 2)) {
        return 0;
    }

    if (ov5_021E6FC0(v0[0], v0[1]) == 0) {
        return 0;
    }

    if (v1[0] == v1[1]) {
        if (v2[0] != v2[1]) {
            return 70;
        } else {
            return 50;
        }
    } else {
        if (v2[0] != v2[1]) {
            return 50;
        } else {
            return 20;
        }
    }

    return 0;
}

static u8 ov5_021E70FC (UnkStruct_02026310 * param0)
{
    BoxPokemon * v0[2];

    ov5_021E6668(param0, v0);
    return ov5_021E6FF0(v0);
}

static const u16 Unk_ov5_021F9F54[] = {
    0x70,
    0xD6,
    0x12F,
    0x191,
    0x1F5,
    0x263,
    0x2C3,
    0x335,
    0x38B,
    0x3A0,
    0x461,
    0x4BE
};

static int ov5_021E7110 (UnkStruct_0203CDB0 * param0)
{
    int v0 = sub_02055BB8(param0) * 100 + sub_02055BC4(param0);
    int v1;

    if (sub_02055C40(param0)) {
        return 255;
    }

    for (v1 = 0; v1 < NELEMS(Unk_ov5_021F9F54); v1++) {
        if (Unk_ov5_021F9F54[v1] == v0) {
            return 230;
        }
    }

    return 255;
}

BOOL ov5_021E7154 (UnkStruct_02026310 * param0, Party * param1, UnkStruct_0203CDB0 * param2)
{
    u32 v0, v1, v2, v3, v4;
    u32 v5 = 0, v6;
    int v7;
    BoxPokemon * v8[2];

    ov5_021E6668(param0, v8);

    v2 = 0;

    for (v0 = 0; v0 < 2; v0++) {
        if (BoxPokemon_GetValue(v8[v0], MON_DATA_172, NULL) != 0) {
            sub_02026260(sub_02026218(param0, v0), 1);
            v2++;
        }
    }

    if ((sub_02026234(param0) == 0) && (v2 == 2)) {
        if ((sub_02026228(sub_02026218(param0, 1)) & 0xff) == 0xff) {
            v3 = ov5_021E70FC(param0);
            v4 = LCRNG_Next();
            v4 = (v4 * 100) / 0xffff;

            if (v3 > v4) {
                ov5_021E6720(param0);
            }
        }
    }

    v6 = sub_02026250(param0);
    sub_02026278(param0, ++v6);

    if (v6 == ov5_021E7110(param2)) {
        sub_02026278(param0, 0);
        v7 = ov5_021E6F6C(param1);

        for (v0 = 0; v0 < Party_GetCurrentCount(param1); v0++) {
            Pokemon * v9 = Party_GetPokemonBySlotIndex(param1, v0);

            if (Pokemon_GetValue(v9, MON_DATA_IS_EGG, NULL)) {
                if (Pokemon_GetValue(v9, MON_DATA_3, NULL)) {
                    continue;
                }

                v1 = Pokemon_GetValue(v9, MON_DATA_FRIENDSHIP, NULL);

                if (v1 != 0) {
                    if (v1 >= v7) {
                        v1 -= v7;
                    } else {
                        v1--;
                    }

                    Pokemon_SetValue(v9, 9, (u8 *)&v1);
                } else {
                    return 1;
                }
            }
        }
    }

    return 0;
}

Pokemon * ov5_021E7278 (Party * param0)
{
    int v0;
    Pokemon * v1;
    int v2 = Party_GetCurrentCount(param0);

    for (v0 = 0; v0 < v2; v0++) {
        v1 = Party_GetPokemonBySlotIndex(param0, v0);

        if (Pokemon_GetValue(v1, MON_DATA_IS_EGG, NULL)
            && (Pokemon_GetValue(v1, MON_DATA_FRIENDSHIP, NULL) == 0)) {
            return v1;
        }
    }

    return NULL;
}

void ov5_021E72BC (UnkStruct_02026310 * param0, UnkStruct_0200B358 * param1)
{
    BoxPokemon * v0[2];
    u16 v1[10 + 1];

    ov5_021E6668(param0, v0);

    if (BoxPokemon_GetValue(v0[0], MON_DATA_SPECIES, NULL) != 0) {
        sub_0200B5CC(param1, 0, v0[0]);
        sub_0200B5EC(param1, 2, v0[0]);
    }

    if (BoxPokemon_GetValue(v0[1], MON_DATA_SPECIES, NULL) != 0) {
        sub_0200B5CC(param1, 1, v0[1]);
    }
}

void ov5_021E7308 (UnkStruct_02026310 * param0, u32 param1, u32 param2, u32 param3, u8 param4, UnkStruct_0200B358 * param5)
{
    UnkStruct_02026218 * v0;
    BoxPokemon * v1;
    u8 v2, v3;
    u16 v4;

    v0 = sub_02026218(param0, param4);
    v1 = ov5_021E622C(param0, param4);

    sub_0200B5CC(param5, param1, v1);

    v2 = ov5_021E6520(v1, sub_02026228(v0));
    sub_0200B60C(param5, param2, v2, 3, 0, 1);
    v3 = BoxPokemon_GetValue(v1, MON_DATA_GENDER, NULL);

    if (v3 != 2) {
        v4 = BoxPokemon_GetValue(v1, MON_DATA_SPECIES, NULL);

        if (((v4 == 29) || (v4 == 32)) && (BoxPokemon_GetValue(v1, MON_DATA_HAS_NICKNAME, NULL) == 0)) {
            v3 = 2;
        }
    }

    sub_0200BCF0(param5, param3, v3);
}

u16 ov5_021E73A0 (Party * param0, int param1, UnkStruct_0200B358 * param2)
{
    Pokemon * v0 = Party_GetPokemonBySlotIndex(param0, param1);

    sub_0200B5CC(param2, 0, Pokemon_GetBoxPokemon(v0));
    return Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL);
}

u8 ov5_021E73C8 (UnkStruct_02026310 * param0)
{
    u8 v0;

    if (sub_02026234(param0)) {
        return 1;
    }

    if ((v0 = ov5_021E6238(param0))) {
        return v0 + 1;
    }

    return 0;
}

u8 ov5_021E73F0 (u32 param0)
{
    switch (param0) {
    case 0:
        return 3;
    case 20:
        return 2;
    case 50:
        return 1;
    case 70:
        return 0;
    }

    return 0;
}

extern u32 ov5_021E7420 (UnkStruct_02026310 * param0)
{
    u8 v0, v1;

    v0 = ov5_021E70FC(param0);
    v1 = ov5_021E73F0(v0);

    return v1;
}

static void ov5_021E742C (Pokemon * param0, int param1)
{
    u16 v0;
    u16 v1[4];
    u8 v2[4];
    u32 v3, v4;
    u8 v5[6], v6;
    u8 v7, v8, v9, v10, v11, v12, v13, v14;
    Strbuf* v15 = Strbuf_Init(7 + 1, param1);
    Pokemon * v16 = Pokemon_New(param1);

    v0 = Pokemon_GetValue(param0, MON_DATA_SPECIES, NULL);

    for (v7 = 0; v7 < 4; v7++) {
        v1[v7] = Pokemon_GetValue(param0, MON_DATA_MOVE1 + v7, NULL);
        v2[v7] = Pokemon_GetValue(param0, MON_DATA_MOVE1_CUR_PP + v7, NULL);
    }

    v3 = Pokemon_GetValue(param0, MON_DATA_PERSONALITY, NULL);

    for (v7 = 0; v7 < 6; v7++) {
        v5[v7] = Pokemon_GetValue(param0, MON_DATA_HP_IV + v7, NULL);
    }

    v8 = Pokemon_GetValue(param0, MON_DATA_LANGUAGE, NULL);
    v9 = Pokemon_GetValue(param0, MON_DATA_MET_GAME, NULL);
    v10 = Pokemon_GetValue(param0, MON_DATA_11, NULL);
    v6 = Pokemon_GetValue(param0, MON_DATA_POKERUS, NULL);
    v12 = Pokemon_GetValue(param0, MON_DATA_FATEFUL_ENCOUNTER, NULL);

    Pokemon_GetValue(param0, MON_DATA_145, v15);

    v14 = Pokemon_GetValue(param0, MON_DATA_OT_GENDER, NULL);
    v4 = Pokemon_GetValue(param0, MON_DATA_OT_ID, NULL);
    v13 = Pokemon_GetValue(param0, MON_DATA_FORM, NULL);

    if (v0 == 490) {
        int v17 = Pokemon_GetValue(param0, MON_DATA_MET_LOCATION, NULL);

        if (v17 == sub_02017070(2, 1)) {
            while (Pokemon_IsPersonalityShiny(v4, v3)) {
                v3 = ARNG_Next(v3);
            }
        }
    }

    Pokemon_InitWith(v16, v0, 1, 32, 1, v3, 0, 0);

    for (v7 = 0; v7 < 4; v7++) {
        Pokemon_SetValue(v16, 54 + v7, &(v1[v7]));
        Pokemon_SetValue(v16, 58 + v7, &(v2[v7]));
    }

    for (v7 = 0; v7 < 6; v7++) {
        Pokemon_SetValue(v16, 70 + v7, &(v5[v7]));
    }

    Pokemon_SetValue(v16, 12, &v8);
    Pokemon_SetValue(v16, 122, &v9);
    Pokemon_SetValue(v16, 11, &v10);

    v11 = 120;

    Pokemon_SetValue(v16, 9, &v11);
    Pokemon_SetValue(v16, 154, &v6);
    Pokemon_SetValue(v16, 110, &v12);
    Pokemon_SetValue(v16, 145, v15);
    Pokemon_SetValue(v16, 157, &v14);
    Pokemon_SetValue(v16, 7, &v4);
    Pokemon_SetValue(v16, 112, &v13);

    {
        u16 v18;
        u8 v19, v20, v21;

        v18 = Pokemon_GetValue(param0, MON_DATA_MET_LOCATION, NULL);
        v19 = Pokemon_GetValue(param0, MON_DATA_146, NULL);
        v20 = Pokemon_GetValue(param0, MON_DATA_147, NULL);
        v21 = Pokemon_GetValue(param0, MON_DATA_148, NULL);

        Pokemon_SetValue(v16, 152, &v18);
        Pokemon_SetValue(v16, 146, &v19);
        Pokemon_SetValue(v16, 147, &v20);
        Pokemon_SetValue(v16, 148, &v21);

        v18 = Pokemon_GetValue(param0, MON_DATA_153, NULL);
        v19 = Pokemon_GetValue(param0, MON_DATA_149, NULL);
        v20 = Pokemon_GetValue(param0, MON_DATA_150, NULL);
        v21 = Pokemon_GetValue(param0, MON_DATA_151, NULL);

        Pokemon_SetValue(v16, 153, &v18);
        Pokemon_SetValue(v16, 149, &v19);
        Pokemon_SetValue(v16, 150, &v20);
        Pokemon_SetValue(v16, 151, &v21);
    }

    Pokemon_Copy(v16, param0);
    Strbuf_Free(v15);
    Heap_FreeToHeap(v16);
}

void ov5_021E771C (Pokemon * param0, int param1)
{
    u8 v0, v1;
    u8 v2, v3;
    u16 v4;
    u16 v5[11];

    v0 = 70;
    v1 = 0;
    v2 = 4;
    v3 = 0;

    ov5_021E742C(param0, param1);
    Pokemon_SetValue(param0, 76, &v0);

    v4 = Pokemon_GetValue(param0, MON_DATA_SPECIES, NULL);

    MessageLoader_GetSpeciesName(v4, 0, v5);
    Pokemon_SetValue(param0, 117, v5);
    Pokemon_SetValue(param0, 77, &v1);
    Pokemon_SetValue(param0, 155, &v2);
    Pokemon_SetValue(param0, 156, &v3);
    Pokemon_CalcLevelAndStats(param0);
}

u32 ov5_021E7790 (BoxPokemon ** param0)
{
    return ov5_021E73F0(ov5_021E6FF0(param0));
}
