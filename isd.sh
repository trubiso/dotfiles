PKG="sudo pacman -S"

if [ $# -ne 1 ]; then
  echo Package manager not passed in, assuming \"sudo pacman -S\"
else
  PKG=$1
fi

soft="neovim kitty dmenu i3-wm i3lock polybar zsh dunst pavucontrol nitrogen"
deps="universal-ctags nodejs npm clang cmake"

echo Installing software...
$PKG $soft

echo Installing dependencies...
$PKG $deps
echo NodeJS version may be off \(current: $(node -v)\)

echo Finished installing packages
