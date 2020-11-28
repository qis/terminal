# Terminal
1. Check out this repository.
2. Install [DejaVu LGC Sans Mono](https://dejavu-fonts.github.io/) font.
3. Right-click on [links/Console.lnk](Console.lnk) and select "Pin to Start".
4. Right-click on [links/Terminal.lnk](Terminal.lnk) and select "Pin to Start".
5. Execute [register.cmd](register.cmd) as Administrator.

## Settings
Set the User environment variable `USERNAME`.

```
qis
```

Set the User environment variable `PROMPT`.

```
$e[32m%USERNAME%$e[0m@$e[32m%COMPUTERNAME%$e[0m$s$e[34m$p$e[0m$s
```

Start the terminal and press `CTRL+,` to modify [settings](https://aka.ms/terminal).

```js
{
  // https://aka.ms/terminal-global-settings
  "$schema": "https://aka.ms/terminal-profiles-schema",
  "defaultProfile": "{0caa0dad-35be-5f56-a8ff-afceeeaa6101}",

  "copyOnSelect": true,
  "copyFormatting": true,
  "showTabsInTitlebar": false,
  "showTerminalTitleInTitlebar": true,
  "multiLinePasteWarning": false,
  "alwaysShowTabs": false,
  "initialCols": 150,
  "initialRows": 45,

  // https://aka.ms/terminal-profile-settings
  "profiles": {
    "defaults": {
      "padding": "4, 3, 4, 3",
      "fontFace": "DejaVu LGC Sans Mono",
      "fontSize": 9,
      "useAcrylic": false,
      "acrylicOpacity": 1,
      "colorScheme": "default",
      "cursorShape": "vintage",
      "closeOnExit": "always",
      "cursorHeight": 25
    },
    "list": [
      {
        "name": "Console",
        "guid": "{0caa0dad-35be-5f56-a8ff-afceeeaa6101}",
        "icon": "C:\\Users\\Qis\\.terminal\\icons\\console.ico",
        "commandline": "cmd.exe",
        "hidden": false
      },
      {
        "name": "Terminal",
        "guid": "{2c4de342-38b7-51cf-b940-2309a097f518}",
        "icon": "C:\\Users\\Qis\\.terminal\\icons\\terminal.ico",
        "source": "Windows.Terminal.Wsl",
        "hidden": false
      },
      {
        "name": "PowerShell",
        "guid": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",
        "commandline": "powershell.exe",
        "hidden": false
      },
      {
        "name": "Azure Cloud Shell",
        "guid": "{b453ae62-4e3d-5e58-b989-0a998ec441b8}",
        "source": "Windows.Terminal.Azure",
        "hidden": true
      }
    ]
  },

  // https://aka.ms/terminal-color-schemes
  "schemes": [
    {
      "name": "default",
      "black": "#1e1e1e",
      "red": "#ff615a",
      "green": "#b1e969",
      "yellow": "#ebd99c",
      "blue": "#5da9f6",
      "purple": "#e86aff",
      "cyan": "#82fff7",
      "white": "#dcdcdc",
      "brightBlack": "#787878",
      "brightRed": "#f58c80",
      "brightGreen": "#ddf88f",
      "brightYellow": "#eee5b2",
      "brightBlue": "#a5c7ff",
      "brightPurple": "#ddaaff",
      "brightCyan": "#b7fff9",
      "brightWhite": "#ffffff",
      "cursorColor": "#dcdcdc",
      "background": "#1e1e1e",
      "foreground": "#dcdcdc"
    }
  ],

  // https://aka.ms/terminal-keybindings
  "keybindings": [
    // Pane: Split
    { "command": { "action": "splitPane", "split": "horizontal"}, "keys": "ctrl+shift+-" },
    { "command": { "action": "splitPane", "split": "vertical"}, "keys": "ctrl+shift+plus" },

    // Pane: Close
    { "command": "closePane", "keys": "ctrl+shift+w" },

    // Pane: Resize
    { "command": { "action": "resizePane", "direction": "down" }, "keys": "alt+shift+down" },
    { "command": { "action": "resizePane", "direction": "left" }, "keys": "alt+shift+left" },
    { "command": { "action": "resizePane", "direction": "right" }, "keys": "alt+shift+right" },
    { "command": { "action": "resizePane", "direction": "up" }, "keys": "alt+shift+up" },

    // Pane: Focus
    { "command": { "action": "moveFocus", "direction": "down" }, "keys": "alt+down" },
    { "command": { "action": "moveFocus", "direction": "left" }, "keys": "alt+left" },
    { "command": { "action": "moveFocus", "direction": "right" }, "keys": "alt+right" },
    { "command": { "action": "moveFocus", "direction": "up" }, "keys": "alt+up" },

    // Scroll
    { "command": "scrollUp", "keys": "shift+up" },
    { "command": "scrollDown", "keys": "shift+down" },
    { "command": "scrollUpPage", "keys": "shift+pageup" },
    { "command": "scrollDownPage", "keys": "shift+pagedown" },

    // Window
    { "command": "toggleFullscreen", "keys": "f11" },
    { "command": "toggleFocusMode", "keys": "f12" },

    // Tabs
    { "command": "openNewTabDropdown", "keys": "ctrl+shift+space" },

    // Settings
    { "command": "openSettings", "keys": "ctrl+," }
  ]
}
```
