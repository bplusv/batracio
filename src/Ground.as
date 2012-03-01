package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	public class Ground extends Entity
	{
		[Embed(source = 'assets/ground.png')]
		private const GROUND:Class;
		public function Ground(posX:int, posY:int) 
		{
			graphic = new Image(GROUND);
			setHitbox(32, 32);
			type="wall"; 
			x = posX * 32;
			y = posY * 32;
		}
		
	}

}