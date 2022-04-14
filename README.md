
# Neovim Setup
Setup Neovim for `C/C++`, `Rust` and `Python`
## Requirements
### Neovim
make sure `neovim` 5+ is installed:
```bash
sudo apt install neovim
```
Check version:
```bash
$ nvim --version
NVIM v0.6.1
Build type: Release
LuaJIT 2.1.0-beta3
Compiled by team+vim@tracker.debian.org

Features: +acl +iconv +tui
See ":help feature-compile"

system vimrc file: "$VIM/sysinit.vim"
fall-back for $VIM: "/usr/share/nvim"

Run :checkhealth for more info
```
### Clang
Install `clang` and `clangd` ( See [docs](https://clangd.llvm.org/installation.html) ):  
Note: change `14` with your desired version of `clang`
```bash
$ sudo apt install clang-14 clangd-14
$ sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-14 100
```

### rust-analyzer
for `rust` support install [rust-analyzer](https://rust-analyzer.github.io/manual.html#rust-analyzer-language-server-binary):
```bash
$ mkdir -p ~/.local/bin
$ curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
$ chmod +x ~/.local/bin/rust-analyzer
```
### pyright
for python support you need `pyright`
first make sure you have `nodejs` and `npm` installed and then run:
```bash
$ npm i -g pyright
```

### Other language servers
for other languages refer to `lspconfig` documentation:  
https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

## Configurations
### Neovim Plugin manager
Use any plugin manager you like, I used [packer](https://github.com/wbthomason/packer.nvim):

 ```bash
 git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 ```
 ### Copy Configurations
 Copy repo into `~/.config/nvim/` (THIS DELETES OLD `neovim` CONFIGURATIONS):
 ```bash
 $ rm -rf ~/.config/nvim/
 $ rm -rf ~/.local/share/nvim/
 $ git clone https://github.com/RYNEQ/nvim-config ~/.config/nvim/
 ```

 ### Install plugins
 If you use `packer` open `neovim` and type `:PackerSync` Otherwise refer to your plugin manager's plugin installation method

### Fonts
Install [Nerd-Fonts](https://github.com/ryanoasis/nerd-fonts#font-installation):
```bash
$ cd ~
$ git clone --depth 1 https://github.com/ryanoasis/nerd-fonts
$ cd nerd-fonts
$ ./install.sh
```
#### Configure terminal font
- Goto your terminal's font configuration and select a monospace font from nerd-fonts installed fonts (e.g. Hack)
- Close Terminal and open it again
