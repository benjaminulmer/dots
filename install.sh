#!/usr/bin/env fish

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish

sudo apt install btop
sudo apt install bat
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install jethrokuan/z

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

curl https://sh.rustup.rs -sSf | sh
fish_add_path /home/benjaminulmer/.cargo/bin/
rustup default stable
cargo install sd
cargo install lsd

mkdir -p ~/.local/share/fonts
cp RobotoMono/*.ttf ~/.local/share/fonts/

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage /home/benjaminulmer/.local/bin

fish_add_path /home/benjaminulmer/.local/kitty.app/bin/
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /home/benjaminulmer/.local/kitty.app/bin/kitty 50

cargo install lsd
cargo install sd

