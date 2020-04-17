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
    int amJumping;
    int screenRow;
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
    int amJumping;
    int screenRow;
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
    int cdel;
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
extern BULLET bullets[50];
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

void initPause();

void initLose();

void initWin();

void drawGame();

void initAlien();
void updateAlien();

void initFry();
void updateFry();

void initSpaceship();

void initBlocks();
void updateBlocks(BLOCK *);

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
# 3 "game.c" 2
# 1 "spritesheet5.h" 1
# 21 "spritesheet5.h"
extern const unsigned short spritesheet5Tiles[16384];


extern const unsigned short spritesheet5Pal[256];
# 4 "game.c" 2


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


FRY fry;
LEELA leela;
SPACESHIP spaceship;
ALIEN alien;
PLANET p1;
PLANET p2;
PLANET p3;
PLANET p4;
HEART life1;
HEART life2;
HEART life3;
HEART life4;
HEART life5;
BLOCK blocks[3];
BULLET bullets[50];
BULLET bullet;
TREASURE treasureP1;
TREASURE treasure[5];


enum {PLAN1, PLAN2, PLAN3, PLAN4};
int curLocation;


int ground = 154;



int lifeCounter;
int life1Counter;
int life2Counter;
int life3Counter;
int life4Counter;


int prevState;
int isLost;
int isWon;
int treasureNum;
int prevTreasureNum;



int characterChoice;


unsigned short hOff;
unsigned short vOff;
# 81 "game.c"
void initGame() {

    leela.active = 0;
    fry.active = 0;
    alien.active = 0;
    for (int i = 0; i < 5; i++) {
        treasure[i].active = 0;
    }
    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;
    spaceship.active = 0;
    life1.active = 0;
    life2.active = 0;
    life3.active = 0;
    life4.active = 0;
    life5.active = 0;


    initLives();
    life1.active = 1;
    life2.active = 1;
    life3.active = 1;
    life4.active = 1;
    life5.active = 1;
    initTreasure();
    initBullets();
    hideSprites();
    initAlien();
    drawGame();
}

void initSpaceship() {
    spaceship.cdel = 1;
    spaceship.rdel = 1;
    spaceship.active = 0;
    spaceship.width = 32;
    spaceship.height = 32;
    spaceship.col = 240 / 2 - spaceship.height / 2 ;
    spaceship.row = 160 / 2 - spaceship.width / 2 ;
}

void initFry() {
    fry.col = 3;
    fry.row = ((90) << 8);
    fry.cdel = 1;
    fry.rdel = 1;
    fry.active = 0;
    fry.width = 64;
    fry.height = 64;
    fry.aniState = 0;
    fry.curFrame = 0;
    fry.numFrames = 4;
    fry.aniCounter = 0;
    fry.amJumping = 0;
}

void initLeela() {
    leela.col = 3;
    leela.row = ((90) << 8);
    leela.cdel = 0;
    leela.rdel = 1;
    leela.active = 0;
    leela.width = 64;
    leela.height = 64;
    leela.aniState = 1;
    leela.curFrame = 0;
    leela.numFrames = 4;
    leela.aniCounter = 0;
    leela.bulletTimer = 0;
    leela.amJumping = 0;
}


void initAlien() {
    alien.col = 170;
    alien.row = 90;
    alien.cdel = 1;
    alien.rdel = 1;
    alien.active = 0;
    alien.width = 64;
    alien.height = 64;
    alien.aniState = 2;
    alien.curFrame = 1;
    alien.numFrames = 4;
    alien.aniCounter = 0;
}


void initBlocks() {
    for (int i = 0; i < 3; i++) {
        blocks[i].col = 130 + (150 * i);
        blocks[i].active = 1;
        blocks[i].width = 32;
        blocks[i].height = 32;
        blocks[i].row = ground - blocks[i].height / 2;
        blocks[i].cdel = 1;
    }
}



void initLives() {
    lifeCounter = 0;

    life1.col = 5;
    life1.row = 5;
    life1.active = 0;
    life1.height = 16;
    life1.width = 16;


    life2.col = 26;
    life2.row = 5;
    life2.active = 0;
    life2.height = 16;
    life2.width = 16;


    life3.col = 47;
    life3.row = 5;
    life3.active = 0;
    life3.height = 16;
    life3.width = 16;


    life4.col = 68;
    life4.row = 5;
    life4.active = 0;
    life4.height = 16;
    life4.width = 16;


    life5.col = 89;
    life5.row = 5;
    life5.active = 0;
    life5.height = 16;
    life5.width = 16;
}

void initBullets() {
    for (int i = 0; i < 50; i++) {
        bullets[i].col = leela.col + leela.width;
        bullets[i].row = leela.screenRow + 20;
        bullets[i].height = 8;
        bullets[i].width = 8;
        bullets[i].active = 0;
        bullets[i].cdel = 1;
    }
}

void initTreasure() {
    for (int i = 1; i < 5; i++) {
        treasure[i].col = 220;
        treasure[i].row = 100;
        treasure[i].active = 0;
        treasure[i].width = 32;
        treasure[i].height = 32;
        treasure[i].treasureCounter = 0;
        treasure[i].cdel = 1;
        treasure[i].treasureNum = 0;
    }
}

void initp1() {
    p1.col = 200;
    p1.row = 20;
    p1.width = 32;
    p1.height = 32;
    p1.active = 0;
}

void initp2() {
    p2.col = 200;
    p2.row = 90;
    p2.width = 32;
    p2.height = 32;
    p2.active = 0;
}

void initp3() {
    p3.col = 20;
    p3.row = 100;
    p3.width = 32;
    p3.height = 32;
    p3.active = 0;
}

void initp4() {
    p4.col = 180;
    p4.row = 120;
    p4.width = 32;
    p4.height = 32;
    p4.active = 0;
}

void updateGame() {

}

void initSpace() {

    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);

    initSpaceship();


    if (characterChoice == LEELACHARACTER) {
        initLeela();
    }
    if (characterChoice == FRYCHARACTER) {
        initFry();
    }


    initp1();
    initp2();
    initp3();
    initp4();


    spaceship.active = 1;
    p1.active = 1;
    p2.active = 1;
    p3.active = 1;
    p4.active = 1;
    fry.active = 0;
    leela.active = 0;
    alien.active = 0;
    for (int k = 0; k < 5; k++) {
        treasure[k].active = 0;
    }
    for (int i = 0; i < 3; i++) {
        blocks[i].active = 0;
    }
    for (int j = 0; j < 50; j++) {
        bullets[j].active = 0;
    }


    DMANow(3, spritesheet5Pal, ((unsigned short *)0x5000200), 256);
    DMANow(3, spritesheet5Tiles, &((charblock *)0x6000000)[4], 32768 / 2);


    isLost = 0;


    isWon = 0;


    treasureNum = 0;
    prevTreasureNum = 0;
}

void updateSpace() {
    drawGame();

    hOff+= 3;

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {
        spaceship.col += spaceship.cdel;
    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) {
        spaceship.col -= spaceship.cdel;
    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<6)))) {
        spaceship.row -= spaceship.rdel;
    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<7)))) {
        spaceship.row += spaceship.rdel;
    }

    if (treasure[1].treasureNum == 1 && treasure[2].treasureNum == 1 && treasure[3].treasureNum == 1 && treasure[4].treasureNum == 1) {
        isWon = 1;
    }

}

void initPlanet1() {
    hideSprites();
    initBlocks();
    initBullets();
    initAlien();


    treasure[1].col = 203;
    treasure[1].row = 120;
    treasure[1].cdel = 1;


    for (int i = 0; i < 50; i++) {
        bullets[i].cdel = 1;
    }




    curLocation = PLAN1;


    if (characterChoice == LEELACHARACTER) {
        leela.active = 1;
    }
    if (characterChoice == FRYCHARACTER) {
        fry.active = 1;
    }


    spaceship.active = 0;
    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;
    alien.active = 1;
    for (int j = 0; j < 50; j++) {
        bullets[j].active = 1;
    }
}

void initPlanet2() {
    hideSprites();
    initBullets();
    initAlien();
    initBlocks();


    spaceship.active = 0;
    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;
    alien.active = 1;
    for (int j = 0; j < 50; j++) {
        bullets[j].active = 1;
    }


    for (int i = 0; i < 50; i++) {
        bullets[i].cdel = 1;
    }


    treasure[2].row += 25;


    curLocation = PLAN2;


    if (characterChoice == LEELACHARACTER) {
        leela.active = 1;
    }
    if (characterChoice == FRYCHARACTER) {
        fry.active = 1;
    }



}

void initPlanet3() {
    hideSprites();
    spaceship.active = 0;
    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;
    initBullets();
    initAlien();
    initBlocks();


    spaceship.active = 0;
    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;
    alien.active = 1;
    for (int j = 0; j < 50; j++) {
        bullets[j].active = 1;
    }


    treasure[3].row += 25;


    curLocation = PLAN3;


    if (characterChoice == LEELACHARACTER) {
        leela.active = 1;
    }
    if (characterChoice == FRYCHARACTER) {
        fry.active = 1;
    }

}

void initPlanet4() {
    hideSprites();
    spaceship.active = 0;
    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;
    initBullets();
    initAlien();
    initBlocks();


    spaceship.active = 0;
    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;
    alien.active = 1;
    for (int j = 0; j < 50; j++) {
        bullets[j].active = 1;
    }


    treasure[4].row += 25;


    curLocation = PLAN4;


    if (characterChoice == LEELACHARACTER) {
        leela.active = 1;
    }
    if (characterChoice == FRYCHARACTER) {
        fry.active = 1;
    }

}

void updatePlanet1() {
    hOff += 1;
    vOff = 25;

    hideSprites();


    updateFry();
    updateAlien();
    updateLeela();

    for (int i = 0; i < 50; i++) {
         updateBullets(&bullets[i]);
    }


    if (treasure[1].treasureCounter > 50000) {
        treasure[1].active = 1;
        updateTreasure(&treasure[1]);
    }
    treasure[1].treasureCounter++;


    updateLives();


    for (int k = 0; k < 3; k++) {
        updateBlocks(&blocks[k]);
    }



    for (int i = 0; i < 50; i++) {
        if (collision(alien.col + 40, alien.row, alien.width, alien.height, bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height) == 1) {
            alien.col = 240 + alien.width;
            bullets[i].active = 0;
        }
    }

    drawGame();
}

void updatePlanet2() {
    hOff += 1;
    vOff = 25;

    hideSprites();


    updateFry();
    updateAlien();
    updateLeela();


    for (int i = 0; i < 50; i++) {
         updateBullets(&bullets[i]);
    }


    updateLives();


    if (treasure[2].treasureCounter > 500) {
        treasure[2].active = 1;
        updateTreasure(&treasure[2]);
    }
    treasure[2].treasureCounter++;


    for (int k = 0; k < 3; k++) {
        updateBlocks(&blocks[k]);
    }


    for (int i = 0; i < 50; i++) {
        if (collision(alien.col + 40, alien.row, alien.width, alien.height, bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height) == 1) {
            alien.col = 240 + alien.width;
            bullets[i].active = 0;
        }
    }


    drawGame();
}

void updatePlanet3() {
    hOff += 1;
    vOff = 45;


    hideSprites();


    updateFry();
    updateAlien();
    updateLeela();


    for (int i = 0; i < 50; i++) {
         updateBullets(&bullets[i]);
    }


    updateLives();


    if (treasure[3].treasureCounter > 500) {
        treasure[3].active = 1;
        updateTreasure(&treasure[3]);
    }
    treasure[3].treasureCounter++;


    for (int k = 0; k < 3; k++) {
        updateBlocks(&blocks[k]);
    }


    for (int i = 0; i < 50; i++) {
        if (collision(alien.col + 40, alien.row, alien.width, alien.height, bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height) == 1) {
            alien.col = 240 + alien.width;
            bullets[i].active = 0;
        }
    }


    drawGame();
}

void updatePlanet4() {
    hOff += 1;
    vOff = 45;


    hideSprites();


    updateFry();
    updateAlien();
    updateLeela();


    for (int i = 0; i < 50; i++) {
         updateBullets(&bullets[i]);
    }


    updateLives();


    if (treasure[4].treasureCounter > 500) {
        treasure[4].active = 1;
        updateTreasure(&treasure[4]);
    }
    treasure[4].treasureCounter++;


    for (int k = 0; k < 3; k++) {
        updateBlocks(&blocks[k]);
    }


    for (int i = 0; i < 50; i++) {
        if (collision(alien.col + 40, alien.row, alien.width, alien.height, bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height) == 1) {
            alien.col = 240 + alien.width;
            bullets[i].active = 0;
        }
    }


    drawGame();
}

void initPause() {
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
    for (int i = 0; i < 50; i++) {
        bullets[i].active = 0;
    }
}


void initLose() {
    hideSprites();
    fry.active = 0;
    leela.active = 0;
    alien.active = 0;
    for (int k = 0; k < 5; k++) {
        treasure[k].active = 0;
    }
    for (int i = 0; i < 3; i++) {
            blocks[i].active = 0;
    }
    for (int j = 0; j < 50; j++) {
        bullets[j].active = 0;
    }
    for (int i = 0; i < 3; i++) {
        blocks[i].active = 0;
    }
    drawGame();
}

void initWin() {
    hideSprites();
    fry.active = 0;
    leela.active = 0;
    alien.active = 0;
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
    for (int k = 0; k < 5; k++) {
        treasure[k].active = 0;
    }
    for (int i = 0; i < 3; i++) {
            blocks[i].active = 0;
    }
    for (int j = 0; j < 50; j++) {
        bullets[j].active = 0;
    }
    drawGame();
}

void updateFry() {

    if ((!(~(oldButtons)&((1<<6))) && (~buttons & ((1<<6)))) && !fry.amJumping) {
        fry.rdel -= 1500;
        fry.amJumping = 1;
    }
    fry.rdel += 50;

    if (((fry.row + fry.height - 1 + fry.rdel >> 8)) < 160 - fry.height - 1) {
        fry.row += fry.rdel;
    } else {
        fry.rdel = 0;
        fry.amJumping = 0;
    }


    fry.screenRow = ((fry.row >> 8));



    if (fry.aniCounter % 18 == 0 && fry.active == 1) {
        if (fry.curFrame < fry.numFrames - 1) {
            fry.curFrame++;
        } else {
            fry.curFrame = 0;
        }
    }
    if ((!(~(oldButtons)&((1<<4))) && (~buttons & ((1<<4))))) {
        shootBullets();
        fry.bulletTimer = 0;
    }

    fry.bulletTimer++;
}

void updateLeela() {

    if ((!(~(oldButtons)&((1<<6))) && (~buttons & ((1<<6)))) && !leela.amJumping) {
        leela.rdel -= 1500;
        leela.amJumping = 1;
    }
    leela.rdel += 50;

    if (((leela.row + leela.height -1 + leela.rdel >> 8)) < 160 -leela.height-1) {
        leela.row += leela.rdel;
    } else {
        leela.rdel = 0;
        leela.amJumping = 0;
    }


    leela.screenRow = ((leela.row >> 8));


    leela.col += leela.cdel;
    if (leela.aniCounter % 18 == 0) {
        if (leela.curFrame < leela.numFrames - 1) {
            leela.curFrame++;
        } else {
            leela.curFrame = 0;
        }
    }

    if ((!(~(oldButtons)&((1<<4))) && (~buttons & ((1<<4))))) {
        shootBullets();
        leela.bulletTimer = 0;
    }

    leela.bulletTimer++;
}

void updateAlien() {

    if (alien.col > 20) {
        alien.col -= alien.cdel;
    }

    if (alien.aniCounter % 18 == 0) {
        if (alien.curFrame < alien.numFrames - 1) {
            alien.curFrame++;
        } else {
            alien.curFrame = 1;
        }
    }
    if (alien.col == 0) {
        alien.active = 0;
    }
}

void shootBullets() {

    for (int i = 0; i < 50; i++) {
        if (!bullets[i].active && characterChoice == LEELACHARACTER) {
            bullets[i].col = leela.col + leela.width;
            bullets[i].row = leela.screenRow + 20;
            bullets[i].active = 1;
        }
        if (!bullets[i].active && characterChoice == FRYCHARACTER) {
            bullets[i].col = fry.col + fry.width;
            bullets[i].row = fry.screenRow + 20;
            bullets[i].active = 1;
        }
    }
}


void updateBullets(BULLET * b) {
    if (b->active) {
  if (b->row + b->width-1 >= 0
            && b->col + b->cdel > 0
            && b->col + b->cdel < 240 -1) {


            b->col += b->cdel;
  } else {
   b->active = 0;
  }
    }
}

void updateBlocks(BLOCK * b) {
    b->col -= b->cdel;
    if (collision(leela.col, leela.screenRow, leela.width, leela.height, b->col, b->row, b->width, b->height) == 1) {

    }
    if (b->col <= 0) {
        b->col = 240 - b->col;
    }
}

void updateTreasure(TREASURE * treasure) {
    treasure->col -= treasure->cdel;
    hideSprites();
    if (characterChoice == LEELACHARACTER) {
        if (collision(leela.col, leela.screenRow, leela.width, leela.height, treasure->col,
        treasure->row, treasure->width, treasure->height) && (!treasure->treasureNum == 1)) {
            treasure->treasureNum = 1;


            treasure->active = 0;
            leela.active = 0;
            for (int i = 0; i < 3; i++) {
                blocks[i].active = 0;
            }
            for (int j = 0; j < 50; j++) {
                bullets[j].active = 0;
            }

        }
        if (treasure[1].treasureNum == 1 && treasure[2].treasureNum == 1 && treasure[3].treasureNum == 1 && treasure[4].treasureNum == 1) {
            isWon = 1;
        }
    }
    if (characterChoice == FRYCHARACTER) {
        if (collision(fry.col, fry.screenRow, fry.width, fry.height, treasure->col,
        treasure->row, treasure->width, treasure->height)) {
            treasure->treasureNum = 1;


            treasure->active = 0;
            fry.active = 0;
            for (int i = 0; i < 3; i++) {
                blocks[i].active = 0;
            }
            for (int j = 0; j < 50; j++) {
                bullets[j].active = 0;
            }

        }
        if (treasure[1].treasureNum == 1 && treasure[2].treasureNum == 1 && treasure[3].treasureNum == 1 && treasure[4].treasureNum == 1) {
            isWon = 1;
        }
    }
}


void drawGame() {


    if (fry.active == 1) {
        shadowOAM[0].attr0 = (0<<8) | (0<<13) | (0<<14) | fry.screenRow;
        shadowOAM[0].attr1 = (3<<14) | fry.col;
        shadowOAM[0].attr2 = ((0)<<12) | ((fry.curFrame * 8)*32+(fry.aniState * 8));
    }
    if (fry.active == 0) {
        shadowOAM[0].attr0 = (2<<8);
    }

    fry.aniCounter++;


    if (leela.active == 1) {
        shadowOAM[11].attr0 = (0<<8) | (0<<13) | (0<<14) | leela.screenRow;
        shadowOAM[11].attr1 = (3<<14) | leela.col;
        shadowOAM[11].attr2 = ((0)<<12) | ((leela.curFrame * 8)*32+(leela.aniState * 8));
    }
    if (leela.active == 0) {
        shadowOAM[11].attr0 = (2<<8);
    }
    leela.aniCounter++;


    if (alien.active == 1) {
        shadowOAM[6].attr0 = (0<<8) | (0<<13) | (0<<14) | alien.row;
        shadowOAM[6].attr1 = (3<<14) | alien.col;
        shadowOAM[6].attr2 = ((0)<<12) | ((alien.curFrame * 8)*32+(alien.aniState * 8));
    }
    if (alien.active == 0) {
        shadowOAM[6].attr0 = (2<<8);
    }

    alien.aniCounter++;


    if (life1.active) {
        shadowOAM[7].attr0 = (0<<8) | (0<<13) | (0<<14) | life1.row;
        shadowOAM[7].attr1 = (1<<14) | life1.col;
        shadowOAM[7].attr2 = ((0)<<12) | ((2 * 2)*32+(12 * 2));
    }
    if (life1.active == 0) {
        shadowOAM[7].attr0 = (2<<8);
    }

    if (life2.active) {
        shadowOAM[8].attr0 = (0<<8) | (0<<13) | (0<<14) | life2.row;
        shadowOAM[8].attr1 = (1<<14) | life2.col;
        shadowOAM[8].attr2 = ((0)<<12) | ((2 * 2)*32+(12 * 2));
    }
    if (life1.active == 0) {
        shadowOAM[8].attr0 = (2<<8);
    }

    if (life3.active) {
        shadowOAM[9].attr0 = (0<<8) | (0<<13) | (0<<14) | life3.row;
        shadowOAM[9].attr1 = (1<<14) | life3.col;
        shadowOAM[9].attr2 = ((0)<<12) | ((2 * 2)*32+(12 * 2));
    }
    if (life3.active == 0) {
        shadowOAM[9].attr0 = (2<<8);
    }

    if (life4.active) {
        shadowOAM[16].attr0 = (0<<8) | (0<<13) | (0<<14) | life4.row;
        shadowOAM[16].attr1 = (1<<14) | life4.col;
        shadowOAM[16].attr2 = ((0)<<12) | ((2 * 2)*32+(12 * 2));
    }
    if (life4.active == 0) {
        shadowOAM[16].attr0 = (2<<8);
    }

    if (life5.active) {
        shadowOAM[17].attr0 = (0<<8) | (0<<13) | (0<<14) | life5.row;
        shadowOAM[17].attr1 = (1<<14) | life5.col;
        shadowOAM[17].attr2 = ((0)<<12) | ((2 * 2)*32+(12 * 2));
    }
    if (life5.active == 0) {
        shadowOAM[17].attr0 = (2<<8);
    }


    for (int i = 0; i < 3; i++) {
        if (blocks[i].active) {
            shadowOAM[30 + i].attr0 = (0<<8) | (0<<13) | (0<<14) | blocks[i].row;
            shadowOAM[30 + i].attr1 = (1<<14) | blocks[i].col;
            shadowOAM[30 + i].attr2 = ((0)<<12) | ((2 * 2)*32+(10 * 2));
        } else {
            shadowOAM[30 + i].attr0 = (2<<8);
        }
    }


    for (int i = 0; i < 50; i++) {
        if (bullets[i].active) {
            shadowOAM[54 + i].attr0 = (0<<8) | (0<<13) | (0<<14) | bullets[i].row;
            shadowOAM[54 + i].attr1 = (0<<14) | bullets[i].col;
            shadowOAM[54 + i].attr2 = ((0)<<12) | ((4 * 1)*32+(26 * 1));
        } else {
            shadowOAM[54 + i].attr0 = (2<<8);
        }
    }


    if (spaceship.active) {
        shadowOAM[1].attr0 = (0<<8) | (0<<13) | (0<<14) | spaceship.row;
        shadowOAM[1].attr1 = (2<<14) | spaceship.col;
        shadowOAM[1].attr2 = ((0)<<12) | ((1 * 4)*32+(4 * 4));
    }
    if (spaceship.active == 0) {
        shadowOAM[1].attr0 = (2<<8);
    }


    for (int i = 0; i < 5; i++) {
        if (treasure[i].active) {
            shadowOAM[18 + i].attr0 = (0<<8) | (0<<13) | (0<<14) | treasure[i].row;
            shadowOAM[18 + i].attr1 = (2<<14) | treasure[i].col;
            shadowOAM[18 + i].attr2 = ((0)<<12) | ((1 * 4)*32+(7 * 4));
        } else {
            shadowOAM[18 + i].attr0 = (2<<8);
        }
    }


    if (p1.active) {
        shadowOAM[2].attr0 = (0<<8) | (0<<13) | (0<<14) | p1.row;
        shadowOAM[2].attr1 = (2<<14) | p1.col;
        shadowOAM[2].attr2 = ((0)<<12) | ((0 * 4)*32+(4 * 4));
    }
    if (p1.active == 0) {
        shadowOAM[2].attr0 = (2<<8);
    }


    if (p2.active) {
        shadowOAM[3].attr0 = (0<<8) | (0<<13) | (0<<14) | p2.row;
        shadowOAM[3].attr1 = (2<<14) | p2.col;
        shadowOAM[3].attr2 = ((0)<<12) | ((0 * 4)*32+(5 * 4));
    }
    if (p2.active == 0) {
        shadowOAM[3].attr0 = (2<<8);
    }


    if (p3.active) {
        shadowOAM[4].attr0 = (0<<8) | (0<<13) | (0<<14) | p3.row;
        shadowOAM[4].attr1 = (2<<14) | p3.col;
        shadowOAM[4].attr2 = ((0)<<12) | ((0 * 4)*32+(6 * 4));
    }
    if (p3.active == 0) {
        shadowOAM[4].attr0 = (2<<8);
    }



    if (p4.active) {
        shadowOAM[5].attr0 = (0<<8) | (0<<13) | (0<<14) | p4.row;
        shadowOAM[5].attr1 = (2<<14) | p4.col;
        shadowOAM[5].attr2 = ((0)<<12) | ((0 * 4)*32+(7 * 4));
    }
    if (p4.active == 0) {
        shadowOAM[5].attr0 = (2<<8);
    }


    waitForVBlank();

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    (*(volatile unsigned short *)0x04000010) = hOff / 4;
    (*(volatile unsigned short *)0x04000012) = vOff;
}

void updateLives() {

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.screenRow, fry.width, fry.height) == 1 && (lifeCounter == 0) && (alien.active) && (characterChoice == FRYCHARACTER)) {
       life5.active = 0;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.screenRow, fry.width, fry.height) == 1 && (lifeCounter == 1) && (alien.active) && (characterChoice == FRYCHARACTER)) {
       life4.active = 0;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.screenRow, fry.width, fry.height) == 1 && (lifeCounter == 2) && (alien.active) && (characterChoice == FRYCHARACTER)) {
       life3.active = 0;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.screenRow, fry.width, fry.height) == 1 && (lifeCounter == 3) && (alien.active) && (characterChoice == FRYCHARACTER)) {
       life2.active = 0;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.screenRow, fry.width, fry.height) == 1 && (lifeCounter == 4) && (alien.active) && (characterChoice == FRYCHARACTER)) {
       life1.active = 0;
        isLost = 1;
    }


    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.screenRow, leela.width, leela.height) == 1 && (lifeCounter == 0) && (alien.active) && (characterChoice == LEELACHARACTER)) {
       life5.active = 0;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.screenRow, leela.width, leela.height) == 1 && (lifeCounter == 1) && (alien.active) && (characterChoice == LEELACHARACTER)) {
       life4.active = 0;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.screenRow, leela.width, leela.height) == 1 && (lifeCounter == 2) && (alien.active) && (characterChoice == LEELACHARACTER)) {
       life3.active = 0;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.screenRow, leela.width, leela.height) == 1 && (lifeCounter == 3) && (alien.active) && (characterChoice == LEELACHARACTER)) {
       life2.active = 0;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.screenRow, leela.width, leela.height) == 1 && (lifeCounter == 4) && (alien.active) && (characterChoice == LEELACHARACTER)) {
       life1.active = 0;
        isLost = 1;
    }
}
