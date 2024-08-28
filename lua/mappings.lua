require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- 基本の移動セット
map("c", "<C-a>", "<Home>", { noremap = true })
map("c", "<C-b>", "<Left>", { noremap = true })
map("c", "<C-d>", "<Del>", { noremap = true })
map("c", "<C-e>", "<End>", { noremap = true })
map("c", "<C-f>", "<Right>", { noremap = true })
map("c", "<C-n>", "<Down>", { noremap = true })
map("c", "<C-p>", "<Up>", { noremap = true })
map("c", "<C-k>", "<Del>", { noremap = true })

map("i", "<C-a>", "<Home>", { noremap = true })
map("i", "<C-b>", "<Left>", { noremap = true })
map("i", "<C-d>", "<Del>", { noremap = true })
map("i", "<C-e>", "<End>", { noremap = true })
map("i", "<C-f>", "<Right>", { noremap = true })
map("i", "<C-h>", "<Backspace>", { noremap = true })
map("i", "<C-k>", "<C-o>d$", { noremap = true })
map("i", "<C-q>", '<C-v><Tab>', { noremap = true })

-- terminal
map("t", "<ESC>", "<C-\\><C-n>", { noremap = true, silent = true }) --nvimコマンドが使えるようになる

-- normal mode
map("n", "<C-n>", "<CMD>bnext<CR>", { noremap = true, silent = true })  -- バッファー間を行き来する
map("n", "<C-p>", "<CMD>bprev<CR>", { noremap = true, silent = true })  -- バッファー間を行き来する
map("n", "g<C-n>", "<CMD>tabnext<CR>", { noremap = true, silent = true }) -- タブ間を行き来する
map("n", "g<C-p>", "<CMD>tabprev<CR>", { noremap = true, silent = true }) -- タブ間を行き来する
map("n", "<C-f>n", "<CMD>cnext<CR>", { noremap = true, silent = true }) -- QuickFixリストを行き来する
map("n", "<C-f>p", "<CMD>cprevious<CR>", { noremap = true, silent = true }) -- QuickFixリストを行き来する
map("n", "<C-f>f", "<CMD>cfirst<CR>", { noremap = true, silent = true }) -- QuickFixリストの先頭にいく
map("n", "<C-f>l", "<CMD>clast<CR>", { noremap = true, silent = true }) -- QuickFixリストの最後にいく
map("n", "<C-f>q", "<CMD>cclose<CR>", { noremap = true, silent = true }) -- QuickFixを閉じる

-- リマッピング
map("n", "*", "*Nzz", { noremap = true, silent = true })

-- insert mode
map("i", "jk", "<ESC>") -- @TODO: 多分これも外したほうがいい

-- visual mode
map("v", "//", "y/\\V<C-R>=escape(@\",'/\\')<CR><CR>", { noremap = true }) -- visualモードで洗濯中の箇所を検索する
map("v", '<Leader>y', '"+y', { noremap = true }) -- クリップボードにコピー
map("v", '<Leader>t', ':Translate<CR>', { noremap = true }) -- クリップボードにコピー
