cp df/.xinitrc $HOME/.xinitrc

cp df/.zshrc $HOME/.zshrc

cp df/kitty.conf $HOME/.config/kitty/kitty.conf

cp df/monitors.sh $HOME/.config/monitors.sh

cp df/polybar.sh $HOME/.config/polybar.sh
mkdir -p $HOME/.config/polybar
cp df/polybar.ini $HOME/.config/polybar/config.ini

mkdir -p $HOME/.config/i3
cp df/i3 $HOME/.config/i3/config

mkdir -p                $HOME/.config/nvim
cp df/init.vim          $HOME/.config/nvim/init.vim
cp df/coc-settings.json $HOME/.config/nvim/coc-settings.json

if [ ! -f "$HOME/.config/antigen.zsh" ]; then
  curl -L git.io/antigen > $HOME/.config/antigen.zsh
fi
