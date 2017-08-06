package;

import kha.Assets;
import kha.Scheduler;
import kha.System;
import kha.Framebuffer;

class Main{

	public static function main() {
		System.init({title: "Video Test", width: 800, height: 600}, init);
	}
	
	private static function init(): Void {
		Assets.loadEverything(start);
	}

	static function start(){
		Assets.videos.video_4k.play(true);
		System.notifyOnRender(render);
	}

	static function render(frame: Framebuffer): Void {
		var g = frame.g2;
		g.begin();
		g.drawVideo(Assets.videos.video_4k, 0, 0, frame.width, frame.height);
		g.end();
	}
}