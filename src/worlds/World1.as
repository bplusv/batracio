package worlds {
	import net.flashpunk.graphics.Text;
	import net.flashpunk.World;
	import net.flashpunk.FP;
	import worlds.tiles.Tile;
	import worlds.tiles.Brick;
	import worlds.tiles.Cloud;
	import worlds.tiles.Grass;
	import worlds.tiles.Water;
	import characters.Batracio;
	
	public class World1 extends World {
		private var batracio:Batracio;
		
		public function World1() {
			var i:int = 0;
			for (i = 0; i < 25; i++) {
				add(new Brick(i, 0));
				add(new Grass(i, 19));
			}
			for (i = 1; i < 19; i++) {
				add(new Brick(0, i));
				add(new Brick(24, i));
			}
			for (i = 1; i < 5; i++) {
				add(new Cloud(5 + i, 7));
				add(new Cloud(13 + i, 10));
				add(new Cloud(7 + i, 13));
				add(new Cloud(5 - i, 16));
			}
			
			batracio = new Batracio(2, 18);
			add(batracio);
		}
		
		override public function update():void {
			//if (player.y > FP.screen.height) {
				//player.moveTo(305, 225);
			//}
			super.update();
		}
	}
}