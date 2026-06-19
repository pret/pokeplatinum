#!/bin/bash
BUILDDIR=$1
OUTPUTDIR=$BUILDDIR/bin
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
cp -u $BUILDDIR/../res/pc_port/header.bin $OUTPUTDIR/main.srl
cp -u $BUILDDIR/../res/pc_port/dwc_nv.bin $OUTPUTDIR/firmware.bin
cp $BUILDDIR/main $OUTPUTDIR/main

if [[ "$(uname -s)" =~ ^MSYS_NT.* ]]; then
  cp -u /ucrt64/bin/SDL2.dll $OUTPUTDIR/SDL2.dll
	cp -u /ucrt64/bin/libwinpthread-1.dll $OUTPUTDIR/libwinpthread-1.dll
	cp -u /ucrt64/bin/libenet-7.dll $OUTPUTDIR/libenet-7.dll
	cp -u /ucrt64/bin/libgcc_s_seh-1.dll $OUTPUTDIR/libgcc_s_seh-1.dll
	cp -u /ucrt64/bin/libstdc++-6.dll $OUTPUTDIR/libstdc++-6.dll
fi