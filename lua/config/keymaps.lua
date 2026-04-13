-- mode - режим (n = normal, v = visual, i = insert)
-- lhs - комбинация клавиш, которую нажимаем
-- rhs - команда, которая выполняется
-- desc_or_opts - описание или таблица с опциями
-- silent = true - не показывать команду в командной строке при её выполнении
-- Например: map("n", "<leader>w", ":w<CR>", "Save file")
local function map(mode, lhs, rhs, desc_or_opts)
  local opts = {}

  if type(desc_or_opts) == "string" then
    opts = { desc = desc_or_opts }
  elseif type(desc_or_opts) == "table" then
    opts = desc_or_opts
  end
  opts.silent = opts.silent ~= false

  vim.keymap.set(mode, lhs, rhs, opts)
end

-- Space is a Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- После поиска (/something) Neovim подсвечивает все совпадения. Нажатие Esc уберет эту подсветку.
map("n", "<Esc>", ":noh<CR>", "Clear Highlight")

-- вместо :bnext просто нажмите ]b, а вместо :bprevious - [b
map("n", "]b", ":bnext<CR>", "Next Buffer")
map("n", "[b", ":bprevious<CR>", "Previous Buffer")

-- Когда вы разделите экран (:split или :vsplit), нужно быстро переключаться между окнами:
-- Стандартно в Vim это Ctrl+w, затем направление (h/j/k/l)
map("n", "<C-h>", "<C-w>h", "Move left")
map("n", "<C-j>", "<C-w>j", "Move down")
map("n", "<C-k>", "<C-w>k", "Move up")
map("n", "<C-l>", "<C-w>l", "Move right")

-- Export Markdown and other currently open file into Word file in same folder
local function pandoctoword()
  local file = vim.fn.expand("%")  -- Get the current file name
  local fileesc = vim.fn.shellescape(file)
  local outfile = vim.fn.expand("%:r")  .. ".docx"  -- Get the current file name
  local outfileesc = vim.fn.shellescape(outfile)
  local confdir = vim.fn.shellescape(vim.fn.stdpath("config"))
  local refstyle = confdir .. "/lua/assets/mystyle.docx"
  vim.cmd(":w")
  vim.cmd("!pandoc " .. fileesc .. " -o " .. outfileesc .. " --reference-doc=" .. refstyle)
end
-- map("n", "<leader>pw", ":w | !pandoc fnameescape(expand('%:p')) -o fnameescape(expand(%:r).docx<CR>", "Export to Word")
map("n", "<leader>pw", pandoctoword, "Export to Word")

