#include "myLib.h"
#include "game.h"
#include "spritesheet5.h"

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
BLOCK blocks[BLOCKCOUNT];
BULLET bullets[BULLETCOUNT];
BULLET bullet;
TREASURE treasureP1;

// set up the state trackers so you know what planet you are on
enum {PLAN1, PLAN2, PLAN3, PLAN4};
int curLocation;


// counters to count which life is being lost and thus which should be hidden
int lifeCounter;
int life1Counter;
int life2Counter;
int life3Counter;
int life4Counter;

// keeps track of what state of the game the player was in before pause was pressed
int prevState;
int isLost;
int treasureNum;
int prevTreasureNum;

// picking a character
//enum {FRYCHARACTER, LEELACHARACTER};
int characterChoice;

unsigned short hOff;
unsigned short vOff;


// MAIN PART OF THE CODE:
void initGame() {
    initLives();

}

void initSpaceship() {
    spaceship.cdel = 1;
    spaceship.rdel = 1;
    spaceship.active = 1;
    spaceship.width = 32;
    spaceship.height = 32;
    spaceship.col = SCREENWIDTH / 2 - spaceship.height / 2/*+ hOff*/;
    spaceship.row = SCREENHEIGHT / 2 - spaceship.width / 2/*+ vOff*/;
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
    leela.bulletTimer = 0;
}

// initialize the alien
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

// // initialize the blocks that fry will jump on
void initBlocks() {
    for (int i = 0; i < BLOCKCOUNT; i++) {
        blocks[i].col = 80;
        blocks[i].row = 60;
        blocks[i].active = 1;
        blocks[i].width = 32;
        blocks[i].height = 32;
    }
}


// initialize the hearts that will represent the lives of the player
void initLives() {
    lifeCounter = 0;
    // initialize life 1
    life1.col = 5;
    life1.row = 5;
    life1.active = 1;
    life1.height = 16;
    life1.width = 16;

    // initialize life 2
    life2.col = 26;
    life2.row = 5;
    life2.active = 1;
    life2.height = 16;
    life2.width = 16;

    // initialize life 3
    life3.col = 47;
    life3.row = 5;
    life3.active = 1;
    life3.height = 16;
    life3.width = 16;

    // initialize life 4
    life4.col = 68;
    life4.row = 5;
    life4.active = 1;
    life4.height = 16;
    life4.width = 16;

    // initialize life 5
    life5.col = 89;
    life5.row = 5;
    life5.active = 1;
    life5.height = 16;
    life5.width = 16;
}

void initBullets() {
    for (int i = 0; i < BULLETCOUNT; i++) {
        bullets[i].col = leela.col + leela.width;
        bullets[i].row = leela.row + 20;
        bullets[i].height = 8;
        bullets[i].width = 8;
        bullets[i].active = 0;
        bullets[i].cdel = 1;
    }
    // bullet.col = leela.col + leela.width;
    // bullet.row = leela.row + 20;
    // bullet.height = 8;
    // bullet.width = 8;
    // bullet.active = 1;
}

void initTreasure() {
    treasureP1.col = 220;
    treasureP1.row = 100;
    treasureP1.active = 0;
    treasureP1.width = 32;
    treasureP1.height = 32;
    treasureP1.treasureCounter = 0;
    treasureP1.cdel = 1;
}

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
    p3.row = 100;
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

    DMANow(3, spritesheet5Pal, SPRITEPALETTE, 256);
    DMANow(3, spritesheet5Tiles, &CHARBLOCK[4], spritesheet5TilesLen / 2);

    // the game is not lost, so set that variable to 0 as it starts
    isLost = 0;

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


}

void initPlanet1() {
    hideSprites();
    // initLives();
    initBlocks();
    initBullets();
    treasureP1.col = 203;
    treasureP1.row = 120;
    treasureP1.cdel = 1;
    for (int i = 0; i < BULLETCOUNT; i++) {
        bullets[i].cdel = 1;
    }
    spaceship.active = 0;
    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;
    initAlien();

    // keep track of what planet you are on
    curLocation = PLAN1;

     // initialize fry or leela, depending on who the player chose
    if (characterChoice == LEELACHARACTER) {
        leela.active = 1;
    }
    if (characterChoice == FRYCHARACTER) {
        fry.active = 1;
    }

    //life1Counter = 0;

    // handle collisions with the alien and fry
    

}

void initPlanet2() {
    hideSprites();
    spaceship.active = 0;
    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;
    initBullets();
    initAlien();



    // keep track of what planet you are on
    curLocation = PLAN2;

    // initialize fry or leela, depending on who the player chose
    if (characterChoice == LEELACHARACTER) {
        leela.active = 1;
    }
    if (characterChoice == FRYCHARACTER) {
        fry.active = 1;
    }

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
    //initFry();

    initAlien();
    //initLives();
    // fry.active = 1;  
    // fry.col = 20;
    // fry.row = 90; 

    // keep track of what planet you are on
    curLocation = PLAN3;

     // initialize fry or leela, depending on who the player chose
    if (characterChoice == LEELACHARACTER) {
        leela.active = 1;
    }
    if (characterChoice == FRYCHARACTER) {
        fry.active = 1;
    }

    //life3Counter = 0;

}

void initPlanet4() {
    hideSprites();
    spaceship.active = 0;
    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;
    //initFry(); 
    //initLives();
    initAlien();
    initBullets();

    // keep track of what planet you are on
    curLocation = PLAN4;

     // initialize fry or leela, depending on who the player chose
    if (characterChoice == LEELACHARACTER) {
        leela.active = 1;
    }
    if (characterChoice == FRYCHARACTER) {
        fry.active = 1;
    }

    //life4Counter = 0;

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
 

    if (treasureP1.treasureCounter > 2000) {
        treasureP1.active = 1;
        updateTreasure();
    }
    treasureP1.treasureCounter++;

    // update lives when there is a collision
    updateLives();


    // check alien/bullet collisions
    for (int i = 0; i < BULLETCOUNT; i++) {
        if (alien.col == (bullets[i].col + bullets[i].width) && alien.active) {
            alien.active = 0;
            bullets[i].active = 0;
        }
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

    // shoot bullets and update their position
    for (int i = 0; i < BULLETCOUNT; i++) {
         updateBullets(&bullets[i]);
    } 

    // if there is a collision with fry/leela and the alien then you lose a life
    updateLives();

    // check alien/bullet collisions
    for (int i = 0; i < BULLETCOUNT; i++) {
        if (alien.col == (bullets[i].col + bullets[i].width) && alien.active) {
            alien.active = 0;
            bullets[i].active = 0;
        }
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

    // check alien/bullet collisions
    for (int i = 0; i < BULLETCOUNT; i++) {
        if (alien.col == (bullets[i].col + bullets[i].width) && alien.active) {
            alien.active = 0;
            bullets[i].active = 0;
        }
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

    // check alien/bullet collisions
    for (int i = 0; i < BULLETCOUNT; i++) {
        if (alien.col == (bullets[i].col + bullets[i].width) && alien.active) {
            alien.active = 0;
            bullets[i].active = 0;
        }
    }

    // draw the game with the updates
    drawGame();
}


void initLose() {
    hideSprites();
    fry.active = 0;
    leela.active = 0;
    alien.active = 0;
    treasureP1.active = 0;
    for (int i = 0; i < BLOCKCOUNT; i++) {
            blocks[i].active = 0;
    }
    for (int j = 0; j < BULLETCOUNT; j++) {
        bullets[j].active = 0;
    }
    for (int i = 0; i < BLOCKCOUNT; i++) {
        blocks[i].active = 0;
    }
    drawGame();
}

void updateFry() {
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
        fry.bulletTimer = 0;
    }

    fry.bulletTimer++;
}

void updateLeela() {
    // animate leela
    leela.col += leela.cdel;
    if (leela.aniCounter % 18 == 0) {
        if (leela.curFrame < leela.numFrames - 1) {
            leela.curFrame++;
        } else {
            leela.curFrame = 0;
        }
    }

    if (BUTTON_PRESSED(BUTTON_RIGHT)) {
        shootBullets();
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
    if (alien.col + alien.width == 0) {
        alien.active = 0;
    }
}

void shootBullets() {
	// If active, update; otherwise ignore
    for (int i = 0; i < BULLETCOUNT; i++) {
        if (!bullets[i].active && characterChoice == LEELACHARACTER) {
            bullets[i].col = leela.col + leela.width;
            bullets[i].row = leela.row + 20;
            bullets[i].active = 1;
        }
        if (!bullets[i].active && characterChoice == FRYCHARACTER) {
            bullets[i].col = fry.col + fry.width;
            bullets[i].row = fry.row + 20;
            bullets[i].active = 1;
        }
    }
}


void updateBullets(BULLET * b) {
    if (b->active) {
		if (b->row + b->width-1 >= 0
            && b->col + b->cdel > 0
            && b->col + b->cdel < SCREENWIDTH-1) {

			b->row += b->rdel;
            b->col += b->cdel;
		} else {
			b->active = 0;
		}
    }
}

void updateTreasure() {
    treasureP1.col -= treasureP1.cdel;
    hideSprites();
    if (characterChoice == LEELACHARACTER) {
        if (collision(leela.col, leela.row, leela.width, leela.height, treasureP1.col, 
        treasureP1.row, treasureP1.width, treasureP1.height)) {
            
            // make all the sprites that should not be in space inactive
            treasureP1.active = 0;
            leela.active = 0;
            for (int i = 0; i < BLOCKCOUNT; i++) {
                blocks[i].active = 0;
            }
            for (int j = 0; j < BULLETCOUNT; j++) {
                bullets[j].active = 0;
            }

            // update the treasure number so the state machine can know it has increased
                // it will go to the win state if the treasure num is 4, meaning all treasures have been collected
            treasureNum = prevTreasureNum;
            treasureNum++;

            //make the planet that the treasure is from disappear so that you don't go back
            if (curLocation == PLAN1) {
                p1.active = 0;
            }
            if (curLocation == PLAN2) {
                p2.active = 0;
            }
            if (curLocation == PLAN3) {
                p3.active = 0;
            }
            if (curLocation == PLAN4) {
                p4.active = 0;
            }
        }
    }
    if (characterChoice == FRYCHARACTER) {
        if (collision(fry.col, fry.row, fry.width, fry.height, treasureP1.col, 
        treasureP1.row, treasureP1.width, treasureP1.height)) {
            treasureP1.active = 0;
            fry.active = 0;
            for (int i = 0; i < BLOCKCOUNT; i++) {
                blocks[i].active = 0;
            }
            for (int j = 0; j < BULLETCOUNT; j++) {
                bullets[j].active = 0;
            }
            treasureNum = prevTreasureNum;
            treasureNum++;

            //make the planet that the treasure is from disappear so that you don't go back
            if (curLocation == PLAN1) {
                p1.active = 0;
            }
            if (curLocation == PLAN2) {
                p2.active = 0;
            }
            if (curLocation == PLAN3) {
                p3.active = 0;
            }
            if (curLocation == PLAN4) {
                p4.active = 0;
            }
            // we also want to add it to the character's inventory
        }
    }
}

// draw the game depending on which are active
void drawGame() {

    //draw fry
    if (fry.active == 1) {
        shadowOAM[0].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | fry.row;
        shadowOAM[0].attr1 = ATTR1_LARGE | fry.col;
        shadowOAM[0].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(fry.aniState * 8, fry.curFrame * 8);          
    }
    // update the anistate counter so you can animate fry
    fry.aniCounter++;

    //draw leela
    if (leela.active == 1) {
        shadowOAM[11].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | leela.row;
        shadowOAM[11].attr1 = ATTR1_LARGE | leela.col;
        shadowOAM[11].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(leela.aniState * 8, leela.curFrame * 8);  
    }
    leela.aniCounter++;

    // draw the alien
    if (alien.active == 1) {
        shadowOAM[6].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | alien.row;
        shadowOAM[6].attr1 = ATTR1_LARGE | alien.col;
        shadowOAM[6].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(alien.aniState * 8, alien.curFrame * 8);        
    }
    // update the anistate counter so you can animate the alien
    alien.aniCounter++;

    // draw the hearts
    if (life1.active) {
        shadowOAM[7].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | life1.row;
        shadowOAM[7].attr1 = ATTR1_SMALL | life1.col;
        shadowOAM[7].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(12 * 2, 2 * 2);              
    }

    if (life2.active) {
        shadowOAM[8].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | life2.row;
        shadowOAM[8].attr1 = ATTR1_SMALL | life2.col;
        shadowOAM[8].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(12 * 2, 2 * 2);              
    }

    if (life3.active) {
        shadowOAM[9].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | life3.row;
        shadowOAM[9].attr1 = ATTR1_SMALL | life3.col;
        shadowOAM[9].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(12 * 2, 2 * 2);              
    }

    if (life4.active) {
        shadowOAM[16].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | life4.row;
        shadowOAM[16].attr1 = ATTR1_SMALL | life4.col;
        shadowOAM[16].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(12 * 2, 2 * 2);              
    }

    if (life5.active) {
        shadowOAM[17].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | life5.row;
        shadowOAM[17].attr1 = ATTR1_SMALL | life5.col;
        shadowOAM[17].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(12 * 2, 2 * 2);              
    }

    // draw the blocks
    for (int i = 0; i < BLOCKCOUNT; i++) {
        if (blocks[i].active) {
            shadowOAM[10].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | blocks[i].row;
            shadowOAM[10].attr1 = ATTR1_MEDIUM | blocks[i].col;
            shadowOAM[10].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(10 * 2, 2 * 2);              
        }
    } 

    // draw the bullets
    for (int i = 0; i < BULLETCOUNT; i++) {
        if (bullets[i].active) {
            shadowOAM[14].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | bullets[i].row;
            shadowOAM[14].attr1 = ATTR1_TINY | bullets[i].col;
            shadowOAM[14].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(26 * 1, 4 * 1);  
        }
    }

    //draw spaceship
    if (spaceship.active) {
        shadowOAM[1].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | spaceship.row;
        shadowOAM[1].attr1 = ATTR1_MEDIUM | spaceship.col;
        shadowOAM[1].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(4 * 4, 1 * 4);
    }

    //draw treasure
    if (treasureP1.active) {
        shadowOAM[13].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | treasureP1.row;
        shadowOAM[13].attr1 = ATTR1_MEDIUM | treasureP1.col;
        shadowOAM[13].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(7 * 4, 1 * 4);
    }
    // draw p1
    if (p1.active) {
        shadowOAM[2].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | p1.row;
        shadowOAM[2].attr1 = ATTR1_MEDIUM | p1.col;
        shadowOAM[2].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4 * 4, 0 * 4);
    }
    // draw p2
    if (p2.active) {
        shadowOAM[3].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | p2.row;
        shadowOAM[3].attr1 = ATTR1_MEDIUM | p2.col;
        shadowOAM[3].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(5 * 4, 0 * 4);
    }

    // draw p3
    if (p3.active) {
        shadowOAM[4].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | p3.row;
        shadowOAM[4].attr1 = ATTR1_MEDIUM | p3.col;
        shadowOAM[4].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6 * 4, 0 * 4);
    }


    // draw p4
    if (p4.active) {
        shadowOAM[5].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | p4.row;
        shadowOAM[5].attr1 = ATTR1_MEDIUM | p4.col;
        shadowOAM[5].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(7 * 4, 0 * 4);
    }
    

    waitForVBlank();   

    DMANow(3, shadowOAM, OAM, spritesheet5PalLen);

    REG_BG0HOFF = hOff / 4; 
    REG_BG0VOFF = vOff;
}

void updateLives() {
    // if there is a collision with fry and the alien then you lose a life
    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.row, fry.width, fry.height) == 1 && (lifeCounter == 0) && (alien.active) && (characterChoice == FRYCHARACTER)) {
       life5.active = 0;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.row, fry.width, fry.height) == 1 && (lifeCounter == 1) && (alien.active) && (characterChoice == FRYCHARACTER)) {
       life4.active = 0;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.row, fry.width, fry.height) == 1 && (lifeCounter == 2) && (alien.active) && (characterChoice == FRYCHARACTER)) {
       life3.active = 0;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.row, fry.width, fry.height) == 1 && (lifeCounter == 3) && (alien.active) && (characterChoice == FRYCHARACTER)) {
       life2.active = 0;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.row, fry.width, fry.height) == 1 && (lifeCounter == 4) && (alien.active) && (characterChoice == FRYCHARACTER)) {
       life1.active = 0;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, fry.col, fry.row, fry.width, fry.height) == 1 && (lifeCounter == 5) && (alien.active) && (characterChoice == FRYCHARACTER)) {
        isLost = 1;
    }

    // if there is a collision with leela and the alien then you lose a life
    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.row, leela.width, leela.height) == 1 && (lifeCounter == 0) && (alien.active) && (characterChoice == LEELACHARACTER)) {
       life5.active = 0;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.row, leela.width, leela.height) == 1 && (lifeCounter == 1) && (alien.active) && (characterChoice == LEELACHARACTER)) {
       life4.active = 0;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.row, leela.width, leela.height) == 1 && (lifeCounter == 2) && (alien.active) && (characterChoice == LEELACHARACTER)) {
       life3.active = 0;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.row, leela.width, leela.height) == 1 && (lifeCounter == 3) && (alien.active) && (characterChoice == LEELACHARACTER)) {
       life2.active = 0;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.row, leela.width, leela.height) == 1 && (lifeCounter == 4) && (alien.active) && (characterChoice == LEELACHARACTER)) {
       life1.active = 0;
       lifeCounter++;
       alien.col = 190;
    }

    if (collision(alien.col, alien.row, alien.width, alien.height, leela.col, leela.row, leela.width, leela.height) == 1 && (lifeCounter == 5) && (alien.active) && (characterChoice == LEELACHARACTER)) {
        isLost = 1;
    }
}










