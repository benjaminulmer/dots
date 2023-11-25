#!/usr/bin/env fish

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish

sudo apt install btop
sudo apt install exa
sudo apt install bat
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install jethrokuan/z

curl https://sh.rustup.rs -sSf | sh
fish_add_path /home/benjaminulmer/.cargo/bin/
cargo install sd

mkdir -p ~/.local/share/fonts
cp RobotoMono/*.ttf ~/.local/share/fonts/