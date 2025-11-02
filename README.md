<p align="center">    
    <h2 align="center">Elixir</h2>
</p>

<p align="center">Neovim purple minimalistic dark colorscheme</p>

## Getting started

Install `nickshiro/elixir.nvim` using your favourite package manager:

### [vim.pack](https://github.com/neovim/neovim)

```lua
vim.pack.add({"https://github.com/nickshiro/elixir.nvim"}, { confirm = false })
vim.cmd.colorscheme("elixir")
```

### [lazy.nvim](https://github.com/folke/lazy.nvim)

**Structured Setup**

```lua
-- lua/plugins/elixir.lua
return {
	"nickshiro/elixir.nvim",
	name = "elixir",
	config = function()
		vim.cmd.colorscheme("elixir")
	end
}
```

**Single file**

```lua
{ "nickshiro/elixir.nvim", name = "elixir" }
```

