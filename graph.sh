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

# Simple Linux shell script file to graph some .dot files.
#
# Graphviz Dot needs to be installed, perferably by the packaging system of your Linux distro,
# so it will be set up correctly.




echo -- Graphing:
echo -- Clannad_VN_Flowchart.dot
dot -Tpng ./dot_files/Clannad_VN_Flowchart.dot -o ./Clannad_VN_Flowchart.png

echo -- Clannad_VN_Flowchart_AfterStory.dot
dot -Tpng ./dot_files/Clannad_VN_Flowchart_AfterStory.dot -o ./Clannad_VN_Flowchart_AfterStory.png

echo -- Clannad_VN_Flowchart_Doki_Doki_HS.dot
dot -Tpng ./dot_files/Clannad_VN_Flowchart_Doki_Doki_HS.dot -o ./Clannad_VN_Flowchart_Doki_Doki_HS.png

echo -- Tomoyo_After_VN_Flowchart.dot
dot -Tpng ./dot_files/Tomoyo_After_VN_Flowchart.dot -o ./Tomoyo_After_VN_Flowchart.png

echo -- Done!

