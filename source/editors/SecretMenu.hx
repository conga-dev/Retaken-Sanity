package editors;

#if desktop
import Discord.DiscordClient;
#end
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.addons.transition.FlxTransitionableState;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.system.FlxSound;

using StringTools;

class SecretMenu extends MusicBeatState
{
	var correctCount:Int = 0;

	private var grpTexts:FlxText;

	private var curSelected = 0;

	override function create()
	{
		FlxG.camera.bgColor = FlxColor.BLACK;
		#if desktop
		// Updating Discord Rich Presence
		DiscordClient.changePresence("Secret Menu", null);
		#end

		var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK); //.loadGraphic(Paths.image('menuDesat'));
		bg.scrollFactor.set();
		//bg.color = 0xFF353535;
		add(bg);

		grpTexts = new FlxText(0, 0, FlxG.width - 400, "Enter the Code", 64);
		grpTexts.setFormat(Paths.font("vcr.ttf"), 32, FlxColor.WHITE, CENTER, FlxTextBorderStyle.OUTLINE, FlxColor.GRAY);
		grpTexts.screenCenter();
		grpTexts.borderSize = 2.5;
		add(grpTexts);

		super.create();
	}

	override function update(elapsed:Float)
	{
		if (controls.BACK)
		{
			MusicBeatState.switchState(new MainMenuState());
		}
		switch(correctCount)
		{
			case 0:
				if (FlxG.keys.justPressed.A) {
					correctCount++;
				}
				else if (FlxG.keys.justPressed.ANY) {
					correctCount = 0;
				}
			case 1:
				if (FlxG.keys.justPressed.ONE) {
					correctCount++;
				}
				else if (FlxG.keys.justPressed.ANY) {
					correctCount = 0;
				}
			case 2:
				if (FlxG.keys.justPressed.ONE) {
					correctCount++;
				}
				else if (FlxG.keys.justPressed.ANY) {
					correctCount = 0;
				}
			case 3:
				if (FlxG.keys.justPressed.THREE) {
					correctCount++;
				}
				else if (FlxG.keys.justPressed.ANY) {
					correctCount = 0;
				}
			case 4:
				FlxG.sound.play(Paths.sound('ding'));
				FlxG.save.data.lostAvailable = 2;
				FlxG.save.flush();
				MusicBeatState.switchState(new MainMenuState());
		}
		super.update(elapsed);
	}
}