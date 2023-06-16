lvim.autocommands = {
  {
    "BufRead",
    {
      pattern = { "Brewfile", "Podfile" },
      command = "setfiletype ruby"
    }
  },

  {
    "BufNewFile",
    {
      pattern = { "Brewfile", "Podfile" },
      command = "setfiletype ruby"
    }
  }
}
