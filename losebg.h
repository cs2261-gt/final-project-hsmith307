
//{{BLOCK(losebg)

//======================================================================
//
//	losebg, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 453 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 14496 + 2048 = 17056
//
//	Time-stamp: 2020-04-25, 19:46:49
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LOSEBG_H
#define GRIT_LOSEBG_H

#define losebgTilesLen 14496
extern const unsigned short losebgTiles[7248];

#define losebgMapLen 2048
extern const unsigned short losebgMap[1024];

#define losebgPalLen 512
extern const unsigned short losebgPal[256];

#endif // GRIT_LOSEBG_H

//}}BLOCK(losebg)
