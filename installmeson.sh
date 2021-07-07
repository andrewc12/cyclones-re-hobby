
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




sudo apt-get install python3 python3-pip python3-setuptools \
                       python3-wheel ninja-build

sudo apt-get remove meson


sudo pip3 install --upgrade meson



