module derelict.sdl2.gfx.imagefilter;

import derelict.sdl2.sdl;

extern(C) @nogc nothrow
{
    // MMX image filters
    alias da_SDL_imageFilterAbsDiff = int function(ubyte *Src1, ubyte *Src2, ubyte *Dest, uint length);
    alias da_SDL_imageFilterAdd = int function(ubyte *Src1, ubyte *Src2, ubyte *Dest, uint length);
    alias da_SDL_imageFilterAddByte = int function(ubyte *Src1, ubyte *Dest, uint length, ubyte C);
    alias da_SDL_imageFilterAddByteToHalf = int function(ubyte *Src1, ubyte *Dest, uint length, ubyte C);
    alias da_SDL_imageFilterAddUint = int function(ubyte *Src1, ubyte *Dest, uint length, uint C);
    alias da_SDL_imageFilterBinarizeUsingThreshold = int function(ubyte *Src1, ubyte *Dest, uint length, ubyte T);
    alias da_SDL_imageFilterBitAnd = int function(ubyte *Src1, ubyte *Src2, ubyte *Dest, uint length);
    alias da_SDL_imageFilterBitNegation = int function(ubyte *Src1, ubyte *Dest, uint length);
    alias da_SDL_imageFilterBitOr = int function(ubyte *Src1, ubyte *Src2, ubyte *Dest, uint length);
    alias da_SDL_imageFilterClipToRange = int function(ubyte *Src1, ubyte *Dest, uint length, ubyte Tmin, ubyte Tmax);
    alias da_SDL_imageFilterDiv = int function(ubyte *Src1, ubyte *Src2, ubyte *Dest, uint length);
    alias da_SDL_imageFilterMMXdetect = int function();
    alias da_SDL_imageFilterMean = int function(ubyte *Src1, ubyte *Src2, ubyte *Dest, uint length);
    alias da_SDL_imageFilterMult = int function(ubyte *Src1, ubyte *Src2, ubyte *Dest, uint length);
    alias da_SDL_imageFilterMultByByte = int function(ubyte *Src1, ubyte *Dest, uint length, ubyte C);
    alias da_SDL_imageFilterMultDivby2 = int function(ubyte *Src1, ubyte *Src2, ubyte *Dest, uint length);
    alias da_SDL_imageFilterMultDivby4 = int function(ubyte *Src1, ubyte *Src2, ubyte *Dest, uint length);
    alias da_SDL_imageFilterMultNor = int function(ubyte *Src1, ubyte *Src2, ubyte *Dest, uint length);
    alias da_SDL_imageFilterNormalizeLinear = int function(ubyte *Src, ubyte *Dest, uint length, int Cmin, int Cmax, int Nmin, int Nmax);
    alias da_SDL_imageFilterShiftLeft = int function(ubyte *Src1, ubyte *Dest, uint length, ubyte N);
    alias da_SDL_imageFilterShiftLeftByte = int function(ubyte *Src1, ubyte *Dest, uint length, ubyte N);
    alias da_SDL_imageFilterShiftLeftUint = int function(ubyte *Src1, ubyte *Dest, uint length, ubyte N);
    alias da_SDL_imageFilterShiftRight = int function(ubyte *Src1, ubyte *Dest, uint length, ubyte N);
    alias da_SDL_imageFilterShiftRightAndMultByByte = int function(ubyte *Src1, ubyte *Dest, uint length, ubyte N, ubyte C);
    alias da_SDL_imageFilterShiftRightUint = int function(ubyte *Src1, ubyte *Dest, uint length, ubyte N);
    alias da_SDL_imageFilterSub = int function(ubyte *Src1, ubyte *Src2, ubyte *Dest, uint length);
    alias da_SDL_imageFilterSubByte = int function(ubyte *Src1, ubyte *Dest, uint length, ubyte C);
    alias da_SDL_imageFilterSubUint = int function(ubyte *Src1, ubyte *Dest, uint length, uint C);
    alias da_SDL_imageFilterMMXoff = void function();
    alias da_SDL_imageFilterMMXon = void function();
}

__gshared
{
    // MMX image filters
    da_SDL_imageFilterAbsDiff SDL_imageFilterAbsDiff;
    da_SDL_imageFilterAdd SDL_imageFilterAdd;
    da_SDL_imageFilterAddByte SDL_imageFilterAddByte;
    da_SDL_imageFilterAddByteToHalf SDL_imageFilterAddByteToHalf;
    da_SDL_imageFilterAddUint SDL_imageFilterAddUint;
    da_SDL_imageFilterBinarizeUsingThreshold SDL_imageFilterBinarizeUsingThreshold;
    da_SDL_imageFilterBitAnd SDL_imageFilterBitAnd;
    da_SDL_imageFilterBitNegation SDL_imageFilterBitNegation;
    da_SDL_imageFilterBitOr SDL_imageFilterBitOr;
    da_SDL_imageFilterClipToRange SDL_imageFilterClipToRange;
    da_SDL_imageFilterDiv SDL_imageFilterDiv;
    da_SDL_imageFilterMMXdetect SDL_imageFilterMMXdetect;
    da_SDL_imageFilterMMXoff SDL_imageFilterMMXoff;
    da_SDL_imageFilterMMXon SDL_imageFilterMMXon;
    da_SDL_imageFilterMean SDL_imageFilterMean;
    da_SDL_imageFilterMult SDL_imageFilterMult;
    da_SDL_imageFilterMultByByte SDL_imageFilterMultByByte;
    da_SDL_imageFilterMultDivby2 SDL_imageFilterMultDivby2;
    da_SDL_imageFilterMultDivby4 SDL_imageFilterMultDivby4;
    da_SDL_imageFilterMultNor SDL_imageFilterMultNor;
    da_SDL_imageFilterNormalizeLinear SDL_imageFilterNormalizeLinear;
    da_SDL_imageFilterShiftLeft SDL_imageFilterShiftLeft;
    da_SDL_imageFilterShiftLeftByte SDL_imageFilterShiftLeftByte;
    da_SDL_imageFilterShiftLeftUint SDL_imageFilterShiftLeftUint;
    da_SDL_imageFilterShiftRight SDL_imageFilterShiftRight;
    da_SDL_imageFilterShiftRightAndMultByByte SDL_imageFilterShiftRightAndMultByByte;
    da_SDL_imageFilterShiftRightUint SDL_imageFilterShiftRightUint;
    da_SDL_imageFilterSub SDL_imageFilterSub;
    da_SDL_imageFilterSubByte SDL_imageFilterSubByte;
    da_SDL_imageFilterSubUint SDL_imageFilterSubUint;
}

