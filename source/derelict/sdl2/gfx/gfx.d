module derelict.sdl2.gfx.gfx;

import derelict.util.system;
import derelict.util.loader;
    
import derelict.sdl2.gfx.primitives;
import derelict.sdl2.gfx.framerate;
import derelict.sdl2.gfx.rotozoom;
import derelict.sdl2.gfx.imagefilter;

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

                // Surface Rotozoomer
		bindFunc(cast(void **)&rotateSurface90Degrees, "rotateSurface90Degrees");
		bindFunc(cast(void **)&rotozoomSurfaceSizeXY, "rotozoomSurfaceSizeXY");
		bindFunc(cast(void **)&rotozoomSurfaceSize, "rotozoomSurfaceSize");
		bindFunc(cast(void **)&rotozoomSurface, "rotozoomSurface");
		bindFunc(cast(void **)&rotozoomSurfaceXY, "rotozoomSurfaceXY");
		bindFunc(cast(void **)&zoomSurfaceSize, "zoomSurfaceSize");
		bindFunc(cast(void **)&zoomSurface, "zoomSurface");
		bindFunc(cast(void **)&shrinkSurface, "shrinkSurface");

		// Framerate control
		bindFunc(cast(void **)&SDL_initFramerate, "SDL_initFramerate");
		bindFunc(cast(void **)&SDL_setFramerate, "SDL_setFramerate");
		bindFunc(cast(void **)&SDL_getFramerate, "SDL_getFramerate");
		bindFunc(cast(void **)&SDL_getFramecount, "SDL_getFramecount");
		bindFunc(cast(void **)&SDL_framerateDelay, "SDL_framerateDelay");

		// MMX image filters
		bindFunc(cast(void **)&SDL_imageFilterAbsDiff, "SDL_imageFilterAbsDiff");
		bindFunc(cast(void **)&SDL_imageFilterAdd, "SDL_imageFilterAdd");
		bindFunc(cast(void **)&SDL_imageFilterAddByte, "SDL_imageFilterAddByte");
		bindFunc(cast(void **)&SDL_imageFilterAddByteToHalf, "SDL_imageFilterAddByteToHalf");
		bindFunc(cast(void **)&SDL_imageFilterAddUint, "SDL_imageFilterAddUint");
		bindFunc(cast(void **)&SDL_imageFilterBinarizeUsingThreshold, "SDL_imageFilterBinarizeUsingThreshold");
		bindFunc(cast(void **)&SDL_imageFilterBitAnd, "SDL_imageFilterBitAnd");
		bindFunc(cast(void **)&SDL_imageFilterBitNegation, "SDL_imageFilterBitNegation");
		bindFunc(cast(void **)&SDL_imageFilterBitOr, "SDL_imageFilterBitOr");
		bindFunc(cast(void **)&SDL_imageFilterClipToRange, "SDL_imageFilterClipToRange");
		bindFunc(cast(void **)&SDL_imageFilterDiv, "SDL_imageFilterDiv");
		bindFunc(cast(void **)&SDL_imageFilterMMXdetect, "SDL_imageFilterMMXdetect");
		bindFunc(cast(void **)&SDL_imageFilterMMXoff, "SDL_imageFilterMMXoff");
		bindFunc(cast(void **)&SDL_imageFilterMMXon, "SDL_imageFilterMMXon");
		bindFunc(cast(void **)&SDL_imageFilterMean, "SDL_imageFilterMean");
		bindFunc(cast(void **)&SDL_imageFilterMult, "SDL_imageFilterMult");
		bindFunc(cast(void **)&SDL_imageFilterMultByByte, "SDL_imageFilterMultByByte");
		bindFunc(cast(void **)&SDL_imageFilterMultDivby2, "SDL_imageFilterMultDivby2");
		bindFunc(cast(void **)&SDL_imageFilterMultDivby4, "SDL_imageFilterMultDivby4");
		bindFunc(cast(void **)&SDL_imageFilterMultNor, "SDL_imageFilterMultNor");
		bindFunc(cast(void **)&SDL_imageFilterNormalizeLinear, "SDL_imageFilterNormalizeLinear");
		bindFunc(cast(void **)&SDL_imageFilterShiftLeft, "SDL_imageFilterShiftLeft");
		bindFunc(cast(void **)&SDL_imageFilterShiftLeftByte, "SDL_imageFilterShiftLeftByte");
		bindFunc(cast(void **)&SDL_imageFilterShiftLeftUint, "SDL_imageFilterShiftLeftUint");
		bindFunc(cast(void **)&SDL_imageFilterShiftRight, "SDL_imageFilterShiftRight");
		bindFunc(cast(void **)&SDL_imageFilterShiftRightAndMultByByte, "SDL_imageFilterShiftRightAndMultByByte");
		bindFunc(cast(void **)&SDL_imageFilterShiftRightUint, "SDL_imageFilterShiftRightUint");
		bindFunc(cast(void **)&SDL_imageFilterSub, "SDL_imageFilterSub");
		bindFunc(cast(void **)&SDL_imageFilterSubByte, "SDL_imageFilterSubByte");
		bindFunc(cast(void **)&SDL_imageFilterSubUint, "SDL_imageFilterSubUint");
    }
}

__gshared DerelictSDL2GfxLoader DerelictSDL2Gfx;

shared static this()
{
    DerelictSDL2Gfx = new DerelictSDL2GfxLoader();
}

