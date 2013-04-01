#!/bin/sh

echo Clannad_VN_Flowchart.dot
dot -Tjpg Clannad_VN_Flowchart.dot -o Clannad_VN_Flowchart.jpg

echo Clannad_VN_Flowchart_AfterStory.dot
dot -Tjpg Clannad_VN_Flowchart_AfterStory.dot -o Clannad_VN_Flowchart_AfterStory.jpg

echo Clannad_VN_Flowchart_Doki_Doki_HS.dot
dot -Tjpg Clannad_VN_Flowchart_Doki_Doki_HS.dot -o Clannad_VN_Flowchart_Doki_Doki_HS.jpg

echo Tomoyo_After_VN_Flowchart.dot
dot -Tjpg Tomoyo_After_VN_Flowchart.dot -o Tomoyo_After_VN_Flowchart.jpg
