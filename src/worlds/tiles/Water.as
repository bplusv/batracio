package worlds.tiles {
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	public class Water extends Tile {
		[Embed(source='/assets/worlds/tiles/water.png')]
		private const WATER_PNG:Class;
		
		public function Water(posX:int, posY:int) {
			graphic = new Image(WATER_PNG);
			type = 'water';
			super(posX, posY);
		}
	}
}