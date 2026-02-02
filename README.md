# 🎮 AutoLiteFoot

An automated script for MTA (Multi Theft Auto) that makes using the LiteFoot technique easier during PvP combat.

## 📋 Description

**AutoLiteFoot** automates the rapid weapon-switching technique known as "LiteFoot" during PvP fights. The script monitors player inputs and executes the sequence automatically, improving efficiency and mechanical speed.

## 🎯 Features

- ✅ LiteFoot technique automation
- ✅ Enable/Disable via `/ltft` command
- ✅ Visual status indicator (ON/OFF)
- ✅ Support for Mouse2 or CapsLock input
- ✅ Chat feedback when enabling/disabling the script

## 🚀 How to Use

### Installation
1. Place the script folder inside your MTA server `resources` directory
2. Add the folder to the `server.cfg` file if necessary
3. Restart the server or use `/refresh`

### Commands
```
/ltft - Enables/Disables AutoLiteFoot (case-insensitive)
/LTFT - Same command in uppercase
```
### Status
- **ON** (green): The script is active and ready to use
- **OFF** (red): The script is disabled

## 📁 Files

- `c_LiteFoot.lua` - Client-side Lua script
- `meta.xml` - MTA configuration file

## ⚙️ Technical Details

### How It Works
The script listens to keyboard and mouse events:
- Detects Mouse2 or CapsLock presses
- Executes an automatic weapon-switching sequence with specific delays:
  - 5ms: First switch
  - 30ms: Second switch with condition

### Main Variables
- `isActive` - Script state (enabled/disabled)
- `x, y` - Screen dimensions
- `a, b` - Visual indicator position

## 📝 Addon Information

| Property | Value |
|----------|-------|
| **Author** | rougue_ |
| **Type** | Client Script |
| **Name** | AutoLiteFoot |
| **Version** | 1.1 |
| **Description** | Script that automates LiteFoot during PvP |

## ⚠️ Notes

- This is a **client-side** script
- Cache is disabled to ensure updates
- Works only while in-game
- The visual indicator appears in the top-left corner of the screen

## 🛠️ Development

Latest version: **1.1**  
Compatible with: **MTA:SA**

---

