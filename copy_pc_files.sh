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
