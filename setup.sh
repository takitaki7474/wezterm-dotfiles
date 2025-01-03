# install homebrew
if ! command -v brew &> /dev/null; then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

# install homebrew packages
packages=(
    wezterm
    starship
)

for package in "${packages[@]}"; do
    if ! brew list "$package" &> /dev/null; then
        echo "Installing $package..."
        brew install "$package"
    else
        echo "$package is already installed."
    fi
done

# copy ./wezterm.lua to home directory
echo "Copying wezterm.lua..."
if [ -e "$HOME/.wezterm.lua" ]; then
    cp "$HOME/.wezterm.lua" "$HOME/.wezterm.lua.bak"
fi
cp ./.wezterm.lua $HOME

# copy .zshrc to home directory
echo "Copying zshrc..."
if [ -e "$HOME/.zshrc" ]; then
    cp "$HOME/.zshrc" "$HOME/.zshrc.bak"
fi
cp ./.zshrc $HOME