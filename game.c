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
BLOCK blocks[BLOCKCOUNT];
BULLET bullets[BULLETCOUNT];

// counters to count which life is being lost and thus which should be hidden
int life1Counter;
int life2Counter;
int life3Counter;
int life4Counter;

// keeps track of what state of the game the player was in before pause was pressed
int prevState;
int isLost;

// picking a character
//enum {FRYCHARACTER, LEELACHARACTER};
int characterChoice;

unsigned short hOff;
unsigned short vOff;


// MAIN PART OF THE CODE:
void initGame() {
    initSpaceship();
    initFry();
    initp1();
    initp2();
    initp3();
    initp4();

    isLost = 0;

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;

    DMANow(3, spritesheet5Pal, SPRITEPALETTE, 256);
    DMANow(3, spritesheet5Tiles, &CHARBLOCK[4], spritesheet5TilesLen / 2);

}

void initSpaceship() {
    spaceship.cdel = 1;
    spaceship.rdel = 1;
    spaceship.active = 1;
    spaceship.width = 32;
    spaceship.height = 32;
    spaceship.col = SCREENWIDTH / 2 - spaceship.height / 2 + hOff;
    spaceship.row = SCREENHEIGHT / 2 - spaceship.width / 2 + vOff;
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

// initialize the blocks that fry will jump on
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
    // initiate life 1
    life1.col = 5;
    life1.row = 5;
    life1.active = 1;
    life1.height = 16;
    life1.width = 16;

    // initiate life 2
    life2.col = 26;
    life2.row = 5;
    life2.active = 1;
    life2.height = 16;
    life2.width = 16;

    // initiate life 3
    life3.col = 47;
    life3.row = 5;
    life3.active = 1;
    life3.height = 16;
    life3.width = 16;
}

void initBullets() {
    for (int i = 0; i < BULLETCOUNT; i++) {
        bullets[i].col = leela.col + leela.width;
        bullets[i].row = leela.row + 10;
        bullets[i].width = 8;
        bullets[i].height = 8;
        bullets[i].cdel = 1;
        bullets[i].active = 0;
    }
}

// initialize the blocks that fry can jump onto
// void initBlocks() {
//     for (int k = 0; k < BLOCKCOUNT; k++) {
//         blocks[k].col = 130;
//         blocks[k].row = 40;
//         blocks[k].height = 32;
//         blocks[k].width = 32;
//     }
// }

void initp1() {
    initBullets();
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
    initLives();
    initBlocks();
    spaceship.active = 0;
    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;
    initAlien();

     // initialize fry or leela, depending on who the player chose
    if (characterChoice == LEELACHARACTER) {
        leela.active = 1;
    }
    if (characterChoice == FRYCHARACTER) {
        fry.active = 1;
    }

    life1Counter = 0;

    // handle collisions with the alien and fry
    

}

void initPlanet2() {
    hideSprites();
    spaceship.active = 0;
    p1.active = 0;
    p2.active = 0;
    p3.active = 0;
    p4.active = 0;
    //initFry();
    initAlien();
    initLives();
    // fry.active = 1;
    // fry.col = 20;
    // fry.row = 90;

    // initialize fry or leela, depending on who the player chose
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
    //initFry();

    initAlien();
    initLives();
    // fry.active = 1;  
    // fry.col = 20;
    // fry.row = 90; 

     // initialize fry or leela, depending on who the player chose
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
    //initFry(); 
    initLives();
    initAlien();

     // initialize fry or leela, depending on who the player chose
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

    // // animate fry
    // if (fry.aniCounter % 18 == 0 && fry.active == 1) {
    //     if (fry.curFrame < fry.numFrames - 1) {
    //         fry.curFrame++;
    //     } else {
    //         fry.curFrame = 0;
    //     }
    // }
    updateFry();

    // move the alien towards fry and animate the alien
    alien.col -= alien.cdel;
    if (alien.aniCounter % 18 == 0) {
        if (alien.curFrame < alien.numFrames - 1) {
            alien.curFrame++;
        } else {
            alien.curFrame = 1;
        }
    }
    updateLeela();

    for (int i = 0; i < BULLETCOUNT; i++)
		updateBullets(&bullets[i]);

    // if there is a collision with fry and the alien then you lose a life
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

    // if there is a collision with leela and the alien then you lose a life
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

    // make sure the alien is not active after it goes past fry for now, but soon this will be 
    // changed to a collision and fry will lose a life 
    if (alien.col + alien.width == 0) {
        alien.active = 0;
    }
    drawGame();
}

void updatePlanet2() {
    hOff += 1;
    vOff = 25;

    hideSprites();

    updateFry();

    alien.col -= alien.cdel;
    if (alien.aniCounter % 18 == 0) {
        if (alien.curFrame < alien.numFrames - 1) {
            alien.curFrame++;
        } else {
            alien.curFrame = 1;
        }
    }

    updateLeela();

    // if there is a collision with fry and the alien then you lose a life
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

    // if there is a collision with leela and the alien then you lose a life
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

    // draw the game with the updates
    drawGame();
}

void updatePlanet3() {
    hOff += 1;
    vOff = 45;

    // make sure we erase the sprites if there is a collision
    hideSprites();

    // if (fry.aniCounter % 18 == 0) {
    //     if (fry.curFrame < fry.numFrames - 1) {
    //         fry.curFrame++;
    //     } else {
    //         fry.curFrame = 0;
    //     }
    // }

    updateFry();

    alien.col -= alien.cdel;
    if (alien.aniCounter % 18 == 0) {
        if (alien.curFrame < alien.numFrames - 1) {
            alien.curFrame++;
        } else {
            alien.curFrame = 1;
        }
    }

    updateLeela();

    // if there is a collision with fry and the alien then you lose a life
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

    // if there is a collision with leela and the alien then you lose a life
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

    // draw the game with the updates
    drawGame();
}

void updatePlanet4() {
    hOff += 1;
    vOff = 45;

    // make sure we erase the sprites if there is a collision
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

    updateLeela();

    // if there is a collision with fry and the alien then you lose a life
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

    // if there is a collision with leela and the alien then you lose a life
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

    // draw the game with the updates
    drawGame();
}


void initLose() {
    hideSprites();
    fry.active = 0;
    leela.active = 0;
    alien.active = 0;
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

    if (BUTTON_PRESSED(BUTTON_A) && leela.bulletTimer >= 7) {
        shootBullets();
        leela.bulletTimer = 0;
    }

    leela.bulletTimer++;
}

void shootBullets() {
  	// Find the first inactive bullet
	for (int i = 0; i < BULLETCOUNT; i++) {
		//if (!bullets[i].active) {

			// Position the new bullet
			bullets[i].row = leela.row;
			bullets[i].col = leela.col + leela.width
				- bullets[i].width/2;

			// Take the bullet out of the pool
			bullets[i].active = 1;

			// Break out of the loop
			break;
		//}
	}  
}


void updateBullets(BULLET * b) {

	// If active, update; otherwise ignore
	if (b->active) {
		if (b->row + b->height-1 >= 0
            && b->col + b->cdel > 0
            && b->col + b->cdel < SCREENWIDTH-1) {

			b->row += b->rdel;
            b->col += b->cdel;
		} else {
			b->active = 0;
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
            shadowOAM[12].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | bullets[i].row;
            shadowOAM[12].attr1 = ATTR1_SMALL | bullets[i].col;
            shadowOAM[12].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(12 * 2, 3 * 2);  
        }
    }

    //draw spaceship
    if (spaceship.active) {
        shadowOAM[1].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | spaceship.row;
        shadowOAM[1].attr1 = ATTR1_MEDIUM | spaceship.col;
        shadowOAM[1].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(4 * 4, 1 * 4);
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










