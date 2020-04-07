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
}HEART;

// block to jump on struct
typedef struct {
    int col;
    int row;
    int height;
    int width;
    int active;
}BLOCK;

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

// treasure struct for displaying lives
typedef struct {
    int col;
    int row;
    int cdel;
    int height;
    int width;
    int active;
    int treasureCounter;
}TREASURE;

// game macros
#define BLOCKCOUNT 3
#define NUMLIVES 3
#define BULLETCOUNT 10

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
extern BULLET bullets[BULLETCOUNT];
extern TREASURE treasureP1;

// counters to count which life is being lost and thus which should be hidden
extern int lifeCounter;
extern int life1Counter;
extern int life2Counter;
extern int life3Counter;
extern int life4Counter;

extern enum {FRYCHARACTER, LEELACHARACTER};
extern int characterChoice;




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

void initLose();

void drawGame();

void initAlien();

void initFry();
void updateFry();

void initSpaceship();

void initBlocks();

void initLives();
void updateLives();

void initTreasure();
void updateTreasure();

void initLeela();
void updateLeela();

void initBullets();

void shootBullets();
void updateBullets(BULLET *);

extern int isLost;
extern int treasureNum;
extern int prevTreasureNum;

//extern enum {PLAN1, PLAN2, PLAN3, PLAN4};
extern int curLocation;


