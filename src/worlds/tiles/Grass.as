package worlds.tiles {
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	public class Grass extends Tile {
		[Embed(source='/assets/worlds/tiles/grass.png')]
		private const GROUND_PNG:Class;
		
		public function Grass(posX:int, posY:int) {
			graphic = new Image(GROUND_PNG);
			type = 'grass';
			super(posX, posY);
		}
	}
}