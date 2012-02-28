package  
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	public class leWater extends Entity{
		[Embed(source = 'assets/water.png')]
		private const WATER:Class;
		public function leWater(posX:int, posY:int) {
			graphic = new Image(WATER);
			setHitbox(32, 32);
			type="water"; 
			x = posX * 32;
			y = posY * 32;
		}
		
	}

}