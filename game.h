// Fry Struct
typedef struct {
    int row;
    int col;
    int oldRow;
    int oldCol;
    int height;
    int width;
    int cdel;
    int rdel;
    int active;
    int aniState;
    int prevAniState;
    int curFrame;
    int aniCounter;
    int numFrames;
    int isFry;
}FRY;

// Bender Struct
typedef struct {
    int row;
    int col;
    int oldRow;
    int oldCol;
    int height;
    int width;
    int cdel;
    int rdel;
    int active;
    int aniState;
    int prevAniState;
    int curFrame;
}BENDER;

typedef struct {
    int row;
    int col;
    int oldRow;
    int oldCol;
    int height;
    int width;
    int cdel;
    int rdel;
    int active;
    int aniState;
    int prevAniState;
    int curFrame;
    int isSpaceship;
}SPACESHIP;

// planet struct 
typedef struct {
    int row;
    int col;
    int oldRow;
    int oldCol;
    int height;
    int width;
    int cdel;
    int rdel;
    int active;
    int aniState;
    int curFrame;
    int isPlanet;
}PLANET;


// function prototypes
void initGame();
void updateGame();
void initFry();

void initSpaceship();
void updateSpaceShip();

void initBender();
void updateSpaceShip();

void initPlanets();
int stateDeterminator(PLANET *);
void updatePlanets(PLANET *);

// planet state function prototypes
void space();
void initSpace();
void updateSpace();
void planet1();
void planet2();
void planet3();
void planet4();
void planet5();

void goToSpace();
void goToPlanet1();
void updatePlanet1();

void goToPlanet2();
void goToPlanet3();
void goToPlanet4();




#define PLANETCOUNT 4

// declaring the structs
extern FRY fry;
extern BENDER bender;
extern SPACESHIP spaceship;
extern PLANET planets[PLANETCOUNT];

extern PLANET p1;
extern PLANET p2;
extern PLANET p3;
extern PLANET p4;


