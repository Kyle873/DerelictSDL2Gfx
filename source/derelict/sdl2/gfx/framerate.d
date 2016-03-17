module derelict.sdl2.gfx.framerate;

import derelict.sdl2.sdl;

struct FPSmanager
{
    int framecount;
    float rateticks;
    int baseticks;
    int lastticks;
    int rate;
}

extern(C) @nogc nothrow
{
    // Framerate control
    alias da_SDL_initFramerate = int function(FPSmanager *manager);
    alias da_SDL_setFramerate = int function(FPSmanager *manager, int rate);
    alias da_SDL_getFramerate = int function(FPSmanager *manager);
    alias da_SDL_getFramecount = int function(FPSmanager *manager);
    alias da_SDL_framerateDelay = int function(FPSmanager *manager);
}

__gshared
{
    // Framerate control
    da_SDL_initFramerate SDL_initFramerate;
    da_SDL_setFramerate SDL_setFramerate;
    da_SDL_getFramerate SDL_getFramerate;
    da_SDL_getFramecount SDL_getFramecount;
    da_SDL_framerateDelay SDL_framerateDelay;
}
