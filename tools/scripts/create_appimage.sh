#!/bin/bash
BUILDDIR=$1
OUTPUTDIR=$BUILDDIR/$2
mkdir -p $OUTPUTDIR
mkdir -p $OUTPUTDIR/$2.AppDir
mkdir -p $OUTPUTDIR/$2.AppDir/usr/bin
mkdir -p $OUTPUTDIR/$2.AppDir/usr/lib
cp $BUILDDIR/main $OUTPUTDIR/$2.AppDir/usr/bin/app
if [ ! -f $BUILDDIR/../tools/linuxdeploy/linuxdeploy-x86_64.AppImage ]; then
  echo "Downloading linuxdeploy..."
  wget https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-x86_64.AppImage -O $BUILDDIR/../tools/linuxdeploy/linuxdeploy-x86_64.AppImage
  chmod +x $BUILDDIR/../tools/linuxdeploy/linuxdeploy-x86_64.AppImage
fi
$BUILDDIR/../tools/linuxdeploy/linuxdeploy-x86_64.AppImage --appdir $OUTPUTDIR/$2.AppDir --executable=$OUTPUTDIR/main --desktop-file=$BUILDDIR/../tools/linuxdeploy/App.desktop --icon-file=$BUILDDIR/../tools/linuxdeploy/app.png --output appimage
mv pokeplatinum-x86_64.AppImage $OUTPUTDIR/pokeplatinum.AppImage
