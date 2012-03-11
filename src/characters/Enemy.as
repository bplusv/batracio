package characters
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	
	public class Enemy extends Entity
	{
		  [Embed(source='assets/enemy.png')]
			private const ENEMY:Class
		public function theEnemy() 
		{ 	 
			graphic = new Image(ENEMY);
			setHitbox(13, 26)
			type = "enemy";
			x = 200;
		    y = 420;
		}
		
		override public function update():void
		{
			
		}
	}

}