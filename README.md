
# Neovim Setup
Setup Neovim for `C/C++`, `Rust` and `Python`
## Requirements
### Neovim
make sure `neovim` 8+ is installed:
```bash
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update 
sudo apt install neovim
```
Check version:
```bash
$ nvim --version
NVIM v0.8.0-dev
Build type: RelWithDebInfo
LuaJIT 2.1.0-beta3
Compilation: /usr/bin/cc -g -O2 -fdebug-prefix-map=/build/neovim-GVRSs0/neovim-0.7.0~ubuntu1+git202205171518-f49699737-dd05b3569=. -fstack-protector-strong -Wformat -Werror=format-security -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1 -DNVIM_TS_HAS_SET_MATCH_LIMIT -DNVIM_TS_HAS_SET_ALLOCATOR -O2 -g -Og -g -Wall -Wextra -pedantic -Wno-unused-parameter -Wstrict-prototypes -std=gnu99 -Wshadow -Wconversion -Wdouble-promotion -Wmissing-noreturn -Wmissing-format-attribute -Wmissing-prototypes -Wimplicit-fallthrough -Wsuggest-attribute=pure -Wsuggest-attribute=const -Wsuggest-attribute=malloc -Wsuggest-attribute=cold -Wvla -fstack-protector-strong -fno-common -fdiagnostics-color=auto -DINCLUDE_GENERATED_DECLARATIONS -D_GNU_SOURCE -DNVIM_MSGPACK_HAS_FLOAT32 -DNVIM_UNIBI_HAS_VAR_FROM -DMIN_LOG_LEVEL=3 -I/build/neovim-GVRSs0/neovim-0.7.0~ubuntu1+git202205171518-f49699737-dd05b3569/build/config -I/build/neovim-GVRSs0/neovim-0.7.0~ubuntu1+git202205171518-f49699737-dd05b3569/src -I/build/neovim-GVRSs0/neovim-0.7.0~ubuntu1+git202205171518-f49699737-dd05b3569/.deps/usr/include -I/usr/include -I/build/neovim-GVRSs0/neovim-0.7.0~ubuntu1+git202205171518-f49699737-dd05b3569/build/src/nvim/auto -I/build/neovim-GVRSs0/neovim-0.7.0~ubuntu1+git202205171518-f49699737-dd05b3569/build/include
Compiled by buildd@lcy02-amd64-112

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
