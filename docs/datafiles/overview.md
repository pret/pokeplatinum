# Overview of Processing Tools for Data Files

The build pipeline uses a suite of custom compiler tools in `tools/dataproc` to
bridge plain-text data files into game-ready binary data. These tools leverage
a common interface for querying any given data markup format defined by
`lib/dataproc.c`. Additionally, this common interface provides validation
routines for common types and rich error reporting.

The driver implementations of these tools (e.g., `src/speciesproc.c`) also make
use of shared infrastructure from `src/common.c` to:

1. Parse C enums and preprocessor definitions from headers into lookup tables,
2. Generate output header files using `.template` files from the `data`
   subdirectory,
3. Create output NARC files using `libnitroarc`, and
4. Write dependency files at runtime for correct builds.

## Tools

| Tool           | Input                                                      | Output                                                                                     |
| -------------- | ---------------------------------------------------------- | ------------------------------------------------------------------------------------------ |
| `dexproc`      | Regional Pokédex JSON                                      | Mappings of species to their regional and national Pokédex order.                          |
| `frontierproc` | `res/trainers/frontier/{data,pokemon}/*.json`              | Battle Frontier Pokémon pools and trainer definitions.                                     |
| `itemproc`     | `res/items/data/*.json` + `include/constants/items.h`      | Item metadata, hidden-item script definitions, item-to-icon mappings, TM-to-move mappings. |
| `moveproc`     | `res/moves/<name>/data.json` + `include/constants/moves.h` | Move metadata, in-game battle text, and animation scripts.                                 |
| `npctradeproc` | `res/npc_trades/*.json` + `include/constants/npc_trades.h` | Pokémon offered by NPCs for an in-game trade.                                              |
| `resdatproc`   | Sprite template JSON + NARC ID maps                        | Serialized sprite templates to be loaded from the filesystem.                              |
| `speciesproc`  | `res/pokemon/<species>/data.json`                          | Pokémon base stats, evolutions, learnsets, and sprite positions.                           |
| `trainerproc`  | `res/trainers/data/*.json`                                 | Trainer metadata, including their parties, in-battle messages, and overworld messages.     |

## Common Patterns and Conventions

Each tool follows a similar structure. The following static variables are first
defined to provide a base environment:

1. Constants to be loaded into lookup-tables, defined in an array `enums[]`.
   These lookup tables enable referencing in-game constants from JSON files from
   their identifiers.
2. Any archives to be created which are sized according to the input, defined in
   an array `archives[]`. For example, `moveproc` defines `move_data.narc` here,
   which is known to contain one entry for each in-game move.
3. Any C headers to be generated, defined in an array `headers[]`. Headers are
   instantiated with a header and footer according to a corresponding
   `.template` file in `tools/dataproc/data`. For example, `itemproc` produces
   `item_tm_move_map.h`, which is constructed using
   `tools/dataproc/data/item_tm_move_map.h.template`.
4. Any text banks to be generated, defined in an array `textbanks[]`. For
   example, `npctradeproc` produces `npc_trade_names.json`, which contains the
   nickname and trainer name applied to each in-game trade.

Then, the processing code executes in the main loop. The following snippet
illustrates the processing code from `moveproc`, with additional comments
annotating the control flow:

```c
int main(int argc, char **argv) {
    int        errc = EXIT_SUCCESS;
    datafile_t df   = { 0 };

    parse_args(&argc, &argv);

    // Instantiate the processing environment. This will load the input filename
    // passed as a program argument and look for "enum Move" inside its content.
    // This enum provides the base number of files for the output archives.
    //
    // The init_orderfiles function passed to .hook_before will be executed after
    // the base library is instantiated, but before any output files are
    // initialized.
    enum_seq_t moves = common_initenum(
        filename, "Move",
        .sourcefile  = __FILE__,
        .depfile     = depfile_path,
        .outdir      = output_dir,
        .format      = DATAPROC_F_JSON,
        .enums       = enums,
        .archives    = archives,
        .textbanks   = textbanks,
        .extra_files = 3,
        .hook_before = init_orderfiles,
    );

    // Process individual files, using the names from the input enum as an
    // authority for subdirectories in the asset tree.
    for (size_t i = 0; i < moves.size; i++) {
        const char *stem = moves.members[i].name + lengthof("MOVE_");

        char *basename = strlower(stem);
        char *filepath = pathjoin(base_dir, basename, "data.json");
        declare_dep(filepath);

        if (dp_load(&df, filepath) == 0) {
            proc_move(&df);
            proc_text(&df, i, basename);
            prep_scripts(basename);
        }

        // Report any diagnostics found during processing.
        if (dp_report(&df) == DIAG_ERROR) errc = EXIT_FAILURE;

        free(basename);
        free(filepath);
        dp_free(&df);
    }

    // Handle any additional processing tasks before sealing the output files
    // and exiting the program.
    pack_extra_moves();
    prep_extra_scripts();
    return common_done(errc, close_orderfiles);
}
```
