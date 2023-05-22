# config

Welcome to my daily used editor configuration.

Perhaps every programmers know that **vim** is powerful, but it is very difficult to configure vim or neovim by oneself. I spent several days trying to use LSP + MSVC on Windows but found it extremely difficult and uncomfortable. Therefore, **vim as plugins** have become a compromise solution and a personal choice for me. Here I recommend using the **vscode neovim** plugin. Together with lua scripts, hop and other neovim plugins, as well as the vscode plugins we are familiar with, you can customize a very powerful editor.

Before using vim, it is recommended to **swap** the positions of your **`CapsLock` and `Ctrl`** keys. This will make `Ctrl` closer to your hands even than `shift`, which is crucial for fast programming.

Then, you are ready to see how I configure my editors.



## Plugins Required

```lua
neovim:
	hop
vscode:
	Bookmarks
	Text Marker
	Better Comments
	... -- see settings.json for more details
```



## Important Keymaps

Here lists some extremely important keymaps.



### System

I use `PowerToys` to implement the following 3 mappings. A little bit extreme, maybe...

```lua
<Capslock> <-> <Ctrl>      -- as I said before
'          <-> <Backspace> -- C++/CUDA programmers seldom use ', they use "
<C-;>       -> <Enter>     -- Ctrl is now closer than Enter
```



### Insert Mode

```lua
fj -> <ESC>        -- more comfortable than jj for me
f; -> <ESC>A;<ESC> -- I'm a C++/CUDA programmer
```



### Normal Mode

```lua
<Space> -> viw

u       -> similar to ideavim, try it

f       -> hop 1 char
;       -> hop word

m       -> toggle bookmark
<C-i>   -> go to previous bookmark
<C-o>   -> go to next bookmark

<TAB>   -> highlight word

<ESC>   -> clear all bookmarks and highlights

<C-e>   -> explorer
<C-f>   -> find in files
<C-t>   -> terminal
<C-S-l> -> return back to editor
<C-S-k> -> return back to editor

gd      -> peek definition
gD      -> reveal definition
gf      -> peek declaration
gF      -> reveal declaration

<C-h>   -> ^ -- ^ and $ locate far from your hands, right?
<C-l>   -> $
```



### Visual Mode

```lua
<Space> -> search selected -- so, <space><space> searchs the current word
```

