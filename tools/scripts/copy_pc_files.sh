#!/bin/bash
BUILDDIR=$1
OUTPUTDIR=$BUILDDIR/$3
mkdir -p $OUTPUTDIR

cat $2 | while read line; do
  if [[ "$line" != "Source File,Target File" ]] ;
    then
    SourceFile=$(echo $line | cut -d, -f1)
    DestFile=$(echo $line | cut -d, -f2)
    mkdir -p `dirname $OUTPUTDIR$DestFile`
    
    cp -u $BUILDDIR/$SourceFile $OUTPUTDIR$DestFile
  fi
done
cp -u $BUILDDIR/../res/pc_port/header.bin $OUTPUTDIR/header.bin
cp -u $BUILDDIR/../res/pc_port/dwc_nv.bin $OUTPUTDIR/firmware.bin
cp $BUILDDIR/main $OUTPUTDIR/main

if [[ "$(uname -s)" =~ ^MSYS_NT.* ]]; then
  cp -u /ucrt64/bin/SDL2.dll $OUTPUTDIR/SDL2.dll
  cp -u /ucrt64/bin/libwinpthread-1.dll $OUTPUTDIR/libwinpthread-1.dll
  cp -u /ucrt64/bin/libenet-7.dll $OUTPUTDIR/libenet-7.dll
  cp -u /ucrt64/bin/libgcc_s_seh-1.dll $OUTPUTDIR/libgcc_s_seh-1.dll
  cp -u /ucrt64/bin/libstdc++-6.dll $OUTPUTDIR/libstdc++-6.dll
else
  mkdir -p $OUTPUTDIR/$3.AppDir
  mkdir -p $OUTPUTDIR/$3.AppDir/usr/bin
  mkdir -p $OUTPUTDIR/$3.AppDir/usr/lib
  cp $BUILDDIR/main $OUTPUTDIR/$3.AppDir/usr/bin/app
  if [ ! -f $BUILDDIR/../tools/linuxdeploy/linuxdeploy-x86_64.AppImage ]; then
    echo "Downloading linuxdeploy..."
    wget https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-x86_64.AppImage -O $BUILDDIR/../tools/linuxdeploy/linuxdeploy-x86_64.AppImage
    chmod +x $BUILDDIR/../tools/linuxdeploy/linuxdeploy-x86_64.AppImage
  fi
  $BUILDDIR/../tools/linuxdeploy/linuxdeploy-x86_64.AppImage --appdir $OUTPUTDIR/$3.AppDir --executable=$OUTPUTDIR/main --desktop-file=$BUILDDIR/../tools/linuxdeploy/App.desktop --icon-file=$BUILDDIR/../tools/linuxdeploy/app.png --output appimage
  mv $BUILDDIR/pokeplatinum-x86_64.AppImage $OUTPUTDIR/pokeplatinum.AppImage
fi

if [[ "$4" == "-nx" ]]; then
  /opt/devkitpro/tools/bin/elf2nro $OUTPUTDIR/main $OUTPUTDIR/pokeplatinum.nro
fi