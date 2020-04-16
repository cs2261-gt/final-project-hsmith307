
//{{BLOCK(planets)

//======================================================================
//
//	planets, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 1341 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 42912 + 4096 = 47520
//
//	Time-stamp: 2020-04-16, 14:18:16
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PLANETS_H
#define GRIT_PLANETS_H

#define planetsTilesLen 42912
extern const unsigned short planetsTiles[21456];

#define planetsMapLen 4096
extern const unsigned short planetsMap[2048];

#define planetsPalLen 512
extern const unsigned short planetsPal[256];

#endif // GRIT_PLANETS_H

//}}BLOCK(planets)
