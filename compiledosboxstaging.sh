
#Andrew Innes andrew.c12@gmail.com
# exit when any command fails
set -e

set -x

#https://martin-thoma.com/colorize-your-scripts-output/
txtRed=$(tput setaf 1)    # Red
txtGreen=$(tput setaf 2)       #  Green
txtYellow=$(tput setaf 3)      #  Yellow
txtBlue=$(tput setaf 4)        #  Blue
txtPurple=$(tput setaf 5)      #  Purple
txtCyan=$(tput setaf 6)        #  Cyan
txtGray=$(tput setaf 7)        #  Gray
txtBold=$(tput bold)        #  Bold
txtReset=$(tput sgr0)     # Reset your text
echo "Roses are ${txtRed}red${txtReset}."
echo "[  ${txtGreen}OK${txtReset}  ]"
echo "[  ${txtGreen}${txtBold}OK${txtReset}  ]"

sudo apt install ccache build-essential libasound2-dev libpng-dev \
                 libsdl2-dev libsdl2-net-dev libopusfile-dev libfluidsynth-dev
#meson

git clone https://github.com/dosbox-staging/dosbox-staging.git
cd dosbox-staging

meson setup --wipe -Dbuildtype=release -Ddefault_library=static -Denable_debugger=heavy build

meson compile -C build
meson test -C build


sudo meson install -C build
#dosbox
#works

#since were entering build, we need to go up two levels
#DESTDIR=../../dsout meson install -C build
