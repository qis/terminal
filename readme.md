# Terminal
1. Check out this repository.
2. Install [Windows Terminal](https://aka.ms/terminal).
3. Install [DejaVu LGC Sans Mono](https://dejavu-fonts.github.io/) font.
4. Right-click on [links/Console.lnk](Console.lnk) and select "Pin to Start".
5. Right-click on [links/Terminal.lnk](Terminal.lnk) and select "Pin to Start".
6. Execute [register.cmd](register.cmd) as Administrator.

## Command Prompt
Execute [colors.cmd](colors.cmd) as Administrator to set colors in the Command Prompt.

## Environment
1. Set the User environment variable `USERNAME`.
2. Set the User environment variable `PROMPT`.

```
$e[32m%USERNAME%$e[0m@$e[32m%COMPUTERNAME%$e[0m$s$e[34m$p$e[0m$s
```

## Settings
Press `CTRL+,` to open settings.

```js
{
  "$help": "https://aka.ms/terminal-documentation",
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

  "profiles": {
    "defaults": {
      "padding": "4, 3, 4, 3",
      "fontFace": "DejaVu LGC Sans Mono",
      "fontSize": 9,
      "useAcrylic": false,
      "acrylicOpacity": 1,
      "colorScheme": "onedark",
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
        "name": "Developer Command Prompt for VS 2022",
        "guid": "{e6a37dec-d9fe-5c05-8749-52a9ce91afd7}",
        "source": "Windows.Terminal.VisualStudio",
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
      "name":         "onedark",
      "black":        "#282C34",  // 00
      "red":          "#E06C75",  // 01
      "green":        "#98C379",  // 02
      "yellow":       "#E5C07B",  // 03
      "blue":         "#61AFEF",  // 04
      "purple":       "#C678DD",  // 05
      "cyan":         "#56B6C2",  // 06
      "white":        "#C6C6C6",  // 07
      "brightBlack":  "#3E4452",  // 08
      "brightRed":    "#E06C75",  // 09 -> 01
      "brightGreen":  "#98C379",  // 10 -> 02
      "brightYellow": "#E5C07B",  // 11 -> 03
      "brightBlue":   "#61AFEF",  // 12 -> 04
      "brightPurple": "#C678DD",  // 13 -> 05
      "brightCyan":   "#56B6C2",  // 14 -> 06
      "brightWhite":  "#F0F0F0",  // 15
      "background":   "#262626",  // BG
      "foreground":   "#C6C6C6",  // FG -> 07
      "cursorColor":  "#C6C6C6",  // CC -> FG
      "selectionBackground": "#ABB2BF"
    }
  ],

  "actions": [
    // Scroll
    { "command": "scrollUp", "keys": "shift+up" },
    { "command": "scrollDown", "keys": "shift+down" },
    { "command": "scrollUpPage", "keys": "shift+pageup" },
    { "command": "scrollDownPage", "keys": "shift+pagedown" },

    // Window
    { "command": "toggleFullscreen", "keys": "shift+f11" },
    { "command": "toggleFocusMode", "keys": "shift+f12" },

    // Settings
    { "command": "openSettings", "keys": "ctrl+," },

    // Function
    { "command": null, "keys": "f1" },
    { "command": null, "keys": "f2" },
    { "command": null, "keys": "f3" },
    { "command": null, "keys": "f4" },
    { "command": null, "keys": "f5" },
    { "command": null, "keys": "f6" },
    { "command": null, "keys": "f7" },
    { "command": null, "keys": "f8" },
    { "command": null, "keys": "f9" },
    { "command": null, "keys": "f10" },
    { "command": null, "keys": "f11" },
    { "command": null, "keys": "f12" }
  ]
}
```
