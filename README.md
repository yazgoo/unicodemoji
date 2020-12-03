# 🐹 unicodemoji 

![screen capture](https://raw.githubusercontent.com/yazgoo/unicodemoji-gif/master/unicodemoji.gif)

⏩fast unicode emojis in terminal and vim with fzf ⌨ .

based on [gitmoji](https://github.com/carloscuesta/gitmoji/) and [emojis.json](https://gist.github.com/oliveratgithub/0bf11a9aff0d6da7b46f1490f86a71eb).

# 🐯 installing (vimplug)

Instal [jq](https://stedolan.github.io/jq/) (`apt install jq`, `pacman -Sy jq`, ...)

[Install fzf (vimplug) 💾](https://github.com/junegunn/fzf#as-vim-plugin)

Install the plugin (vimplug)

```
Plug 'yazgoo/unicodemoji'
```

# 🐖 installing (shell 🐚)

If you installed the plugin via vimplug, you can do:

```
ln -s ~/.config/nvim/plugged/unicodemoji/plugin/unicodemoji  ~/.local/bin/
```

Otherwise, copy plugin/unicodemoji in your `PATH`

# 🐪 using it (vim)

to get unicode emoji, enter:

```
:Unicodemoji
```

First launch may take some time depending on your bandwidth (due to json cache creation).

if you want a shortcut:

```
nmap <leader>u :Unicodemoji<CR>
```

to get emoji code, enter:

```
:UnicodemojiCode
```

if you want a shortcut:

```
nmap <leader>U :UnicodemojiCode<CR>
```

# 🐄 using it (shell 🐚)

With FZF:

```
$ unicodemoji
```

Without FZF (so that you can grep results) 👷 

```
$ unicodemoji --no-fzf
```

getting the emoji code (e.g. `:hamster:` for 🐹)

```
$ unicodemoji --code
```

