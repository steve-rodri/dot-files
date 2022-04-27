local colorscheme = "onedark"

require("onedark").setup {
  style = "cool",
  transparent =  true
}

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end


