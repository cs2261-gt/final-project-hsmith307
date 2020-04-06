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


extern int life1Counter;
extern int life2Counter;
extern int life3Counter;
extern int life4Counter;

extern enum {FRYCHARACTER, LEELACHARACTER};
extern int characterChoice;
# 116 "game.h"
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

void drawGame();

void initAlien();
void initFry();
void initSpaceship();
void initBlocks();
void initLives();
void initLeela();

extern int isLost;
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
BLOCK blocks[3];


int life1Counter;
int life2Counter;
int life3Counter;
int life4Counter;


int prevState;
int isLost;



int characterChoice;

unsigned short hOff;
unsigned short vOff;



void initGame() {
    initSpaceship();
    initFry();
    initp1();
    initp2();
    initp3();
    initp4();

    isLost = 0;

    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);

    DMANow(3, spritesheet5Pal, ((unsigned short *)0x5000200), 256);
    DMANow(3, spritesheet5Tiles, &((charblock *)0x6000000)[4], 32768 / 2);

}

void initSpaceship() {
    spaceship.cdel = 1;
    spaceship.rdel = 1;
    spaceship.active = 1;
    spaceship.width = 32;
    spaceship.height = 32;
    spaceship.col = 240 / 2 - spaceship.height / 2 + hOff;
    spaceship.row = 160 / 2 - spaceship.width / 2 + vOff;
}

void initFry() {
    fry.col = 20;
    fry.row = 90;
    fry.cdel = 1;
    fry.rdel = 1;
    fry.active = 0;
    fry.width = 64;
    fry.height = 64;
    fry.aniState = 0;
    fry.curFrame = 0;
    fry.numFrames = 4;
    fry.aniCounter = 0;
}

void initLeela() {
    leela.col = 20;
    leela.row = 90;
    leela.cdel = 0;
    leela.rdel = 1;
    leela.active = 0;
    leela.width = 64;
    leela.height = 64;
    leela.aniState = 1;
    leela.curFrame = 0;
    leela.numFrames = 4;
    leela.aniCounter = 0;
}


void initAlien() {
    alien.col = 170;
    alien.row = 90;
    alien.cdel = 1;
    alien.rdel = 1;
    alien.active = 1;
    alien.width = 64;
    alien.height = 64;
    alien.aniState = 2;
    alien.curFrame = 1;
    alien.numFrames = 4;
    alien.aniCounter = 0;
}


void initBlocks() {
    for (int i = 0; i < 3; i++) {
        blocks[i].col = 80;
        blocks[i].row = 60;
        blocks[i].active = 1;
        blocks[i].width = 32;
        blocks[i].height = 32;
    }
}



void initLives() {

    life1.col = 5;
    life1.row = 5;
    life1.active = 1;
    life1.height = 16;
    life1.width = 16;


    life2.col = 26;
    life2.row = 5;
    life2.active = 1;
    life2.height = 16;
    life2.width = 16;


    life3.col = 47;
    life3.row = 5;
    life3.active = 1;
    life3.height = 16;
    life3.width = 16;
}
# 173 "game.c"
void initp1() {
    p1.col = 200;
    p1.row = 20;
    p1.width = 32;
    p1.height = 32;
    p1.active = 1;
}

void initp2() {
    p2.col = 200;
    p2.row = 90;
    p2.width = 32;
    p2.height = 32;
    p2.active = 1;
}

void initp3() {
    p3.col = 20;
    p3.row = 10;
    p3.width = 32;
    p3.height = 32;
    p3.active = 1;
}

void initp4() {
    p4.col = 180;
    p4.row = 120;
    p4.width = 32;
    p4.height = 32;
    p4.active = 1;
}

void updateGame() {

}

void initSpace() {

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

    DMANow(3, spritesheet5Pal, ((unsigned short *)0x5000200), 256);
    DMANow(3, spritesheet5Tiles, &((charblock *)0x6000000)[4], 32768 / 2);

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


}

void initPlanet1() {
    hideSprites();
    initLives();
    initBlocks();
    spaceship.active = 0;
    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;
    initAlien();


    if (characterChoice == LEELACHARACTER) {
        leela.active = 1;
    }
    if (characterChoice == FRYCHARACTER) {
        fry.active = 1;
    }

    life1Counter = 0;




}

void initPlanet2() {
    hideSprites();
    spaceship.active = 0;
    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;

    initAlien();
    initLives();





    if (characterChoice == LEELACHARACTER) {
        leela.active = 1;
    }
    if (characterChoice == FRYCHARACTER) {
        fry.active = 1;
    }

    life1Counter = 0;

}

void initPlanet3() {
    hideSprites();
    spaceship.active = 0;
    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;


    initAlien();
    initLives();





    if (characterChoice == LEELACHARACTER) {
        leela.active = 1;
    }
    if (characterChoice == FRYCHARACTER) {
        fry.active = 1;
    }

    life3Counter = 0;

}

void initPlanet4() {
    hideSprites();
    spaceship.active = 0;
    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;

    initLives();
    initAlien();


    if (characterChoice == LEELACHARACTER) {
        leela.active = 1;
    }
    if (characterChoice == FRYCHARACTER) {
        fry.active = 1;
    }

    life4Counter = 0;

}

void updatePlanet1() {
    hOff += 1;
    vOff = 25;

    hideSprites();



    if (fry.aniCounter % 18 == 0 && fry.active == 1) {
        if (fry.curFrame < fry.numFrames - 1) {
            fry.curFrame++;
        } else {
            fry.curFrame = 0;
        }
    }


    alien.col -= alien.cdel;
    if (alien.aniCounter % 18 == 0) {
        if (alien.curFrame < alien.numFrames - 1) {
            alien.curFrame++;
        } else {
            alien.curFrame = 1;
        }
    }


    leela.col += leela.cdel;
    if (leela.aniCounter % 18 == 0) {
        if (leela.curFrame < leela.numFrames - 1) {
            leela.curFrame++;
        } else {
            leela.curFrame = 0;
        }
    }


    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.row, fry.width, fry.height) == 1 && life1Counter == 0) {
       life3.active = 0;
       life1Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.row, fry.width, fry.height) == 1 && life1Counter == 1) {
       life2.active = 0;
       life1Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.row, fry.width, fry.height) == 1 && life1Counter == 2) {
       life1.active = 0;
       life1Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.row, fry.width, fry.height) == 1 && life1Counter == 3) {
        isLost = 1;
    }


    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.row, leela.width, leela.height) == 1 && life1Counter == 0) {
       life3.active = 0;
       life1Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.row, leela.width, leela.height) == 1 && life1Counter == 1) {
       life2.active = 0;
       life1Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.row, leela.width, leela.height) == 1 && life1Counter == 2) {
       life1.active = 0;
       life1Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.row, leela.width, leela.height) == 1 && life1Counter == 3) {
        isLost = 1;
    }



    if (alien.col + alien.width == 0) {
        alien.active = 0;
    }
    drawGame();
}

void updatePlanet2() {
    hOff += 1;
    vOff = 25;

    hideSprites();

    if (fry.aniCounter % 18 == 0) {
        if (fry.curFrame < fry.numFrames - 1) {
            fry.curFrame++;
        } else {
            fry.curFrame = 0;
        }
    }
    alien.col -= alien.cdel;
    if (alien.aniCounter % 18 == 0) {
        if (alien.curFrame < alien.numFrames - 1) {
            alien.curFrame++;
        } else {
            alien.curFrame = 1;
        }
    }


    leela.col += leela.cdel;
    if (leela.aniCounter % 18 == 0) {
        if (leela.curFrame < leela.numFrames - 1) {
            leela.curFrame++;
        } else {
            leela.curFrame = 0;
        }
    }


    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.row, fry.width, fry.height) == 1 && life2Counter == 0) {
       life3.active = 0;
       life2Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.row, fry.width, fry.height) == 1 && life2Counter == 1) {
       life2.active = 0;
       life2Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.row, fry.width, fry.height) == 1 && life2Counter == 2) {
       life1.active = 0;
       life2Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.row, fry.width, fry.height) == 1 && life2Counter == 3) {
        isLost = 1;
    }

    if (alien.col + alien.width == 0) {
        alien.active = 0;
    }


    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.row, leela.width, leela.height) == 1 && life2Counter == 0) {
       life3.active = 0;
       life2Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.row, leela.width, leela.height) == 1 && life2Counter == 1) {
       life2.active = 0;
       life2Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.row, leela.width, leela.height) == 1 && life2Counter == 2) {
       life1.active = 0;
       life2Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.row, leela.width, leela.height) == 1 && life2Counter == 3) {
        isLost = 1;
    }


    drawGame();
}

void updatePlanet3() {
    hOff += 1;
    vOff = 45;


    hideSprites();

    if (fry.aniCounter % 18 == 0) {
        if (fry.curFrame < fry.numFrames - 1) {
            fry.curFrame++;
        } else {
            fry.curFrame = 0;
        }
    }
    alien.col -= alien.cdel;
    if (alien.aniCounter % 18 == 0) {
        if (alien.curFrame < alien.numFrames - 1) {
            alien.curFrame++;
        } else {
            alien.curFrame = 1;
        }
    }


    leela.col += leela.cdel;
    if (leela.aniCounter % 18 == 0) {
        if (leela.curFrame < leela.numFrames - 1) {
            leela.curFrame++;
        } else {
            leela.curFrame = 0;
        }
    }


    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.row, fry.width, fry.height) == 1 && life3Counter == 0) {
       life3.active = 0;
       life3Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.row, fry.width, fry.height) == 1 && life3Counter == 1) {
       life2.active = 0;
       life3Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.row, fry.width, fry.height) == 1 && life3Counter == 2) {
       life1.active = 0;
       life3Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.row, fry.width, fry.height) == 1 && life3Counter == 3) {
        isLost = 1;
    }


    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.row, leela.width, leela.height) == 1 && life3Counter == 0) {
       life3.active = 0;
       life3Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.row, leela.width, leela.height) == 1 && life3Counter == 1) {
       life2.active = 0;
       life3Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.row, leela.width, leela.height) == 1 && life3Counter == 2) {
       life1.active = 0;
       life3Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.row, leela.width, leela.height) == 1 && life3Counter == 3) {
        isLost = 1;
    }

    if (alien.col + alien.width == 0) {
        alien.active = 0;
    }


    drawGame();
}

void updatePlanet4() {
    hOff += 1;
    vOff = 45;


    hideSprites();

    if (fry.aniCounter % 18 == 0) {
        if (fry.curFrame < fry.numFrames - 1) {
            fry.curFrame++;
        } else {
            fry.curFrame = 0;
        }
    }


    alien.col -= alien.cdel;
    if (alien.aniCounter % 18 == 0) {
        if (alien.curFrame < alien.numFrames - 1) {
            alien.curFrame++;
        } else {
            alien.curFrame = 1;
        }
    }


    leela.col += leela.cdel;
    if (leela.aniCounter % 18 == 0) {
        if (leela.curFrame < leela.numFrames - 1) {
            leela.curFrame++;
        } else {
            leela.curFrame = 0;
        }
    }


    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.row, fry.width, fry.height) == 1 && life4Counter == 0) {
       life3.active = 0;
       life4Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.row, fry.width, fry.height) == 1 && life4Counter == 1) {
       life2.active = 0;
       life4Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.row, fry.width, fry.height) == 1 && life4Counter == 2) {
       life1.active = 0;
       life4Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.row, fry.width, fry.height) == 1 && life4Counter == 3) {
        isLost = 1;
    }


    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.row, leela.width, leela.height) == 1 && life4Counter == 0) {
       life3.active = 0;
       life4Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.row, leela.width, leela.height) == 1 && life4Counter == 1) {
       life2.active = 0;
       life4Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.row, leela.width, leela.height) == 1 && life4Counter == 2) {
       life1.active = 0;
       life4Counter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.row, leela.width, leela.height) == 1 && life4Counter == 3) {
        isLost = 1;
    }

    if (alien.col + alien.width == 0) {
        alien.active = 0;
    }


    drawGame();
}


void initLose() {
    hideSprites();
    fry.active = 0;
    leela.active = 0;
    alien.active = 0;
    for (int i = 0; i < 3; i++) {
        blocks[i].active = 0;
    }
    drawGame();
}

void drawGame() {


    if (fry.active == 1) {
        shadowOAM[0].attr0 = (0<<8) | (0<<13) | (0<<14) | fry.row;
        shadowOAM[0].attr1 = (3<<14) | fry.col;
        shadowOAM[0].attr2 = ((0)<<12) | ((fry.curFrame * 8)*32+(fry.aniState * 8));
    }

    fry.aniCounter++;


    if (leela.active == 1) {
        shadowOAM[11].attr0 = (0<<8) | (0<<13) | (0<<14) | leela.row;
        shadowOAM[11].attr1 = (3<<14) | leela.col;
        shadowOAM[11].attr2 = ((0)<<12) | ((leela.curFrame * 8)*32+(leela.aniState * 8));
    }
    leela.aniCounter++;


    if (alien.active == 1) {
        shadowOAM[6].attr0 = (0<<8) | (0<<13) | (0<<14) | alien.row;
        shadowOAM[6].attr1 = (3<<14) | alien.col;
        shadowOAM[6].attr2 = ((0)<<12) | ((alien.curFrame * 8)*32+(alien.aniState * 8));
    }

    alien.aniCounter++;


    if (life1.active) {
        shadowOAM[7].attr0 = (0<<8) | (0<<13) | (0<<14) | life1.row;
        shadowOAM[7].attr1 = (1<<14) | life1.col;
        shadowOAM[7].attr2 = ((0)<<12) | ((2 * 2)*32+(12 * 2));
    }

    if (life2.active) {
        shadowOAM[8].attr0 = (0<<8) | (0<<13) | (0<<14) | life2.row;
        shadowOAM[8].attr1 = (1<<14) | life2.col;
        shadowOAM[8].attr2 = ((0)<<12) | ((2 * 2)*32+(12 * 2));
    }

    if (life3.active) {
        shadowOAM[9].attr0 = (0<<8) | (0<<13) | (0<<14) | life3.row;
        shadowOAM[9].attr1 = (1<<14) | life3.col;
        shadowOAM[9].attr2 = ((0)<<12) | ((2 * 2)*32+(12 * 2));
    }


    for (int i = 0; i < 3; i++) {
        if (blocks[i].active) {
            shadowOAM[10].attr0 = (0<<8) | (0<<13) | (0<<14) | blocks[i].row;
            shadowOAM[10].attr1 = (2<<14) | blocks[i].col;
            shadowOAM[10].attr2 = ((0)<<12) | ((2 * 2)*32+(10 * 2));
        }
    }


    if (spaceship.active) {
        shadowOAM[1].attr0 = (0<<8) | (0<<13) | (0<<14) | spaceship.row;
        shadowOAM[1].attr1 = (2<<14) | spaceship.col;
        shadowOAM[1].attr2 = ((0)<<12) | ((1 * 4)*32+(4 * 4));
    }

    if (p1.active) {
        shadowOAM[2].attr0 = (0<<8) | (0<<13) | (0<<14) | p1.row;
        shadowOAM[2].attr1 = (2<<14) | p1.col;
        shadowOAM[2].attr2 = ((0)<<12) | ((0 * 4)*32+(4 * 4));
    }

    if (p2.active) {
        shadowOAM[3].attr0 = (0<<8) | (0<<13) | (0<<14) | p2.row;
        shadowOAM[3].attr1 = (2<<14) | p2.col;
        shadowOAM[3].attr2 = ((0)<<12) | ((0 * 4)*32+(5 * 4));
    }


    if (p3.active) {
        shadowOAM[4].attr0 = (0<<8) | (0<<13) | (0<<14) | p3.row;
        shadowOAM[4].attr1 = (2<<14) | p3.col;
        shadowOAM[4].attr2 = ((0)<<12) | ((0 * 4)*32+(6 * 4));
    }



    if (p4.active) {
        shadowOAM[5].attr0 = (0<<8) | (0<<13) | (0<<14) | p4.row;
        shadowOAM[5].attr1 = (2<<14) | p4.col;
        shadowOAM[5].attr2 = ((0)<<12) | ((0 * 4)*32+(7 * 4));
    }


    waitForVBlank();

    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    (*(volatile unsigned short *)0x04000010) = hOff / 4;
    (*(volatile unsigned short *)0x04000012) = vOff;
}
