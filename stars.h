
//{{BLOCK(stars)

//======================================================================
//
//	stars, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 496 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 15872 + 4096 = 20480
//
//	Time-stamp: 2020-04-16, 14:23:21
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STARS_H
#define GRIT_STARS_H

#define starsTilesLen 15872
extern const unsigned short starsTiles[7936];

#define starsMapLen 4096
extern const unsigned short starsMap[2048];

#define starsPalLen 512
extern const unsigned short starsPal[256];

#endif // GRIT_STARS_H

//}}BLOCK(stars)
