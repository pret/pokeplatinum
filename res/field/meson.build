subdir('encounters')
subdir('events')
subdir('scripts')

move_tutors_json = files('move_tutors.json')

tutorable_moves_h = custom_target('tutorable_moves.h',
    input: move_tutors_json,
    output: 'tutorable_moves.h',
    command: [
        make_tutorable_moves_py,
        '--schema', move_tutors_json,
        '--output-dir', meson.current_build_dir(),
    ]
)
