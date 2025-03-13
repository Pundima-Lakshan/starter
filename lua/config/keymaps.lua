-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

function Map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }

  -- Extend the options with `which_key` description if provided
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end

  vim.keymap.set(mode, lhs, rhs, options)
end

Map("n", "<leader>bs", ":w<CR>", { desc = "Save buffer content to file" })
