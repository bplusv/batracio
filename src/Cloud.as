package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	public class Cloud extends Entity
	{
		[Embed(source = 'assets/cloud.png')]
		private const CLOUD:Class;
		public function Cloud(posX:int, posY:int) 
		{
			graphic = new Image(CLOUD);
			setHitbox(32, 32);
			type="wall"; 
			x = posX * 32;
			y = posY * 32;			
		}
		
	}

}