#!/bin/bash

GREEN="\033[0;32m"
YELLOW="\033[1;33m"
RED="\033[0;31m"
RESET="\033[0m"

if [ -d "$HOME/.config/nvim" ]; then
    echo -e "${YELLOW}⚠️  Existing nvim configuration found. Renaming it to nvim_backup...${RESET}"
    mv "$HOME/.config/nvim" "$HOME/.config/nvim_backup"
    echo -e "${GREEN}✅ Renamed to nvim_backup.${RESET}"
fi

mkdir -p ~/.config/nvim

echo -e "${YELLOW}🔄 Cloning the repository...${RESET}"
temp_dir=$(mktemp -d)
git clone --quiet https://github.com/hsanirudh/Neovim_lua.git "$temp_dir"

echo -e "${YELLOW}🚚 Moving config files to ~/.config/nvim...${RESET}"
mv "$temp_dir/init.lua" ~/.config/nvim/
mv "$temp_dir/stylua.toml" ~/.config/nvim/
mv "$temp_dir/lua" ~/.config/nvim/

# Clean up the temporary directory
rm -rf "$temp_dir"

echo -e "${GREEN}🎉 Neovim configuration has been set up! ${RESET}"
echo -e "${YELLOW}Please install ripgrep!! ${RESET}"
echo -e "${RED}🤓 Run Nvim now!! ${RESET}"


