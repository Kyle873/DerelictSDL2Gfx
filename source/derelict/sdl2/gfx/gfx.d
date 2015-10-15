module derelict.sdl2.gfx.gfx;

import derelict.util.system;
import derelict.util.loader;
    
import derelict.sdl2.gfx.primitives;

private
{
    static if (Derelict_OS_Windows)
        enum libNames = "SDL2_gfx.dll";
    else static if (Derelict_OS_Mac)
        enum libNames = "/usr/local/lib/libSDL2_gfx.dylib, /usr/local/lib/libSDL2/libSDL2_gfx.dylib, ../Frameworks/SDL2.framework/SDL2_gfx, /Library/Frameworks/SDL2.framework/SDL2_gfx, /System/Library/Frameworks/SDL2.framework/SDL2_gfx";
    else static if (Derelict_OS_Posix)
        enum libNames = "libSDL2_gfx.so, usr/local/lib/libSDL2_gfx.so";
    else
        static assert( 0, "Need to implement SDL2 libNames for this operating system." );
}

class DerelictSDL2GfxLoader : SharedLibLoader
{
    public this()
    {
        super(libNames);
    }
    
    protected override void loadSymbols()
    {
		// Pixel
		bindFunc(cast(void **)&pixelColor, "pixelColor");
		bindFunc(cast(void **)&pixelRGBA, "pixelRGBA");

		// Horizontal Line
		bindFunc(cast(void **)&hlineColor, "hlineColor");
		bindFunc(cast(void **)&hlineRGBA, "hlineRGBA");
		
		// Vertical Line
		bindFunc(cast(void **)&vlineColor, "vlineColor");
		bindFunc(cast(void **)&vlineRGBA, "vlineRGBA");
		
		// Rectangle
		bindFunc(cast(void **)&rectangleColor, "rectangleColor");
		bindFunc(cast(void **)&rectangleRGBA, "rectangleRGBA");
		
		// Rounded-Corner Rectangle
		bindFunc(cast(void **)&roundedRectangleColor, "roundedRectangleColor");
		bindFunc(cast(void **)&roundedRectangleRGBA, "roundedRectangleRGBA");
		
		// Filled rectangle (Box)
		bindFunc(cast(void **)&boxColor, "boxColor");
		bindFunc(cast(void **)&boxRGBA, "boxRGBA");
		
		// Rounded-Corner Filled rectangle (Box)
		bindFunc(cast(void **)&roundedBoxColor, "roundedBoxColor");
		bindFunc(cast(void **)&roundedBoxRGBA, "roundedBoxRGBA");
		
		// Line
		bindFunc(cast(void **)&lineColor, "lineColor");
		bindFunc(cast(void **)&lineRGBA, "lineRGBA");

		// AA Line
		bindFunc(cast(void **)&aalineColor, "aalineColor");
		bindFunc(cast(void **)&aalineRGBA, "aalineRGBA");
		
		// Thick Line
		bindFunc(cast(void **)&thickLineColor, "thickLineColor");
		bindFunc(cast(void **)&thickLineRGBA, "thickLineRGBA");

		// Circle
		bindFunc(cast(void **)&circleColor, "circleColor");
		bindFunc(cast(void **)&circleRGBA, "circleRGBA");
		
		// Arc
		bindFunc(cast(void **)&arcColor, "arcColor");
		bindFunc(cast(void **)&arcRGBA, "arcRGBA");
		
		// AA Circle
		bindFunc(cast(void **)&aacircleColor, "aacircleColor");
		bindFunc(cast(void **)&aacircleRGBA, "aacircleRGBA");

		// Filled Circle
		bindFunc(cast(void **)&filledCircleColor, "filledCircleColor");
		bindFunc(cast(void **)&filledCircleRGBA, "filledCircleRGBA");

		// Ellipse
		bindFunc(cast(void **)&ellipseColor, "ellipseColor");
		bindFunc(cast(void **)&ellipseRGBA, "ellipseRGBA");
		
		// AA Ellipse
		bindFunc(cast(void **)&aaellipseColor, "aaellipseColor");
		bindFunc(cast(void **)&aaellipseRGBA, "aaellipseRGBA");
		
		// Filled Ellipse
		bindFunc(cast(void **)&filledEllipseColor, "filledEllipseColor");
		bindFunc(cast(void **)&filledEllipseRGBA, "filledEllipseRGBA");

		// Pie
		bindFunc(cast(void **)&pieColor, "pieColor");
		bindFunc(cast(void **)&pieRGBA, "pieRGBA");

		// Filled Pie
		bindFunc(cast(void **)&filledPieColor, "filledPieColor");
		bindFunc(cast(void **)&filledPieRGBA, "filledPieRGBA");

		// Trigon
		bindFunc(cast(void **)&trigonColor, "trigonColor");
		bindFunc(cast(void **)&trigonRGBA, "trigonRGBA");
		
		// AA Trigon
		bindFunc(cast(void **)&aatrigonColor, "aatrigonColor");
		bindFunc(cast(void **)&aatrigonRGBA, "aatrigonRGBA");
		
		// Filled Trigon
		bindFunc(cast(void **)&filledTrigonColor, "filledTrigonColor");
		bindFunc(cast(void **)&filledTrigonRGBA, "filledTrigonRGBA");

		// Polygon
		bindFunc(cast(void **)&polygonColor, "polygonColor");
		bindFunc(cast(void **)&polygonRGBA, "polygonRGBA");

		// AA Polygon
		bindFunc(cast(void **)&aapolygonColor, "aapolygonColor");
		bindFunc(cast(void **)&aapolygonRGBA, "aapolygonRGBA");
		
		// Filled Polygon
		bindFunc(cast(void **)&filledPolygonColor, "filledPolygonColor");
		bindFunc(cast(void **)&filledPolygonRGBA, "filledPolygonRGBA");
		
		// Textured Polygon
		bindFunc(cast(void **)&texturedPolygon, "texturedPolygon");
		
		// Bezier
		bindFunc(cast(void **)&bezierColor, "bezierColor");
		bindFunc(cast(void **)&bezierRGBA, "bezierRGBA");

		// Characters/Strings
		bindFunc(cast(void **)&gfxPrimitivesSetFont, "gfxPrimitivesSetFont");
		bindFunc(cast(void **)&gfxPrimitivesSetFontRotation, "gfxPrimitivesSetFontRotation");
		bindFunc(cast(void **)&characterColor, "characterColor");
		bindFunc(cast(void **)&characterRGBA, "characterRGBA");
		bindFunc(cast(void **)&stringColor, "stringColor");
		bindFunc(cast(void **)&stringRGBA, "stringRGBA");
    }
}

__gshared DerelictSDL2GfxLoader DerelictSDL2Gfx;

shared static this()
{
    DerelictSDL2Gfx = new DerelictSDL2GfxLoader();
}
