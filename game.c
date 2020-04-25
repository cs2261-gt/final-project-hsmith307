#include "myLib.h"
#include "game.h"
#include "spritesheet5.h"
#include "shot.h"
#include "sound.h"
#include "metal.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

// Game function prototypes
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

// game variables
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
COIN coins[COINCOUNT];
BULLET bullets[BULLETCOUNT];
BULLET bullet;
TREASURE treasureP1;
TREASURE treasure[TREASURECOUNT];
HELMET helmet;
ENEMY enemy;
CANNONBALL cannonball;

// set up the state trackers so you know what planet you are on
enum {PLAN1, PLAN2, PLAN3, PLAN4};
int curLocation;

// label where the ground is
int ground = 154;


// counters to count which life is being lost and thus which should be hidden
int lifeCounter;
int life1Counter;
int life2Counter;
int life3Counter;
int life4Counter;

// for the cheat
int coinsNeeded;

// keeps track of what state of the game the player was in before pause was pressed
int prevState;
int isLost;
int isWon;
int treasureNum;
int prevTreasureNum;

// picking a character
//enum {FRYCHARACTER, LEELACHARACTER};
int characterChoice;

// vertical and horizontal offsets
unsigned short hOff;
unsigned short vOff;

// gravity constants and helpers
#define GRAVITY 50 // the larger it is, the smaller your max jump height
#define JUMPPOWER 1500 
#define SHIFTUP(num) ((num) << 8)
#define SHIFTDOWN(num) ((num >> 8))

// MAIN PART OF THE CODE:
void initGame() {
    // make everything inactive if youre going back to the game/instructions screen
    leela.active = 0;
    fry.active = 0;
    alien.active = 0;
    for (int i = 0; i < TREASURECOUNT; i++) {
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
    
    // variables that need to be initiated before the game starts
    coinsNeeded = 10;
    lifeCounter = 0;

    initLives();
    // life1.active = 1;
    // life2.active = 1;
    // life3.active = 1;
    // life4.active = 1;
    // life5.active = 1;
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
    spaceship.col = SCREENWIDTH / 2 - spaceship.height / 2/*+ hOff*/;
    spaceship.row = SCREENHEIGHT / 2 - spaceship.width / 2/*+ vOff*/;
}

void initFry() {
    fry.col = 3;
    fry.row = SHIFTUP(90);
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
    fry.coinCount = 0;
    fry.hasShot = 0;
    fry.isCheating = 0;
    fry.canJump = 1;
}

void initLeela() {
    leela.col = 3;
    leela.row = SHIFTUP(90);
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
    leela.coinCount = 0;
    leela.hasShot = 0;
    leela.isCheating = 0;
    leela.canJump = 1;
}

// initialize the alien
void initAlien() {
    //alien.col = 170;
    alien.col = SCREENWIDTH;
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
    alien.timer = 0;
}

// // initialize the coins that fry will jump on
void initCoins() {
    for (int i = 0; i < COINCOUNT; i++) {
        coins[i].col = 130 + (150 * i);
        coins[i].row = 50 - i;
        coins[i].active = 1;
        coins[i].width = 32;
        coins[i].height = 32;
        coins[i].cdel = 1;
        coins[i].aniState = 12;
        coins[i].curFrame = 4;
        coins[i].aniCounter = 0;
        coins[i].numFrames = 7;
    }
}


// initialize the hearts that will represent the lives of the player
void initLives() {
    lifeCounter = 0;
    // initialize life 1
    life1.col = 5;
    life1.row = 5;
    life1.active = 0;
    life1.height = 16;
    life1.width = 16;
    life1.isLost = 0;

    // initialize life 2
    life2.col = 26;
    life2.row = 5;
    life2.active = 0;
    life2.height = 16;
    life2.width = 16;
    life2.isLost = 0;

    // initialize life 3
    life3.col = 47;
    life3.row = 5;
    life3.active = 0;
    life3.height = 16;
    life3.width = 16;
    life3.isLost = 0;

    // initialize life 4
    life4.col = 68;
    life4.row = 5;
    life4.active = 0;
    life4.height = 16;
    life4.width = 16;
    life4.isLost = 0;

    // initialize life 5
    life5.col = 89;
    life5.row = 5;
    life5.active = 0;
    life5.height = 16;
    life5.width = 16;
    life5.isLost = 0;
}

void initBullets() {
    for (int i = 0; i < BULLETCOUNT; i++) {
        bullets[i].col = 67;
        bullets[i].row = 113;
        bullets[i].height = 8;
        bullets[i].width = 8;
        bullets[i].active = 0;
        bullets[i].cdel = 1;
    }
}

void initTreasure() {
    for (int i = 1; i < TREASURECOUNT; i++) {
        treasure[i].col = 200;
        treasure[i].row = 100;
        treasure[i].active = 0;
        treasure[i].width = 32;
        treasure[i].height = 32;
        treasure[i].treasureCounter = 0;
        treasure[i].cdel = 1;
        treasure[i].treasureNum = 0;
        treasure[i].distance = 500;
        treasure[i].isCollected = 0;
    }
}


void initEnemy() {
    enemy.width = 32;
    enemy.height = 32;
    enemy.col = SCREENWIDTH - enemy.width;
    enemy.row = 10;
    enemy.cdel = 1;
    enemy.active = 0;
    enemy.isLeft = 1;
    enemy.shotReady = 0;
}

void initHelmet() {
    helmet.col = 20;
    helmet.row = 70;
    helmet.active = 0;
    helmet.cdel = 1;
    helmet.width = 32;
    helmet.height = 32;
}

void initCannonball() {
    cannonball.col = enemy.col + enemy.width / 4;
    cannonball.row = enemy.row + enemy.height;
    cannonball.rdel = 1;
    cannonball.active = 0;
    cannonball.width = 8;
    cannonball.height = 8;
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

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    // initialize the spaceship if its the first time the player is going into space
    initSpaceship();

    // initialize fry or leela, depending on who the player chose
    if (characterChoice == LEELACHARACTER) {
        initLeela();
    }
    if (characterChoice == FRYCHARACTER) {
        initFry();
    }
    
    // initialize the planets
    initp1();
    initp2();
    initp3();
    initp4();

    life1.active = 1;
    life2.active = 1;
    life3.active = 1;
    life4.active = 1;
    life5.active = 1;

    // make active what needs to be active, make inactive what should not be active
    spaceship.active = 1;
    if (!treasure[1].isCollected) {
        p1.active = 1;
    }
    if (!treasure[2].isCollected) {
        p2.active = 1;
    }
    if (!treasure[3].isCollected) {
        p3.active = 1;
    }
    if (!treasure[4].isCollected) {
        p4.active = 1;
    }

    life1.active = 1;
    life2.active = 1;
    life3.active = 1;
    life4.active = 1;
    life5.active = 1;

    // only display the lives that the character has left
    if (life5.isLost) {
        life5.active = 0;
    }
    if (life4.isLost) {
        life4.active = 0;
    }
    if (life3.isLost) {
        life3.active = 0;
    }
    if (life2.isLost) {
        life2.active = 0;
    }
    if (life1.isLost) {
        life1.active = 0;
    }

    fry.active = 0;
    leela.active = 0;
    alien.active = 0;
    for (int k = 0; k < TREASURECOUNT; k++) {
        treasure[k].active = 0;
    }
    for (int i = 0; i < COINCOUNT; i++) {
        coins[i].active = 0;
    }
    for (int j = 0; j < BULLETCOUNT; j++) {
        bullets[j].active = 0;
    }

    initEnemy();
    initCannonball();
    initHelmet();
    initBullets();


    DMANow(3, spritesheet5Pal, SPRITEPALETTE, 256);
    DMANow(3, spritesheet5Tiles, &CHARBLOCK[4], spritesheet5TilesLen / 2);

    // the game is not lost, so set that variable to 0 as it starts
    isLost = 0;

    // the game is not won, so set that variable to 0 as it starts
    isWon = 0;

    // set the treasure numbers
    treasureNum = 0;
    prevTreasureNum = 0;
}

void updateSpace() {
    drawGame();

    hOff+= 3;

    if (BUTTON_HELD(BUTTON_RIGHT)) {
        spaceship.col += spaceship.cdel;
    }
    if (BUTTON_HELD(BUTTON_LEFT)) {
        spaceship.col -= spaceship.cdel;
    }
    if (BUTTON_HELD(BUTTON_UP)) {
        spaceship.row -= spaceship.rdel;
    }
    if (BUTTON_HELD(BUTTON_DOWN)) {
        spaceship.row += spaceship.rdel;
    }

    // make sure the spaceship can't go out of bounds of the screen
    if (spaceship.col == 0) {
        spaceship.col += 1;
    }
    if (spaceship.col + spaceship.width == SCREENWIDTH - 1) {
        spaceship.col -= 1;
    }
    if (spaceship.row == 0) {
        spaceship.row += 1;
    }
    if (spaceship.row + spaceship.height == SCREENHEIGHT - 1) {
        spaceship.row -= 1;
    }

    if (treasure[1].isCollected == 1 && treasure[2].isCollected == 1 && treasure[3].isCollected == 1 && treasure[4].isCollected == 1) {
        isWon = 1;
    }

}

void initPlanet1() {
    hideSprites();
    initCoins();
    //initBullets();
    initAlien();

    life1.active = 1;
    life2.active = 1;
    life3.active = 1;
    life4.active = 1;
    life5.active = 1;

    // only display the lives that the character has left
    if (life5.isLost) {
        life5.active = 0;
    }
    if (life4.isLost) {
        life4.active = 0;
    }
    if (life3.isLost) {
        life3.active = 0;
    }
    if (life2.isLost) {
        life2.active = 0;
    }
    if (life1.isLost) {
        life1.active = 0;
    }

    // for some the treasure only moves like this??
    treasure[1].col = 203;
    treasure[1].row = 120;
    treasure[1].cdel = 1;

    enemy.active = 1;
    enemy.isLeft = 1;

    // make sure you reset the coin count of the character
    if (characterChoice == FRYCHARACTER) {
        fry.coinCount = 0;
    }
    if (characterChoice == LEELACHARACTER)  {
        leela.coinCount = 0;
    }

    // setting the cdel of the bullets here because this works and idk why but it does so yay
    for (int i = 0; i < BULLETCOUNT; i++) {
        bullets[i].cdel = 1;
    }

    cannonball.active = 1;


    // keep track of what planet you are on
    curLocation = PLAN1;

     // initialize fry or leela, depending on who the player chose
    if (characterChoice == LEELACHARACTER) {
        leela.active = 1;
    }
    if (characterChoice == FRYCHARACTER) {
        fry.active = 1;
    }

    // set what needs to be active or inactive
    spaceship.active = 0;
    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;
    alien.active = 1;
    for (int j = 0; j < BULLETCOUNT; j++) {
        bullets[j].active = 1;
    }
}

void initPlanet2() {
    hideSprites();
    //initBullets();
    initAlien();
    initCoins();

    life1.active = 1;
    life2.active = 1;
    life3.active = 1;
    life4.active = 1;
    life5.active = 1;

    // set what needs to be active or inactive
    spaceship.active = 0;
    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;
    alien.active = 1;
    for (int j = 0; j < BULLETCOUNT; j++) {
        bullets[j].active = 1;
    }

    // only display the lives that the character has left
    if (life5.isLost) {
        life5.active = 0;
    }
    if (life4.isLost) {
        life4.active = 0;
    }
    if (life3.isLost) {
        life3.active = 0;
    }
    if (life2.isLost) {
        life2.active = 0;
    }
    if (life1.isLost) {
        life1.active = 0;
    }

    // make sure you reset the coin count of the character
    if (characterChoice == FRYCHARACTER) {
        fry.coinCount = 0;
    }
    if (characterChoice == LEELACHARACTER)  {
        leela.coinCount = 0;
    }

     // setting the cdel of the bullets here because this works and idk why but it does so yay
    for (int i = 0; i < BULLETCOUNT; i++) {
        bullets[i].cdel = 1;
    }

    cannonball.active = 1;


    // make the treasure look like it is on the ground 
    treasure[2].row += 25;

    // keep track of what planet you are on
    curLocation = PLAN2;

    // initialize fry or leela, depending on who the player chose
    if (characterChoice == LEELACHARACTER) {
        leela.active = 1;
    }
    if (characterChoice == FRYCHARACTER) {
        fry.active = 1;
    }

    enemy.active = 1;
    enemy.isLeft = 1;

    //life1Counter = 0;
    
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
    initCoins();

    life1.active = 1;
    life2.active = 1;
    life3.active = 1;
    life4.active = 1;
    life5.active = 1;

    // set what needs to be active or inactive
    spaceship.active = 0;
    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;
    alien.active = 1;
    for (int j = 0; j < BULLETCOUNT; j++) {
        bullets[j].active = 1;
    }

    // only display the lives that the character has left
    if (life5.isLost) {
        life5.active = 0;
    }
    if (life4.isLost) {
        life4.active = 0;
    }
    if (life3.isLost) {
        life3.active = 0;
    }
    if (life2.isLost) {
        life2.active = 0;
    }
    if (life1.isLost) {
        life1.active = 0;
    }

    cannonball.active = 1;


    // make sure you reset the coin count of the character
    if (characterChoice == FRYCHARACTER) {
        fry.coinCount = 0;
    }
    if (characterChoice == LEELACHARACTER)  {
        leela.coinCount = 0;
    }

    // make the treasure look like it is on the ground 
    treasure[3].row += 25;

    // keep track of what planet you are on
    curLocation = PLAN3;

     // initialize fry or leela, depending on who the player chose
    if (characterChoice == LEELACHARACTER) {
        leela.active = 1;
    }
    if (characterChoice == FRYCHARACTER) {
        fry.active = 1;
    }

    enemy.active = 1;
    enemy.isLeft = 1;

}

void initPlanet4() {
    hideSprites();
    spaceship.active = 0;
    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;
    //initBullets();
    initAlien();
    initCoins();

    // set what needs to be active or inactive
    spaceship.active = 0;
    alien.active = 1;
    for (int j = 0; j < BULLETCOUNT; j++) {
        bullets[j].active = 1;
    }

    life1.active = 1;
    life2.active = 1;
    life3.active = 1;
    life4.active = 1;
    life5.active = 1;

    cannonball.active = 1;

    // only display the lives that the character has left
    if (life5.isLost) {
        life5.active = 0;
    }
    if (life4.isLost) {
        life4.active = 0;
    }
    if (life3.isLost) {
        life3.active = 0;
    }
    if (life2.isLost) {
        life2.active = 0;
    }
    if (life1.isLost) {
        life1.active = 0;
    }


    // make sure you reset the coin count of the character
    if (characterChoice == FRYCHARACTER) {
        fry.coinCount = 0;
    }
    if (characterChoice == LEELACHARACTER)  {
        leela.coinCount = 0;
    }

    // make the treasure look like it is on the ground 
    treasure[4].row += 25;

    // keep track of what planet you are on
    curLocation = PLAN4;

     // initialize fry or leela, depending on who the player chose
    if (characterChoice == LEELACHARACTER) {
        leela.active = 1;
    }
    if (characterChoice == FRYCHARACTER) {
        fry.active = 1;
    }

    enemy.active = 1;
    enemy.isLeft = 1;

}

void updatePlanet1() {
    hOff += 1;
    vOff = 25;

    hideSprites();

    // update the movement of the characters
    updateFry();
    updateAlien();
    updateLeela();

    for (int i = 0; i < BULLETCOUNT; i++) {
         updateBullets(&bullets[i]);
    } 
 
    // update the treasure for that planet
    // if (leela.coinCount > coinsNeeded|| fry.coinCount > 10) {
    //     treasure[1].active = 1;
    //     updateTreasure(&treasure[1]);
    // }

 
    // update the enemy
    updateEnemy();

    // update lives when there is a collision
    updateLives();

    // update the cannonball
    updateCannonball();

    // update the helmet
    if (BUTTON_HELD(BUTTON_DOWN)) {
        helmet.active = 1;
    } else {
        helmet.active = 0;
    } 

    //update the coins 
    for (int k = 0; k < COINCOUNT; k++) {
        updateCoins(&coins[k]);
    }

    drawGame();
}

void updatePlanet2() {
    hOff += 1;
    vOff = 25;

    hideSprites();

    // update the movement of all the characters that are active
    updateFry();
    updateAlien();
    updateLeela();

    //shoot bullets and update their position
    for (int i = 0; i < BULLETCOUNT; i++) {
         updateBullets(&bullets[i]);
    } 

    // if there is a collision with fry/leela and the alien then you lose a life
    updateLives();

    // update the enemy
    updateEnemy();

    // update the cannonball
    updateCannonball();

    // update the helmet
    if (BUTTON_HELD(BUTTON_DOWN)) {
        helmet.active = 1;
    } else {
        helmet.active = 0;
    } 

    // // update the treasure for that planet
    // if (leela.coinCount > coinsNeeded|| fry.coinCount > 10) {
    //     treasure[2].active = 1;
    //     updateTreasure(&treasure[2]);
    // }

    //update the coins 
    for (int k = 0; k < COINCOUNT
; k++) {
        updateCoins(&coins[k]);
    }

    // draw the game with the updates
    drawGame();
}

void updatePlanet3() {
    hOff += 1;
    vOff = 45;

    // make sure we erase the sprites if there is a collision
    hideSprites();

    // update the movement of all the characters
    updateFry();
    updateAlien();
    updateLeela();

    // shoot bullets and update their position
    for (int i = 0; i < BULLETCOUNT; i++) {
         updateBullets(&bullets[i]);
    } 

     // if there is a collision with fry/leela and the alien then you lose a life
    updateLives();

    // update the enemy
    updateEnemy();

    // update the cannonball
    updateCannonball();

    // update the helmet
    if (BUTTON_HELD(BUTTON_DOWN)) {
        helmet.active = 1;
    } else {
        helmet.active = 0;
    }


    // update the treasure for that planet
    // if (leela.coinCount > coinsNeeded|| fry.coinCount > 10) {
    //     treasure[3].active = 1;
    //     updateTreasure(&treasure[3]);
    // }

    //update the coins 
    for (int k = 0; k < COINCOUNT
; k++) {
        updateCoins(&coins[k]);
    }

    // draw the game with the updates
    drawGame();
}

void updatePlanet4() {
    hOff += 1;
    vOff = 45;

    // make sure we erase the sprites if there is a collision
    hideSprites();

    // update the characters
    updateFry();
    updateAlien();
    updateLeela();

    // shoot bullets and update their position
    for (int i = 0; i < BULLETCOUNT; i++) {
         updateBullets(&bullets[i]);
    } 

    // if there is a collision with fry/leela and the alien then you lose a life
    updateLives();

    // update the enemy
    updateEnemy();

    // update the cannonball
    updateCannonball();

    // update the helmet
    if (BUTTON_HELD(BUTTON_DOWN)) {
        helmet.active = 1;
    } else {
        helmet.active = 0;
    }

    // // // update the treasure for that planet
    // if (leela.coinCount > coinsNeeded|| fry.coinCount > 10) {
    //     treasure[4].active = 1;
    //     updateTreasure(&treasure[4]);
    // }

    // //update the coins 
    for (int k = 0; k < COINCOUNT; k++) {
        updateCoins(&coins[k]);
    }

    // draw the game with the updates
    drawGame();
}

void initPause() {
     hideSprites();
    fry.active = 0;
    leela.active = 0;
    alien.active = 0;
    // for (int i = 0; i < TREASURECOUNT; i++ {
    //     treasure[i].active = 0;
    // }
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
    cannonball.active = 0;
}


void initLose() {
    hideSprites();
    fry.active = 0;
    leela.active = 0;
    alien.active = 0;
    for (int k = 0; k < TREASURECOUNT; k++) {
        treasure[k].active = 0;
    }
    for (int i = 0; i < COINCOUNT; i++) {
            coins[i].active = 0;
    }
    for (int j = 0; j < BULLETCOUNT; j++) {
        bullets[j].active = 0;
    }
    for (int i = 0; i < COINCOUNT; i++) {
        coins[i].active = 0;
    }
    enemy.active = 0;
    helmet.active = 0;
    cannonball.active = 0;
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
    enemy.active = 0;
    helmet.active = 0;
    cannonball.active = 0;
    for (int k = 0; k < TREASURECOUNT; k++) {
        treasure[k].active = 0;
    }
    for (int i = 0; i < COINCOUNT; i++) {
            coins[i].active = 0;
    }
    for (int j = 0; j < BULLETCOUNT; j++) {
        bullets[j].active = 0;
    }
    drawGame();
}

void updateFry() {
      // gravity stuff
    if (BUTTON_PRESSED(BUTTON_UP) && !fry.amJumping && fry.canJump) {
        fry.rdel -= JUMPPOWER;
        fry.amJumping = 1;
    }
    fry.rdel += GRAVITY;

    if (SHIFTDOWN((fry.row + (fry.height - 1) + fry.rdel)) < (SCREENHEIGHT- fry.height - 1)) {
        fry.row += fry.rdel;
    } else {
        fry.rdel = 0;
        fry.amJumping = 0;
    }

    // cheat if you press select
    if (BUTTON_HELD(BUTTON_SELECT)) {
        coinsNeeded = 5;
        fry.isCheating = 1;
    } else {
        fry.isCheating = 0;
        coinsNeeded = 10;
    }

    fry.screenRow = SHIFTDOWN(fry.row);

    if (fry.coinCount > coinsNeeded) {
        alien.active = 0;
        enemy.active = 0;
        cannonball.active = 0;
        helmet.active = 0;
        fry.col += 1;
        if (curLocation == PLAN1) {
            treasure[1].active = 1;
            updateTreasure(&treasure[1]);
        }
        if (curLocation == PLAN2) {
            treasure[2].active = 1;
            updateTreasure(&treasure[2]);
        }
        if (curLocation == PLAN3) {
            treasure[3].active = 1;
            updateTreasure(&treasure[3]);
        }
        if (curLocation == PLAN4) {
            treasure[4].active = 1;
            updateTreasure(&treasure[4]);
        }
    }


    // animate fry
    if (fry.aniCounter % 18 == 0 && fry.active == 1) {
        if (fry.curFrame < fry.numFrames - 1) {
            fry.curFrame++;
        } else {
            fry.curFrame = 0;
        }
    }
    if (BUTTON_PRESSED(BUTTON_RIGHT)) {
        shootBullets();
        fry.hasShot = 0;
        playSoundB(shot, SHOTLEN, 0);
        fry.bulletTimer = 0;
    }

    fry.bulletTimer++;
}

void updateLeela() {
      // gravity stuff
    if (BUTTON_PRESSED(BUTTON_UP) && !leela.amJumping && leela.canJump) {
        leela.rdel -= JUMPPOWER;
        leela.amJumping = 1;
    }
    leela.rdel += GRAVITY;

    // cheat if you press select
    if (BUTTON_HELD(BUTTON_SELECT)) {
        coinsNeeded = 5;
        leela.isCheating = 1;
    } else {
        leela.isCheating = 0;
        coinsNeeded = 10;
    }

    if (SHIFTDOWN((leela.row + (leela.height - 1) + leela.rdel)) < (SCREENHEIGHT-leela.height-1)) {
        leela.row += leela.rdel;
    } else {
        leela.rdel = 0;
        leela.amJumping = 0;
    }


    leela.screenRow = SHIFTDOWN(leela.row);

    // animate leela
    leela.col += leela.cdel;
    if (leela.aniCounter % 18 == 0) {
        if (leela.curFrame < leela.numFrames - 1) {
            leela.curFrame++;
        } else {
            leela.curFrame = 0;
        }
    }

    if (leela.coinCount > coinsNeeded) {
        alien.active = 0;
        enemy.active = 0;
        cannonball.active = 0;
        helmet.active = 0;
        leela.col += 1;
        if (curLocation == PLAN1) {
            treasure[1].active = 1;
            updateTreasure(&treasure[1]);
        }
        if (curLocation == PLAN2) {
            treasure[2].active = 1;
            updateTreasure(&treasure[2]);
        }
        if (curLocation == PLAN3) {
            treasure[3].active = 1;
            updateTreasure(&treasure[3]);
        }
        if (curLocation == PLAN4) {
            treasure[4].active = 1;
            updateTreasure(&treasure[4]);
        }


    }

    if (BUTTON_PRESSED(BUTTON_RIGHT)) {
        shootBullets();
        leela.hasShot = 1;
        playSoundB(shot, SHOTLEN, 0);
        leela.bulletTimer = 0;
    }

    leela.bulletTimer++;
}

void updateAlien() {
    // move the alien towards fry and animate the alien
    alien.col -= alien.cdel;

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

    // check alien/bullet collisions
    for (int i = 0; i < BULLETCOUNT; i++) {
        if (collision(alien.col + 40, alien.row, alien.width, alien.height, bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height) == 1 && bullets[i].active) {
            alien.active = 0;
            bullets[i].active = 0;
            if (characterChoice == FRYCHARACTER && !fry.canJump) {
                fry.canJump = 1;
            }
            if (characterChoice == LEELACHARACTER && !leela.canJump) {
                leela.canJump = 1;
            }
        }
    }

    alien.timer++;

    if (!alien.active && alien.timer % 130 == 0) {
        initAlien();
        alien.active = 1;
        alien.cdel = 1;
    }
}

void updateEnemy() {
    if (enemy.isLeft) {
        enemy.col -= enemy.cdel;
        if (enemy.col == 0) {
            enemy.isLeft = 0;
        }
    } else {
        enemy.col += enemy.cdel;
        if (enemy.col + enemy.width == SCREENWIDTH - 1) {
            enemy.isLeft = 1;
        }
    }
    if (enemy.shotReady) {
        shootCannonball();
    }
    
}

void shootCannonball() {
    enemy.shotReady = 0;
    cannonball.col = enemy.col + 8;
    cannonball.row = enemy.row + enemy.height - 10;
    cannonball.active = 1;
}

void shootBullets() {
	// If active, update; otherwise ignore
    for (int i = 0; i < BULLETCOUNT; i++) {
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
    if (b->active && (leela.hasShot || fry.hasShot)) {
        if (b->row + b->width-1 >= 0
            && b->col + b->cdel > 0
            && b->col + b->cdel < SCREENWIDTH-1) {

			//b->row += b->rdel;
            b->col += b->cdel;
		} else {
			b->active = 0;
		}
    }
}

void updateCoins(COIN * b) {
    b->col -= b->cdel;
    if (b->aniCounter % 18 == 0) {
        if (b->curFrame < 10) {
            b->curFrame++;
        } else {
            b->curFrame = 4;
        }
    }
    b->aniCounter++;

    if (b->col == 0) {
        b->col = SCREENWIDTH - b->width;
    }
    if (characterChoice == LEELACHARACTER) {
        if (collision(leela.col + (leela.width / 2), leela.screenRow + (leela.height / 2), leela.width / 4, leela.height / 4, b->col, b->row, b->width, b->height) == 1) {
            // update the coin count
            leela.coinCount++;
            b->col = SCREENWIDTH - b->width;
        }
    } 
    if (characterChoice == FRYCHARACTER) {
        if (collision(fry.col + (fry.width - 30), fry.screenRow + (fry.height), fry.width, fry.height, b->col, b->row, b->width, b->height) == 1) {
            // update the coin count
            fry.coinCount++;
            b->col = SCREENWIDTH - b->width;
        }
    }

}

void updateTreasure(TREASURE * treasure) {
    if (treasure->active) {
        hideSprites();
        if (characterChoice == LEELACHARACTER) {
            if (collision(leela.col, leela.screenRow, leela.width, leela.height, treasure->col, 
            treasure->row, treasure->width, treasure->height)) {
                
                // make all the sprites that should not be in space inactive
                treasure->active = 0;
                leela.active = 0;
                for (int i = 0; i < COINCOUNT; i++) {
                    coins[i].active = 0;
                }
                for (int j = 0; j < BULLETCOUNT; j++) {
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
                
                // make all the sprites that should not be in space inactive
                treasure->active = 0;
                fry.active = 0;
                for (int i = 0; i < COINCOUNT; i++) {
                    coins[i].active = 0;
                }
                for (int j = 0; j < BULLETCOUNT; j++) {
                    bullets[j].active = 0;
                }

            }
            if (treasure[1].treasureNum == 1 && treasure[2].treasureNum == 1 && treasure[3].treasureNum == 1 && treasure[4].treasureNum == 1) {
                isWon = 1;
            }
        }
    }

}

void updateCannonball() {
    if (cannonball.active) {
        cannonball.row += cannonball.rdel;
        if (cannonball.row + cannonball.height == 159) {
            cannonball.active = 0;
            enemy.shotReady = 1;
            drawGame();
        }
        if (collision(helmet.col, helmet.row, helmet.width, helmet.height, cannonball.col, cannonball.row, cannonball.width, cannonball.height) == 1 && (helmet.active) && (cannonball.active)) {
            cannonball.active = 0;
            enemy.shotReady = 1;
        }
        if (collision(leela.col, leela.screenRow, leela.width, leela.height, cannonball.col, cannonball.row, cannonball.width, cannonball.height) || collision(fry.col, fry.screenRow, fry.width, fry.height, cannonball.col, cannonball.row, cannonball.width, cannonball.height)) {
            if (characterChoice == LEELACHARACTER) {
                leela.canJump = 0;
            }
            if (characterChoice == FRYCHARACTER) {
                fry.canJump = 0;
            }
        }
    }

}

// draw the game depending on which are active
void drawGame() {

    //draw fry
    if (fry.active == 1) {
        shadowOAM[0].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | fry.screenRow;
        shadowOAM[0].attr1 = ATTR1_LARGE | fry.col;
        shadowOAM[0].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(fry.aniState * 8, fry.curFrame * 8);          
    }
    if (fry.active == 0) {
        shadowOAM[0].attr0 = ATTR0_HIDE;
    }
    // update the anistate counter so you can animate fry
    fry.aniCounter++;

    //draw leela
    if (leela.active == 1) {
        shadowOAM[11].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | leela.screenRow;
        shadowOAM[11].attr1 = ATTR1_LARGE | leela.col;
        shadowOAM[11].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(leela.aniState * 8, leela.curFrame * 8);  
    }
    if (leela.active == 0) {
        shadowOAM[11].attr0 = ATTR0_HIDE;
    }
    leela.aniCounter++;

    // draw the alien
    if (alien.active == 1) {
        shadowOAM[6].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | alien.row;
        shadowOAM[6].attr1 = ATTR1_LARGE | alien.col;
        shadowOAM[6].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(alien.aniState * 8, alien.curFrame * 8);        
    }
    if (alien.active == 0) {
        shadowOAM[6].attr0 = ATTR0_HIDE;
    }
    // update the anistate counter so you can animate the alien
    alien.aniCounter++;

    // draw the hearts
    if (life1.active && !life1.isLost) {
        shadowOAM[7].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | life1.row;
        shadowOAM[7].attr1 = ATTR1_SMALL | life1.col;
        shadowOAM[7].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(10 * 2, 2 * 2);              
    }
    if (life1.active == 0) {
        shadowOAM[7].attr0 = ATTR0_HIDE;
    }

    if (life2.active && !life2.isLost) {
        shadowOAM[8].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | life2.row;
        shadowOAM[8].attr1 = ATTR1_SMALL | life2.col;
        shadowOAM[8].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(10 * 2, 2 * 2);              
    }
    if (life2.active == 0) {
        shadowOAM[8].attr0 = ATTR0_HIDE;
    }

    if (life3.active && !life3.isLost) {
        shadowOAM[9].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | life3.row;
        shadowOAM[9].attr1 = ATTR1_SMALL | life3.col;
        shadowOAM[9].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(10 * 2, 2 * 2);              
    }
    if (life3.active == 0) {
        shadowOAM[9].attr0 = ATTR0_HIDE;
    }

    if (life4.active && !life4.isLost) {
        shadowOAM[16].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | life4.row;
        shadowOAM[16].attr1 = ATTR1_SMALL | life4.col;
        shadowOAM[16].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(10 * 2, 2 * 2);              
    }
    if (life4.active == 0) {
        shadowOAM[16].attr0 = ATTR0_HIDE;
    }

    if (life5.active && !life5.isLost) {
        shadowOAM[17].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | life5.row;
        shadowOAM[17].attr1 = ATTR1_SMALL | life5.col;
        shadowOAM[17].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(10 * 2, 2 * 2);              
    }
    if (life5.active == 0) {
        shadowOAM[17].attr0 = ATTR0_HIDE;
    }

    // draw the coins
    for (int i = 0; i < COINCOUNT; i++) {
        if (coins[i].active) {
            shadowOAM[30 + i].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | coins[i].row;
            shadowOAM[30 + i].attr1 = ATTR1_SMALL | coins[i].col;
            shadowOAM[30 + i].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(coins[i].aniState * 2, coins[i].curFrame * 2);              
        } else {
            shadowOAM[30 + i].attr0 = ATTR0_HIDE;
        }
    } 

    // draw the bullets
    for (int i = 0; i < BULLETCOUNT; i++) {
        if (bullets[i].active) {
            shadowOAM[54 + i].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | bullets[i].row;
            shadowOAM[54 + i].attr1 = ATTR1_TINY | bullets[i].col;
            shadowOAM[54 + i].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(22 * 1, 4 * 1);  
        } else {
            shadowOAM[54 + i].attr0 = ATTR0_HIDE;
        }
    }

    //draw spaceship
    if (spaceship.active) {
        shadowOAM[1].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | spaceship.row;
        shadowOAM[1].attr1 = ATTR1_MEDIUM | spaceship.col;
        shadowOAM[1].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(4 * 4, 1 * 4);
    }
    if (spaceship.active == 0) {
        shadowOAM[1].attr0 = ATTR0_HIDE;
    }

    // draw enemy
    if (enemy.active) {
        shadowOAM[35].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | enemy.row;
        shadowOAM[35].attr1 = ATTR1_MEDIUM | enemy.col;
        shadowOAM[35].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(7 * 4, 1 * 4);      
    }
    if (enemy.active == 0) {
        shadowOAM[35].attr0 = ATTR0_HIDE;
    }

    // draw cannonball
    if (cannonball.active) {
        shadowOAM[36].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | cannonball.row;
        shadowOAM[36].attr1 = ATTR1_TINY | cannonball.col;
        shadowOAM[36].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(23 * 1, 4 * 1);    
    }
    if (cannonball.active == 0) {
        shadowOAM[36].attr0 = ATTR0_HIDE;
    }
    
    // draw the helmet
    if (helmet.active) {
        shadowOAM[37].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | helmet.row;
        shadowOAM[37].attr1 = ATTR1_MEDIUM| helmet.col;
        shadowOAM[37].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(7 * 4, 2 * 4);      
    }
    if (helmet.active == 0) {
        shadowOAM[37].attr0 = ATTR0_HIDE;
    }

    //draw treasure
    for (int i = 0; i < TREASURECOUNT; i++) {
        if (treasure[i].active) {
            shadowOAM[18 + i].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | treasure[i].row;
            shadowOAM[18 + i].attr1 = ATTR1_MEDIUM | treasure[i].col;
            shadowOAM[18 + i].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(6 * 4, 1 * 4);
        } else {
            shadowOAM[18 + i].attr0 = ATTR0_HIDE;
        }
    }

    // draw p1
    if (p1.active) {
        shadowOAM[2].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | p1.row;
        shadowOAM[2].attr1 = ATTR1_MEDIUM | p1.col;
        shadowOAM[2].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4 * 4, 0 * 4);
    }
    if (p1.active == 0) {
        shadowOAM[2].attr0 = ATTR0_HIDE;
    }

    // draw p2
    if (p2.active) {
        shadowOAM[3].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | p2.row;
        shadowOAM[3].attr1 = ATTR1_MEDIUM | p2.col;
        shadowOAM[3].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(5 * 4, 0 * 4);
    }
    if (p2.active == 0) {
        shadowOAM[3].attr0 = ATTR0_HIDE;
    }

    // draw p3
    if (p3.active) {
        shadowOAM[4].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | p3.row;
        shadowOAM[4].attr1 = ATTR1_MEDIUM | p3.col;
        shadowOAM[4].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6 * 4, 0 * 4);
    }
    if (p3.active == 0) {
        shadowOAM[4].attr0 = ATTR0_HIDE;
    }


    // draw p4
    if (p4.active) {
        shadowOAM[5].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | p4.row;
        shadowOAM[5].attr1 = ATTR1_MEDIUM | p4.col;
        shadowOAM[5].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(7 * 4, 0 * 4);
    }
    if (p4.active == 0) {
        shadowOAM[5].attr0 = ATTR0_HIDE;
    }
    

    waitForVBlank();   

    DMANow(3, shadowOAM, OAM, spritesheet5PalLen);

    REG_BG0HOFF = hOff / 4; 
    REG_BG0VOFF = vOff;
}

void updateLives() {
    // if there is a collision with fry and the alien then you lose a life
    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.screenRow, fry.width, fry.height) == 1 && (lifeCounter == 0) && (alien.active) && (characterChoice == FRYCHARACTER)) {
       life5.active = 0;
       life5.isLost = 1;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.screenRow, fry.width, fry.height) == 1 && (lifeCounter == 1) && (alien.active) && (characterChoice == FRYCHARACTER)) {
       life4.active = 0;
       life4.isLost = 1;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.screenRow, fry.width, fry.height) == 1 && (lifeCounter == 2) && (alien.active) && (characterChoice == FRYCHARACTER)) {
       life3.active = 0;
       life3.isLost = 1;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.screenRow, fry.width, fry.height) == 1 && (lifeCounter == 3) && (alien.active) && (characterChoice == FRYCHARACTER)) {
       life2.active = 0;
       life2.isLost = 1;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.screenRow, fry.width, fry.height) == 1 && (lifeCounter == 4) && (alien.active) && (characterChoice == FRYCHARACTER)) {
       life1.active = 0;
       life1.isLost = 1;
        isLost = 1;
    }

    // if there is a collision with leela and the alien then you lose a life
    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.screenRow, leela.width, leela.height) == 1 && (lifeCounter == 0) && (alien.active) && (characterChoice == LEELACHARACTER)) {
       life5.active = 0;
       life5.isLost = 1;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.screenRow, leela.width, leela.height) == 1 && (lifeCounter == 1) && (alien.active) && (characterChoice == LEELACHARACTER)) {
       life4.active = 0;
       life4.isLost = 1;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.screenRow, leela.width, leela.height) == 1 && (lifeCounter == 2) && (alien.active) && (characterChoice == LEELACHARACTER)) {
       life3.active = 0;
       life3.isLost = 1;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.screenRow, leela.width, leela.height) == 1 && (lifeCounter == 3) && (alien.active) && (characterChoice == LEELACHARACTER)) {
       life2.active = 0;
       life2.isLost = 1;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.screenRow, leela.width, leela.height) == 1 && (lifeCounter == 4) && (alien.active) && (characterChoice == LEELACHARACTER)) {
       life1.active = 0;
       life1.isLost = 1;
        isLost = 1;
    }
}





