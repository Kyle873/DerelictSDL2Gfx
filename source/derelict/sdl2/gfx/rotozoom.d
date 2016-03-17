module derelict.sdl2.gfx.rotozoom;

import derelict.sdl2.sdl;

extern(C) @nogc nothrow
{
    // Framerate control
    alias da_transformSurfaceY = void function(SDL_Surface *src, SDL_Surface *dst, int cx, int cy, int isin, int icos, int flipx, int flipy);
    alias da_rotateSurface90Degrees = SDL_Surface* function(SDL_Surface *src, int numClockwiseTurns);
    alias da_rotozoomSurfaceSizeXY = void function(int width, int height, double angle, double zoomx, double zoomy, int *dstwidth, int *dstheight);
    alias da_rotozoomSurfaceSize = void function(int width, int height, double angle, double zoom, int *dstwidth, int *dstheight);
    alias da_rotozoomSurface = SDL_Surface* function(SDL_Surface *src, double angle, double zoom, int smooth);
    alias da_rotozoomSurfaceXY = SDL_Surface* function(SDL_Surface *src, double angle, double zoomx, double zoomy, int smooth);
    alias da_zoomSurfaceSize = void function(int width, int height, double zoomx, double zoomy, int *dstwidth, int *dstheight);
    alias da_zoomSurface = SDL_Surface* function(SDL_Surface *src, double zoomx, double zoomy, int smooth);
    alias da_shrinkSurface = SDL_Surface* function(SDL_Surface *src, int factorx, int factory);
}

__gshared
{
    // Framerate control
    da_transformSurfaceY transformSurfaceY;
    da_rotateSurface90Degrees rotateSurface90Degrees;
    da_rotozoomSurfaceSizeXY rotozoomSurfaceSizeXY;
    da_rotozoomSurfaceSize rotozoomSurfaceSize;
    da_rotozoomSurface rotozoomSurface;
    da_rotozoomSurfaceXY rotozoomSurfaceXY;
    da_zoomSurfaceSize zoomSurfaceSize;
    da_zoomSurface zoomSurface;
    da_shrinkSurface shrinkSurface;
}
