// COMMENT BLOCK ABOUT WHAT IS NEW IN MILESTONE 4
/*
    * I added sound- a splash screen song, a space song, and a non-looping laser sound
    * I already had the main sprites, but I felt my game needed an extra something. So I added the bomber UFO and the helmet to block bombs
    * I added the scrolling space background. The stars and the planet background are different backgrounds and move at different speeds
    
*/


#include "myLib.h"
#include "game.h"
#include "spritesheet5.h"
// #include "spacebg.h"
#include "futuramapage.h"
#include "pause.h"
#include "planet1PS.h"
// #include "bg.h"
#include "planets2.h"
#include "stars.h"
#include "planet2bg.h"
#include "planet3bg.h"
#include "planet4bg.h"
#include "losebg.h"
#include "instructions.h"
#include "instructions2.h"
#include "splashSong1.h"
#include "spaceSong1.h"
#include "planet-background-2.h"
#include "planet-background1.h"
#include "win.h"
#include "sound.h"
#include "forest.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

// Function prototypes
void initialize();
void game();

// State prototypes
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
void goToInstructions();
void instructions();


// more function prototypes
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

// sound stuff
SOUND soundA;
SOUND soundB;

// Game states enum
enum {START, GAME, SPACE, PLANET1, PLANET2, PLANET3, PLANET4, PAUSE, WIN, LOSE, INSTRUCTIONS};
int state;
int prevState;

// Button variables
unsigned short buttons;
unsigned short oldButtons;

// Horizontal Offset
unsigned short hOff;
unsigned short vOff;

enum {FRYCHARACTER, LEELACHARACTER};

// set up shadow OAM
OBJ_ATTR shadowOAM[128];

// MAIN METHOD

int main() {

    initialize();

    while (1) {
        
        // Update the buttons
        oldButtons = buttons;
        buttons = BUTTONS;

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
        case INSTRUCTIONS:
            instructions();
        default:
            break;
        }
    }
    
}

// Set up the GBA
void initialize() {

      REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;

      hOff = 0;
      vOff = 0;

    setupSounds();
    setupInterrupts();

    buttons = BUTTONS;
    oldButtons = 0;
    goToStart();

}

// load the start state
void goToStart() {
    
    hOff = 0;
    vOff = 0;
    isLost = 0;

    hideSprites();

    playSoundA(splashSongLoop, SPLASHSONGLOOPLEN, 1);

    // make things inactive in case you go back to start the game over at any point
    spaceship.active = 0;
    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;
    leela.active = 1;
    fry.active = 1;
    life1.active = 0;
    life2.active = 0;
    life3.active = 0;
    life4.active = 0;
    life5.active = 0;
    for (int k = 0; k < TREASURECOUNT; k++) {
        treasure[k].active = 0;
    }
    for (int i = 0; i < COINCOUNT; i++) {
        coins[i].active = 0;
    }
    for (int j = 0; j < BULLETCOUNT; j++) {
        bullets[j].active = 0;
    }

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(30) | BG_SIZE_SMALL;
    DMANow(3, futuramapagePal, PALETTE, futuramapagePalLen / 2);
    DMANow(3, futuramapageTiles, &CHARBLOCK[0], futuramapageTilesLen / 2);
    DMANow(3, futuramapageMap, &SCREENBLOCK[30], futuramapageMapLen / 2);

    state = START;

}

void start() {
    REG_BG0HOFF = 0; 
    REG_BG0VOFF = 0;

    // stopSound();




    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }

}

void goToGame() {
    initGame();


    playSoundA(splashSongLoop, SPLASHSONGLOOPLEN, 1);

    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(30) | BG_SIZE_SMALL;
    DMANow(3, instructionsPal, PALETTE, instructionsPalLen / 2);
    DMANow(3, instructionsTiles, &CHARBLOCK[0], instructionsTilesLen / 2);
    DMANow(3, instructionsMap, &SCREENBLOCK[30], instructionsMapLen / 2);


    //state = GAME;
    state = GAME;

}

void game() {
    REG_BG0HOFF = 0; 
    REG_BG0VOFF = 0;


    if (BUTTON_PRESSED(BUTTON_A)) {
        goToStart();
    }
    if (BUTTON_PRESSED(BUTTON_LEFT)) {
        characterChoice = FRYCHARACTER;
        goToSpace();
    }
    if (BUTTON_PRESSED(BUTTON_RIGHT)) {
        characterChoice = LEELACHARACTER;
        goToSpace();
    }
    
    // check for a collision here, if there is one move onto planet 1

}

void goToSpace() {
    initSpace();

    playSoundA(spaceSongLoop, SPACESONGLOOPLEN, 1);

    // set up the planet bg
    REG_DISPCTL = MODE0 | BG1_ENABLE | BG0_ENABLE | SPRITE_ENABLE;

    DMANow(3, planets2Pal, PALETTE, planets2PalLen / 2);

    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(26) | BG_SIZE_WIDE;
 
    DMANow(3, planets2Tiles, &CHARBLOCK[1], planets2TilesLen / 2);
    DMANow(3, planets2Map, &SCREENBLOCK[26], planets2MapLen / 2);

    // set up the stars bg 
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(30) | BG_SIZE_WIDE;
    //DMANow(3, starsPal, PALETTE, starsPalLen / 2);
    DMANow(3, starsTiles, &CHARBLOCK[0], starsTilesLen / 2);
    DMANow(3, starsMap, &SCREENBLOCK[30], starsMapLen / 2);

    state = SPACE;
}

void space() {
    updateSpace();

    prevState = SPACE;

    //check for collision with planet 1 and spaceship
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

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }

    if (BUTTON_PRESSED(BUTTON_B)) {
        goToGame();
    }
    if (isWon == 1) {
        goToWin();
    }

    REG_BG0HOFF = hOff / 2;
    REG_BG1HOFF = hOff / 5;
}

void goToPlanet1() {
    playSoundA(spaceSongLoop, SPACESONGLOOPLEN, 1);

    initPlanet1();
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE;
    DMANow(3, planet_background1Pal, PALETTE, planet_background1PalLen / 2);
    DMANow(3, planet_background1Tiles, &CHARBLOCK[0], planet_background1TilesLen / 2);
    DMANow(3, planet_background1Map, &SCREENBLOCK[28], planet_background1MapLen / 2); 
    state = PLANET1;
}

void planet1() {
    updatePlanet1();
    prevState = PLANET1;
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
    if (BUTTON_PRESSED(BUTTON_LEFT)) {
        goToSpace();        
    }

    if (isLost == 1) {
        goToLose();
    }

    if (isWon == 1) {
        goToWin();
    }

    // if there is a collision with fry and the cannonball
    if (collision(fry.col, fry.row, fry.width, fry.height, cannonball.col, cannonball.row, cannonball.width, cannonball.height) == 1 && cannonball.active && fry.active) {
        fry.active = 0;
    }


    // go back to space if you pick up a treasure
    if (characterChoice == LEELACHARACTER) {
        if (collision(treasure[1].col, treasure[1].row, treasure[1].width, treasure[1].height, leela.col, leela.screenRow, leela.width, leela.height)) {
            treasure[1].isCollected = 1;
            goToSpace();
        }
    }
    if (characterChoice == FRYCHARACTER) {
        if (collision(treasure[1].col, treasure[1].row, treasure[1].width, treasure[1].height, fry.col, fry.screenRow, fry.width, fry.height)) {
            treasure[1].isCollected = 1;
            goToSpace();
        }
    }

}

void goToPlanet2() {
    playSoundA(spaceSongLoop, SPACESONGLOOPLEN, 1);

    initPlanet2();
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE;
    DMANow(3, planet_background_2Pal, PALETTE, planet_background_2PalLen / 2);
    DMANow(3, planet_background_2Tiles, &CHARBLOCK[0], planet_background_2TilesLen / 2);
    DMANow(3, planet_background_2Map, &SCREENBLOCK[28], planet_background_2MapLen / 2); 
    state = PLANET2;
}

void planet2() {
    updatePlanet2();
    prevState = PLANET2;
    if BUTTON_PRESSED(BUTTON_START) {
        goToPause();
    }
    if (BUTTON_PRESSED(BUTTON_LEFT)) {
        goToSpace();  
    }

    // go back to space if you pick up a treasure
    if (characterChoice == LEELACHARACTER) {
        if (collision(treasure[2].col, treasure[2].row, treasure[2].width, treasure[2].height, leela.col, leela.screenRow, leela.width, leela.height)) {
            treasure[2].isCollected = 1;
            goToSpace();
        }
    }
    if (characterChoice == FRYCHARACTER) {
        if (collision(treasure[2].col, treasure[2].row, treasure[2].width, treasure[2].height, fry.col, fry.screenRow, fry.width, fry.height)) {
            treasure[2].isCollected = 1;
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
    playSoundA(spaceSongLoop, SPACESONGLOOPLEN, 1);
    initPlanet3();
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_WIDE;
    DMANow(3, planet3bgPal, PALETTE, planet3bgPalLen / 2);
    DMANow(3, planet3bgTiles, &CHARBLOCK[0], planet3bgTilesLen / 2);
    DMANow(3, planet3bgMap, &SCREENBLOCK[28], planet3bgMapLen / 2); 
    state = PLANET3;
}

void planet3() {
    updatePlanet3();
    prevState = PLANET3;
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
    if (BUTTON_PRESSED(BUTTON_LEFT)) {
        goToSpace();  
    }

    // go back to space if you pick up a treasure
    if (characterChoice == LEELACHARACTER) {
        if (collision(treasure[3].col, treasure[4].row, treasure[3].width, treasure[3].height, leela.col, leela.screenRow, leela.width, leela.height)) {
            treasure[3].isCollected = 1;
            goToSpace();
        }
    }
    if (characterChoice == FRYCHARACTER) {
        if (collision(treasure[3].col, treasure[3].row, treasure[3].width, treasure[3].height, fry.col, fry.screenRow, fry.width, fry.height)) {
            treasure[3].isCollected = 1;
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
    playSoundA(spaceSongLoop, SPACESONGLOOPLEN, 1);
    initPlanet4();
    REG_BG0HOFF = 0; 
    REG_BG0VOFF = 0;
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;
    DMANow(3, planet4bgPal, PALETTE, planet4bgPalLen / 2);
    DMANow(3, planet4bgTiles, &CHARBLOCK[0], planet4bgTilesLen / 2);
    DMANow(3, planet4bgMap, &SCREENBLOCK[28], planet4bgMapLen / 2); 
    state = PLANET4;

}

void planet4() {
    updatePlanet4();
    
    prevState = PLANET4;

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
    if (BUTTON_PRESSED(BUTTON_LEFT)) {
        p1.active = 1;
        goToSpace();  
    }

    // go back to space if you pick up a treasure
    if (characterChoice == LEELACHARACTER) {
        if (collision(treasure[4].col, treasure[4].row, treasure[4].width, treasure[4].height, leela.col, leela.screenRow, leela.width, leela.height)) {
            treasure[4].isCollected = 1;
            goToSpace();
        }
    }
    if (characterChoice == FRYCHARACTER) {
        if (collision(treasure[4].col, treasure[4].row, treasure[4].width, treasure[4].height, fry.col, fry.screenRow, fry.width, fry.height)) {
            treasure[4].isCollected = 1;
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

    pauseSound();

    initPause();
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;
    DMANow(3, pausePal, PALETTE, pausePalLen / 2);
    DMANow(3, pauseTiles, &CHARBLOCK[1], pauseTilesLen / 2);
    DMANow(3, pauseMap, &SCREENBLOCK[28], pauseMapLen / 2); 

    state = PAUSE;
}

void pause() {
    hideSprites();
    REG_BG0HOFF = 0; 
    REG_BG0VOFF = 0;
    drawGame();
    if (BUTTON_PRESSED(BUTTON_B)) {
        goToInstructions();
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        unpauseSound();
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

    vOff = 0;
    hOff = 0;
    REG_BG0VOFF = 0;
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;

    DMANow(3, winPal, PALETTE, winPalLen / 2);
    DMANow(3, winTiles, &CHARBLOCK[0], winTilesLen / 2);
    DMANow(3, winMap, &SCREENBLOCK[28], winMapLen / 2);

    state = WIN;
}

void win() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void goToLose() {
    hideSprites();
    initLose();
    REG_BG0HOFF = 0; 
    REG_BG0VOFF = 0;
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(28) | BG_SIZE_SMALL;
    DMANow(3, losebgPal, PALETTE, losebgPalLen / 2);
    DMANow(3, losebgTiles, &CHARBLOCK[1], losebgTilesLen / 2);
    DMANow(3, losebgMap, &SCREENBLOCK[28], losebgMapLen / 2); 

    state = LOSE;
}

void lose() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void goToInstructions() {
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(30) | BG_SIZE_SMALL;
    DMANow(3, instructions2Pal, PALETTE, instructions2PalLen / 2);
    DMANow(3, instructions2Tiles, &CHARBLOCK[0], instructions2TilesLen / 2);
    DMANow(3, instructions2Map, &SCREENBLOCK[30], instructions2MapLen / 2);

     hideSprites();
    fry.active = 0;
    leela.active = 0;
    alien.active = 0;
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
    for (int i = 0; i < COINCOUNT; i++) {
        coins[i].active = 0;
    }
    for (int i = 0; i < BULLETCOUNT; i++) {
        bullets[i].active = 0;
    }
    enemy.active = 0;

    state = INSTRUCTIONS;
}

void instructions() {
    hideSprites();
    REG_BG0HOFF = 0; 
    REG_BG0VOFF = 0;
    drawGame();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
}