apt-get update && \
  apt-get install -y \
  curl \
  git

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.deb && \
  apt install ./nvim-linux64.deb && \
  rm -f ./nvim-linux64.deb

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

mkdir -p $HOME/.config/nvim && \
  curl -L -o $HOME/.config/nvim/init.lua \
  https://raw.githubusercontent.com/Shutch/dotfiles/master/nvim-init.lua

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

echo "alias vim='nvim'" >> $HOME/.bashrc
