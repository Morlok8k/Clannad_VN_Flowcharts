#!/bin/sh

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

echo ""
echo "- Graphing..."
echo " "

for dot in `find $1 -name "*.dot"`;
do
  echo "-- Graphing: $dot"
  dot -Tpng "$dot" -O     # creates ./dot_files/Clannad_VN_Flowchart.dot.png

  ## Filename string manipulation
  PART4=$dot              # PART4 is ./dot_files/Clannad_VN_Flowchart.dot
  PART1="${PART4%%/*}"    # PART1 is .
  PART4="${PART4#*/}"     # PART4 is /dot_files/Clannad_VN_Flowchart.dot
  PART2="${PART4%%/*}"    # PART2 is dot_files
  PART4="${PART4#*/}"     # PART4 is /Clannad_VN_Flowchart.dot
  PART3="${PART4%%.*}"    # PART3 is Clannad_VN_Flowchart
                          # PART4 is .dot
  PART4="${PART4#*.}"     # PART4 is dot

  # Notice: The above fails if the filename starts with a "." for a hidden file.  ex: "./dot_files/.temp.dot"
  #         Thus we have the following check:
  if [ "$PART3" = "" ]
  then
    PART3=".${PART4%%.*}"     #fixing
  fi


  #echo "-- Parsing: ./$PART2/$PART3_Parsed.txt"
  #dot -Tdot "$dot" -o "$PART3_Parsed.txt"     # Creates a new .dot file stripped of comments, but with positions for everything...
                                               # It will be useful once graphs are completed to make adjustments for final positioning.
                                               # I give it a .txt extension so it wont be affected by this script when its run again...


  ## move .png file down one folder, change *.dot.png to just *.png
  mv ./$PART2/$PART3.dot.png ./$PART3.png

  echo "-- Compressing: $PART3.png" 
  pngcrush -q -m 113 $PART3.png .temp_png.png
       # pngcrush can complain about overwriting a file.  thus .temp_png.png
  mv -f .temp_png.png $PART3.png

  echo " "

done;

echo "- Done!"


