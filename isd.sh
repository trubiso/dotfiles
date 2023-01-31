PKG="sudo pacman -S"

if [ $# -ne 1 ]; then
  echo Package manager not passed in, assuming \"sudo pacman -S\"
else
  PKG=$1
fi

soft="neovim kitty dmenu i3-wm i3lock i3status zsh dunst"
deps="universal-ctags nodejs npm clang cmake antigen-git"

echo Installing software...
$1 $soft

echo Installing dependencies...
$1 $deps
echo NodeJS version may be off \(current: $(node -v)\)

echo Finished installing packages
