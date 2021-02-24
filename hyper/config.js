module.exports = {
  config: {
    fontSize: 17,
    fontFamily:
      'Input Mono Condensed, "DejaVu Sans Mono", Consolas, "Lucida Console", "Hack Nerd Font", monospace',
    fontWeight: "normal",
    fontWeightBold: "bold",
    lineHeight: 1,
    letterSpacing: 0,

    css: "",
    termCSS: "",
    padding: "3px 12px 0",

    cursorColor: "rgba(255, 255, 255, .5)",
    cursorAccentColor: "#000",
    cursorShape: "BLOCK",
    cursorBlink: false,

    backgroundColor: "#121F31",
    foregroundColor: "#fff",
    selectionColor: "#dfdfdf",
    borderColor: "#222",
    colors: {
      black: "#000000",
      red: "#C51E14",
      green: "#1DC121",
      yellow: "#C7C329",
      blue: "#0A2FC4",
      magenta: "#C839C5",
      cyan: "#20C5C6",
      white: "#C7C7C7",
      lightBlack: "#686868",
      lightRed: "#FD6F6B",
      lightGreen: "#67F86F",
      lightYellow: "#FFFA72",
      lightBlue: "#6A76FB",
      lightMagenta: "#FD7CFC",
      lightCyan: "#68FDFE",
      lightWhite: "#FFFFFF",
    },

    shell: "/bin/zsh",
    shellArgs: ["--login"],
    env: {},
    bell: false,
    copyOnSelect: false,
    defaultSSHApp: true,
    quickEdit: false,
    macOptionSelectionMode: "vertical",
    webGLRenderer: true,
    updateChannel: "stable",

    paneNavigation: {
      debug: false,
      hotkeys: {
        navigation: {
          up: "ctrl+shift+k",
          down: "ctrl+shift+j",
          left: "ctrl+shift+h",
          right: "ctrl+shift+l",
        },
        jump_prefix: "ctrl+shift", // completed with 1-9 digits
        permutation_modifier: "shift", // Added to jump and navigation hotkeys for pane permutation
        maximize: "ctrl+shift+enter",
      },
      showIndicators: true, // Show pane number
      indicatorPrefix: "^⇧", // Will be completed with pane number
      indicatorStyle: {
        // Added to indicator <div>
        position: "absolute",
        top: 0,
        left: 0,
        fontSize: "10px",
      },
      focusOnMouseHover: false,
      inactivePaneOpacity: 0.6, // Set to 1 to disable inactive panes dimming
    },
    hyperStatusLine: {
      footerTransparent: true,
      dirtyColor: "gold",
    },
  },

  plugins: [
    "hypercwd",
    "hyper-pane",
    "hyper-statusline",
    "hyperterm-safepaste",
    "hyper-search",
    "hyper-tab-icons",
    "hyper-hide-title",
    // "hyperborder",
  ],
  localPlugins: [],
  keymaps: {},
};
