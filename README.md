# godot-gpt.gdscript
Game-project template for [Godot](https://godotengine.org/) game engine ([GDScript](http://docs.godotengine.org/en/latest/getting_started/scripting/gdscript/gdscript_basics.html))

#### But Why?:
Just so as **not to waste time** creating **standard parts** and structure **from the beginning** _(like an `Opening`, `Main menu`, `Game menu`, `Ending`, etc.)_.

#### Requirements:
Only Godot engine.
<br/>_tested on Godot 3.0 (stable) and Godot 3.1 (alpha)_

#### Template is Separated to:
* [Global](0_Global) _(scripts for AutoLoading, [shared controls](#shared-controls), assets (fonts, textures, audio/video), etc.)_
* [Opening](1_Opening) _(opening scene of the company/creator(s) presentation with own set of assets, commercial ad and etc.; can be closed via event `ui_skip_titles`)_
* [Game Splash Screen](2_GameSplash) _(opening scene of game presentation with own set of assets, commercial ad and etc.; can be closed via event `ui_skip_titles`)_
* [Main Menu](3_MainMenu) _(scene of the main menu with own set of assets)_
  * Basically have buttons:
    * New Game _(will show first Game scene)_
    * Quit Game _(will function will open Ending scene)_
    * Mute/Unmute _(shared control)_
    * Language switcher _(shared control)_
    * Repeat Opening _(will show Opening scene)_
* [Game Menu](4_GameMenu) _(scene of popup menu at game-time with own set of assets; can be opened/closed via event `ui_toggle_game_menu`)_
  * Basically have buttons:
    * Return _(will hide Game Menu and continue the game)_
    * Exit to Main Menu _(will show Main Menu scene)_
    * Quit Game _(function will open Ending scene)_
    * Mute/Unmute _(shared control)_
    * Language Switcher _(shared control)_
* [Game](5_Game) _(all game scenes and logic are here)_
* [Ending](6_Ending) _(ending scene of the company/creator(s)/game presentation with own set of assets, commercial ad and etc.; can be closed via event `ui_skip_titles`)_


#### Assets are Separated to:
* Fonts _(contains fonts)_
* Images _(contains images, textures, sprites, etc.)_
* Locale _(contains translation of UI)_
* Sounds _(contains audio files, sound effects, music, etc.)_
* Video _(contains video files for splash screen, demo-scenes, etc.)_

#### Shared Controls:
* **Confirm** _(custom confirmation dialog without borders and title; has a question and two buttons: "Cancel" and "Ok")_
* **Copyright** _(label with your own copyright; by default displays on Opening, Game Splash and Ending scenes)_
* **LangSwitcher** _(dropdown list with available UI translations, basically available English, Spanish and Russian languages; by default displays on `QuickSettings` control)_
* **Mute** _(button to mute/unmute, basically works with first bus with index 0; by default displays on `QuickSettings` control)_
* **QuickSettings** _(horizontal panel with `LangSwitcher` and `Mute` controls; by default displays on Main Menu and Game Menu scenes)_
* **SkipHint** _(label how to skip a splash screen / demo scene; by default displays on Opening, Game Splash and Ending scenes)_
* **Joystick** _(controller for Joystick emulation; by default displays on Game scene)_
  * Settings:
    * `sensivity` _(skip N units before Joystick will be opened; by default `50`)_
    * `permanent` _(`true` will always displays controller on scene, `false` - on demand; **by default uses value of property `visible`**)_
    * `use_up` _(use up direction; by default `true`)_
    * `use_down` _(use down direction; by default `true`)_
    * `use_left` _(use left direction; by default `true`)_
    * `use_right` _(use right direction; by default `true`)_
  * Position:
    * `stick_angle` _(read only)_
    * `stick_speed` _(read only)_
    * `stick_vector` _(read only)_

#### Notes:
* all animations and themes are saved in `.tres` text files to easiest changing
* default screen resolution is `WSVGA` (`1024x600`)
* enabled `touch emulation`
* enabled `2d strech mode` with `expand` aspect
* `sensor_landscape` screen orientation
* enabled `oversampling` usage for dynamic fonts
* by default all controls and UI have a `English (en_US)` language
* basically available also `Spanish (es_ES)` and `Russian (ru_RU)` translations
* all translations are saved in [.po](https://en.wikipedia.org/wiki/Gettext) text files to easiest changing
* all text files have a `UTF-8 encoding` (sources, translations, text resources, etc.)
* [Computer Modern Unicode](https://sourceforge.net/projects/cm-unicode/) font ([MIT](https://en.wikipedia.org/wiki/MIT_License)) uses by default (placed to `0_Global/Accets/Fonts`)
  * Basically uses in:
    * `Entry/Margin.Theme`:`DefaultFont.tres`
    * `0_Global/Copyright.Theme`:`DefaultLittleFont.tres`
    * `0_Global/SkipHint.Theme`:`DefaultLittleFont.tres`
    * `1_Opening/Opening.Theme`:`DefaultFont.tres`
    * `2_GameSplash/GameSplash/GameTitle.Theme`:`DefaultFont.tres`
    * `3_MainMenu/MainMenu/Margin.Theme`:`DefaultFont.tres`
    * `4_GameMenu/GameMenu.Theme`:`DefaultFont.tres`
    * `6_Ending/Ending/Margin.Theme`:`DefaultFont.tres`

#### Installation and Usage:
1. clone this repo to your local folder, open project in [Godot](https://godotengine.org/) and change project's settings to your own _(title, resolution, etc.)_
2. change `Opening` _(`1_Opening/Opening.tscn`)_ and `Ending` _(`6_Ending/Ending.tscn`)_ scenes to your own _(don't forget to change titles and logos "Veupix", see section [Additionals for License](#additionals-for-license) below)_
3. change `Game Splash Sreen` scene _(`2_GameSplash/GameSplash.tscn`)_
4. change Menu scenes
    1. add functionality for the `Main Menu` scene _(`3_MainMenu/MainMenu.tscn`)_
    2. add functionality for the `Game Menu` scene _(`4_GameMenu/GameMenu.tscn`)_
5. make game-scenes and game-logic
    1. change `Game` scene _(`5_Game/Game.tscn`)_ and add sub-scenes to make your own game logic_
    2. change _(or delete)_ `JoystickLogic` _(`5_Game/JoystickLogic.gd`)_ to make your own logic of the virtual controller
6. add the multilanguage support
    1. add/remove languages _(`0_Global/Accets/Locale` and `Projcet Settings -> Localization -> Translations`)_
    2. expand the game translations _(`0_Global/Accets/Locale`)_

#### Additionals for License:
Template distributed under [MIT license](https://en.wikipedia.org/wiki/MIT_License) with the **exception of title "Veupix" and logo images of "Veupix"**.
 You **can't use this title and logo** in your own projects and you should to change these to your own
 _(note that by default title "Veupix" and logo "Veupix" can be found at Opening scene and Ending scene)_.
