# diffstore.nvim

A harpoon-style floating buffer to save and quickly open [diffview.nvim](https://github.com/sindrets/diffview.nvim) diff entries per git repository.

## Why

When working with multiple branches, you often want to compare the same pairs over and over (`main..feature-x`, `develop..hotfix`, etc.). Instead of retyping them every time, DiffStore lets you save them in an editable buffer and open any entry with a single keystroke.

## How it works

- `:DiffStore` opens a floating window with your saved diff entries
- Edit the buffer like any normal buffer (add, remove, reorder lines)
- Press `<CR>` on a line to run `:DiffviewOpen` with that entry
- Entries auto-save when you close the window
- Entries are stored per git repository, so each project has its own list

## Requirements

- [diffview.nvim](https://github.com/sindrets/diffview.nvim)
- Git

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  'tkachenko0/diffstore.nvim',
  cmd = 'DiffStore',
  keys = {
    { '<leader>dd', '<cmd>DiffStore<cr>' },
  },
}
```

## Keymaps (inside the floating window)

| Key    | Action                         |
| ------ | ------------------------------ |
| `<CR>` | Open diff for the current line |
| `q`    | Close the window               |

## Storage

Entries are persisted in `~/.local/share/nvim/diffstore-nvim-entries.json`, keyed by git repository root.

## Example buffer content

```
main..develop
main..feature/auth
origin/main..HEAD
```
