# godot-gpt.gdscript
Game-project template for Godot-engine (GDScript)

<br/>**Template separated to:**
* [Global](0_Global) _(scripts for AutoLoading, shared controls, assets (fonts, textures, audio/video), etc.)_
* [Opening](1_Opening) _(opening scene of the company/creator(s) presentation with own set of assets, commercial ad and etc.; can be closed via event `ui_skip_titles`)_
* [Game Splash Screen](2_GameSplash) _(opening scene of game presentation with own set of assets, commercial ad and etc.; can be closed via event `ui_skip_titles`)_
* [Main Menu](3_MainMenu) _(scene of the main menu with own set of assets)_
<br/>  Basically have buttons:
  * New Game _(will show first Game scene)_
  * Quit Game _(will function will open Ending scene)_
  * Mute/Unmute _(shared control)_
  * Language switcher _(shared control)_
  * Repeat Opening _(will show Opening scene)_
* [Game Menu](4_GameMenu) _(scene of popup menu at game-time with own set of assets; can be opened/closed via event `ui_toggle_game_menu`)_
<br/>  Basically have buttons:
  * Return _(will hide Game Menu and continue the game)_
  * Exit to Main Menu _(will show Main Menu scene)_
  * Quit Game _(function will open Ending scene)_
  * Mute/Unmute _(shared control)_
  * Language Switcher _(shared control)_
* [Game](5_Game) _(all game scenes and logic are here)_
* [Ending](6_Ending) _(ending scene of the company/creator(s)/game presentation with own set of assets, commercial ad and etc.; can be closed via event `ui_skip_titles`)_


<br/>**Assets separated to:**
* Fonts
* Images
* Sounds
* Video

<br/>**Shared controls:**
* Mute/Unmute button _(basically works with furst bus with index 0)_
* Language Switcher _(basically available English, Spanish and Russian languages)_

<br/>**Notes:**
* all animations and themes saved to text files.tres to easiest changing
* default screen resolution 640x480
* enabled touch emulation
* enabled 2d strech mode
* sensor_landscape screen orientation
* enabled oversampling usage for dynamic fonts

<br/>**Istall:**
* clone this repo to your local folder
* change Opening scene and Ending scene to your own _(don't forget to change titles and logos "Veupix", see section "Additionals for License" below)
* change Game Splash Sreen scene
* add/remove languages
* add functionality for Main Menu
* add functionality for Game Menu
* change Game scene and make your own game!

<br/>**Additionals for License:**
<br/><br/>Template distributed by MIT license with the exception of title "Veupix" and logo images of "Veupix". You can't use these in your own projects and should change to your own.
<br/>_(by default title "Veupix" and logo "Veupix" can be found at Opening scene and Ending scene)_