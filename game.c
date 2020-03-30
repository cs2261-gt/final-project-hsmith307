#include "myLib.h"
#include "game.h" 
#include "planets.h"
#include "spacebg.h"
#include "spritesheet5.h"
#include "futuramapage.h"
#include "planet1.h"

// declaring game attributes
FRY fry;
BENDER bender;
SPACESHIP spaceship;
PLANET planets[PLANETCOUNT];
PLANET p1;
PLANET p2;
PLANET p3;
PLANET p4;

// state enums
enum {RIGHTBEGIN, RIGHTWALK, LEFTBEGIN, LEFTWALK, SPRITEIDLE};
enum {SPACE, PLANET1, PLANET2, PLANET3, PLANET4};
int curLocation;

// Planet states enum

// the directions that the planets are moving

unsigned short hOff;
unsigned short vOff;
  
    void initGame() {

        initFry();
        initSpaceShip();
        initPlanets();

        curLocation = SPACE;        
        // bringing in the spritesheet
        DMANow(3, spritesheet5Pal, SPRITEPALETTE, 256);
        DMANow(3, spritesheet5Tiles, &CHARBLOCK[4], spritesheet5TilesLen / 2);

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
        spaceship.row = (SCREENHEIGHT / 2) - 32;
        spaceship.active = 1;
        spaceship.cdel = 1;
        spaceship.rdel = 1;
        spaceship.aniState = 0;
        spaceship.curFrame = 0;
        spaceship.active = 0;
    }

    void initPlanets() {
        // p1
        p1.col = 90;
        p1.row = 60;
        p1.height = 32;
        p1.width = 32;
        p1.active = 0;

        // p2
        p2.col = 140;
        p2.row = 100;
        p2.height = 32;
        p2.width = 32;
        p2.active = 0;

        // p3
        p3.col = 120;
        p3.row = 20;
        p3.height = 32;
        p3.width = 32;
        p3.active = 0;

        // p4
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

        // check to see if the previous state is idle
        // if (fry.aniState != SPRITEIDLE) {
        //     fry.prevAniState = fry.aniState;
        //     fry.aniState = SPRITEIDLE;
        // }

        // THIS WORKS FOR FRY WALKING
        if (fry.aniCounter % 18 == 0 && fry.active == 1) {
            if (fry.curFrame < fry.numFrames - 1) {
                fry.curFrame+= 1;
            } else {
                fry.curFrame = 0;
            }
        }

        hOff++;
 
        // update the frame fry is in every 18 frames of the game if he is active
        // if (fry.active == 1) {
            
        //     // if (fry.aniCounter % 18 == 0) {
        //     //     if (fry.curFrame < 4) {
        //     //         waitForVBlank();
        //     //         fry.curFrame++;
        //     //     } else {
        //     //         fry.curFrame = 0;
        //     //     }
        //     // }
        // }

        
       // check the state to see if you must move fry or the spaceship



        
        if(BUTTON_HELD(BUTTON_LEFT)) {

            if (spaceship.active == 1) {
                spaceship.col -= spaceship.cdel;
            }
            // if (fry.active == 1) {
            //     fry.col -= fry.cdel;
            // }

        }
        if(BUTTON_HELD(BUTTON_RIGHT)) {
            //move the background
            if (curLocation == PLANET1) {

            } else {
                if (spaceship.active == 1) {
                    spaceship.col += spaceship.cdel;
                }
                if (fry.active == 1) {
                    //fry.col += fry.cdel;

                }
            }



            //hOff++;


        }
        if (BUTTON_HELD(BUTTON_DOWN)) {
            if (spaceship.active) {
                vOff++;
                spaceship.row += spaceship.rdel;
            }


        }
        if (BUTTON_HELD(BUTTON_UP)) {
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


        // if there is a planet/spaceship collision, then the spaceship enters that planet
        if (collision(p1.col, p1.row, p1.width, p1.height, spaceship.col, spaceship.row, spaceship.width, spaceship.height) == 1) {
            curLocation = PLANET1;
            planet1();
        }
        if (collision(p2.col, p2.row, p2.width, p2.height, spaceship.col, spaceship.row, spaceship.width, spaceship.height) == 1) {
            //goToPlanet1();
            fry.active = 1;
            spaceship.active = 0;
            p1.active = 0;
            p2.active = 0;
            p3.active = 0;
            p4.active = 0;
            planet2();
        }

 // draw fry
        if (fry.active) {
            shadowOAM[0].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | fry.row;
            shadowOAM[0].attr1 = ATTR1_LARGE | fry.col;
            shadowOAM[0].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(0 * 8, 2 * 8);          
        }
 
        // draw the spaceship
        if (spaceship.active) {
            shadowOAM[1].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | spaceship.row;
            shadowOAM[1].attr1 = ATTR1_LARGE | spaceship.col;
            shadowOAM[1].attr2 = ATTR2_PALROW(0) |  ATTR2_TILEID(fry.aniState * 8, fry.curFrame * 8);
        }


        // // draw the planets
        // draw p1
        if (p1.active) {
            shadowOAM[2].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | p1.row;
            shadowOAM[2].attr1 = ATTR1_MEDIUM | p1.col;
            shadowOAM[2].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4 * 4, 4 * 4);
        }


        // draw p2
        if (p2.active) {
            shadowOAM[3].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | p2.row;
            shadowOAM[3].attr1 = ATTR1_MEDIUM | p2.col;
            shadowOAM[3].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(5 * 4, 4 * 4);
        }

        // draw p3
        if (p3.active) {
            shadowOAM[4].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | p3.row;
            shadowOAM[4].attr1 = ATTR1_MEDIUM | p3.col;
            shadowOAM[4].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6 * 4, 4 * 4);
        }


        // draw p4
        if (p4.active) {
            shadowOAM[5].attr0 = ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE | p4.row;
            shadowOAM[5].attr1 = ATTR1_MEDIUM | p4.col;
            shadowOAM[5].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(7 * 4, 4 * 4);
        }
        waitForVBlank();   

        DMANow(3, shadowOAM, OAM, spritesheet5PalLen);
        
        REG_BG0VOFF = vOff;
        REG_BG0HOFF = hOff;
        REG_BG1HOFF = hOff / 4; 
        REG_BG1VOFF = vOff;

            
    }

    void updatePlanet1() {
    }









