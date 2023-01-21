#include <nitro.h>
#include <string.h>

#include "filesystem.h"
#include "heap.h"

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

static void ReadFromNarcMemberByPathAndIndex(void * dest, const char * path, int memberIndex, int offset, int bytesToRead);
static void * AllocAndReadFromNarcMemberByPathAndIndex(const char * path, int memberIndex, int heapID, int offset, int bytesToRead, BOOL allocAtEnd);

static void ReadFromNarcMemberByPathAndIndex (void * dest, const char * path, int memberIndex, int offset, int bytesToRead)
{
    FSFile file;
    u32 btafStart = 0;
    u32 btnfStart = 0;
    u32 gmifStart = 0;
    u32 chunkSize = 0;
    u32 fileStart = 0;
    u32 fileEnd = 0;
    u16 fileCount = 0;

    FS_InitFile(&file);
    FS_OpenFile(&file, path);
    FS_SeekFile(&file, 12, FS_SEEK_SET);
    FS_ReadFile(&file, &btafStart, 2);

    btnfStart = btafStart;

    FS_SeekFile(&file, btnfStart + 4, FS_SEEK_SET);
    FS_ReadFile(&file, &btafStart, 4);
    FS_ReadFile(&file, &fileCount, 2);

    GF_ASSERT(fileCount > memberIndex);

    gmifStart = btnfStart + btafStart;

    FS_SeekFile(&file, gmifStart + 4, FS_SEEK_SET);
    FS_ReadFile(&file, &btafStart, 4);

    chunkSize = gmifStart + btafStart;

    FS_SeekFile(&file, btnfStart + 12 + memberIndex * 8, FS_SEEK_SET);
    FS_ReadFile(&file, &fileStart, 4);
    FS_ReadFile(&file, &fileEnd, 4);
    FS_SeekFile(&file, chunkSize + 8 + fileStart + offset, FS_SEEK_SET);

    if (bytesToRead) {
        btafStart = bytesToRead;
    } else {
        btafStart = fileEnd - fileStart;
    }

    GF_ASSERT(btafStart != 0);

    FS_ReadFile(&file, dest, btafStart);
    FS_CloseFile(&file);
}

static void * AllocAndReadFromNarcMemberByPathAndIndex (const char * path, int memberIndex, int heapID, int offset, int bytesToRead, BOOL allocAtEnd)
{
    FSFile file;
    u32 btafStart = 0;
    u32 btnfStart = 0;
    u32 gmifStart = 0;
    u32 chunkSize = 0;
    u32 fileStart = 0;
    u32 fileEnd = 0;
    void * dest;
    u16 fileCount = 0;

    FS_InitFile(&file);
    FS_OpenFile(&file, path);
    FS_SeekFile(&file, 12, FS_SEEK_SET);
    FS_ReadFile(&file, &btafStart, 2);

    btnfStart = btafStart;

    FS_SeekFile(&file, btnfStart + 4, FS_SEEK_SET);
    FS_ReadFile(&file, &btafStart, 4);
    FS_ReadFile(&file, &fileCount, 2);

    GF_ASSERT(fileCount > memberIndex);

    gmifStart = btnfStart + btafStart;

    FS_SeekFile(&file, gmifStart + 4, FS_SEEK_SET);
    FS_ReadFile(&file, &btafStart, 4);

    chunkSize = gmifStart + btafStart;

    FS_SeekFile(&file, btnfStart + 12 + memberIndex * 8, FS_SEEK_SET);
    FS_ReadFile(&file, &fileStart, 4);
    FS_ReadFile(&file, &fileEnd, 4);
    FS_SeekFile(&file, chunkSize + 8 + fileStart + offset, FS_SEEK_SET);

    if (bytesToRead) {
        btafStart = bytesToRead;
    } else {
        btafStart = fileEnd - fileStart;
    }

    GF_ASSERT(btafStart != 0);

    if (allocAtEnd == 0) {
        dest = AllocFromHeap(heapID, btafStart);
    } else {
        dest = AllocFromHeapAtEnd(heapID, btafStart);
    }

    FS_ReadFile(&file, dest, btafStart);
    FS_CloseFile(&file);

    return dest;
}

void ReadWholeNarcMemberByIndexPair (void * dest, int narcIndex, int memberIndex)
{
    ReadFromNarcMemberByPathAndIndex(dest, Unk_02100498[narcIndex], memberIndex, 0, 0);
}

void * AllocAndReadWholeNarcMemberByIndexPair (int narcIndex, int memberIndex, int heapID)
{
    return AllocAndReadFromNarcMemberByPathAndIndex(Unk_02100498[narcIndex], memberIndex, heapID, 0, 0, FALSE);
}

void * AllocAtEndAndReadWholeNarcMemberByIndexPair (int narcIndex, int memberIndex, int heapID)
{
    return AllocAndReadFromNarcMemberByPathAndIndex(Unk_02100498[narcIndex], memberIndex, heapID, 0, 0, TRUE);
}

void ReadFromNarcMemberByIndexPair (void * dest, int narcIndex, int memberIndex, int offset, int bytesToRead)
{
    ReadFromNarcMemberByPathAndIndex(dest, Unk_02100498[narcIndex], memberIndex, offset, bytesToRead);
}

void * AllocAndReadFromNarcMemberByIndexPair (int narcIndex, int memberIndex, int heapID, int offset, int bytesToRead)
{
    return AllocAndReadFromNarcMemberByPathAndIndex(Unk_02100498[narcIndex], memberIndex, heapID, offset, bytesToRead, FALSE);
}

void * AllocAtEndAndReadFromNarcMemberByIndexPair (int narcIndex, int memberIndex, int heapID, int offset, int bytesToRead)
{
    return AllocAndReadFromNarcMemberByPathAndIndex(Unk_02100498[narcIndex], memberIndex, heapID, offset, bytesToRead, TRUE);
}

u32 GetNarcMemberSizeByIndexPair (int narcIndex, int memberIndex)
{
    FSFile file;
    u32 chunkSize = 0;
    u32 btafStart = 0;
    u32 btnfStart = 0;
    u32 gmifStart = 0;
    u32 fileStart = 0;
    u32 fileEnd = 0;
    u16 fileCount = 0;

    FS_InitFile(&file);
    FS_OpenFile(&file, Unk_02100498[narcIndex]);
    FS_SeekFile(&file, 12, FS_SEEK_SET);
    FS_ReadFile(&file, &chunkSize, 2);

    btafStart = chunkSize;

    FS_SeekFile(&file, btafStart + 4, FS_SEEK_SET);
    FS_ReadFile(&file, &chunkSize, 4);
    FS_ReadFile(&file, &fileCount, 2);

    GF_ASSERT(fileCount > memberIndex);

    btnfStart = btafStart + chunkSize;

    FS_SeekFile(&file, btnfStart + 4, FS_SEEK_SET);
    FS_ReadFile(&file, &chunkSize, 4);

    gmifStart = btnfStart + chunkSize;

    FS_SeekFile(&file, btafStart + 12 + memberIndex * 8, FS_SEEK_SET);
    FS_ReadFile(&file, &fileStart, 4);
    FS_ReadFile(&file, &fileEnd, 4);
    FS_SeekFile(&file, gmifStart + 8 + fileStart, FS_SEEK_SET);

    chunkSize = fileEnd - fileStart;

    GF_ASSERT(chunkSize != 0);
	// Bug: file is never closed!

    return chunkSize;
}

NARC * NARC_ctor (u32 narcIndex, u32 heapID)
{
    NARC * narc = AllocFromHeap(heapID, sizeof(NARC));

    if (narc) {
        u32 btnfStart;
		u32 chunkSize;

        narc->unk_AC = 0;

        FS_InitFile(&(narc->unk_00));
        FS_OpenFile(&(narc->unk_00), Unk_02100498[narcIndex]);
        FS_SeekFile(&(narc->unk_00), 12, FS_SEEK_SET);
        FS_ReadFile(&(narc->unk_00), &(narc->unk_AC), 2);
        FS_SeekFile(&(narc->unk_00), narc->unk_AC + 4, FS_SEEK_SET);
        FS_ReadFile(&(narc->unk_00), &chunkSize, 4);
        FS_ReadFile(&(narc->unk_00), &(narc->unk_B4), 2);

        btnfStart = narc->unk_AC + chunkSize;

        FS_SeekFile(&(narc->unk_00), btnfStart + 4, FS_SEEK_SET);
        FS_ReadFile(&(narc->unk_00), &chunkSize, 4);

        narc->unk_B0 = btnfStart + chunkSize;
    }

    return narc;
}

void NARC_dtor (NARC * param0)
{
    FS_CloseFile(&(param0->unk_00));
    FreeToHeap(param0);
}

void * NARC_AllocAndReadWholeMember (NARC * narc, u32 memberIndex, u32 heapID)
{
    u32 fileStart;
	u32 fileEnd;
    void * dest;

    GF_ASSERT(narc->unk_B4 > memberIndex);

    FS_SeekFile(&(narc->unk_00), narc->unk_AC + 12 + memberIndex * 8, FS_SEEK_SET);
    FS_ReadFile(&(narc->unk_00), &fileStart, 4);
    FS_ReadFile(&(narc->unk_00), &fileEnd, 4);
    FS_SeekFile(&(narc->unk_00), narc->unk_B0 + 8 + fileStart, FS_SEEK_SET);

    dest = AllocFromHeap(heapID, fileEnd - fileStart);

    if (dest) {
        FS_ReadFile(&(narc->unk_00), dest, fileEnd - fileStart);
    }

    return dest;
}

void NARC_ReadWholeMember (NARC * narc, u32 memberIndex, void * dest)
{
    u32 fileStart;
	u32 fileEnd;

    GF_ASSERT(narc->unk_B4 > memberIndex);

    FS_SeekFile(&(narc->unk_00), narc->unk_AC + 12 + memberIndex * 8, FS_SEEK_SET);
    FS_ReadFile(&(narc->unk_00), &fileStart, 4);
    FS_ReadFile(&(narc->unk_00), &fileEnd, 4);
    FS_SeekFile(&(narc->unk_00), narc->unk_B0 + 8 + fileStart, FS_SEEK_SET);
    FS_ReadFile(&(narc->unk_00), dest, fileEnd - fileStart);
}

u32 NARC_GetMemberSize (NARC * narc, u32 memberIndex)
{
    u32 fileStart;
	u32 fileEnd;

    GF_ASSERT(narc->unk_B4 > memberIndex);

    FS_SeekFile(&(narc->unk_00), narc->unk_AC + 12 + memberIndex * 8, FS_SEEK_SET);
    FS_ReadFile(&(narc->unk_00), &fileStart, 4);
    FS_ReadFile(&(narc->unk_00), &fileEnd, 4);

    return fileEnd - fileStart;
}

void NARC_ReadFromMember (NARC * narc, u32 memberIndex, u32 offset, u32 bytesToRead, void * dest)
{
    u32 fileStart;

    GF_ASSERT(narc->unk_B4 > memberIndex);

    FS_SeekFile(&(narc->unk_00), narc->unk_AC + 12 + memberIndex * 8, FS_SEEK_SET);
    FS_ReadFile(&(narc->unk_00), &fileStart, 4);
    FS_SeekFile(&(narc->unk_00), narc->unk_B0 + 8 + fileStart + offset, FS_SEEK_SET);
    FS_ReadFile(&(narc->unk_00), dest, bytesToRead);
}

void NARC_ReadFile (NARC * narc, u32 bytesToRead, void * dest)
{
    FS_ReadFile(&(narc->unk_00), dest, bytesToRead);
}

void sub_02006E28 (NARC * param0, u32 param1)
{
    FS_SeekFile(&(param0->unk_00), param1, FS_SEEK_CUR);
}

u16 NARC_GetFileCount (NARC * narc)
{
    return narc->unk_B4;
}
