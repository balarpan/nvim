local opt = vim.opt

vim.cmd [[syntax enable]]
-- vim.cmd [[colorscheme habamax]]
-- vim.cmd [[colorscheme kanagawa]]

opt.ignorecase = true              -- Игнорировать регистр при поиске
opt.smartcase = true               -- Но учитывать, если в запросе есть заглавные буквы

-- Visual settings --
opt.termguicolors = true           -- Поддержка 24-bit цветов
opt.number = true                  -- Line numbers
opt.relativenumber = false         -- Relative line numbers
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
opt.errorbells = flase             -- No error bells
-- opt.mouse = "a" -- Включить мышь во всех режимах
opt.mouse = "n"
opt.timeoutlen = 400 -- Время ожидания комбинаций клавиш (мс)


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

