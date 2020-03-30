#include "myLib.h"
#include "starsbg.h"
#include "planets.h"
#include "game.h"
#include "futuramapage.h"
#include "pause.h"
#include "planet1PS.h"


// Function Prototypes
void initialize();
void game();

// State Prototypes
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

// States of the game
enum {START, GAME, PAUSE, LOSE, WIN};
int state;

// Planets and places of the game
enum {SPACE, PLANET1, PLANET2, PLANET3, PLANET4};
int curLocation;

// Button variables
unsigned short buttons;
unsigned short oldButtons;

// Horizontal Offset
unsigned short hOff;
unsigned short vOff;
int counter;

// set up shadow OAM
OBJ_ATTR shadowOAM[128];

//main stuff

int main() {

    initialize();

    while(1) {

        oldButtons = buttons;
        buttons = BUTTONS;
        
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

// set up the GBA
void initialize() {
    counter = 0;

    REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE | SPRITE_ENABLE;

    // space background stuff

    curLocation = 0;

    //planet background stuff


    hOff = 0;
    vOff = 0;
    buttons = BUTTONS;
    goToStart();

}

void goToStart() {
    // load the start background

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(30) | BG_SIZE_SMALL;
    DMANow(3, futuramapagePal, PALETTE, futuramapagePalLen / 2);
    DMANow(3, futuramapageTiles, &CHARBLOCK[0], futuramapageTilesLen / 2);
    DMANow(3, futuramapageMap, &SCREENBLOCK[30], futuramapageMapLen / 2);  

    state = START;
}

void start() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }

}

void goToGame() {
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE | SPRITE_ENABLE;

    initGame();
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_LARGE;
    DMANow(3, starsbgTiles, &CHARBLOCK[0], starsbgTilesLen / 2);
    DMANow(3, starsbgMap, &SCREENBLOCK[28], starsbgMapLen / 2);

    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(30) | BG_SIZE_WIDE;
    DMANow(3, planetsTilesLen, &CHARBLOCK[1], planetsTilesLen);
    DMANow(3, planetsMap, &SCREENBLOCK[30], planetsMapLen / 2);
    state = GAME;
}
// this should still be game, if the state is space then update space, otherwise update the planet youre on
void game() {
    
    updateGame();

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }


}

void goToPause() {
    REG_BG1HOFF = 0;
    REG_BG0HOFF = 0;
    REG_BG1VOFF = 0;

    hideSprites();

    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;
    DMANow(3, pausePal, PALETTE, pausePalLen / 2);
    DMANow(3, pauseTiles, &CHARBLOCK[1], pauseTilesLen / 2);
    DMANow(3, pauseMap, &SCREENBLOCK[28], pauseMapLen / 2); 

    state = PAUSE;

}

void pause() {
    hideSprites();
    if (BUTTON_PRESSED(BUTTON_START)) {
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
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE;
    DMANow(3, planet1PSPal, PALETTE, planet1PSPalLen / 2);
    DMANow(3, planet1PSTiles, &CHARBLOCK[1], planet1PSTilesLen / 2);
    DMANow(3, planet1PSMap, &SCREENBLOCK[28], planet1PSMapLen / 2); 

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
    // fry.active = 1;
    // spaceship.active = 0;
    // p1.active = 0;
    // p2.active = 0;
    // p3.active = 0;
    // p4.active = 4;


    
}

void goToPlanet2() {

}

void goToPlanet3() {

}

void goToPlanet4() {

}