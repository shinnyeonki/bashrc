#/bin/sh
cp ~/.bashrc .bashrc.d/defaults
cp .bashrc ~/.bashrc
cp -r .shell ~/.bashrc.d
source ~/.bashrc
