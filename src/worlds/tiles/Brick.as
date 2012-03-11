package worlds.tiles {
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	public class Brick extends Tile {
		[Embed(source='/assets/worlds/tiles/brick.png')]
		private const WALL_PNG:Class;
		
		public function Brick(posX:int, posY:int) {
			graphic = new Image(WALL_PNG);
			type = 'brick';
			super(posX, posY);
		}
	}
}