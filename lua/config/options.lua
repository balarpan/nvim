local opt = vim.opt
opt.expandtab = true -- Преобразовать табы в пробелы
opt.smarttab = true -- Умная вставка табов
opt.smartindent = true -- Автоматические отступы
opt.tabstop = 2 -- Какой ширины выглядит символ таба в файле
opt.softtabstop = 2 -- На сколько колонок двигает/удаляет Tab и Backspace
opt.shiftwidth = 2 -- Размер отступа для >> и <<

opt.scrolloff = 10 -- keep 10 lines above and below cursor while scrolling

vim.cmd [[syntax enable]]
-- vim.cmd [[colorscheme habamax]]
-- vim.cmd [[colorscheme kanagawa]]

opt.number = true -- Показывать номера строк
opt.numberwidth = 2 -- Ширина колонки с номерами
opt.fillchars = { eob = " " } -- Убрать символ ~ в конце буфера (визуальный мусор)

opt.ignorecase = true -- Игнорировать регистр при поиске
opt.smartcase = true -- Но учитывать, если в запросе есть заглавные буквы

opt.termguicolors = true -- Поддержка 24-bit цветов
-- opt.mouse = "a" -- Включить мышь во всех режимах
opt.mouse = "n"
opt.wrap = false -- Автоматический перенос длинных строк

opt.splitright = true   -- vertical split вправо
opt.splitbelow = true   -- horizontal split вниз

opt.undofile = false -- Сохранять историю отмен между сессиями
opt.swapfile = false -- Отключить swap-файлы (они раздражают)
opt.fileencoding = "utf-8" -- Кодировка файлов
opt.clipboard = "unnamedplus" -- Использовать системный буфер обмена (Для Wayland wl-clipboard. для X11 - xlip)

opt.timeoutlen = 400 -- Время ожидания комбинаций клавиш (мс)

opt.backup = false -- выключаем backup файлов
opt.writebackup = false

opt.inccommand = "split" -- display a split panel that displays all the effects of a substitution

-- autocomplete
-- opt.completeopt = "fuzzy,menuone,noselect,popup,preview" -- add 'popup' for docs (sometimes)
opt.completeopt = "fuzzy,menuone,popup,preview" -- add 'popup' for docs (sometimes)

-- spell Checking
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

