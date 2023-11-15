require("lvim.lsp.manager").setup("intelephense", {
  {
    files = {
      exclude = {
        "**/.git/**",
        "**/.svn/**",
        "**/.hg/**",
        "**/CVS/**",
        "**/.DS_Store/**",
        "**/node_modules/**",
        "**/bower_components/**",
        "**/.history/**",
      }
    },
  }
})
