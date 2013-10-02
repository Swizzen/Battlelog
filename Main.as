package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.display.Sprite;
    import flash.events.MouseEvent;
    import flash.text.TextField;
    import flash.text.TextFieldType;
	
	/**
	 * ...
	 * @author Daniel Hansby
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			var enemyHp:int = 100;
			var HeroHp:int = 100;
			var EnemyDmg:int = 4;
			var HeroDmg:int = 4;
			var EnemyDamage:int;
			var HeroDamage:int;
			var HeroName:String = "Swizzen";
			var EnemyName:String = "Johan Cockie";
			
			
			
			var t:TextField = new TextField();
			t.border = true;
			t.width = 500;
			t.height = 1000;
			addChild(t);
			
			
			
			for (var i:int = 0; i <10 ; i++) 
			{
				HeroDamage = HeroDmg * Math.random() * 7;
				EnemyDamage = EnemyDmg * Math.random() * 7;
				
				enemyHp -= HeroDamage;
				HeroHp -= EnemyDamage;
				
				if (enemyHp < 0)
				{
					i++;
					enemyHp = 0;
				}
				
				t.appendText("Round " + String(i + 1) + "\n");
				t.appendText("\n")
				t.appendText(HeroName + " Attacks " + EnemyName + " And damaged him to " + enemyHp + "\n");
				t.appendText(EnemyName + " Attacks " + HeroName + " And damaged him to " + HeroHp + "\n");
				t.appendText ("\n");
				
				if (enemyHp <= 0) 
				{	
					t.appendText("\n" + "Swizzen Wins!");
				}
			}
			
			
			
		}
		
	}
	
}