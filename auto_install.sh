#/bin/sh
# 사용자에게 wsl 환경인지 물어본후 그에 맞게 설치
echo "WSL 환경인가요? (y/n)"
read answer
#wsl 환경이 아니라면
if [ "$answer" != "${answer#[Yy]}" ] ;
    then sed -i '/8/d' .shell/alias
fi
cp ~/.bashrc .shell/defaults
cp .bashrc ~/.bashrc
cp -r .shell ~/.shell
source ~/.bashrc
