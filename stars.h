
//{{BLOCK(stars)

//======================================================================
//
//	stars, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 457 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 14624 + 4096 = 19232
//
//	Time-stamp: 2020-04-17, 14:33:49
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STARS_H
#define GRIT_STARS_H

#define starsTilesLen 14624
extern const unsigned short starsTiles[7312];

#define starsMapLen 4096
extern const unsigned short starsMap[2048];

#define starsPalLen 512
extern const unsigned short starsPal[256];

#endif // GRIT_STARS_H

//}}BLOCK(stars)
