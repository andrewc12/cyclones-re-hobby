
#Andrew Innes andrew.c12@gmail.com
# exit when any command fails
set -e

set -x


7za x -y iso/CCLONES.7z

#sudo apt install -y bchunk

bchunk -w CYCLONES.bin CYCLONES.cue CYCLONES


exit 0
