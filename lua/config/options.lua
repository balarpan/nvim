local opt = vim.opt

vim.cmd [[syntax enable]]
-- vim.cmd [[colorscheme habamax]]
-- vim.cmd [[colorscheme kanagawa]]

opt.ignorecase = true              -- Игнорировать регистр при поиске
opt.smartcase = true               -- Но учитывать, если в запросе есть заглавные буквы

-- Visual settings --
opt.termguicolors = true           -- Поддержка 24-bit цветов
opt.number = true                  -- Line numbers
opt.relativenumber = true         -- Relative line numbers
opt.expandtab = true               -- Преобразовать табы в пробелы
opt.smarttab = true                -- Умная вставка табов
opt.smartindent = true             -- Автоматические отступы
opt.autoindent = true              -- Copy indent from current line
opt.tabstop = 2                    -- Какой ширины выглядит символ таба в файле
opt.softtabstop = 2                -- На сколько колонок двигает/удаляет Tab и Backspace
opt.shiftwidth = 2                 -- Размер отступа для >> и <<
opt.ignorecase = true              -- Игнорировать регистр при поиске
opt.smartcase = true               -- Но учитывать, если в запросе есть заглавные буквы
opt.scrolloff = 10                 -- keep 10 lines above and below cursor while scrolling
opt.sidescrolloff = 5              -- keep 8 columns left/right cursor
opt.wrap = false                   -- Автоматический перенос длинных строк
opt.splitright = true              -- vertical split вправо
opt.splitbelow = true              -- horizontal split вниз
opt.statusline:append(" %y")       -- filetype at the end of statusline
-- Disable inside pickers some ugly out-of-the-box color scheme's
vim.cmd([[set wildignore+=blue.vim,delek.vim,elflord.vim,industry.vim,koehler.vim,morning.vim,murphy.vim,peachpuff.vim,ron.vim,shine.vim,slate.vim,sorbet.vim,torte.vim,zaibatsu.vim,zellner.vim]])


-- Autocomplete --
-- opt.completeopt = "fuzzy,menuone,noselect,popup,preview" -- add 'popup' for docs (sometimes)
opt.completeopt = "fuzzy,menuone,popup,preview" -- add 'popup' for docs (sometimes)
opt.inccommand = "split"           -- display a split panel that displays all the effects of a substitution
-- opt.pumheight = 10             -- popup menu height
-- opt.pumblend = 10              -- popup menu transparency


-- File operations --
opt.backup = false                 -- выключаем backup файлов
opt.writebackup = false            -- don'r create backup before writing
opt.swapfile = false               -- don't create swap file
opt.autoread = true                -- Auto reload files changed outside vim
opt.autowrite = false              -- Don't autosave
opt.undofile = false               -- Сохранять историю отмен между сессиями
opt.swapfile = false               -- Отключить swap-файлы (они раздражают)
opt.fileencoding = "utf-8"         -- Кодировка файлов


-- Behavior settings --
opt.errorbells = false             -- No error bells
-- opt.mouse = "a" -- Включить мышь во всех режимах
-- opt.mouse = "n"
opt.mouse = ""
opt.timeoutlen = 400 -- Время ожидания комбинаций клавиш (мс)

-- Code Folding --
opt.foldenable = true
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldlevel = 99       -- Set high fold level to keep all files open
opt.foldlevelstart = 99
opt.foldnestmax = 1      -- fold only one level down
-- fix issue when open new file and no folding method
vim.api.nvim_create_autocmd({ "BufEnter", "FileType" }, {
  callback = function()
    if vim.fn.expand("%:t") ~= "" then
      vim.opt_local.foldexpr = "v:lua.vim.treesitter.foldexpr()"
      pcall(vim.cmd, "normal! zx")
    end
  end,
})

-- Spell checking --
-- opt.spelllang = "en_us"
-- На Windows нужно создать папку ~\AppData\Local\nvim\spell
if vim.fn.has("win64") == 1 or vim.fn.has("win32") == 1 then
  local home_dir = os.getenv("USERPROFILE")
  local tdir = home_dir .. "\\AppData\\Local\\nvim\\spell"
  local response = os.execute( "cd " .. tdir )
  if response ~= 0 and home_dir then
    os.execute("mkdir " .. tdir)
  end
end
opt.spelllang = {"en_us", "ru_ru"}
opt.spell = true

