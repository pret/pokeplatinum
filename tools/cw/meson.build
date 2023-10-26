project('metrowerks', ['c', 'cpp'],
  default_options : ['warning_level=2'])

if host_machine.system() == 'windows'
  winflags = [
    '-mconsole',
    '-municode'
  ]
  add_project_arguments(winflags, language : ['c', 'cpp'])
  add_project_link_arguments(winflags, language : ['c', 'cpp'])
  add_project_arguments(
    '-DUNICODE',
    '-D_UNICODE',
    '-D_CRT_SECURE_NO_WARNINGS',
    language : ['c', 'cpp'])
endif

executable('mwrap', 'mwrap.c')
