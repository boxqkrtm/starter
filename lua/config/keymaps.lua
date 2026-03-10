-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

if vim.g.neovide then
  vim.keymap.set({ "n", "v" }, "<C-ScrollWheelUp>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>")
  vim.keymap.set({ "n", "v" }, "<C-ScrollWheelDown>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>")
end

local hangul_qwerty_maps = {
  ["ㅂ"] = "q",
  ["ㅈ"] = "w",
  ["ㄷ"] = "e",
  ["ㄱ"] = "r",
  ["ㅅ"] = "t",
  ["ㅛ"] = "y",
  ["ㅕ"] = "u",
  ["ㅑ"] = "i",
  ["ㅐ"] = "o",
  ["ㅔ"] = "p",

  ["ㅁ"] = "a",
  ["ㄴ"] = "s",
  ["ㅇ"] = "d",
  ["ㄹ"] = "f",
  ["ㅎ"] = "g",
  ["ㅗ"] = "h",
  ["ㅓ"] = "j",
  ["ㅏ"] = "k",
  ["ㅣ"] = "l",

  ["ㅋ"] = "z",
  ["ㅌ"] = "x",
  ["ㅊ"] = "c",
  ["ㅍ"] = "v",
  ["ㅠ"] = "b",
  ["ㅜ"] = "n",
  ["ㅡ"] = "m",

  ["ㅃ"] = "Q",
  ["ㅉ"] = "W",
  ["ㄸ"] = "E",
  ["ㄲ"] = "R",
  ["ㅆ"] = "T",
  ["ㅒ"] = "O",
  ["ㅖ"] = "P",
}

for from, to in pairs(hangul_qwerty_maps) do
  vim.keymap.set({ "n", "x", "o" }, from, to, { desc = "Hangul " .. from .. " -> " .. to })
end
