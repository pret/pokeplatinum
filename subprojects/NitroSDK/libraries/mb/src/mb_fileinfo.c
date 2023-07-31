#include "mb_private.h"

#define MB_CACHE_PAGE_SIZE (17 * 1024)

SDK_COMPILER_ASSERT(
    ROM_HEADER_SIZE_FULL +
    MB_AUTHCODE_SIZE +
    sizeof(MBiCacheList) +
    sizeof(u32) * 4 + MB_CACHE_PAGE_SIZE * 3 <= MB_SEGMENT_BUFFER_MIN
);

const MbSegmentType MBi_defaultLoadSegList[MB_DL_SEGMENT_NUM] = {
    MB_SEG_ROMHEADER,
    MB_SEG_ARM9STATIC,
    MB_SEG_ARM7STATIC,
};

#define MB_SEGMENT_HEADER_MIN 0x4000
#define MB_SEGMENT_HEADER_MAX 0x8000

static const CARDRomRegion mbi_seg_header_default[] = {
    {0x4000, 0x1000, },
    {0x7000, 0x1000, },
    {0, 0},
};
static const CARDRomRegion * mbi_seg_header = mbi_seg_header_default;

typedef struct {
    u32 rom_src;
    u32 mem_src;
    u32 mem_dst;
    u32 len;
} MBiSegmentHeaderInfo;

static void MBi_MakeDownloadFileInfo(MbDownloadFileInfoHeader * mbdlFileInfop, const void * buf);
static void MBi_SetSegmentInfo(const RomHeader * mbRomHeaderp, const MbSegmentType * loadSegListp, MbSegmentInfo * seg_infop, u32 * child_recv_buff_addr);
static void MBi_ReadSegmentHeader(const MBiSegmentHeaderInfo * p, u32 top, u32 bottom, BOOL clean);
static BOOL IsAbleToLoad(u8 segment_no, u32 address, u32 size);

u32 MB_GetSegmentLength (FSFile * file) {
    enum
    { ROM_HEADER_SIZE_SMALL = 0x60 };
    u8 rom[ROM_HEADER_SIZE_SMALL];
    const RomHeader * p = NULL;

    u32 ret = 0;

    SDK_ASSERT(!file || FS_IsFile(file));

    if (file) {
        const u32 bak_pos = FS_GetPosition(file);

        if (FS_ReadFile(file, &rom, sizeof(rom)) >= sizeof(rom)) {
            p = (const RomHeader *)rom;
        }

        (void)FS_SeekFile(file, (int)bak_pos, FS_SEEK_SET);
    } else {
        p = (const RomHeader *)HW_ROM_HEADER_BUF;
    }
    if (p) {
        ret = (u32)(ROM_HEADER_SIZE_FULL +
                    MB_AUTHCODE_SIZE +
                    sizeof(MBiCacheList) +
                    sizeof(u32) * 4 +
                    p->main_size +
                    p->sub_size
        );
        if (ret < MB_SEGMENT_BUFFER_MIN) {
            ret = MB_SEGMENT_BUFFER_MIN;
        }
    }
    return ret;
}

BOOL MB_ReadSegment (FSFile * file, void * buf, u32 len) {
    BOOL ret = FALSE;
    SDK_ASSERT(!file || FS_IsFile(file));

    if (len >= ROM_HEADER_SIZE_FULL + 4) {
        BOOL is_own_binary = FALSE;

        u32 rest = len;
        u8 * dst = (u8 *)buf;
        u32 bak_pos;
        FSFile own_bin[1];
        u32 own_size;
        RomHeader * p_rom;

        MBiCacheList * p_cache = NULL;
        u32 * p_map = NULL;

        p_rom = (RomHeader *)dst;
        dst += ROM_HEADER_SIZE_FULL, rest -= ROM_HEADER_SIZE_FULL;

        if (file) {
            bak_pos = FS_GetPosition(file);
            if (FS_ReadFile(file, p_rom, ROM_HEADER_SIZE_FULL) < ROM_HEADER_SIZE_FULL) {
                rest = 0;
            }
            own_size = p_rom->own_size;
            if (!own_size) {
                own_size = 16 * 1024 * 1024;
            }
        } else {
            const RomHeader * mem_rom = (RomHeader *)HW_ROM_HEADER_BUF;
            own_size = mem_rom->own_size;
            if (!own_size) {
                own_size = 16 * 1024 * 1024;
            }
            is_own_binary = TRUE;

            FS_InitFile(own_bin);
            (void)FS_OpenFileDirect(
                own_bin,
                FS_FindArchive("rom", 3), 0, (u32)(own_size + MB_AUTHCODE_SIZE),
                (u32) ~0
            );
            file = own_bin;
            bak_pos = FS_GetPosition(file);

            MI_CpuCopy8(mem_rom, p_rom, ROM_HEADER_SIZE_FULL);

            *(u32 *)((u32)p_rom + 0x60) |= 0x00406000;
        }

        if (rest >= MB_AUTHCODE_SIZE) {
            (void)FS_SeekFile(file, (int)(bak_pos + own_size), FS_SEEK_SET);
            (void)FS_ReadFile(file, dst, MB_AUTHCODE_SIZE);
            dst += MB_AUTHCODE_SIZE, rest -= MB_AUTHCODE_SIZE;
        } else {
            rest = 0;
        }

        if (rest >= sizeof(MBiCacheList)) {
            p_cache = (MBiCacheList *)dst;
            MBi_InitCache(p_cache);
            dst += sizeof(MBiCacheList), rest -= sizeof(MBiCacheList);

            MBi_AttachCacheBuffer(p_cache, 0, ROM_HEADER_SIZE_FULL, p_rom, MB_CACHE_STATE_LOCKED);

            {
                FSArchive * p_arc = FS_GetAttachedArchive(file);
                int i = 0;
                while ((i < FS_ARCHIVE_NAME_LEN_MAX) && p_arc->name.ptr[i]) {
                    ++i;
                }
                MI_CpuCopy8(p_arc->name.ptr, p_cache->arc_name, (u32)i);
                p_cache->arc_name_len = (u32)i;
                p_cache->arc_pointer = p_arc;
            }
        } else {
            rest = 0;
        }

        if (rest >= sizeof(u32) * 4) {
            p_map = (u32 *)dst;
            p_map[0] = 0;
            p_map[1] = FS_GetFileImageTop(file) + bak_pos + p_rom->main_rom_offset;
            p_map[2] = FS_GetFileImageTop(file) + bak_pos + p_rom->sub_rom_offset;
            dst += sizeof(u32) * 4, rest -= sizeof(u32) * 4;
        } else {
            rest = 0;
        }

        if (rest >= p_rom->main_size + p_rom->sub_size) {
            const u32 base = FS_GetFileImageTop(file);
            (void)FS_SeekFile(file, (int)(p_map[1] - base), FS_SEEK_SET);
            (void)FS_ReadFile(file, dst, (int)p_rom->main_size);
            MBi_AttachCacheBuffer(p_cache, p_map[1], p_rom->main_size, dst, MB_CACHE_STATE_LOCKED);
            dst += p_rom->main_size, rest -= p_rom->main_size;
            (void)FS_SeekFile(file, (int)(p_map[2] - base), FS_SEEK_SET);
            (void)FS_ReadFile(file, dst, (int)p_rom->sub_size);
            MBi_AttachCacheBuffer(p_cache, p_map[2], p_rom->sub_size, dst, MB_CACHE_STATE_LOCKED);
            dst += p_rom->sub_size, rest -= p_rom->sub_size;

            ret = TRUE;
        } else if (rest >= MB_CACHE_PAGE_SIZE * 3) {
            const u32 base = FS_GetFileImageTop(file);
            u32 offset = p_map[1];

            (void)FS_SeekFile(file, (int)(offset - base), FS_SEEK_SET);
            (void)FS_ReadFile(file, dst, MB_CACHE_PAGE_SIZE);
            MBi_AttachCacheBuffer(p_cache, offset, MB_CACHE_PAGE_SIZE, dst, MB_CACHE_STATE_LOCKED);
            dst += MB_CACHE_PAGE_SIZE, rest -= MB_CACHE_PAGE_SIZE;
            offset += MB_CACHE_PAGE_SIZE;

            (void)FS_SeekFile(file, (int)(offset - base), FS_SEEK_SET);
            (void)FS_ReadFile(file, dst, MB_CACHE_PAGE_SIZE);
            MBi_AttachCacheBuffer(p_cache, offset, MB_CACHE_PAGE_SIZE, dst, MB_CACHE_STATE_READY);
            dst += MB_CACHE_PAGE_SIZE, rest -= MB_CACHE_PAGE_SIZE;
            offset += MB_CACHE_PAGE_SIZE;

            (void)FS_SeekFile(file, (int)(offset - base), FS_SEEK_SET);
            (void)FS_ReadFile(file, dst, MB_CACHE_PAGE_SIZE);
            MBi_AttachCacheBuffer(p_cache, offset, MB_CACHE_PAGE_SIZE, dst, MB_CACHE_STATE_READY);
            dst += MB_CACHE_PAGE_SIZE, rest -= MB_CACHE_PAGE_SIZE;

            ret = TRUE;
        }

        (void)FS_SeekFile(file, (int)bak_pos, FS_SEEK_SET);

        if (is_own_binary) {
            (void)FS_CloseFile(own_bin);
            if (ret) {
                const CARDRomRegion * p_header = mbi_seg_header;
                MBiSegmentHeaderInfo info;
                info.rom_src = p_rom->main_rom_offset;
                info.mem_src = (u32)((u32)p_rom->main_ram_address - p_rom->main_rom_offset);
                info.mem_dst = (u32)((u32)p_cache->list[1].ptr - p_rom->main_rom_offset);
                info.len = len;

                MBi_ReadSegmentHeader(&info, MB_SEGMENT_HEADER_MIN, MB_SEGMENT_HEADER_MAX, TRUE);

                for (; p_header->length != 0; ++p_header) {
                    MBi_ReadSegmentHeader(
                        &info,
                        p_header->offset,
                        (u32)(p_header->offset + p_header->length), FALSE
                    );
                }
                {
                    extern u32 _start_AutoloadDoneCallback[1];
                    u8 * dst = (u8 *)p_cache->list[1].ptr;
                    dst += ((u32) & _start_AutoloadDoneCallback - (u32)p_rom->main_ram_address);
                    *(u32 *)dst = 0xE12FFF1E;
                }
            }
        }

        if (ret) {
            DC_FlushRange(buf, len);
        }
    }

    return ret;
}

static void MBi_ReadSegmentHeader (const MBiSegmentHeaderInfo * p, u32 top, u32 bottom, BOOL clean) {
    if (top < MB_SEGMENT_HEADER_MIN) {
        top = MB_SEGMENT_HEADER_MIN;
    }
    if (bottom > MB_SEGMENT_HEADER_MAX) {
        bottom = MB_SEGMENT_HEADER_MAX;
    }

    if (top < p->rom_src) {
        top = p->rom_src;
    }
    if (bottom > p->rom_src + p->len) {
        bottom = p->rom_src + p->len;
    }

    if (top < bottom) {
        if (clean) {
            MI_CpuClear8((void *)(p->mem_dst + top), (u32)(bottom - top));
        } else {
            MI_CpuCopy8(
                (const void *)(p->mem_src + top),
                (void *)(p->mem_dst + top), (u32)(bottom - top)
            );
        }
    }
}

BOOL MB_RegisterFile (const MBGameRegistry * game_reg, const void * buf) {
    MbDownloadFileInfoHeader * mdfi;
    static u8 update = 0;
    u8 * appname = (u8 *)game_reg->gameNamep;
    u8 fileID = 0xff, i;

    OSIntrMode enabled = OS_DisableInterrupts();

    if (!MBi_IsStarted()) {
        OS_TWarning("MB has not started yet. Cannot Register File\n");
        (void)OS_RestoreInterrupts(enabled);
        return FALSE;
    }

    if (pPwork->file_num + 1 > MB_MAX_FILE) {
        OS_TWarning("The number of registered files has exceeded.\n");
        (void)OS_RestoreInterrupts(enabled);
        return FALSE;
    }

    for (i = 0; i < MB_MAX_FILE; i++) {
        if (pPwork->fileinfo[i].game_reg == (MBGameRegistry *)game_reg) {
            MB_DEBUG_OUTPUT("Already Registered \"%s\"\n", game_reg->gameNamep);
            (void)OS_RestoreInterrupts(enabled);
            return FALSE;
        }

        if (pPwork->fileinfo[i].active == 0) {
            fileID = i;
            break;
        }
    }

    if (i == MB_MAX_FILE) {
        OS_TWarning("Too many Files! \"%s\"\n", game_reg->gameNamep);
        (void)OS_RestoreInterrupts(enabled);
        return FALSE;
    }

    pPwork->fileinfo[fileID].game_reg = (MBGameRegistry *)game_reg;

    mdfi = &pPwork->fileinfo[fileID].dl_fileinfo.header;

    MBi_MakeDownloadFileInfo(mdfi, buf);

    MI_CpuCopy8(
        game_reg->userParam,
        ((MBDownloadFileInfo *)mdfi)->reserved, HW_DOWNLOAD_PARAMETER_SIZE
    );

    if (FALSE == MBi_MakeBlockInfoTable(&pPwork->fileinfo[fileID].blockinfo_table, mdfi)) {
        OS_TWarning("Cannot make block information!\n");
        (void)OS_RestoreInterrupts(enabled);
        return FALSE;
    }

    MBi_MakeGameInfo(&pPwork->fileinfo[fileID].game_info, game_reg, &pPwork->common.user);

    pPwork->fileinfo[fileID].game_info.fileNo = fileID;

    MB_AddGameInfo(&pPwork->fileinfo[fileID].game_info);

    pPwork->fileinfo[fileID].game_info.seqNoFixed = update++;

    pPwork->fileinfo[fileID].gameinfo_child_bmp = MB_GAMEINFO_PARENT_FLAG;

    pPwork->fileinfo[fileID].src_adr = (u32 *)buf;

    pPwork->fileinfo[fileID].cache_list = (MBiCacheList *)
                                          ((u32)buf + ROM_HEADER_SIZE_FULL + MB_AUTHCODE_SIZE);
    pPwork->fileinfo[fileID].card_mapping = (u32 *)
                                            ((u32)buf + ROM_HEADER_SIZE_FULL + MB_AUTHCODE_SIZE + sizeof(MBiCacheList));

    if (pPwork->fileinfo[fileID].cache_list->list[3].state != MB_CACHE_STATE_EMPTY) {
        if (!MBi_IsTaskAvailable()) {
            MBi_InitTaskInfo(&pPwork->cur_task);
            MBi_InitTaskThread(pPwork->task_work, sizeof(pPwork->task_work));
        }
    }

    pPwork->fileinfo[fileID].active = 1;

    pPwork->file_num++;

    MB_DEBUG_OUTPUT("Register Game \"%s\"\n", game_reg->gameNamep);

    (void)OS_RestoreInterrupts(enabled);

    return TRUE;
}

void * MB_UnregisterFile (const MBGameRegistry * game_reg) {
    u8 fileID, i;
    void * ret_bufp;
    OSIntrMode enabled = OS_DisableInterrupts();

    for (i = 0; i < MB_MAX_FILE; i++) {
        if (pPwork->fileinfo[i].game_reg == (MBGameRegistry *)game_reg) {
            fileID = i;
            break;
        }
    }

    if (fileID != pPwork->fileinfo[fileID].game_info.fileNo) {
        OS_TWarning("Registerd File ID does not correspond with File ID in Registry List.\n");
        (void)OS_RestoreInterrupts(enabled);
        return NULL;
    }

    if (i == MB_MAX_FILE) {
        OS_TWarning("Cannot find corresponding GameRegistry\n");
        (void)OS_RestoreInterrupts(enabled);
        return NULL;
    }

    if (FALSE == MB_DeleteGameInfo(&pPwork->fileinfo[fileID].game_info)) {
        OS_TWarning(
            "Cannot delete GameInfo %s\n",
            pPwork->fileinfo[fileID].game_info.fixed.gameName
        );
        (void)OS_RestoreInterrupts(enabled);
        return NULL;
    }

    ret_bufp = pPwork->fileinfo[fileID].src_adr;

    pPwork->fileinfo[fileID].active = 0;

    MI_CpuClear16(&pPwork->fileinfo[fileID], sizeof(pPwork->fileinfo[0]));

    pPwork->file_num--;

    MB_DEBUG_OUTPUT("Delete Game \"%s\"\n", game_reg->gameNamep);

    (void)OS_RestoreInterrupts(enabled);

    return ret_bufp;
}

static void MBi_MakeDownloadFileInfo (MbDownloadFileInfoHeader * mbdlFileInfop, const void * buf) {
    const RomHeader * mbRomHeaderp;
    const MbSegmentType * loadSegListp;
    MbSegmentInfo * seg_infop;
    int seg_num;
    const u16 * auth_code;
    u32 child_recv_buff_addr = MB_ARM7_STATIC_RECV_BUFFER;

    mbRomHeaderp = (const RomHeader *)buf;
    auth_code = (const u16 *)((u32)buf + ROM_HEADER_SIZE_FULL);

    mbdlFileInfop->arm9EntryAddr = (u32)mbRomHeaderp->main_entry_address;
    mbdlFileInfop->arm7EntryAddr = (u32)mbRomHeaderp->sub_entry_address;
    seg_infop = (MbSegmentInfo *)(mbdlFileInfop + 1);
    loadSegListp = MBi_defaultLoadSegList;
    MB_DEBUG_OUTPUT("\t<segment list>         recv_adr load_adr     size  rom_adr (base)\n");

    for (seg_num = 0; seg_num < MB_DL_SEGMENT_NUM; seg_num++) {
        MB_DEBUG_OUTPUT("\t SEG%2d : ", seg_num);
        MBi_SetSegmentInfo(mbRomHeaderp, loadSegListp, seg_infop, &child_recv_buff_addr);
        seg_infop++;
        loadSegListp++;
    }

    {
        MBDownloadFileInfo * pMdfi = (MBDownloadFileInfo *)mbdlFileInfop;
        MI_CpuCopy8(auth_code, &pMdfi->auth_code[0], MB_AUTHCODE_SIZE);
    }
}

static void MBi_SetSegmentInfo (const RomHeader * mbRomHeaderp, const MbSegmentType * loadSegListp, MbSegmentInfo * seg_infop, u32 * child_recv_buff_addr) {
    CARDRomRegion * romRegp;

    switch (*loadSegListp) {
    case MB_SEG_ARM9STATIC:
        romRegp = (CARDRomRegion *)(&mbRomHeaderp->main_ram_address);

        if (((u32)romRegp->offset >= MB_LOAD_AREA_LO)
            && ((u32)romRegp->offset < MB_LOAD_AREA_HI)
            && (((u32)romRegp->offset + romRegp->length) <= MB_LOAD_AREA_HI)) {
            seg_infop->size = romRegp->length;
            seg_infop->load_addr = (u32)romRegp->offset;

            seg_infop->recv_addr = seg_infop->load_addr;
            seg_infop->target = MI_PROCESSOR_ARM9;
            MB_DEBUG_OUTPUT("arm9 static :");
        } else {
            OS_Panic(
                "ARM9 boot code out of the load area. : addr = %x  size = %x\n",
                (u32)romRegp->offset, romRegp->length
            );
        }
        break;

    case MB_SEG_ARM7STATIC:
    {
        BOOL error_flag = FALSE;
        BOOL reload_flag = FALSE;
        u32 load_last_addr;

        romRegp = (CARDRomRegion *)(&mbRomHeaderp->sub_ram_address);
        load_last_addr = (u32)((u32)romRegp->offset + romRegp->length);

        if (((u32)romRegp->offset >= MB_LOAD_AREA_LO)
            && ((u32)romRegp->offset < MB_BSSDESC_ADDRESS)) {
            if (load_last_addr <= MB_ARM7_STATIC_LOAD_AREA_HI) {
            } else if ((load_last_addr < MB_BSSDESC_ADDRESS)
                       && (romRegp->length <= MB_ARM7_STATIC_RECV_BUFFER_SIZE)) {
                reload_flag = TRUE;
            } else {
                error_flag = TRUE;
            }
        } else if (((u32)romRegp->offset >= HW_WRAM)
                   && ((u32)romRegp->offset < HW_WRAM + MB_ARM7_STATIC_LOAD_WRAM_MAX_SIZE)) {
            if (load_last_addr <= (HW_WRAM + MB_ARM7_STATIC_LOAD_WRAM_MAX_SIZE)) {
                reload_flag = TRUE;
            } else {
                error_flag = TRUE;
            }
        } else {
            error_flag = TRUE;
        }

        if (error_flag == TRUE) {
            OS_Panic(
                "ARM7 boot code out of the load area. : addr = %x  size = %x\n",
                (u32)romRegp->offset, romRegp->length
            );
        }

        {
            seg_infop->size = romRegp->length;
            seg_infop->load_addr = (u32)romRegp->offset;
            if (!reload_flag) {
                seg_infop->recv_addr = seg_infop->load_addr;
            } else {
                seg_infop->recv_addr = *child_recv_buff_addr;
                *child_recv_buff_addr += seg_infop->size;
            }
        }

        seg_infop->target = MI_PROCESSOR_ARM7;
        MB_DEBUG_OUTPUT("arm7 static :");
    }
    break;

    case MB_SEG_ROMHEADER:
        seg_infop->size = ROM_HEADER_SIZE_FULL;
        seg_infop->load_addr = (u32)MB_ROM_HEADER_ADDRESS;
        seg_infop->recv_addr = seg_infop->load_addr;

        seg_infop->target = MI_PROCESSOR_ARM9;
        MB_DEBUG_OUTPUT("rom header  :");
        break;
    }

    MB_DEBUG_OUTPUT(
        " %8x %8x %8x %8x\n",
        seg_infop->recv_addr, seg_infop->load_addr,
        seg_infop->size,
        (*loadSegListp == MB_SEG_ROMHEADER) ? 0 : *((u32 *)romRegp - 2)
    );
}

BOOL MBi_MakeBlockInfoTable (MB_BlockInfoTable * table, MbDownloadFileInfoHeader * mdfi) {
    u16 * seg_headB = table->seg_head_blockno;
    u32 * seg_src = table->seg_src_offset;
    u8 i;
    u32 src_ofs = 0;

    if (!mdfi) {
        return FALSE;
    }

    for (i = 0; i < MB_DL_SEGMENT_NUM; ++i) {
        MbSegmentInfo * si = MBi_GetSegmentInfo(mdfi, i);
        seg_src[i] = src_ofs;
        src_ofs += si->size;
    }

    seg_headB[0] = 0;

    for (i = 0; i < MB_DL_SEGMENT_NUM; ++i) {
        MbSegmentInfo * si = MBi_GetSegmentInfo(mdfi, i);
        u16 next_block_head =
            (u16)(seg_headB[i] + (u16)((si->size + mbc->block_size_max - 1) / mbc->block_size_max));

        if (FALSE == IsAbleToLoad(i, si->load_addr, si->size)) {
            return FALSE;
        }

        if (i < MB_DL_SEGMENT_NUM - 1) {
            seg_headB[i + 1] = next_block_head;
        } else {
            table->block_num = next_block_head;
        }
    }

    return TRUE;
}

BOOL MBi_get_blockinfo (MB_BlockInfo * bi, MB_BlockInfoTable * table, u32 block, MbDownloadFileInfoHeader * mdfi) {
    s8 i;
    u32 seg_block, block_adr_offset;

    if (block >= table->block_num) {
        return FALSE;
    }

    for (i = MB_DL_SEGMENT_NUM - 1; i >= 0; i--) {
        if (block >= table->seg_head_blockno[i]) {
            break;
        }
    }

    if (i < 0) {
        return FALSE;
    }

    seg_block = block - table->seg_head_blockno[i];
    block_adr_offset = seg_block * mbc->block_size_max;

    {
        MbSegmentInfo * si = MBi_GetSegmentInfo(mdfi, i);
        bi->size = si->size - block_adr_offset;
        if (bi->size > mbc->block_size_max) {
            bi->size = (u32)mbc->block_size_max;
        }
        bi->offset = (u32)(block_adr_offset + table->seg_src_offset[i]);
        bi->child_address = (u32)(block_adr_offset + (u32)(si->recv_addr));
        bi->segment_no = (u8)i;
    }

    MB_DEBUG_OUTPUT("blockNo:%d \n", block);
    MB_DEBUG_OUTPUT(
        "Segment %d [block:%d offset(%08x) destination(%08x) size(%04x)]\n",
        i, seg_block, bi->offset, bi->child_address, bi->size
    );

    return TRUE;
}

u16 MBi_get_blocknum (MB_BlockInfoTable * table) {
    SDK_ASSERT(table != 0);
    return table->block_num;
}

BOOL MBi_IsAbleToRecv (u8 segment_no, u32 address, u32 size) {
    MbSegmentType seg_type;

    SDK_ASSERT(segment_no < MB_DL_SEGMENT_NUM);

    seg_type = MBi_defaultLoadSegList[segment_no];

    switch (seg_type) {
    case MB_SEG_ROMHEADER:
        if (address >= MB_ROM_HEADER_ADDRESS
            && address + size <= MB_ROM_HEADER_ADDRESS + ROM_HEADER_SIZE_FULL) {
            return TRUE;
        }
        break;

    case MB_SEG_ARM9STATIC:
        if (address >= MB_LOAD_AREA_LO && address + size <= MB_LOAD_AREA_HI) {
            return TRUE;
        }
        break;

    case MB_SEG_ARM7STATIC:

        if (address >= MB_ARM7_STATIC_RECV_BUFFER
            && address + size <= MB_ARM7_STATIC_RECV_BUFFER_END) {
            return TRUE;
        } else if (address >= MB_LOAD_AREA_LO && address + size <= MB_ARM7_STATIC_RECV_BUFFER_END) {
            return TRUE;
        }
        break;

    default:
        return FALSE;
    }

    return FALSE;
}

static BOOL IsAbleToLoad (u8 segment_no, u32 address, u32 size) {
    MbSegmentType seg_type;

    SDK_ASSERT(segment_no < MB_DL_SEGMENT_NUM);

    seg_type = MBi_defaultLoadSegList[segment_no];

    switch (seg_type) {
    case MB_SEG_ROMHEADER:
    case MB_SEG_ARM9STATIC:
        return MBi_IsAbleToRecv(segment_no, address, size);

    case MB_SEG_ARM7STATIC:

        if (address >= MB_LOAD_AREA_LO && address < MB_BSSDESC_ADDRESS) {
            u32 end_adr = address + size;

            if (MB_ARM7_STATIC_RECV_BUFFER_END > address
                && MB_ARM7_STATIC_RECV_BUFFER_END < end_adr) {
                return FALSE;
            } else if (end_adr <= MB_ARM7_STATIC_LOAD_AREA_HI) {
                return TRUE;
            } else if (end_adr < MB_BSSDESC_ADDRESS && size <= MB_ARM7_STATIC_RECV_BUFFER_SIZE) {
                return TRUE;
            } else {
                return FALSE;
            }
        } else if (address >= HW_WRAM && address < HW_WRAM + MB_ARM7_STATIC_LOAD_WRAM_MAX_SIZE) {
            u32 end_adr = address + size;
            if (end_adr <= (HW_WRAM + MB_ARM7_STATIC_LOAD_WRAM_MAX_SIZE)) {
                return TRUE;
            } else {
                return FALSE;
            }
        }
        break;

    default:
        return FALSE;
    }

    return FALSE;
}
