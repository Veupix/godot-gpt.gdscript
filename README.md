# godot-gpt.gdscript
Game-project template for Godot-engine (GDScript)

**Template separated to:**
* [Global](0_Global)<br/>
_Scripts for AutoLoading, global assets (fonts, textures, audio/video), etc._

* [Opening](1_Opening)<br/>
_Opening scene of the company/creator(s) presentation with own set of assets; can be closed via event `ui_skip_titles`_

* [Game Splash Screen](2_GameSplash)<br/>
_Opening scene of game presentation with own set of assets; can be closed via event `ui_skip_titles`_

* [Main Menu](3_MainMenu)<br/>
_Scene of the main menu with own set of assets._<br/><br/>
Basically have buttons:
  * New Game _(will show first Game scene)_
  * Quit Game _(will function will open Ending scene)_
  * Mute/Unmute
  * Language switcher
  * Repeat Opening _(will show Opening scene)_

* [Game Menu](4_GameMenu)<br/>
_Scene of popup menu at game-time with own set of assets; can be opened/closed via event `ui_toggle_game_menu`_<br/><br/>
Basically have buttons:
  * Return _(will hide Game Menu and continue the game)_
  * Exit to Main Menu _(will show Main Menu scene)_
  * Quit Game _(function will open Ending scene)_

* [Game](5_Game)<br/>
_All game scenes and logic are here._

* [Ending](6_Ending)<br/>
_Ending scene of the company/creator(s)/game presentation with own set of assets; can be closed via event `ui_skip_titles`_

**Assets separated to:**
* Fonts
* Images
* Sounds
* Video

All animations and theme are saved to text .tres for easiest editing.