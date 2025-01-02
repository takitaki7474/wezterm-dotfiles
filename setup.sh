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
)

for package in "${packages[@]}"; do
    if ! brew list "$package" &> /dev/null; then
        echo "Installing $package..."
        brew install --cask "$package"
    else
        echo "$package is already installed."
    fi
done

# copy ./wezterm.lua to home directory
cp ./.wezterm.lua $HOME