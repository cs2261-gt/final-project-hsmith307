# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "myLib.h"
extern unsigned short *videoBuffer;
# 85 "myLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 157 "myLib.h"
void hideSprites();






typedef struct {
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
} ANISPRITE;
# 200 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 211 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 251 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "game.c" 2
# 1 "game.h" 1

typedef struct {
    int row;
    int col;
    int oldRow;
    int oldCol;
    int height;
    int width;
    int cdel;
    int rdel;
    int active;
    int aniState;
    int prevAniState;
    int curFrame;
    int aniCounter;
    int numFrames;
    int isFry;
}FRY;


typedef struct {
    int row;
    int col;
    int oldRow;
    int oldCol;
    int height;
    int width;
    int cdel;
    int rdel;
    int active;
    int aniState;
    int prevAniState;
    int curFrame;
}BENDER;

typedef struct {
    int row;
    int col;
    int oldRow;
    int oldCol;
    int height;
    int width;
    int cdel;
    int rdel;
    int active;
    int aniState;
    int prevAniState;
    int curFrame;
    int isSpaceship;
}SPACESHIP;


typedef struct {
    int row;
    int col;
    int oldRow;
    int oldCol;
    int height;
    int width;
    int cdel;
    int rdel;
    int active;
    int aniState;
    int curFrame;
    int isPlanet;
}PLANET;



void initGame();
void updateGame();
void initFry();

void initSpaceship();
void updateSpaceShip();

void initBender();
void updateSpaceShip();

void initPlanets();
int stateDeterminator(PLANET *);
void updatePlanets(PLANET *);


void space();
void initSpace();
void updateSpace();
void planet1();
void planet2();
void planet3();
void planet4();
void planet5();

void goToSpace();
void goToPlanet1();
void updatePlanet1();

void goToPlanet2();
void goToPlanet3();
void goToPlanet4();







extern FRY fry;
extern BENDER bender;
extern SPACESHIP spaceship;
extern PLANET planets[4];

extern PLANET p1;
extern PLANET p2;
extern PLANET p3;
extern PLANET p4;
# 3 "game.c" 2
# 1 "planets.h" 1
# 22 "planets.h"
extern const unsigned short planetsTiles[1808];


extern const unsigned short planetsMap[1024];


extern const unsigned short planetsPal[256];
# 4 "game.c" 2
# 1 "spacebg.h" 1
# 22 "spacebg.h"
extern const unsigned short spacebgTiles[11440];


extern const unsigned short spacebgMap[1024];


extern const unsigned short spacebgPal[256];
# 5 "game.c" 2
# 1 "spritesheet5.h" 1
# 21 "spritesheet5.h"
extern const unsigned short spritesheet5Tiles[16384];


extern const unsigned short spritesheet5Pal[256];
# 6 "game.c" 2
# 1 "futuramapage.h" 1
# 22 "futuramapage.h"
extern const unsigned short futuramapageTiles[1744];


extern const unsigned short futuramapageMap[1024];


extern const unsigned short futuramapagePal[256];
# 7 "game.c" 2
# 1 "planet1.h" 1
# 22 "planet1.h"
extern const unsigned short planet1Tiles[1888];


extern const unsigned short planet1Map[2048];


extern const unsigned short planet1Pal[256];
# 8 "game.c" 2


FRY fry;
BENDER bender;
SPACESHIP spaceship;
PLANET planets[4];
PLANET p1;
PLANET p2;
PLANET p3;
PLANET p4;


enum {RIGHTBEGIN, RIGHTWALK, LEFTBEGIN, LEFTWALK, SPRITEIDLE};
enum {SPACE, PLANET1, PLANET2, PLANET3, PLANET4};
int curLocation;





unsigned short hOff;
unsigned short vOff;

    void initGame() {

        initFry();
        initSpaceShip();
        initPlanets();

        curLocation = SPACE;

        DMANow(3, spritesheet5Pal, ((unsigned short *)0x5000200), 256);
        DMANow(3, spritesheet5Tiles, &((charblock *)0x6000000)[4], 32768 / 2);

    }

    void initFry() {
        fry.col = 10;
        fry.row = 80;
        fry.cdel = 1;
        fry.active = 0;
        fry.aniState = RIGHTBEGIN;
        fry.curFrame = 0;
        fry.aniCounter = 0;
        fry.numFrames = 4;
        fry.aniCounter = 0;
    }

    void initSpaceShip() {
        spaceship.col = 10;
        spaceship.row = (160 / 2) - 32;
        spaceship.active = 1;
        spaceship.cdel = 1;
        spaceship.rdel = 1;
        spaceship.aniState = 0;
        spaceship.curFrame = 0;
        spaceship.active = 0;
    }

    void initPlanets() {

        p1.col = 90;
        p1.row = 60;
        p1.height = 32;
        p1.width = 32;
        p1.active = 0;


        p2.col = 140;
        p2.row = 100;
        p2.height = 32;
        p2.width = 32;
        p2.active = 0;


        p3.col = 120;
        p3.row = 20;
        p3.height = 32;
        p3.width = 32;
        p3.active = 0;


        p4.col = 198;
        p4.row = 45;
        p4.height = 32;
        p4.width = 32;
        p4.active = 0;
    }

    void updateGame() {
        hideSprites();
        if (curLocation == SPACE) {
            fry.active = 0;
            spaceship.active = 1;
            p1.active = 1;
            p2.active = 1;
            p3.active = 1;
            p4.active = 1;
        }
        if (curLocation == PLANET1) {
            fry.active = 1;
            spaceship.active = 0;
            p1.active = 0;
            p2.active = 0;
            p3.active = 0;
            p4.active = 0;
            planet1();
        }
        if (curLocation == PLANET2) {
            fry.active = 1;
            spaceship.active = 0;
            p1.active = 0;
            p2.active = 0;
            p3.active = 0;
            p4.active = 0;
        }
        if (curLocation == PLANET3) {
            fry.active = 1;
            spaceship.active = 0;
            p1.active = 0;
            p2.active = 0;
            p3.active = 0;
            p4.active = 0;
        }
        if (curLocation == PLANET4) {
            fry.active = 1;
            spaceship.active = 0;
            p1.active = 0;
            p2.active = 0;
            p3.active = 0;
            p4.active = 0;
        }
# 148 "game.c"
        if (fry.aniCounter % 18 == 0 && fry.active == 1) {
            if (fry.curFrame < fry.numFrames - 1) {
                fry.curFrame+= 1;
            } else {
                fry.curFrame = 0;
            }
        }

        hOff++;
# 177 "game.c"
        if((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) {

            if (spaceship.active == 1) {
                spaceship.col -= spaceship.cdel;
            }




        }
        if((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {

            if (curLocation == PLANET1) {

            } else {
                if (spaceship.active == 1) {
                    spaceship.col += spaceship.cdel;
                }
                if (fry.active == 1) {


                }
            }






        }
        if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<7)))) {
            if (spaceship.active) {
                vOff++;
                spaceship.row += spaceship.rdel;
            }


        }
        if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<6)))) {
            if (spaceship.active == 1) {
                vOff--;
                spaceship.row -= spaceship.rdel;
            }

        }

        if (fry.aniState == SPRITEIDLE) {
            fry.aniState = fry.prevAniState;
        }
        if (fry.aniState != SPRITEIDLE) {
            fry.aniCounter++;
        }



        if (collision(p1.col, p1.row, p1.width, p1.height, spaceship.col, spaceship.row, spaceship.width, spaceship.height) == 1) {
            curLocation = PLANET1;
            planet1();
        }
        if (collision(p2.col, p2.row, p2.width, p2.height, spaceship.col, spaceship.row, spaceship.width, spaceship.height) == 1) {

            fry.active = 1;
            spaceship.active = 0;
            p1.active = 0;
            p2.active = 0;
            p3.active = 0;
            p4.active = 0;
            planet2();
        }


        if (fry.active) {
            shadowOAM[0].attr0 = (0<<8) | (0<<13) | (0<<14) | fry.row;
            shadowOAM[0].attr1 = (3<<14) | fry.col;
            shadowOAM[0].attr2 = ((0)<<12) | ((2 * 8)*32+(0 * 8));
        }


        if (spaceship.active) {
            shadowOAM[1].attr0 = (0<<8) | (0<<13) | (0<<14) | spaceship.row;
            shadowOAM[1].attr1 = (3<<14) | spaceship.col;
            shadowOAM[1].attr2 = ((0)<<12) | ((fry.curFrame * 8)*32+(fry.aniState * 8));
        }




        if (p1.active) {
            shadowOAM[2].attr0 = (0<<8) | (0<<13) | (0<<14) | p1.row;
            shadowOAM[2].attr1 = (2<<14) | p1.col;
            shadowOAM[2].attr2 = ((0)<<12) | ((4 * 4)*32+(4 * 4));
        }



        if (p2.active) {
            shadowOAM[3].attr0 = (0<<8) | (0<<13) | (0<<14) | p2.row;
            shadowOAM[3].attr1 = (2<<14) | p2.col;
            shadowOAM[3].attr2 = ((0)<<12) | ((4 * 4)*32+(5 * 4));
        }


        if (p3.active) {
            shadowOAM[4].attr0 = (0<<8) | (0<<13) | (0<<14) | p3.row;
            shadowOAM[4].attr1 = (2<<14) | p3.col;
            shadowOAM[4].attr2 = ((0)<<12) | ((4 * 4)*32+(6 * 4));
        }



        if (p4.active) {
            shadowOAM[5].attr0 = (0<<8) | (0<<13) | (0<<14) | p4.row;
            shadowOAM[5].attr1 = (2<<14) | p4.col;
            shadowOAM[5].attr2 = ((0)<<12) | ((4 * 4)*32+(7 * 4));
        }
        waitForVBlank();

        DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

        (*(volatile unsigned short *)0x04000012) = vOff;
        (*(volatile unsigned short *)0x04000010) = hOff;
        (*(volatile unsigned short *)0x04000014) = hOff / 4;
        (*(volatile unsigned short *)0x04000016) = vOff;


    }

    void updatePlanet1() {
    }
