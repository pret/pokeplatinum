param (
	[string]$command
)

set MSYSTEM=MINGW
$msys2pwd=.\msys2\usr\bin\bash.exe -c "pwd"
if ($command) {
	.\msys2\usr\bin\bash.exe --rcfile "$msys2pwd/tools/scripts/env_vars_win64.sh" -ci "$command"
} else {
	.\msys2\usr\bin\bash.exe --rcfile "$msys2pwd/tools/scripts/env_vars_win64.sh"
}