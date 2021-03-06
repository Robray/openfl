package openfl.display; #if !openfl_legacy


import openfl._internal.renderer.RenderSession;
import openfl.geom.ColorTransform;
import openfl.geom.Matrix;


interface IBitmapDrawable {
	
	public var __worldTransform:Matrix;
	public var __worldColorTransform:ColorTransform;
	
	private var __blendMode:BlendMode;
	private var __cacheAsBitmap:Bool;
	
	public function __renderCairo (renderSession:RenderSession):Void;
	public function __renderCairoMask (renderSession:RenderSession):Void;
	public function __renderCanvas (renderSession:RenderSession):Void;
	public function __renderCanvasMask (renderSession:RenderSession):Void;
	public function __renderGL (renderSession:RenderSession):Void;
	public function __updateChildren (transformOnly:Bool):Void;
	public function __updateTransforms (?overrideTransform:Matrix = null):Void;
	
	public function __updateMask (maskGraphics:Graphics):Void;
	
}


#else
typedef IBitmapDrawable = openfl._legacy.display.IBitmapDrawable;
#end