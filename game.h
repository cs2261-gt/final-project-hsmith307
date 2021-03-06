// fry struct 
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
    int coinCount;
    int hasShot;
    int isCheating;
    int canJump;
}FRY;

// leela struct 
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
    int coinCount;
    int hasShot;
    int isCheating;
    int canJump;
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
    int timer;
}ALIEN;


//spaceship struct
typedef struct {
    int col;
    int row;
    int height;
    int width;
    int active;
    int cdel;
    int rdel;
}SPACESHIP;

//enemy ship struct
typedef struct {
    int col;
    int row;
    int height;
    int width;
    int active;
    int cdel;
    int rdel;
    int isLeft;
    int shotReady;
}ENEMY;

//helmet struct
typedef struct {
    int col;
    int row;
    int height;
    int width;
    int active;
    int cdel;
    int rdel;
    int aniState;
    int curFrame;
    int timer;
    int activeTimer;
}HELMET;

//enemy cannonball struct
typedef struct {
    int col;
    int row;
    int height;
    int width;
    int active;
    int cdel;
    int rdel;
}CANNONBALL;

//cheat mode struct
typedef struct {
    int col;
    int row;
    int height;
    int width;
    int active;
}CHEATMODE;


// planet struct
typedef struct {
    int col;
    int row;
    int height;
    int width;
    int active;
    int cdel;
    int rdel;
}PLANET;


// heart struct for displaying lives
typedef struct {
    int col;
    int row;
    int height;
    int width;
    int active;
    int isLost;
}HEART;

// block to jump on struct
typedef struct {
    int col;
    int row;
    int height;
    int width;
    int active;
    int cdel;
    int aniState;
    int curFrame;
    int aniCounter;
    int numFrames;
}COIN;

// bullet struct
typedef struct {
    int col;
    int row;
    int rdel;
    int cdel;
    int height;
    int width;
    int active;
}BULLET;

//goo struct
typedef struct {
    int col;
    int row;
    int height;
    int width;
    int active;
}GOO;

// treasure struct for displaying lives
typedef struct {
    int col;
    int row;
    int cdel;
    int height;
    int width;
    int active;
    volatile int treasureCounter;
    int treasureNum;
    int distance;
    int isCollected;
}TREASURE;

// game macros
#define COINCOUNT 2
#define NUMLIVES 3
#define BULLETCOUNT 50
#define TREASURECOUNT 5

extern PLANET p1;
extern PLANET p2;
extern PLANET p3;
extern PLANET p4;
extern FRY fry;
extern LEELA leela;
extern SPACESHIP spaceship;
extern ALIEN alien;
extern COIN coins[COINCOUNT];
extern HEART life1;
extern HEART life2;
extern HEART life3;
extern HEART life4;
extern HEART life5;
extern BULLET bullets[BULLETCOUNT];
extern TREASURE treasureP1;
extern TREASURE treasure[TREASURECOUNT];
extern HELMET helmet;
extern ENEMY enemy;
extern CANNONBALL cannonball;
extern GOO goo;
extern CHEATMODE cheatmode;


// counters to count which life is being lost and thus which should be hidden
extern int lifeCounter;
extern int life1Counter;
extern int life2Counter;
extern int life3Counter;
extern int life4Counter;


extern int characterChoice;

extern int coinsNeeded;




// game function prototypes

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

void initCoins();
void updateCoins(COIN *);

void initLives();
void updateLives();

void initTreasure();
void updateTreasure(TREASURE *);

void initLeela();
void updateLeela();

void initBullets();

void shootBullets();
void updateBullets(BULLET *);

void initHelmet();
void updateHelmet();

void initCannonball();
void shootCannonball();
void updateCannonball();


void initEnemy();
void updateEnemy();

void initGoo();
void updateGoo();

void initCheatmode();

extern int isLost;
extern int isWon;
extern int treasureNum;
extern int prevTreasureNum;

//extern enum {PLAN1, PLAN2, PLAN3, PLAN4};
extern int curLocation;


