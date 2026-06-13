#!/bin/bash
BUILDDIR=$1
OUTPUTDIR=$BUILDDIR/pc
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
cp $BUILDDIR/main $OUTPUTDIR/main