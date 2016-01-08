package;

import flixel.FlxState;
import flixel.FlxSprite;
import flixel.util.FlxPoint;
import flixel.tweens.FlxTween;

class MainState extends FlxState
{

	public function new()
	{
		super();
	}

	override public function create():Void
	{
		var f:flixel.FlxSprite = new flixel.FlxSprite();
		f.x = 0;
		f.y = 0;
		add(f);

		var c:FlxPoint = FlxPoint.get(f.x, f.y);
		var d0:FlxPoint = FlxPoint.get(f.x + 100, f.y);
		var d1:FlxPoint = FlxPoint.get(f.x, f.y + 100);

		FlxTween.linearPath(f, [c, d0, d1], 1, true);
	}
}
