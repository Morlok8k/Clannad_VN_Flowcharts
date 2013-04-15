#!/bin/bash

#######################################################################
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE              #
#                    Version 2, December 2004                         #
#                                                                     #
# Copyright (C) 2004 Sam Hocevar <sam@hocevar.net>                    #
#                                                                     #
# Everyone is permitted to copy and distribute verbatim or modified   #
# copies of this license document, and changing it is allowed as long #
# as the name is changed.                                             #
#                                                                     #
#            DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE              #
#   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION   #
#                                                                     #
#  0. You just DO WHAT THE FUCK YOU WANT TO.                          #
#                                                                     #
#######################################################################

# Linux shell script file to graph some .dot files.
#
# Graphviz Dot needs to be installed, perferably by the packaging system of your Linux distro,
# so it will be set up correctly.
#
# The same applies to pngcrush.
#




echo "- Graphing..."
for dot in `find $1 -name "*.dot"`;
do
  echo "-- Graphing: $dot"
  dot -Tpng "$dot" -O
  
  PART4=$dot              # PART4 is ./dot_files/Clannad_VN_Flowchart.dot
  PART1="${PART4%%/*}"    # PART1 is .
  PART4="${PART4#*/}"     # PART4 is /dot_files/Clannad_VN_Flowchart.dot
  PART2="${PART4%%/*}"    # PART2 is dot_files
  PART4="${PART4#*/}"     # PART4 is /Clannad_VN_Flowchart.dot
  PART3="${PART4%%.*}"    # PART3 is Clannad_VN_Flowchart
                          # PART4 is .dot
  PART4="${PART4#*.}"     # PART4 is dot

  mv ./$PART2/$PART3.dot.png ./$PART3.png

done;

echo " "
echo "- Compressing Images..."
for png in `find -maxdepth 1 $1 -name "*.png"`;
do
  echo "-- Compressing $png"  
  pngcrush -q -m 113 "$png" temp.png
  mv -f temp.png $png
done;

echo " "
echo - Done!




