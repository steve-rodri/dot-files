require('keyboard') -- Load Hammerspoon bits from https://github.com/jasonrudolph/keyboard
hs.console.darkMode(true)
hs.console.clearConsole()
if hs.console.darkMode() then
    hs.console.outputBackgroundColor{ white = 0 }
    hs.console.consoleCommandColor{ white = 1 }
    hs.console.alpha(.8)
end
