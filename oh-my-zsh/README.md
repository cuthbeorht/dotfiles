# Oh My ZSH

## Installation

Run the following in a terminal:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Modifications

### Colours

If the olours for the prompts arent too nice, simply modify the theme file inside `$HOME/.oh-my-zsh/themes/{THEME NAME}

### Plugins

ZSH Syntax Highlinghting

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

ZSH Auto Suggestins

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

Modify the ZSHRC file:

```bashrc
plugins=(zsh-autosuggestions zsh-syntax-highlighting)
```