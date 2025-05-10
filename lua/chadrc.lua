---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "one_light" },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.nvdash = {
  load_on_startup = true,

  header = {
    "⠀⠀⠀⠀⠀⠀⠸⠀⠀⠀⠈⡞⡄⠀⠃⠀⠸⠀⠉⣜⣇⠤⠀⠀⠀⠀⠀⠀⠀⠀                                     ",
    "⠀⠀⠀⠀⠀⢀⠃⠀⣀⠤⣔⣞⣧⣿⣭⣭⣭⣵⣶⣿⣮⣷⣄⠀⠀⠀⠀⠀⠀⠀                                     ",
    "⠀⠀⠀⠀⣠⢞⣪⣽⠶⠟⢻⢏⡏⠉⠉⠉⢹⠉⠉⠻⠻⣿⣿⣿⣄⠀⠀⠀⠀⠀                                     ",
    "⠤⡤⡄⣿⡾⠛⢉⠁⠀⢀⡮⠘⢿⡀⠀⠀⡆⣖⠒⢄⠀⡘⢿⣿⣿⣧⠀⠀⠀⠀                                     ",
    "⣪⡾⢛⡟⠀⢀⢸⠀⠀⡝⠀⠀⠈⢷⡀⠀⢱⢸⢢⠀⠀⠱⠈⢿⣿⣿⡢⠀⠀⠀                                     ",
    "⣿⠀⢸⠀⠀⠀⠸⢀⠜⠀⠀⠀⡀⠀⢳⡀⠘⠳⣆⠑⣄⠀⡇⠘⣿⣟⣿⠀⠀⠀                                     ",
    "⢹⠀⠈⡄⠀⠀⠰⣁⣰⢴⣿⢿⣷⠬⠀⠑⡀⡧⢼⢿⡝⣦⢴⡀⢹⠉⢹⡄⠀⠀    _   __         _    ________  ___",
    "⠘⡇⠀⠹⠀⠀⢶⠏⠀⠸⣿⠼⢭⠆⠀⠀⠈⢾⡸⣼⡇⢻⣾⣷⢸⠀⢸⣿⡄⠀   / | / /__  ____| |  / /  _/  |/  /",
    "⠀⣿⡀⠀⢇⠀⠈⢆⠀⠀⠈⠰⠉⠀⠀⠀⠀⠀⢕⠒⠀⠉⢿⡿⡞⠀⣼⣿⣿⠀  /  |/ / _ \\/ __ \\ | / // // /|_/ / ",
    "⢠⠋⠱⡀⠈⣧⡀⡦⠵⢤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⡇⠀⢻⣿⣿⠂ / /|  /  __/ /_/ / |/ // // /  / /  ",
    "⣸⣦⠄⣿⢄⡸⡏⠚⠄⠀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⢠⠙⠄⠀⠉⠁⠀/_/ |_/\\___/\\____/|___/___/_/  /_/   ",
    "⣿⠙⠻⣿⠀⢹⢻⣄⣰⡶⢍⢇⠑⢄⢹⠓⡀⠀⠀⠀⢀⠎⢻⠁⠀⠈⢆⠀⠀⠀                                     ",
    "⣿⠀⠀⢹⠀⠘⢸⠻⠘⡓⢄⠑⢵⡄⠑⢇⠐⡀⢀⠔⠁⠀⠈⡆⠀⠀⠀⢢⠀⠀                                     ",
    "⡏⠀⠀⠀⠀⠀⡆⡤⠤⠰⡒⡯⡹⠙⠄⠈⠀⠸⣿⡇⠀⠀⠀⠘⡀⠘⡀⠀⢣⠀                                     ",
    "⠇⠀⠀⡀⠀⠀⢃⠇⠀⠀⠘⣇⠑⠀⠀⠀⠀⠀⠙⣧⠀⠀⠀⠀⢱⡀⢱⠀⠈⠆                                     ",
    "⠀⠀⣀⣿⠠⠀⠘⠸⣶⣦⣤⣡⡁⡀⠀⠀⠀⠀⠀⠸⣆⠀⠀⠀⠀⢣⠈⡆⠀⠸                                     ",
  },

  buttons = {
    { txt = "  Find File", keys = "f", cmd = "Telescope find_files" },
    { txt = "  Recent Files", keys = "r", cmd = "Telescope oldfiles" },
    { txt = "  File Explorer", keys = "e", cmd = "NvimTreeToggle" },
    { txt = "󰋖  Help", keys = "h", cmd = "Telescope help_tags" },
    { txt = "󰈆  Exit", keys = "q", cmd = "qa!" },
  },
}

M.ui = {
  tabufline = {
    lazyload = false
  }
}

return M
