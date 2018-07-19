# godot-gpt.gdscript
Game-project template for Godot-engine (GDScript)

**Template separated to:**

* [Global](0_Global) _(scripts for AutoLoading, shared controls, assets (fonts, textures, audio/video), etc.)_

* [Opening](1_Opening) _(opening scene of the company/creator(s) presentation with own set of assets; can be closed via event `ui_skip_titles`)_

* [Game Splash Screen](2_GameSplash) _(opening scene of game presentation with own set of assets; can be closed via event `ui_skip_titles`)_

* [Main Menu](3_MainMenu) _(scene of the main menu with own set of assets)_

  Basically have buttons:
  * New Game _(will show first Game scene)_
  * Quit Game _(will function will open Ending scene)_
  * Mute/Unmute
  * Language switcher
  * Repeat Opening _(will show Opening scene)_

* [Game Menu](4_GameMenu) _(scene of popup menu at game-time with own set of assets; can be opened/closed via event `ui_toggle_game_menu`)_

  Basically have buttons:
  * Return _(will hide Game Menu and continue the game)_
  * Exit to Main Menu _(will show Main Menu scene)_
  * Quit Game _(function will open Ending scene)_
  * Mute/Unmute
  * Language switcher

* [Game](5_Game) _(all game scenes and logic are here)_

* [Ending](6_Ending) _(ending scene of the company/creator(s)/game presentation with own set of assets; can be closed via event `ui_skip_titles`)_

<br/>
<br/>

**Assets separated to:**
* Fonts
* Images
* Sounds
* Video

All animations and theme are saved to text .tres for easiest editing.

<br/>
<br/>

**Additionals for License:**

<br/>
<br/>

Template distributed by MIT license with the exception of title "Veupix" and logo images of "Veupix". You can't use these in your own projects.