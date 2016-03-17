module derelict.sdl2.gfx.primitives;

import derelict.sdl2.sdl;

extern(C) @nogc nothrow
{
	// Pixel
    alias da_pixelColor = int function(SDL_Renderer *, short, short, uint);
    alias da_pixelRGBA = int function(SDL_Renderer *, short, short, int, int, int, int);

	// Horizontal Line
	alias da_hlineColor = int function(SDL_Renderer *, short, short, short, int);
	alias da_hlineRGBA = int function(SDL_Renderer *, short, short, short, int, int, int, int);

	// Vertical Line
	alias da_vlineColor = int function(SDL_Renderer *, short, short, short, int);
	alias da_vlineRGBA = int function(SDL_Renderer *, short, short, short, int, int, int, int);
	
	// Rectangle
	alias da_rectangleColor = int function(SDL_Renderer *, short, short, short, short, uint);
    alias da_rectangleRGBA = int function(SDL_Renderer *, short, short, short, short, int, int, int, int);
	
	// Rounded-Corner Rectangle
	alias da_roundedRectangleColor = int function(SDL_Renderer *, short, short, short, short, short, uint);
	alias da_roundedRectangleRGBA = int function(SDL_Renderer *, short, short, short, short, short, int, int, int, int);

	// Filled rectangle (Box)
	alias da_boxColor = int function(SDL_Renderer *, short, short, short, short, uint);
    alias da_boxRGBA = int function(SDL_Renderer *, short, short, short, short, int, int, int, int);

	// Rounded-Corner Filled rectangle (Box)
	alias da_roundedBoxColor = int function(SDL_Renderer *, short, short, short, short, uint);
    alias da_roundedBoxRGBA = int function(SDL_Renderer *, short, short, short, short, int, int, int, int);

	// Line
	alias da_lineColor = int function(SDL_Renderer *, short, short, short, short, uint);
	alias da_lineRGBA = int function(SDL_Renderer *, short, short, short, short, int, int, int, int);
	
	// AA Line
	alias da_aalineColor = int function(SDL_Renderer *, short, short, short, short, uint);
	alias da_aalineRGBA = int function(SDL_Renderer *, short, short, short, short, int, int, int, int);
	
	// Thick Line
	alias da_thickLineColor = int function(SDL_Renderer *, short, short, short, short, uint, uint);
	alias da_thickLineRGBA = int function(SDL_Renderer *, short, short, short, short, uint, int, int, int, int);

	// Circle
	alias da_circleColor = int function(SDL_Renderer *, short, short, short, uint);
	alias da_circleRGBA = int function(SDL_Renderer *, short, short, short, int, int, int, int);

	// Arc
	alias da_arcColor = int function(SDL_Renderer *, short, short, short, short, short, uint);
	alias da_arcRGBA = int function(SDL_Renderer *, short, short, short, short, short, int, int, int, int);

	// AA Circle
	alias da_aacircleColor = int function(SDL_Renderer *, short, short, short, uint);
	alias da_aacircleRGBA = int function(SDL_Renderer *, short, short, short, int, int, int, int);
	
	// Filled Circle
	alias da_filledCircleColor = int function(SDL_Renderer *, short, short, short, uint);
	alias da_filledCircleRGBA = int function(SDL_Renderer *, short, short, short, int, int, int, int);

	// Ellipse
	alias da_ellipseColor = int function(SDL_Renderer *, short, short, short, short, uint);
	alias da_ellipseRGBA = int function(SDL_Renderer *, short, short, short, short, int, int, int, int);
	
	// AA Ellipse
	alias da_aaellipseColor = int function(SDL_Renderer *, short, short, short, short, uint);
	alias da_aaellipseRGBA = int function(SDL_Renderer *, short, short, short, short, int, int, int, int);
	
	// Filled Ellipse
	alias da_filledEllipseColor = int function(SDL_Renderer *, short, short, short, short, uint);
	alias da_filledEllipseRGBA = int function(SDL_Renderer *, short, short, short, short, int, int, int, int);

	// Pie
	alias da_pieColor = int function(SDL_Renderer *, short, short, short, short, short, uint);
	alias da_pieRGBA = int function(SDL_Renderer *, short, short, short, short, short, int, int, int, int);

	// Filled Pie
	alias da_filledPieColor = int function(SDL_Renderer *, short, short, short, short, short, uint);
	alias da_filledPieRGBA = int function(SDL_Renderer *, short, short, short, short, short, int, int, int, int);

	// Trigon
	alias da_trigonColor = int function(SDL_Renderer *, short, short, short, short, short, short, uint);
	alias da_trigonRGBA = int function(SDL_Renderer *, short, short, short, short, short, short, int, int, int, int);

	// AA Trigon
	alias da_aatrigonColor = int function(SDL_Renderer *, short, short, short, short, short, short, uint);
	alias da_aatrigonRGBA = int function(SDL_Renderer *, short, short, short, short, short, short, int, int, int, int);

	// Filled Trigon
	alias da_filledTrigonColor = int function(SDL_Renderer *, short, short, short, short, short, short, uint);
	alias da_filledTrigonRGBA = int function(SDL_Renderer *, short, short, short, short, short, short, int, int, int, int);

	// Polygon
	alias da_polygonColor = int function(SDL_Renderer *, const short *, const short *, int, uint);
	alias da_polygonRGBA = int function(SDL_Renderer *, const short *, const short *, int, int, int, int, int);

	// AA Polygon
	alias da_aapolygonColor = int function(SDL_Renderer *, const short *, const short *, int, uint);
	alias da_aapolygonRGBA = int function(SDL_Renderer *, const short *, const short *, int, int, int, int, int);
	
	// Filled Polygon
	alias da_filledPolygonColor = int function(SDL_Renderer *, const short *, const short *, int, uint);
	alias da_filledPolygonRGBA = int function(SDL_Renderer *, const short *, const short *, int, int, int, int, int);
	
	// Textured Polygon
	alias da_texturedPolygon = int function(SDL_Renderer *, const short *, const short *, int, SDL_Surface *, int, int);

	// Bezier
	alias da_bezierColor = int function(SDL_Renderer *, const short *, const short *, int, int, uint);
	alias da_bezierRGBA = int function(SDL_Renderer *, const short *, const short *, int, int, int, int, int, int);

	// Characters/Strings
	alias da_gfxPrimitivesSetFont = void function(const void *, uint, uint);
	alias da_gfxPrimitivesSetFontRotation = void function(uint);
	alias da_characterColor = int function(SDL_Renderer *, short, short, char, uint);
	alias da_characterRGBA = int function(SDL_Renderer *, short, short, char, int, int, int, int);
	alias da_stringColor = int function(SDL_Renderer *, short, short, const char *, uint);
	alias da_stringRGBA = int function(SDL_Renderer *, short, short, const char *, int, int, int, int);
}

__gshared
{
	// Pixel
	da_pixelColor pixelColor;
	da_pixelRGBA pixelRGBA;

	// Horizontal Line
	da_hlineColor hlineColor;
	da_hlineRGBA hlineRGBA;

	// Vertical Line
	da_vlineColor vlineColor;
	da_vlineRGBA vlineRGBA;

	// Rectangle
	da_rectangleColor rectangleColor;
	da_rectangleRGBA rectangleRGBA;
	
	// Rounded-Corner Rectangle
	da_roundedRectangleColor roundedRectangleColor;
	da_roundedRectangleRGBA roundedRectangleRGBA;
	
	// Filled rectangle (Box)
	da_boxColor boxColor;
	da_boxRGBA boxRGBA;
	
	// Rounded-Corner Filled rectangle (Box)
	da_roundedBoxColor roundedBoxColor;
	da_roundedBoxRGBA roundedBoxRGBA;
	
	// Line
	da_lineColor lineColor;
	da_lineRGBA lineRGBA;

	// AA Line
	da_aalineColor aalineColor;
	da_aalineRGBA aalineRGBA;

	// Thick Line
	da_thickLineColor thickLineColor;
	da_thickLineRGBA thickLineRGBA;

	// Circle
	da_circleColor circleColor;
	da_circleRGBA circleRGBA;
	
	// Arc
	da_arcColor arcColor;
	da_arcRGBA arcRGBA;

	// AA Circle
	da_aacircleColor aacircleColor;
	da_aacircleRGBA aacircleRGBA;
	
	// Filled Circle
	da_filledCircleColor filledCircleColor;
	da_filledCircleRGBA filledCircleRGBA;

	// Ellipse
	da_ellipseColor ellipseColor;
	da_ellipseRGBA ellipseRGBA;
	
	// AA Ellipse
	da_aaellipseColor aaellipseColor;
	da_aaellipseRGBA aaellipseRGBA;
	
	// Filled Ellipse
	da_filledEllipseColor filledEllipseColor;
	da_filledEllipseRGBA filledEllipseRGBA;

	// Pie
	da_pieColor pieColor;
	da_pieRGBA pieRGBA;

	// Filled pie
	da_filledPieColor filledPieColor;
	da_filledPieRGBA filledPieRGBA;

	// Trigon
	da_trigonColor trigonColor;
	da_trigonRGBA trigonRGBA;
	
	// AA Trigon
	da_aatrigonColor aatrigonColor;
	da_aatrigonRGBA aatrigonRGBA;

	// filled Trigon
	da_filledTrigonColor filledTrigonColor;
	da_filledTrigonRGBA filledTrigonRGBA;

	// Polygon
	da_polygonColor polygonColor;
	da_polygonRGBA polygonRGBA;

	// AA Polygon
	da_aapolygonColor aapolygonColor;
	da_aapolygonRGBA aapolygonRGBA;
	
	// Filled Polygon
	da_filledPolygonColor filledPolygonColor;
	da_filledPolygonRGBA filledPolygonRGBA;
	
	// Textured Polygon
	da_texturedPolygon texturedPolygon;
	
	// Bezier
	da_bezierColor bezierColor;
	da_bezierRGBA bezierRGBA;
	
	// Characters/Strings
	da_gfxPrimitivesSetFont gfxPrimitivesSetFont;
	da_gfxPrimitivesSetFontRotation gfxPrimitivesSetFontRotation;
	da_characterColor characterColor;
	da_characterRGBA characterRGBA;
	da_stringColor stringColor;
	da_stringRGBA stringRGBA;
}

