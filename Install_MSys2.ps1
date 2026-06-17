if(Test-Path ".\msys2") {
  echo "Msys2 is already installed. Exiting..."
  exit
}


Invoke-WebRequest https://github.com/msys2/msys2-installer/releases/latest/download/msys2-x86_64-latest.exe -OutFile .\msys2-installer.exe
$currentDir = Get-Location
# TODO: Don't make a shortcut in desktop/start menu
.\msys2-installer.exe in --confirm-command --accept-messages --root=$currentDir\msys2

Remove-Item .\msys2-installer.exe

# Setup MSYS2
$msys2pwd=.\msys2\usr\bin\bash.exe -c "pwd"
.\msys2\usr\bin\bash.exe -l -c "pacman -Syu --noconfirm"
.\msys2\usr\bin\bash.exe -l -c "$msys2pwd/tools/scripts/setup_msys2.sh $msys2pwd"