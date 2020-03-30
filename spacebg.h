
//{{BLOCK(spacebg)

//======================================================================
//
//	spacebg, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 715 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 22880 + 2048 = 25440
//
//	Time-stamp: 2020-03-25, 18:17:49
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SPACEBG_H
#define GRIT_SPACEBG_H

#define spacebgTilesLen 22880
extern const unsigned short spacebgTiles[11440];

#define spacebgMapLen 2048
extern const unsigned short spacebgMap[1024];

#define spacebgPalLen 512
extern const unsigned short spacebgPal[256];

#endif // GRIT_SPACEBG_H

//}}BLOCK(spacebg)
