resdat_files = files(
    'btower_canm.json',
    'btower_cell.json',
    'btower_chr.json',
    'btower_pal.json',
    'plist_canm.json',
    'plist_cell.json',
    'plist_chr.json',
    'plist_pal.json',
    'porucase_canm.json',
    'porucase_cell.json',
    'porucase_chr.json',
    'porucase_pal.json',
    'pst_canm.json',
    'pst_cell.json',
    'pst_chr.json',
    'pst_pal.json',
    'shop_canm.json',
    'shop_cell.json',
    'shop_chr.json',
    'shop_pal.json',
    'tmapn_canm.json',
    'tmapn_cell.json',
    'tmapn_chr.json',
    'tmapn_pal.json',
    'uground_cell.json',
    'uground_cellanm.json',
    'uground_char.json',
    'uground_char2.json',
    'uground_pltt.json',
    'uground_pltt2.json'
)

cldat_files = files(
    'btower_celact.json',
    'plist_h.json',
    'porucase_celact.json',
    'pst_h.json',
    'shop_h.json',
    'tmapn_celact.json',
    'uground_clact.json'
)

# these were definitely left in by mistake!
txt_files = files(
    'tmapn_celact.txt',
    'tmapn_res_canm.txt',
    'tmapn_res_cell.txt',
    'tmapn_res_chr.txt',
    'tmapn_res_pal.txt'
)

foreach f : resdat_files
    nitrofs_files += custom_target(
        input: f,
        command: [
            make_resdat_py,
            '--source-file', '@INPUT@',
            '--output-file', '@OUTPUT@'
        ],
        output: '@BASENAME@.resdat'
    )
endforeach

foreach f : cldat_files
    nitrofs_files += custom_target(
        input: f,
        command: [
            make_cldat_py,
            '--source-file', '@INPUT@',
            '--output-file', '@OUTPUT@'
        ],
        output: '@BASENAME@.cldat'
    )
endforeach

foreach f : txt_files
    nitrofs_files += fs.copyfile(f)
endforeach