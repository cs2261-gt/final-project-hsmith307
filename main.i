# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
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
# 2 "main.c" 2
# 1 "starsbg.h" 1
# 22 "starsbg.h"
extern const unsigned short starsbgTiles[1472];


extern const unsigned short starsbgMap[2048];


extern const unsigned short starsbgPal[256];
# 3 "main.c" 2
# 1 "planets.h" 1
# 22 "planets.h"
extern const unsigned short planetsTiles[1808];


extern const unsigned short planetsMap[1024];


extern const unsigned short planetsPal[256];
# 4 "main.c" 2
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
# 5 "main.c" 2
# 1 "futuramapage.h" 1
# 22 "futuramapage.h"
extern const unsigned short futuramapageTiles[1744];


extern const unsigned short futuramapageMap[1024];


extern const unsigned short futuramapagePal[256];
# 6 "main.c" 2
# 1 "pause.h" 1
# 22 "pause.h"
extern const unsigned short pauseTiles[6640];


extern const unsigned short pauseMap[1024];


extern const unsigned short pausePal[256];
# 7 "main.c" 2
# 1 "planet1PS.h" 1
# 22 "planet1PS.h"
extern const unsigned short planet1PSTiles[18080];


extern const unsigned short planet1PSMap[2048];


extern const unsigned short planet1PSPal[256];
# 8 "main.c" 2



void initialize();
void game();


void goToStart();
void start();
void goToSpace();
void space();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();


enum {START, GAME, PAUSE, LOSE, WIN};
int state;


enum {SPACE, PLANET1, PLANET2, PLANET3, PLANET4};
int curLocation;


unsigned short buttons;
unsigned short oldButtons;


unsigned short hOff;
unsigned short vOff;
int counter;


OBJ_ATTR shadowOAM[128];



int main() {

    initialize();

    while(1) {

        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);

        switch (state) {
        case START:
            start();
            break;
        case GAME:
            game();
             break;
        case PAUSE:
            pause();
            break;
        case LOSE:
            lose();
            break;
        case WIN:
            win();
            break;
        default:
            break;
        }


    }
}


void initialize() {
    counter = 0;

    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<8) | (1<<12);



    curLocation = 0;




    hOff = 0;
    vOff = 0;
    buttons = (*(volatile unsigned short *)0x04000130);
    goToStart();

}

void goToStart() {


    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((30)<<8) | (0<<14);
    DMANow(3, futuramapagePal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, futuramapageTiles, &((charblock *)0x6000000)[0], 3488 / 2);
    DMANow(3, futuramapageMap, &((screenblock *)0x6000000)[30], 2048 / 2);

    state = START;
}

void start() {
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToGame();
    }

}

void goToGame() {
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<8) | (1<<12);

    initGame();
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((28)<<8) | (3<<14);
    DMANow(3, starsbgTiles, &((charblock *)0x6000000)[0], 2944 / 2);
    DMANow(3, starsbgMap, &((screenblock *)0x6000000)[28], 4096 / 2);

    (*(volatile unsigned short*)0x400000A) = ((1)<<2) | ((30)<<8) | (1<<14);
    DMANow(3, 3616, &((charblock *)0x6000000)[1], 3616);
    DMANow(3, planetsMap, &((screenblock *)0x6000000)[30], 2048 / 2);
    state = GAME;
}

void game() {

    updateGame();

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToPause();
    }


}

void goToPause() {
    (*(volatile unsigned short *)0x04000014) = 0;
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000016) = 0;

    hideSprites();

    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<12);
    (*(volatile unsigned short*)0x400000A) = ((1)<<2) | ((28)<<8) | (0<<14);
    DMANow(3, pausePal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, pauseTiles, &((charblock *)0x6000000)[1], 13280 / 2);
    DMANow(3, pauseMap, &((screenblock *)0x6000000)[28], 2048 / 2);

    state = PAUSE;

}

void pause() {
    hideSprites();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToGame();
    }
}

void goToWin() {

}

void win() {

}

void goToLose() {

}

void lose() {

}


void planet1() {
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<12);
    (*(volatile unsigned short*)0x400000A) = ((1)<<2) | ((28)<<8) | (1<<14);
    DMANow(3, planet1PSPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, planet1PSTiles, &((charblock *)0x6000000)[1], 36160 / 2);
    DMANow(3, planet1PSMap, &((screenblock *)0x6000000)[28], 4096 / 2);

    waitForVBlank();
    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;

    if (fry.aniCounter % 18 == 0) {
        if (fry.curFrame < fry.numFrames - 1) {
            fry.curFrame+= 1;
        } else {
            fry.curFrame = 1;
        }
    }


    updatePlanet1();



}

void planet2() {

}

void planet3() {

}

void planet4() {

}

void goToPlanet1() {
# 235 "main.c"
}

void goToPlanet2() {

}

void goToPlanet3() {

}

void goToPlanet4() {

}
