lvim.autocommands = {
  {
    "BufNewFile",
    {
      pattern = { "*.neon" },
      command = "set ft=yaml",
    }
  },
  {
    "BufRead",
    {
      pattern = { "*.neon" },
      command = "set ft=yaml",
    }
  }
}
