cp df/.xinitrc $HOME/.xinitrc
cp df/.zshrc $HOME/.zshrc

cp df/monitors.sh $HOME/.config/monitors.sh

mkdir -p $HOME/.config/i3
cp df/i3 $HOME/.config/i3/config

mkdir -p       $HOME/.config/i3status
cp df/i3status $HOME/.config/i3status/config

mkdir -p                $HOME/.config/nvim
cp df/init.vim          $HOME/.config/nvim/init.vim
cp df/coc-settings.json $HOME/.config/nvim/coc-settings.json

curl -L git.io/antigen > $HOME/.config/antigen.zsh
