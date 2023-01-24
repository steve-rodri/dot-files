local dap = require("dap")

for _, language in ipairs { "typescript", "javascript" } do
  dap.configurations[language] = {
    {
      type = "pwa-node",
      request = "launch",
      name = "Debug Jest Tests",
      -- trace = true, -- include debugger info
      runtimeExecutable = "node",
      runtimeArgs = {
        "./node_modules/jest/bin/jest.js",
        "--runInBand",
      },
      rootPath = "${workspaceFolder}",
      cwd = "${workspaceFolder}",
      console = "integratedTerminal",
      internalConsoleOptions = "neverOpen",
    },
  }
end

lvim.builtin.dap.ui.config.layouts = {

  {
    elements = {
      { id = "scopes", size = 0.33 },
      { id = "breakpoints", size = 0.17 },
      { id = "stacks", size = 0.25 },
      { id = "watches", size = 0.25 },
    },
    size = .25,
    position = "right",
  },
  {
    elements = {
      { id = "repl", size = 0.45 },
      { id = "console", size = 0.55 },
    },
    size = .25,
    position = "bottom",
  },
}
