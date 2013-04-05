echo off

echo Graphing:
echo Clannad_VN_Flowchart.dot
dot -Tpng Clannad_VN_Flowchart.dot -o Clannad_VN_Flowchart.png

echo Clannad_VN_Flowchart_AfterStory.dot
dot -Tpng Clannad_VN_Flowchart_AfterStory.dot -o Clannad_VN_Flowchart_AfterStory.png

echo Clannad_VN_Flowchart_Doki_Doki_HS.dot
dot -Tpng Clannad_VN_Flowchart_Doki_Doki_HS.dot -o Clannad_VN_Flowchart_Doki_Doki_HS.png

echo Tomoyo_After_VN_Flowchart.dot
dot -Tpng Tomoyo_After_VN_Flowchart.dot -o Tomoyo_After_VN_Flowchart.png
