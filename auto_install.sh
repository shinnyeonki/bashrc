#/bin/sh
# 사용자에게 wsl 환경인지 물어본후 그에 맞게 설치
echo "WSL 환경인가요? (y/n)"
read answer
if [ "$answer" != "${answer#[Yy]}" ] ; # wsl 환경인경우
    then sed -i '/8/d' .shell/alias
fi
cp ~/.bashrc .shell/default
cp .bashrc ~/.bashrc
cp -r .shell ~/.shell
source ~/.bashrc
