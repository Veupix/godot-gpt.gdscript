# godot-est.gdscript
Game-project template for Godot-engine (GDScript)

**Template separated to:**
* [Global](0_Global)<br/>
_Scripts for AutoLoading, global assets (fonts, textures, audio/video), etc._

* [Opening](1_Opening)<br/>
_Opening scene of the company/creator(s) presentation with own set of assets; can be closed via event `ui_close_opening`_

* [Game Splash Screen](2_GameSplash)<br/>
_Opening scene of game presentation with own set of assets; can be closed via event `ui_close_opening`_

* [Main Menu](3_MainMenu)<br/>
_Scene of the main menu with own set of assets._<br/>
Basically have buttons:
  * New Game _(will show first Game scene)_
  * Quit Game _(will call function quit from global module [GameApp.gd](0_Global/GameApp.gd#L1))_
  * Mute/Unmute _(will call functions from global module [GameAudio.gd](0_Global/GameAudio.gd#L1))_
  * Language switcher _(basically English, Spanish, Russian; will call functions from global module [GameLang.gd](0_Global/GameLang.gd#L1))_
  * Repeat Opening _(will show Opening scene)_

* [Game Menu](4_GameMenu)<br/>
_Scene of popup menu at game-time with own set of assets; can be opened/closed via event `ui_toggle_game_menu`_<br/>
Basically have buttons:
  * Return _(will hide Game Menu and continue the game)_
  * Exit to Main Menu _(will show Main Menu scene)_
  * Quit Game _(will call function quit from global module [GameApp.gd](0_Global/GameApp.gd#L1))_

* [Game](5_Game)<br/>
_All game scenes and logic are here._

* [Ending](6_Ending)<br/>
_Ending scene of the company/creator(s)/game presentation with own set of assets; can be closed via event `ui_close_opening`_

**Assets separated to:**
* Fonts
* Images
* Sounds
* Video

All animations and theme are saved to text .tres for easiest editing.