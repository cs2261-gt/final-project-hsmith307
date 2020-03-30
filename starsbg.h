
//{{BLOCK(starsbg)

//======================================================================
//
//	starsbg, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 92 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 2944 + 4096 = 7552
//
//	Time-stamp: 2020-03-23, 14:18:37
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_STARSBG_H
#define GRIT_STARSBG_H

#define starsbgTilesLen 2944
extern const unsigned short starsbgTiles[1472];

#define starsbgMapLen 4096
extern const unsigned short starsbgMap[2048];

#define starsbgPalLen 512
extern const unsigned short starsbgPal[256];

#endif // GRIT_STARSBG_H

//}}BLOCK(starsbg)
