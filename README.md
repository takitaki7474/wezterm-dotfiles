## What is this?
dotfiles for wezterm configuration for myself.

**wezterm:**  
https://wezfurlong.org/wezterm/index.html

## Prerequisites
> [!WARNING]
> This is just a memo for myself.  

Make sure you can access takitaki7474 github.


**Register public key**  
```
cd ~
mkdir .ssh
cd .ssh
ssh-keygen -t rsa -b 4096 -C <gmail account>

## Here, check the public key and register it on takitaki7474 github
cat id_rsa.pub
```

**Clone this repository**  
```
git clone <ssh path for this repository>
```

## Settings

**Install wezterm and the necessary packages and configure various settings**  

```
cd wezterm-dotfiles
chmod u+x ./setup.sh
./setup.sh
```

## Reference

**starship**
https://starship.rs/
**zplug**
https://github.com/zplug/zplug
**zsh-syntax-highlighting**
https://github.com/zsh-users/zsh-syntax-highlighting
**zsh-autosuggestions**
https://github.com/zsh-users/zsh-autosuggestions
**fzf**
https://github.com/junegunn/fzf