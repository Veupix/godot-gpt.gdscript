# godot-est.gdscript
Game-project template for Godot-engine (GDScript)

**Template separated to:**
* [Global](0_Global)<br/>
_Scripts for AutoLoading, global assets (fonts, textures, audio/video), etc._

* [Opening](1_Opening)<br/>
_Opening scene of the company/creator(s) presentation with own set of assets._

* [Game Splash Screen](2_GameSplash)<br/>
_Opening scene of game presentation with own set of assets._

* [Main Menu](3_MainMenu)<br/>
_Scene of the main menu with own set of assets._
Basically have buttons:
  * New Game _(will show first Game scene)_
  * Quit Game _(will call function quit from global module_ GameApp.gd)[0_Global/GameApp.gd]_)_
  * Mute/Unmute _(will call functions from global module_ (GameAudio.gd)[0_Global/GameAudio.gd]_)_
  * Language switcher _(basically English, Spanish, Russian; will call functions from global module_ (GameLang.gd)[0_Global/GameLang.gd]_)_
  * Repeat Opening _(will show Opening scene)_

* [Game Menu](4_GameMenu)<br/>
_Scene of popup menu at game-time with own set of assets._

* [Game](5_Game)<br/>
_All game scenes and logic are here._

* [Ending](6_Ending)<br/>
_Ending scene of the company/creator(s)/game presentation with own set of assets._

**Assets separated to:**
* Fonts
* Images
* Sounds
* Video

All animations and theme are saved to text .tres for easiest editing.