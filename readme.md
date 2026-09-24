# Liberators
Adds an ability to turn invaders into a friendly faction. Useful for those who enjoy early-game small-scale guerilla warfare more than painting map green in mid/late game, or for scenarios like WW2, where guerillas played a supporting role to conventional armies moving the frontline. 

Based on https://github.com/Westalgie/A3UExtender
## Installation
### Local
Launch Build.ps1. In Arma 3 Launcher: Mods -> Local Mod -> Choose "build/a3ue_liberators" in this folder -> Load the installed mod
### Steam
...

## Usage
Extender parameters -> REB and INV vs GOV mode = On
## Features
- Invader units don't attack rebel units and vice versa
- Invaders don't launch scripted attacks toward rebels
- GOV/INV attacks within specified distance from player/HQ are simulated
- Adjustable influence of INV control on War Level

Not implemented:
- Victory conditions
- Preventing Petros from giving missions against INV
## Details
Changes:
- functions\Base\fn_chooseAttack.sqf (modified): ignoring rebel attack targets if "REB and INV vs GOV mode = On".
- functions\Liberators\fn_initLiberators.sqf (added): makes INV friends with REB and vice versa after server init.
- functions\OrgPlayers\fn_tierCheck.sqf (modified): takes into account INV-controlled zones when calculating War Level
- core\Params.hpp, core\Stringtable.xml: Adds extender parameters


Playing with Rival Rebels not recommended (automatically turned off when enabling the extender, but not prohibited) - probably leads to RR units being friendly, but not to stopping their scripted attacks.

Don't expect the extender to be supported, updated, developed or fixed, or issues to be answered. Consider it abandoned.

Compatible with: Antistasi Ultimate v12.0.3
