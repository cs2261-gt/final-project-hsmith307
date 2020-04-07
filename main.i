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
# 1 "game.h" 1

typedef struct {
    int col;
    int row;
    int height;
    int width;
    int active;
    int cdel;
    int rdel;
    int aniState;
    int aniCounter;
    int curFrame;
    int numFrames;
    int bulletTimer;
}FRY;


typedef struct {
    int col;
    int row;
    int height;
    int width;
    int active;
    int cdel;
    int rdel;
    int aniState;
    int aniCounter;
    int curFrame;
    int numFrames;
    int bulletTimer;
}LEELA;

typedef struct {
    int col;
    int row;
    int height;
    int width;
    int active;
    int cdel;
    int rdel;
    int aniState;
    int aniCounter;
    int curFrame;
    int numFrames;
}ALIEN;



typedef struct {
    int col;
    int row;
    int height;
    int width;
    int active;
    int cdel;
    int rdel;
}SPACESHIP;


typedef struct {
    int col;
    int row;
    int height;
    int width;
    int active;
    int cdel;
    int rdel;
}PLANET;



typedef struct {
    int col;
    int row;
    int height;
    int width;
    int active;
}HEART;


typedef struct {
    int col;
    int row;
    int height;
    int width;
    int active;
}BLOCK;


typedef struct {
    int col;
    int row;
    int rdel;
    int cdel;
    int height;
    int width;
    int active;
}BULLET;


typedef struct {
    int col;
    int row;
    int cdel;
    int height;
    int width;
    int active;
    volatile int treasureCounter;
    int treasureNum;
}TREASURE;







extern PLANET p1;
extern PLANET p2;
extern PLANET p3;
extern PLANET p4;
extern FRY fry;
extern LEELA leela;
extern SPACESHIP spaceship;
extern ALIEN alien;
extern BLOCK blocks[];
extern HEART life1;
extern HEART life2;
extern HEART life3;
extern HEART life4;
extern HEART life5;
extern BULLET bullets[10];
extern TREASURE treasureP1;
extern TREASURE treasure[5];


extern int lifeCounter;
extern int life1Counter;
extern int life2Counter;
extern int life3Counter;
extern int life4Counter;

extern enum {FRYCHARACTER, LEELACHARACTER};
extern int characterChoice;






void initGame();
void updateGame();

void initSpace();
void updateSpace();

void initp1();
void updatePlanet1();

void initp2();
void updatePlanet2();

void initp3();
void updatePlanet3();

void initp4();
void updatePlanet4();

void initLose();

void initWin();

void drawGame();

void initAlien();
void updateAlien();

void initFry();
void updateFry();

void initSpaceship();

void initBlocks();

void initLives();
void updateLives();

void initTreasure();
void updateTreasure(TREASURE *);

void initLeela();
void updateLeela();

void initBullets();

void shootBullets();
void updateBullets(BULLET *);

extern int isLost;
extern int isWon;
extern int treasureNum;
extern int prevTreasureNum;


extern int curLocation;
# 3 "main.c" 2
# 1 "spritesheet5.h" 1
# 21 "spritesheet5.h"
extern const unsigned short spritesheet5Tiles[16384];


extern const unsigned short spritesheet5Pal[256];
# 4 "main.c" 2
# 1 "spacebg.h" 1
# 22 "spacebg.h"
extern const unsigned short spacebgTiles[11440];


extern const unsigned short spacebgMap[1024];


extern const unsigned short spacebgPal[256];
# 5 "main.c" 2
# 1 "futuramapage.h" 1
# 22 "futuramapage.h"
extern const unsigned short futuramapageTiles[1936];


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
# 1 "bg.h" 1
# 22 "bg.h"
extern const unsigned short bgTiles[1632];


extern const unsigned short bgMap[1024];


extern const unsigned short bgPal[256];
# 9 "main.c" 2
# 1 "planet2bg.h" 1
# 22 "planet2bg.h"
extern const unsigned short planet2bgTiles[9840];


extern const unsigned short planet2bgMap[1024];


extern const unsigned short planet2bgPal[256];
# 10 "main.c" 2
# 1 "planet3bg.h" 1
# 22 "planet3bg.h"
extern const unsigned short planet3bgTiles[15696];


extern const unsigned short planet3bgMap[2048];


extern const unsigned short planet3bgPal[256];
# 11 "main.c" 2
# 1 "planet4bg.h" 1
# 22 "planet4bg.h"
extern const unsigned short planet4bgTiles[13296];


extern const unsigned short planet4bgMap[1024];


extern const unsigned short planet4bgPal[256];
# 12 "main.c" 2
# 1 "losebg.h" 1
# 22 "losebg.h"
extern const unsigned short losebgTiles[6064];


extern const unsigned short losebgMap[1024];


extern const unsigned short losebgPal[256];
# 13 "main.c" 2
# 1 "instructions.h" 1
# 22 "instructions.h"
extern const unsigned short instructionsTiles[3696];


extern const unsigned short instructionsMap[1024];


extern const unsigned short instructionsPal[256];
# 14 "main.c" 2
# 1 "win.h" 1
# 22 "win.h"
extern const unsigned short winTiles[48];


extern const unsigned short winMap[1024];


extern const unsigned short winPal[256];
# 15 "main.c" 2


void initialize();
void game();


void goToStart();
void start();
void goToGame();
void game();
void goToSpace();
void space();
void goToPlanet1();
void planet1();
void goToPlanet2();
void planet2();
void goToPlanet3();
void planet3();
void goToPlanet4();
void planet4();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();



void initGame();
void updateGame();

void initSpace();
void updateSpace();

void initPlanet1();
void updatePlanet1();

void initPlanet2();
void updatePlanet2();

void initPlanet3();
void updatePlanet3();

void initPlanet4();
void updatePlanet4();


enum {START, GAME, SPACE, PLANET1, PLANET2, PLANET3, PLANET4, PAUSE, WIN, LOSE};
int state;
int prevState;


unsigned short buttons;
unsigned short oldButtons;


unsigned short hOff;
unsigned short vOff;


OBJ_ATTR shadowOAM[128];



int main() {

    initialize();

    while (1) {


        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);

        switch(state) {
        case START:
            start();
            break;
        case GAME:
            game();
            break;
        case SPACE:
            space();
            break;
        case PLANET1:
            planet1();
            break;
        case PLANET2:
            planet2();
            break;
        case PLANET3:
            planet3();
            break;
        case PLANET4:
            planet4();
            break;
        case PAUSE:
            pause();
            break;
        case WIN:
            win();
            break;
        case LOSE:
            lose();
            break;
        default:
            break;
        }
    }

}


void initialize() {

      (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);

      hOff = 0;
      vOff = 0;
      buttons = (*(volatile unsigned short *)0x04000130);
      goToStart();

}


void goToStart() {
    hOff = 0;
    vOff = 0;
    isLost = 0;

    hideSprites();


    spaceship.active = 0;
    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;
    life1.active = 0;
    life2.active = 0;
    life3.active = 0;
    life4.active = 0;
    life5.active = 0;

    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((30)<<8) | (0<<14);
    DMANow(3, futuramapagePal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, futuramapageTiles, &((charblock *)0x6000000)[0], 3872 / 2);
    DMANow(3, futuramapageMap, &((screenblock *)0x6000000)[30], 2048 / 2);

    state = START;

}

void start() {
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000012) = 0;

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToGame();
    }

}

void goToGame() {
    initGame();


    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((30)<<8) | (0<<14);
    DMANow(3, instructionsPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, instructionsTiles, &((charblock *)0x6000000)[0], 7392 / 2);
    DMANow(3, instructionsMap, &((screenblock *)0x6000000)[30], 2048 / 2);



    state = GAME;

}

void game() {
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000012) = 0;

    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
        goToStart();
    }
    if ((!(~(oldButtons)&((1<<5))) && (~buttons & ((1<<5))))) {
        characterChoice = FRYCHARACTER;
        goToSpace();
    }
    if ((!(~(oldButtons)&((1<<4))) && (~buttons & ((1<<4))))) {
        characterChoice = LEELACHARACTER;
        goToSpace();
    }



}

void goToSpace() {
    initSpace();
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((30)<<8) | (0<<14);
    DMANow(3, bgPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, bgTiles, &((charblock *)0x6000000)[0], 3264 / 2);
    DMANow(3, bgMap, &((screenblock *)0x6000000)[30], 2048 / 2);
    state = SPACE;
}

void space() {
    updateSpace();

    prevState = SPACE;


    if (collision(p1.col, p1.row, p1.width, p1.height, spaceship.col, spaceship.row, spaceship.width, spaceship.height) == 1) {
        goToPlanet1();
    }
    if (collision(p2.col, p2.row, p2.width, p2.height, spaceship.col, spaceship.row, spaceship.width, spaceship.height) == 1) {
        goToPlanet2();
    }
    if (collision(p3.col, p3.row, p3.width, p3.height, spaceship.col, spaceship.row, spaceship.width, spaceship.height) == 1) {
        goToPlanet3();
    }
    if (collision(p4.col, p4.row, p4.width, p4.height, spaceship.col, spaceship.row, spaceship.width, spaceship.height) == 1) {
        goToPlanet4();
    }

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToPause();
    }

    if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))) {
        goToGame();
    }
    if (isWon == 1) {
        goToWin();
    }
}

void goToPlanet1() {
    initPlanet1();
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((30)<<8) | (1<<14);
    DMANow(3, planet1PSPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, planet1PSTiles, &((charblock *)0x6000000)[0], 36160 / 2);
    DMANow(3, planet1PSMap, &((screenblock *)0x6000000)[30], 4096 / 2);
    state = PLANET1;
}

void planet1() {
    updatePlanet1();
    prevState = PLANET1;
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToPause();
    }
    if ((!(~(oldButtons)&((1<<5))) && (~buttons & ((1<<5))))) {
        hideSprites();
        fry.active = 0;
        leela.active = 0;
        alien.active = 0;
        spaceship.active = 1;
        p1.active = 1;
        treasure[1].active = 0;
        for (int i = 0; i < 3; i++) {
            blocks[i].active = 0;
        }
        for (int j = 0; j < 10; j++) {
            bullets[j].active = 0;
        }
        goToSpace();
    }

    if (isLost == 1) {
        goToLose();
    }

    if (isWon == 1) {
        goToWin();
    }


    if (characterChoice == LEELACHARACTER) {
        if (collision(treasure[1].col, treasure[1].row, treasure[1].width, treasure[1].height, leela.col, leela.row, leela.width, leela.height)) {
            goToSpace();
        }
    }
    if (characterChoice == FRYCHARACTER) {
        if (collision(treasure[1].col, treasure[1].row, treasure[1].width, treasure[1].height, fry.col, fry.row, fry.width, fry.height)) {
            goToSpace();
        }
    }

}

void goToPlanet2() {
    initPlanet2();
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((30)<<8) | (0<<14);
    DMANow(3, planet2bgPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, planet2bgTiles, &((charblock *)0x6000000)[0], 19680 / 2);
    DMANow(3, planet2bgMap, &((screenblock *)0x6000000)[30], 2048 / 2);
    state = PLANET2;
}

void planet2() {
    updatePlanet2();
    prevState = PLANET2;
    if (!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))) {
        goToPause();
    }
    if ((!(~(oldButtons)&((1<<5))) && (~buttons & ((1<<5))))) {
        hideSprites();
        fry.active = 0;
        leela.active = 0;
        alien.active = 0;
        spaceship.active = 1;
        p1.active = 1;
        treasure[2].active = 0;
        for (int i = 0; i < 3; i++) {
            blocks[i].active = 0;
        }
        for (int j = 0; j < 10; j++) {
            bullets[j].active = 0;
        }
        goToSpace();
    }


    if (characterChoice == LEELACHARACTER) {
        if (collision(treasure[2].col, treasure[2].row, treasure[2].width, treasure[2].height, leela.col, leela.row, leela.width, leela.height)) {
            goToSpace();
        }
    }
    if (characterChoice == FRYCHARACTER) {
        if (collision(treasure[2].col, treasure[2].row, treasure[2].width, treasure[2].height, fry.col, fry.row, fry.width, fry.height)) {
            goToSpace();
        }
    }

   if (isLost == 1) {
        goToLose();
    }

    if (isWon == 1) {
        goToWin();
    }
}

void goToPlanet3() {
    initPlanet3();
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((30)<<8) | (1<<14);
    DMANow(3, planet3bgPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, planet3bgTiles, &((charblock *)0x6000000)[0], 31392 / 2);
    DMANow(3, planet3bgMap, &((screenblock *)0x6000000)[30], 4096 / 2);
    state = PLANET3;
}

void planet3() {
    updatePlanet3();
    prevState = PLANET3;
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToPause();
    }
    if ((!(~(oldButtons)&((1<<5))) && (~buttons & ((1<<5))))) {
        hideSprites();
        fry.active = 0;
        leela.active = 0;
        alien.active = 0;
        spaceship.active = 1;
        p1.active = 1;
        treasure[3].active = 0;
        for (int i = 0; i < 3; i++) {
            blocks[i].active = 0;
        }
        for (int j = 0; j < 10; j++) {
            bullets[j].active = 0;
        }
        goToSpace();
    }


    if (characterChoice == LEELACHARACTER) {
        if (collision(treasure[3].col, treasure[4].row, treasure[3].width, treasure[3].height, leela.col, leela.row, leela.width, leela.height)) {
            goToSpace();
        }
    }
    if (characterChoice == FRYCHARACTER) {
        if (collision(treasure[3].col, treasure[3].row, treasure[3].width, treasure[3].height, fry.col, fry.row, fry.width, fry.height)) {
            goToSpace();
        }
    }

   if (isLost == 1) {
        goToLose();
    }

    if (isWon == 1) {
        goToWin();
    }

}

void goToPlanet4() {
    initPlanet4();
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000012) = 0;
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((30)<<8) | (0<<14);
    DMANow(3, planet4bgPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, planet4bgTiles, &((charblock *)0x6000000)[0], 26592 / 2);
    DMANow(3, planet4bgMap, &((screenblock *)0x6000000)[30], 2048 / 2);
    state = PLANET4;

}

void planet4() {
    updatePlanet4();

    prevState = PLANET4;

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToPause();
    }
    if ((!(~(oldButtons)&((1<<5))) && (~buttons & ((1<<5))))) {
        hideSprites();
        fry.active = 0;
        leela.active = 0;
        alien.active = 0;
        spaceship.active = 1;
        treasure[4].active = 0;
        for (int i = 0; i < 3; i++) {
            blocks[i].active = 0;
        }
        for (int j = 0; j < 10; j++) {
            bullets[j].active = 0;
        }
        p1.active = 1;
        goToSpace();
    }


    if (characterChoice == LEELACHARACTER) {
        if (collision(treasure[4].col, treasure[4].row, treasure[4].width, treasure[4].height, leela.col, leela.row, leela.width, leela.height)) {
            goToSpace();
        }
    }
    if (characterChoice == FRYCHARACTER) {
        if (collision(treasure[4].col, treasure[4].row, treasure[4].width, treasure[4].height, fry.col, fry.row, fry.width, fry.height)) {
            goToSpace();
        }
    }

    if (isLost == 1) {
        goToLose();
    }

    if (isWon == 1) {
        goToWin();
    }
}

void goToPause() {

    hideSprites();
    fry.active = 0;
    leela.active = 0;
    alien.active = 0;



    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;
    spaceship.active = 0;
    for (int i = 0; i < 3; i++) {
        blocks[i].active = 0;
    }
    for (int i = 0; i < 10; i++) {
        bullets[i].active = 0;
    }
    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);
    (*(volatile unsigned short*)0x4000008) = ((1)<<2) | ((30)<<8) | (0<<14);
    DMANow(3, pausePal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, pauseTiles, &((charblock *)0x6000000)[1], 13280 / 2);
    DMANow(3, pauseMap, &((screenblock *)0x6000000)[30], 2048 / 2);

    state = PAUSE;
}

void pause() {
    hideSprites();
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000012) = 0;
    drawGame();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        if (prevState == PLANET1) {
            goToPlanet1();
        } else if (prevState == PLANET2) {
            goToPlanet2();
        } else if (prevState == PLANET3) {
            goToPlanet3();
        } else if (prevState == PLANET4) {
            goToPlanet4();
        } else {
            goToSpace();
        }
    }
}

void goToWin() {
    initWin();

    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000012) = 0;
    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((30)<<8) | (0<<14);
    DMANow(3, winPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, winTiles, &((charblock *)0x6000000)[0], 96 / 2);
    DMANow(3, winMap, &((screenblock *)0x6000000)[30], 2048 / 2);

    state = WIN;
}

void win() {
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToStart();
    }
}

void goToLose() {
    hideSprites();
    initLose();
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000012) = 0;
    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);
    (*(volatile unsigned short*)0x4000008) = ((1)<<2) | ((30)<<8) | (0<<14);
    DMANow(3, losebgPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, losebgTiles, &((charblock *)0x6000000)[1], 12128 / 2);
    DMANow(3, losebgMap, &((screenblock *)0x6000000)[30], 2048 / 2);

    state = LOSE;
}

void lose() {
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToStart();
    }
}
