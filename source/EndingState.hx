package;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;


class EndingState extends MusicBeatState
{

	var _goodEnding:Bool = false;
	
	public function new(goodEnding:Bool = true) 
	{
		super();
		_goodEnding = goodEnding;
		
	}
	
	override public function create():Void 
	{
		trace(PlayState.storyWeek);
		super.create();	
		var end:FlxSprite = new FlxSprite(0, 0);
		FlxG.camera.fade(FlxColor.BLACK, 0.8, true);
		if (PlayState.storyWeek == 1)		
			end.loadGraphic(Paths.image("ending1"));
		add(end);
	}
	
	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed);
		
		if (FlxG.keys.pressed.ENTER){
			endIt();
		}
		
	}
	
	
	public function endIt(e:FlxTimer=null){
		trace("ENDING STATE BOIII");
		FlxG.switchState(new CreditsState());
	}
	
}