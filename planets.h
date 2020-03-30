
//{{BLOCK(planets)

//======================================================================
//
//	planets, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 113 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 3616 + 2048 = 6176
//
//	Time-stamp: 2020-03-23, 14:21:16
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PLANETS_H
#define GRIT_PLANETS_H

#define planetsTilesLen 3616
extern const unsigned short planetsTiles[1808];

#define planetsMapLen 2048
extern const unsigned short planetsMap[1024];

#define planetsPalLen 512
extern const unsigned short planetsPal[256];

#endif // GRIT_PLANETS_H

//}}BLOCK(planets)
