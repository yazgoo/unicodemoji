# unicodemoji

unicode emojis in terminal and vim with fzf

# installing (vim)

Install fzf

```
Plug 'junegunn/fzf', { branch''dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
```

Install the plugin (vimplug)

```
Plug 'yazgoo/unicodemoji', { 'branch': 'main', 'dir': '~/.unicodemoji', 'do': './install' }
```

# installing (shell)

If you have already installed the plugin, you don't need to do that part.

You need fzf installed.

Otherwise run

```
./install
```
make sure that ~/.local/bin is in your PATH

# using it (vim)

enter:

```
:Unicodemoji
```

if you want a shortcut:

```
nmap <leader>u :Unicodemoji<CR>
```

# using it (shell)

```
$ unicodemoji
```
