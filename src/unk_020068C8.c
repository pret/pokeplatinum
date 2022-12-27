#include <nitro.h>
#include <string.h>

#include "unk_020068C8.h"
#include "unk_02017E74.h"

typedef struct UnkStruct_02006C24_t {
    FSFile unk_00;
    u32 unk_AC;
    u32 unk_B0;
    u16 unk_B4;
} UnkStruct_02006C24;


static const char *Unk_02100498[] = {
	{ "battle/skill/waza_seq.narc" },
	{ "battle/skill/sub_seq.narc" },
	{ "poketool/personal/pl_personal.narc" },
	{ "poketool/personal/pl_growtbl.narc" },
	{ "poketool/pokegra/pl_pokegra.narc" },
	{ "poketool/pokegra/height.narc" },
	{ "poketool/trgra/trbgra.narc" },
	{ "battle/graphic/pl_batt_bg.narc" },
	{ "wazaeffect/we.arc" },
	{ "poketool/waza/pl_waza_tbl.narc" },
	{ "fielddata/script/scr_seq.narc" },
	{ "msgdata/scenario/scr_msg.narc" },
	{ "graphic/poketch.narc" },
	{ "graphic/pl_bag_gra.narc" },
	{ "graphic/pl_font.narc" },
	{ "itemtool/itemdata/pl_item_data.narc" },
	{ "itemtool/itemdata/item_icon.narc" },
	{ "graphic/tmap_gra.narc" },
	{ "graphic/box.narc" },
	{ "poketool/icongra/pl_poke_icon.narc" },
	{ "graphic/pl_plist_gra.narc" },
	{ "wazaeffect/effectclact/wechar.narc" },
	{ "wazaeffect/effectclact/wepltt.narc" },
	{ "wazaeffect/effectclact/wecell.narc" },
	{ "wazaeffect/effectclact/wecellanm.narc" },
	{ "graphic/imageclip.narc" },
	{ "msgdata/pl_msg.narc" },
	{ "battle/graphic/pl_batt_obj.narc" },
	{ "data/underg_radar.narc" },
	{ "wazaeffect/effectdata/waza_particle.narc" },
	{ "battle/skill/be_seq.narc" },
	{ "data/namein.narc" },
	{ "fielddata/eventdata/zone_event.narc" },
	{ "poketool/personal/wotbl.narc" },
	{ "poketool/personal/evo.narc" },
	{ "graphic/fontoam.narc" },
	{ "graphic/field_board.narc" },
	{ "fielddata/encountdata/d_enc_data.narc" },
	{ "graphic/pl_winframe.narc" },
	{ "graphic/pl_pst_gra.narc" },
	{ "fielddata/build_model/build_model.narc" },
	{ "fielddata/mapmatrix/map_matrix.narc" },
	{ "fielddata/areadata/area_data.narc" },
	{ "fielddata/areadata/area_build_model/area_build.narc" },
	{ "fielddata/areadata/area_map_tex/map_tex_set.narc" },
	{ "contest/graphic/contest_bg.narc" },
	{ "contest/graphic/contest_obj.narc" },
	{ "data/ugeffect_obj_graphic.narc" },
	{ "demo/title/titledemo.narc" },
	{ "fielddata/areadata/area_move_model/move_model_list.narc" },
	{ "data/ug_trap.narc" },
	{ "graphic/trainer_case.narc" },
	{ "data/ug_fossil.narc" },
	{ "graphic/ntag_gra.narc" },
	{ "data/tradelist.narc" },
	{ "data/ug_parts.narc" },
	{ "graphic/opening.narc" },
	{ "poketool/trainer/trdata.narc" },
	{ "poketool/trainer/trpoke.narc" },
	{ "poketool/trmsg/trtbl.narc" },
	{ "poketool/trgra/trfgra.narc" },
	{ "particledata/particledata.narc" },
	{ "graphic/shop_gra.narc" },
	{ "wazaeffect/we_sub.narc" },
	{ "data/ug_anim.narc" },
	{ "data/weather_sys.narc" },
	{ "graphic/menu_gra.narc" },
	{ "fielddata/land_data/land_data.narc" },
	{ "itemtool/itemdata/nuts_data.narc" },
	{ "resource/eng/zukan/zukan.narc" },
	{ "poketool/pokefoot/pokefoot.narc" },
	{ "fielddata/areadata/area_build_model/areabm_texset.narc" },
	{ "battle/graphic/pl_b_plist_gra.narc" },
	{ "graphic/config_gra.narc" },
	{ "graphic/unionroom.narc" },
	{ "application/zukanlist/zkn_data/zukan_data.narc" },
	{ "graphic/pmsi.narc" },
	{ "battle/graphic/b_bag_gra.narc" },
	{ "graphic/oekaki.narc" },
	{ "graphic/mail_gra.narc" },
	{ "graphic/f_note_gra.narc" },
	{ "data/mmodel/mmodel.narc" },
	{ "graphic/ev_pokeselect.narc" },
	{ "graphic/poru_gra.narc" },
	{ "graphic/touch_subwindow.narc" },
	{ "graphic/fld_comact.narc" },
	{ "graphic/record.narc" },
	{ "graphic/porudemo.narc" },
	{ "graphic/poruact.narc" },
	{ "graphic/pl_wifinote.narc" },
	{ "contest/data/contest_data.narc" },
	{ "application/custom_ball/data/cb_data.narc" },
	{ "data/wifip2pmatch.narc" },
	{ "graphic/demo_trade.narc" },
	{ "pokeanime/pl_poke_anm.narc" },
	{ "graphic/mysign.narc" },
	{ "fielddata/mm_list/move_model_list.narc" },
	{ "data/field_cutin.narc" },
	{ "data/demo_climax.narc" },
	{ "wazaeffect/effectdata/ball_particle.narc" },
	{ "wazaeffect/pt_debug/debug_particle.narc" },
	{ "graphic/dendou_pc.narc" },
	{ "application/wifi_earth/wifi_earth_place.narc" },
	{ "battle/tr_ai/tr_ai_seq.narc" },
	{ "graphic/worldtrade.narc" },
	{ "graphic/dendou_demo.narc" },
	{ "arc/encdata_ex.narc" },
	{ "data/mmodel/fldeff.narc" },
	{ "battle/graphic/vs_demo_gra.narc" },
	{ "poketool/pl_pokezukan.narc" },
	{ "arc/bm_anime.narc" },
	{ "arc/bm_anime_list.narc" },
	{ "graphic/field_encounteffect.narc" },
	{ "graphic/waza_oshie_gra.narc" },
	{ "poketool/pokeanm/pl_pokeanm.narc" },
	{ "fielddata/pokemon_trade/fld_trade.narc" },
	{ "graphic/mystery.narc" },
	{ "poketool/pokegra/pl_otherpoke.narc" },
	{ "demo/egg/data/egg_data.narc" },
	{ "demo/egg/data/particle/egg_demo_particle.narc" },
	{ "arc/ship_demo.narc" },
	{ "poketool/pokegra/height_o.narc" },
	{ "graphic/nutmixer.narc" },
	{ "graphic/btower.narc" },
	{ "demo/shinka/data/particle/shinka_demo_particle.narc" },
	{ "demo/intro/intro.narc" },
	{ "arc/tv.narc" },
	{ "graphic/ending.narc" },
	{ "demo/title/op_demo.narc" },
	{ "application/wifi_earth/wifi_earth.narc" },
	{ "graphic/ranking.narc" },
	{ "arc/ppark.narc" },
	{ "demo/syoujyou/syoujyou.narc" },
	{ "data/slot.narc" },
	{ "battle/b_tower/btdtr.narc" },
	{ "battle/b_tower/btdpm.narc" },
	{ "demo/intro/intro_tv.narc" },
	{ "poketool/trmsg/trtblofs.narc" },
	{ "poketool/pokegra/poke_yofs.narc" },
	{ "application/zukanlist/zkn_data/zukan_enc_diamond.narc" },
	{ "application/zukanlist/zkn_data/zukan_enc_pearl.narc" },
	{ "graphic/hiden_effect.narc" },
	{ "poketool/pokegra/poke_shadow.narc" },
	{ "fielddata/encountdata/p_enc_data.narc" },
	{ "poketool/pokegra/poke_shadow_ofx.narc" },
	{ "poketool/shinzukan.narc" },
	{ "graphic/wifi2dchar.narc" },
	{ "poketool/poke_edit/pl_poke_data.narc" },
	{ "debug/cb_edit/d_test.narc" },
	{ "frontier/script/fr_script.narc" },
	{ "resource/eng/frontier_graphic/frontier_bg.narc" },
	{ "resource/eng/frontier_graphic/frontier_obj.narc" },
	{ "application/custom_ball/edit/pl_cb_data.narc" },
	{ "graphic/wifi_unionobj.narc" },
	{ "data/guru2.narc" },
	{ "data/fldtanime.narc" },
	{ "arc/ship_demo_pl.narc" },
	{ "particledata/pl_frontier/frontier_particle.narc" },
	{ "graphic/bucket.narc" },
	{ "arc/codein_gra.narc" },
	{ "arc/area_win_gra.narc" },
	{ "fielddata/encountdata/pl_enc_data.narc" },
	{ "resource/eng/batt_rec/batt_rec_gra.narc" },
	{ "graphic/worldtimer.narc" },
	{ "arc/manene.narc" },
	{ "poketool/pokegra/pokegra.narc" },
	{ "poketool/pokegra/otherpoke.narc" },
	{ "poketool/pokegra/dp_height.narc" },
	{ "poketool/pokegra/dp_height_o.narc" },
	{ "graphic/lobby_news.narc" },
	{ "arc/email_gra.narc" },
	{ "resource/eng/wifi_lobby_minigame/wlmngm_tool.narc" },
	{ "arc/demo_tengan_gra.narc" },
	{ "application/balloon/graphic/balloon_gra.narc" },
	{ "application/wifi_lobby/map_conv/wflby_map.narc" },
	{ "graphic/wifi_lobby.narc" },
	{ "data/arealight.narc" },
	{ "data/ugroundeffect.narc" },
	{ "battle/b_pl_tower/pl_btdtr.narc" },
	{ "battle/b_pl_tower/pl_btdpm.narc" },
	{ "battle/b_pl_stage/pl_bsdpm.narc" },
	{ "fielddata/tornworld/tw_arc.narc" },
	{ "fielddata/tornworld/tw_arc_attr.narc" },
	{ "data/tw_arc_etc.narc" },
	{ "resource/eng/scratch/scratch.narc" },
	{ "particledata/pl_pokelist/pokelist_particle.narc" },
	{ "graphic/wifi_lobby_other.narc" },
	{ "graphic/footprint_board.narc" },
	{ "application/zukanlist/zkn_data/zukan_enc_platinum.narc" },
	{ "application/bucket/ballslow_data.narc" },
	{ "particledata/pl_etc/pl_etc_particle.narc" },
	{ "resource/eng/pms_aikotoba/pms_aikotoba.narc" },
	{ "graphic/unionobj2d_onlyfront.narc" },
	{ "graphic/library_tv.narc" },
	{ "application/zukanlist/zkn_data/zukan_data_gira.narc" }
};


static void sub_020068C8(void * param0, const char * param1, int param2, int param3, int param4);
static void * sub_020069A8(const char * param0, int param1, int param2, int param3, int param4, int param5);
void sub_02006AA4(void * param0, int param1, int param2);
void * sub_02006AC0(int param0, int param1, int param2);
void * sub_02006ADC(int param0, int param1, int param2);
void sub_02006AFC(void * param0, int param1, int param2, int param3, int param4);
void * sub_02006B18(int param0, int param1, int param2, int param3, int param4);
void * sub_02006B38(int param0, int param1, int param2, int param3, int param4);
u32 sub_02006B58(int param0, int param1);
void sub_02006E18(UnkStruct_02006C24 * param0, u32 param1, void * param2);

static void sub_020068C8 (void * param0, const char * param1, int param2, int param3, int param4)
{
    FSFile v0;
    u32 v1 = 0;
    u32 v2 = 0;
    u32 v3 = 0;
    u32 v4 = 0;
    u32 v5 = 0;
    u32 v6 = 0;
    u16 v7 = 0;

    FS_InitFile(&v0);
    FS_OpenFile(&v0, param1);
    FS_SeekFile(&v0, 12, FS_SEEK_SET);
    FS_ReadFile(&v0, &v1, 2);

    v2 = v1;

    FS_SeekFile(&v0, v2 + 4, FS_SEEK_SET);
    FS_ReadFile(&v0, &v1, 4);
    FS_ReadFile(&v0, &v7, 2);

    GF_ASSERT(v7 > param2);

    v3 = v2 + v1;

    FS_SeekFile(&v0, v3 + 4, FS_SEEK_SET);
    FS_ReadFile(&v0, &v1, 4);

    v4 = v3 + v1;

    FS_SeekFile(&v0, v2 + 12 + param2 * 8, FS_SEEK_SET);
    FS_ReadFile(&v0, &v5, 4);
    FS_ReadFile(&v0, &v6, 4);
    FS_SeekFile(&v0, v4 + 8 + v5 + param3, FS_SEEK_SET);

    if (param4) {
        v1 = param4;
    } else {
        v1 = v6 - v5;
    }

    GF_ASSERT(v1 != 0);

    FS_ReadFile(&v0, param0, v1);
    FS_CloseFile(&v0);
}

static void * sub_020069A8 (const char * param0, int param1, int param2, int param3, int param4, int param5)
{
    FSFile v0;
    u32 v1 = 0;
    u32 v2 = 0;
    u32 v3 = 0;
    u32 v4 = 0;
    u32 v5 = 0;
    u32 v6 = 0;
    void * v7;
    u16 v8 = 0;

    FS_InitFile(&v0);
    FS_OpenFile(&v0, param0);
    FS_SeekFile(&v0, 12, FS_SEEK_SET);
    FS_ReadFile(&v0, &v1, 2);

    v2 = v1;

    FS_SeekFile(&v0, v2 + 4, FS_SEEK_SET);
    FS_ReadFile(&v0, &v1, 4);
    FS_ReadFile(&v0, &v8, 2);

    GF_ASSERT(v8 > param1);

    v3 = v2 + v1;

    FS_SeekFile(&v0, v3 + 4, FS_SEEK_SET);
    FS_ReadFile(&v0, &v1, 4);

    v4 = v3 + v1;

    FS_SeekFile(&v0, v2 + 12 + param1 * 8, FS_SEEK_SET);
    FS_ReadFile(&v0, &v5, 4);
    FS_ReadFile(&v0, &v6, 4);
    FS_SeekFile(&v0, v4 + 8 + v5 + param3, FS_SEEK_SET);

    if (param4) {
        v1 = param4;
    } else {
        v1 = v6 - v5;
    }

    GF_ASSERT(v1 != 0);

    if (param5 == 0) {
        v7 = sub_02018144(param2, v1);
    } else {
        v7 = sub_02018184(param2, v1);
    }

    FS_ReadFile(&v0, v7, v1);
    FS_CloseFile(&v0);

    return v7;
}

void sub_02006AA4 (void * param0, int param1, int param2)
{
    sub_020068C8(param0, Unk_02100498[param1], param2, 0, 0);
}

void * sub_02006AC0 (int param0, int param1, int param2)
{
    return sub_020069A8(Unk_02100498[param0], param1, param2, 0, 0, 0);
}

void * sub_02006ADC (int param0, int param1, int param2)
{
    return sub_020069A8(Unk_02100498[param0], param1, param2, 0, 0, 1);
}

void sub_02006AFC (void * param0, int param1, int param2, int param3, int param4)
{
    sub_020068C8(param0, Unk_02100498[param1], param2, param3, param4);
}

void * sub_02006B18 (int param0, int param1, int param2, int param3, int param4)
{
    return sub_020069A8(Unk_02100498[param0], param1, param2, param3, param4, 0);
}

void * sub_02006B38 (int param0, int param1, int param2, int param3, int param4)
{
    return sub_020069A8(Unk_02100498[param0], param1, param2, param3, param4, 1);
}

u32 sub_02006B58 (int param0, int param1)
{
    FSFile v0;
    u32 v1 = 0;
    u32 v2 = 0;
    u32 v3 = 0;
    u32 v4 = 0;
    u32 v5 = 0;
    u32 v6 = 0;
    void * v7;
    u16 v8 = 0;

    FS_InitFile(&v0);
    FS_OpenFile(&v0, Unk_02100498[param0]);
    FS_SeekFile(&v0, 12, FS_SEEK_SET);
    FS_ReadFile(&v0, &v1, 2);

    v2 = v1;

    FS_SeekFile(&v0, v2 + 4, FS_SEEK_SET);
    FS_ReadFile(&v0, &v1, 4);
    FS_ReadFile(&v0, &v8, 2);

    GF_ASSERT(v8 > param1);

    v3 = v2 + v1;

    FS_SeekFile(&v0, v3 + 4, FS_SEEK_SET);
    FS_ReadFile(&v0, &v1, 4);

    v4 = v3 + v1;

    FS_SeekFile(&v0, v2 + 12 + param1 * 8, FS_SEEK_SET);
    FS_ReadFile(&v0, &v5, 4);
    FS_ReadFile(&v0, &v6, 4);
    FS_SeekFile(&v0, v4 + 8 + v5, FS_SEEK_SET);

    v1 = v6 - v5;

    GF_ASSERT(v1 != 0);

    return v1;
}

UnkStruct_02006C24 * sub_02006C24 (u32 param0, u32 param1)
{
    UnkStruct_02006C24 * v0 = sub_02018144(param1, sizeof(UnkStruct_02006C24));

    if (v0) {
        u32 v1, v2;

        v0->unk_AC = 0;

        FS_InitFile(&(v0->unk_00));
        FS_OpenFile(&(v0->unk_00), Unk_02100498[param0]);
        FS_SeekFile(&(v0->unk_00), 12, FS_SEEK_SET);
        FS_ReadFile(&(v0->unk_00), &(v0->unk_AC), 2);
        FS_SeekFile(&(v0->unk_00), v0->unk_AC + 4, FS_SEEK_SET);
        FS_ReadFile(&(v0->unk_00), &v2, 4);
        FS_ReadFile(&(v0->unk_00), &(v0->unk_B4), 2);

        v1 = v0->unk_AC + v2;

        FS_SeekFile(&(v0->unk_00), v1 + 4, FS_SEEK_SET);
        FS_ReadFile(&(v0->unk_00), &v2, 4);

        v0->unk_B0 = v1 + v2;
    }

    return v0;
}

void sub_02006CA8 (UnkStruct_02006C24 * param0)
{
    FS_CloseFile(&(param0->unk_00));
    sub_020181C4(param0);
}

void * sub_02006CB8 (UnkStruct_02006C24 * param0, u32 param1, u32 param2)
{
    u32 v0, v1;
    void * v2;

    GF_ASSERT(param0->unk_B4 > param1);

    FS_SeekFile(&(param0->unk_00), param0->unk_AC + 12 + param1 * 8, FS_SEEK_SET);
    FS_ReadFile(&(param0->unk_00), &v0, 4);
    FS_ReadFile(&(param0->unk_00), &v1, 4);
    FS_SeekFile(&(param0->unk_00), param0->unk_B0 + 8 + v0, FS_SEEK_SET);

    v2 = sub_02018144(param2, v1 - v0);

    if (v2) {
        FS_ReadFile(&(param0->unk_00), v2, v1 - v0);
    }

    return v2;
}

void sub_02006D28 (UnkStruct_02006C24 * param0, u32 param1, void * param2)
{
    u32 v0, v1;

    GF_ASSERT(param0->unk_B4 > param1);

    FS_SeekFile(&(param0->unk_00), param0->unk_AC + 12 + param1 * 8, FS_SEEK_SET);
    FS_ReadFile(&(param0->unk_00), &v0, 4);
    FS_ReadFile(&(param0->unk_00), &v1, 4);
    FS_SeekFile(&(param0->unk_00), param0->unk_B0 + 8 + v0, FS_SEEK_SET);
    FS_ReadFile(&(param0->unk_00), param2, v1 - v0);
}

u32 sub_02006D84 (UnkStruct_02006C24 * param0, u32 param1)
{
    u32 v0, v1;

    GF_ASSERT(param0->unk_B4 > param1);

    FS_SeekFile(&(param0->unk_00), param0->unk_AC + 12 + param1 * 8, FS_SEEK_SET);
    FS_ReadFile(&(param0->unk_00), &v0, 4);
    FS_ReadFile(&(param0->unk_00), &v1, 4);

    return v1 - v0;
}

void sub_02006DC8 (UnkStruct_02006C24 * param0, u32 param1, u32 param2, u32 param3, void * param4)
{
    u32 v0;

    GF_ASSERT(param0->unk_B4 > param1);

    FS_SeekFile(&(param0->unk_00), param0->unk_AC + 12 + param1 * 8, FS_SEEK_SET);
    FS_ReadFile(&(param0->unk_00), &v0, 4);
    FS_SeekFile(&(param0->unk_00), param0->unk_B0 + 8 + v0 + param2, FS_SEEK_SET);
    FS_ReadFile(&(param0->unk_00), param4, param3);
}

void sub_02006E18 (UnkStruct_02006C24 * param0, u32 param1, void * param2)
{
    FS_ReadFile(&(param0->unk_00), param2, param1);
}

void sub_02006E28 (UnkStruct_02006C24 * param0, u32 param1)
{
    FS_SeekFile(&(param0->unk_00), param1, FS_SEEK_CUR);
}

u16 sub_02006E34 (UnkStruct_02006C24 * param0)
{
    return param0->unk_B4;
}
