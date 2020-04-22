# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"



# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 22 "myLib.h"
typedef void (*ihp)(void);
# 105 "myLib.h"
typedef struct{
    const signed char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;
# 168 "myLib.h"
extern unsigned short *videoBuffer;
# 189 "myLib.h"
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
# 261 "myLib.h"
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
# 304 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 315 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 355 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 5 "main.c" 2
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
    int bulletTimer;
    int amJumping;
    int screenRow;
    int coinCount;
    int hasShot;
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
    int bulletTimer;
    int amJumping;
    int screenRow;
    int coinCount;
    int hasShot;
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
    int isLeft;
    int shotReady;
}ENEMY;


typedef struct {
    int col;
    int row;
    int height;
    int width;
    int active;
    int cdel;
    int rdel;
}HELMET;


typedef struct {
    int col;
    int row;
    int height;
    int width;
    int active;
    int cdel;
    int rdel;
}CANNONBALL;



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
    int cdel;
    int aniState;
    int curFrame;
    int aniCounter;
    int numFrames;
}COIN;


typedef struct {
    int col;
    int row;
    int rdel;
    int cdel;
    int height;
    int width;
    int active;
}BULLET;


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







extern PLANET p1;
extern PLANET p2;
extern PLANET p3;
extern PLANET p4;
extern FRY fry;
extern LEELA leela;
extern SPACESHIP spaceship;
extern ALIEN alien;
extern COIN coins[2];
extern HEART life1;
extern HEART life2;
extern HEART life3;
extern HEART life4;
extern HEART life5;
extern BULLET bullets[50];
extern TREASURE treasureP1;
extern TREASURE treasure[5];
extern HELMET helmet;
extern ENEMY enemy;
extern CANNONBALL cannonball;



extern int lifeCounter;
extern int life1Counter;
extern int life2Counter;
extern int life3Counter;
extern int life4Counter;

extern enum {FRYCHARACTER, LEELACHARACTER};
extern int characterChoice;






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

extern int isLost;
extern int isWon;
extern int treasureNum;
extern int prevTreasureNum;


extern int curLocation;
# 6 "main.c" 2
# 1 "spritesheet5.h" 1
# 21 "spritesheet5.h"
extern const unsigned short spritesheet5Tiles[16384];


extern const unsigned short spritesheet5Pal[256];
# 7 "main.c" 2

# 1 "futuramapage.h" 1
# 22 "futuramapage.h"
extern const unsigned short futuramapageTiles[1936];


extern const unsigned short futuramapageMap[1024];


extern const unsigned short futuramapagePal[256];
# 9 "main.c" 2
# 1 "pause.h" 1
# 22 "pause.h"
extern const unsigned short pauseTiles[6640];


extern const unsigned short pauseMap[1024];


extern const unsigned short pausePal[256];
# 10 "main.c" 2
# 1 "planet1PS.h" 1
# 22 "planet1PS.h"
extern const unsigned short planet1PSTiles[18080];


extern const unsigned short planet1PSMap[2048];


extern const unsigned short planet1PSPal[256];
# 11 "main.c" 2

# 1 "planets.h" 1
# 22 "planets.h"
extern const unsigned short planetsTiles[24144];


extern const unsigned short planetsMap[2048];


extern const unsigned short planetsPal[256];
# 13 "main.c" 2
# 1 "stars.h" 1
# 22 "stars.h"
extern const unsigned short starsTiles[7312];


extern const unsigned short starsMap[2048];


extern const unsigned short starsPal[256];
# 14 "main.c" 2
# 1 "planet2bg.h" 1
# 22 "planet2bg.h"
extern const unsigned short planet2bgTiles[9840];


extern const unsigned short planet2bgMap[1024];


extern const unsigned short planet2bgPal[256];
# 15 "main.c" 2
# 1 "planet3bg.h" 1
# 22 "planet3bg.h"
extern const unsigned short planet3bgTiles[15696];


extern const unsigned short planet3bgMap[2048];


extern const unsigned short planet3bgPal[256];
# 16 "main.c" 2
# 1 "planet4bg.h" 1
# 22 "planet4bg.h"
extern const unsigned short planet4bgTiles[13296];


extern const unsigned short planet4bgMap[1024];


extern const unsigned short planet4bgPal[256];
# 17 "main.c" 2
# 1 "losebg.h" 1
# 22 "losebg.h"
extern const unsigned short losebgTiles[6064];


extern const unsigned short losebgMap[1024];


extern const unsigned short losebgPal[256];
# 18 "main.c" 2
# 1 "instructions.h" 1
# 22 "instructions.h"
extern const unsigned short instructionsTiles[6928];


extern const unsigned short instructionsMap[1024];


extern const unsigned short instructionsPal[256];
# 19 "main.c" 2
# 1 "splashSong.h" 1




extern const signed char splashSong[104832];
# 20 "main.c" 2
# 1 "spaceSong.h" 1




extern const signed char spaceSong[419616];
# 21 "main.c" 2
# 1 "win.h" 1
# 22 "win.h"
extern const unsigned short winTiles[8352];


extern const unsigned short winMap[1024];


extern const unsigned short winPal[256];
# 22 "main.c" 2
# 1 "sound.h" 1
SOUND soundA;
SOUND soundB;



void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void setupInterrupts();
void interruptHandler();

void pauseSound();
void unpauseSound();
void stopSound();
# 23 "main.c" 2
# 1 "forest.h" 1




extern const signed char forestSound[1116347];
# 24 "main.c" 2
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 1 3
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/newlib.h" 2 3
# 11 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3
# 6 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/config.h" 2 3
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 2 3
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3




# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 209 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4

# 209 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 321 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 17 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3

# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_ansi.h" 1 3
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 143 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 1 3
# 24 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_types.h" 1 3



# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 5 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_types.h" 2 3


typedef __int64_t _off_t;


typedef __int64_t _fpos_t;


typedef __uint32_t __ino_t;


typedef __uint32_t __dev_t;
# 25 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h" 1 3




# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 6 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h" 2 3

typedef int32_t _LOCK_T;

struct __lock_t {
 _LOCK_T lock;
 uint32_t thread_tag;
 uint32_t counter;
};

typedef struct __lock_t _LOCK_RECURSIVE_T;

extern void __libc_lock_init(_LOCK_T *lock);
extern void __libc_lock_init_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_close(_LOCK_T *lock);
extern void __libc_lock_close_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_acquire(_LOCK_T *lock);
extern void __libc_lock_acquire_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_release(_LOCK_T *lock);
extern void __libc_lock_release_recursive(_LOCK_RECURSIVE_T *lock);


extern int __libc_lock_try_acquire(_LOCK_T *lock);
extern int __libc_lock_try_acquire_recursive(_LOCK_RECURSIVE_T *lock);
# 26 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;
# 50 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef int __pid_t;







typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;
# 88 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;
# 129 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 145 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 156 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;


# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 350 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;




typedef char * __va_list;
# 16 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 38 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 93 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 117 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 181 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (*_read) (struct _reent *, void *,
        char *, int);
  int (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 287 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 319 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 610 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

  void *deviceData;
};
# 817 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 19 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 1 3
# 47 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 48 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/cdefs.h" 2 3
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/stdlib.h" 1 3
# 21 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 2 3
# 33 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3


typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);







int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);





int atexit (void (*__func)(void));
double atof (const char *__nptr);



int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void *__key,
         const void *__base,
         size_t __nmemb,
         size_t __size,
         __compar_fn_t _compar);
void *calloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__))
      __attribute__((__alloc_size__(1, 2))) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);




long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void *malloc(size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(1))) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);
char * _mktemp_r (struct _reent *, char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));
void qsort (void *__base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void *realloc(void *, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2))) ;
# 156 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);

float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
# 188 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
int system (const char *__string);
# 199 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
void _Exit (int __status) __attribute__ ((__noreturn__));




int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);



int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);
# 221 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);
# 260 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
long long atoll (const char *__nptr);

long long _atoll_r (struct _reent *, const char *__nptr);

long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);

long long _strtoll_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long _strtoull_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);
# 281 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
int _unsetenv_r (struct _reent *, const char *__string);







char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 319 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3
extern long double _strtold_r (struct _reent *, const char *restrict, char **restrict);

extern long double strtold (const char *restrict, char **restrict);
# 336 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h" 3

# 25 "main.c" 2
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h" 1 3
# 17 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h" 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 18 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h" 2 3
# 27 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h" 3


void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *restrict, const void *restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);
# 86 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h" 3
char *_strdup_r (struct _reent *, const char *);



char *_strndup_r (struct _reent *, const char *, size_t);
# 112 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h" 3
char * _strerror_r (struct _reent *, int, int, int *);
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h" 3
char *strsignal (int __signo);
# 175 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/string.h" 1 3
# 176 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h" 2 3


# 26 "main.c" 2
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 1 3
# 36 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 37 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 2 3



# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdarg.h" 1 3 4
# 40 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 2 3
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 1 3
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef int register_t;
# 62 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 3
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stddef.h" 1 3 4
# 63 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 2 3
# 113 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef __blkcnt_t blkcnt_t;




typedef __blksize_t blksize_t;




typedef unsigned long clock_t;





typedef __int_least64_t time_t;





typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 173 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 3
typedef __off_t off_t;



typedef __dev_t dev_t;



typedef __uid_t uid_t;



typedef __gid_t gid_t;




typedef __pid_t pid_t;




typedef __key_t key_t;




typedef _ssize_t ssize_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __clockid_t clockid_t;





typedef __timer_t timer_t;





typedef __useconds_t useconds_t;




typedef __suseconds_t suseconds_t;



typedef __int64_t sbintime_t;


# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_pthreadtypes.h" 1 3
# 240 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 2 3
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/types.h" 1 3
# 241 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/types.h" 2 3
# 62 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 2 3




typedef __FILE FILE;






typedef _fpos_t fpos_t;





# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/stdio.h" 1 3
# 80 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 2 3
# 186 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 3
FILE * tmpfile (void);
char * tmpnam (char *);



int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *restrict, const char *restrict, FILE *restrict);
void setbuf (FILE *restrict, char *restrict);
int setvbuf (FILE *restrict, char *restrict, int, size_t);
int fprintf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fscanf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int printf (const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int scanf (const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int sscanf (const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int vfprintf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int vsprintf (char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int fgetc (FILE *);
char * fgets (char *restrict, int, FILE *restrict);
int fputc (int, FILE *);
int fputs (const char *restrict, FILE *restrict);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite (const void *restrict , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *restrict, fpos_t *restrict);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *restrict _name, const char *restrict _type);
int sprintf (char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int remove (const char *);
int rename (const char *, const char *);
# 266 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 3
int snprintf (char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int vsnprintf (char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int vfscanf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int vscanf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 1, 0)));
int vsscanf (const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
# 396 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 3
int _asiprintf_r (struct _reent *, char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
char * _asnprintf_r (struct _reent *, char *restrict, size_t *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _asprintf_r (struct _reent *, char **restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _diprintf_r (struct _reent *, int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _dprintf_r (struct _reent *, int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
int _fgetc_unlocked_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *restrict, int, FILE *restrict);
char * _fgets_unlocked_r (struct _reent *, char *restrict, int, FILE *restrict);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fiscanf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
FILE * _fmemopen_r (struct _reent *, void *restrict, size_t, const char *restrict);
FILE * _fopen_r (struct _reent *, const char *restrict, const char *restrict);
FILE * _freopen_r (struct _reent *, const char *restrict, const char *restrict, FILE *restrict);
int _fprintf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *restrict, FILE *restrict);
int _fputs_unlocked_r (struct _reent *, const char *restrict, FILE *restrict);
size_t _fread_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fread_unlocked_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
int _fscanf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fwrite_unlocked_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _iscanf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *,
      const char *_old, const char *_new);
int _scanf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int _siprintf_r (struct _reent *, char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _siscanf_r (struct _reent *, const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _snprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _sprintf_r (struct _reent *, char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _sscanf_r (struct _reent *, const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdprintf_r (struct _reent *, int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vfprintf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfscanf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vprintf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _vscanf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsnprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsprintf_r (struct _reent *, char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsscanf_r (struct _reent *, const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);
# 577 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 687 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 3
static __inline__ int __sputc_r(struct _reent *_ptr, int _c, FILE *_p) {




 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf_r(_ptr, _c, _p));
}
# 741 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 3
static __inline int
_getchar_unlocked(void)
{
 struct _reent *_ptr;

 _ptr = (__getreent());
 return ((--(((_ptr)->_stdin))->_r < 0 ? __srget_r(_ptr, ((_ptr)->_stdin)) : (int)(*(((_ptr)->_stdin))->_p++)));
}

static __inline int
_putchar_unlocked(int _c)
{
 struct _reent *_ptr;

 _ptr = (__getreent());
 return (__sputc_r(_ptr, _c, ((_ptr)->_stdout)));
}
# 797 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h" 3

# 27 "main.c" 2



# 29 "main.c"
void initialize();
void game();


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


SOUND soundA;
SOUND soundB;


enum {START, GAME, SPACE, PLANET1, PLANET2, PLANET3, PLANET4, PAUSE, WIN, LOSE};
int state;
int prevState;


unsigned short buttons;
unsigned short oldButtons;


unsigned short hOff;
unsigned short vOff;


OBJ_ATTR shadowOAM[128];



int main() {

    initialize();

    while (1) {


        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);

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
        default:
            break;
        }
    }

}


void initialize() {

      (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);

      hOff = 0;
      vOff = 0;

    setupSounds();
    setupInterrupts();

    buttons = (*(volatile unsigned short *)0x04000130);
    oldButtons = 0;
    goToStart();

}


void goToStart() {

    hOff = 0;
    vOff = 0;
    isLost = 0;

    hideSprites();




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
    for (int k = 0; k < 5; k++) {
        treasure[k].active = 0;
    }
    for (int i = 0; i < 2; i++) {
        coins[i].active = 0;
    }
    for (int j = 0; j < 50; j++) {
        bullets[j].active = 0;
    }

    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((30)<<8) | (0<<14);
    DMANow(3, futuramapagePal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, futuramapageTiles, &((charblock *)0x6000000)[0], 3872 / 2);
    DMANow(3, futuramapageMap, &((screenblock *)0x6000000)[30], 2048 / 2);

    state = START;

}

void start() {
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000012) = 0;






    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToGame();
    }

}

void goToGame() {
    initGame();


    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((30)<<8) | (0<<14);
    DMANow(3, instructionsPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, instructionsTiles, &((charblock *)0x6000000)[0], 13856 / 2);
    DMANow(3, instructionsMap, &((screenblock *)0x6000000)[30], 2048 / 2);



    state = GAME;

}

void game() {
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000012) = 0;


    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
        goToStart();
    }
    if ((!(~(oldButtons)&((1<<5))) && (~buttons & ((1<<5))))) {
        characterChoice = FRYCHARACTER;
        goToSpace();
    }
    if ((!(~(oldButtons)&((1<<4))) && (~buttons & ((1<<4))))) {
        characterChoice = LEELACHARACTER;
        goToSpace();
    }



}

void goToSpace() {
    initSpace();




    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<8) | (1<<12);

    DMANow(3, planetsPal, ((unsigned short *)0x5000000), 512 / 2);

    (*(volatile unsigned short*)0x400000A) = ((1)<<2) | ((28)<<8) | (1<<14);

    DMANow(3, planetsTiles, &((charblock *)0x6000000)[1], 48288 / 2);
    DMANow(3, planetsMap, &((screenblock *)0x6000000)[28], 4096 / 2);


    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((30)<<8) | (1<<14);

    DMANow(3, starsTiles, &((charblock *)0x6000000)[0], 14624 / 2);
    DMANow(3, starsMap, &((screenblock *)0x6000000)[30], 4096 / 2);

    state = SPACE;
}

void space() {
    updateSpace();

    prevState = SPACE;


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

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToPause();
    }

    if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))) {
        goToGame();
    }
    if (isWon == 1) {
        goToWin();
    }

    (*(volatile unsigned short *)0x04000010) = hOff / 2;
    (*(volatile unsigned short *)0x04000014) = hOff / 5;
}

void goToPlanet1() {
    initPlanet1();
    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((28)<<8) | (1<<14);
    DMANow(3, planet1PSPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, planet1PSTiles, &((charblock *)0x6000000)[0], 36160 / 2);
    DMANow(3, planet1PSMap, &((screenblock *)0x6000000)[28], 4096 / 2);
    state = PLANET1;
}

void planet1() {
    updatePlanet1();
    prevState = PLANET1;
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToPause();
    }
    if ((!(~(oldButtons)&((1<<5))) && (~buttons & ((1<<5))))) {
        goToSpace();
    }

    if (isLost == 1) {
        goToLose();
    }

    if (isWon == 1) {
        goToWin();
    }


    if (collision(fry.col, fry.row, fry.width, fry.height, cannonball.col, cannonball.row, cannonball.width, cannonball.height) == 1 && cannonball.active && fry.active) {
        fry.active = 0;
    }



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
    initPlanet2();
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((28)<<8) | (0<<14);
    DMANow(3, planet2bgPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, planet2bgTiles, &((charblock *)0x6000000)[0], 19680 / 2);
    DMANow(3, planet2bgMap, &((screenblock *)0x6000000)[28], 2048 / 2);
    state = PLANET2;
}

void planet2() {
    updatePlanet2();
    prevState = PLANET2;
    if (!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3)))) {
        goToPause();
    }
    if ((!(~(oldButtons)&((1<<5))) && (~buttons & ((1<<5))))) {
        goToSpace();
    }


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
    initPlanet3();
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((28)<<8) | (1<<14);
    DMANow(3, planet3bgPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, planet3bgTiles, &((charblock *)0x6000000)[0], 31392 / 2);
    DMANow(3, planet3bgMap, &((screenblock *)0x6000000)[28], 4096 / 2);
    state = PLANET3;
}

void planet3() {
    updatePlanet3();
    prevState = PLANET3;
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToPause();
    }
    if ((!(~(oldButtons)&((1<<5))) && (~buttons & ((1<<5))))) {
        goToSpace();
    }


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
    initPlanet4();
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000012) = 0;
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((28)<<8) | (0<<14);
    DMANow(3, planet4bgPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, planet4bgTiles, &((charblock *)0x6000000)[0], 26592 / 2);
    DMANow(3, planet4bgMap, &((screenblock *)0x6000000)[28], 2048 / 2);
    state = PLANET4;

}

void planet4() {
    updatePlanet4();

    prevState = PLANET4;

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToPause();
    }
    if ((!(~(oldButtons)&((1<<5))) && (~buttons & ((1<<5))))) {
        p1.active = 1;
        goToSpace();
    }


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
    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);
    (*(volatile unsigned short*)0x4000008) = ((1)<<2) | ((28)<<8) | (0<<14);
    DMANow(3, pausePal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, pauseTiles, &((charblock *)0x6000000)[1], 13280 / 2);
    DMANow(3, pauseMap, &((screenblock *)0x6000000)[28], 2048 / 2);

    state = PAUSE;
}

void pause() {
    hideSprites();
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000012) = 0;
    drawGame();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
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
    (*(volatile unsigned short *)0x04000012) = 0;
    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((28)<<8) | (0<<14);

    DMANow(3, winPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, winTiles, &((charblock *)0x6000000)[0], 16704 / 2);
    DMANow(3, winMap, &((screenblock *)0x6000000)[28], 2048 / 2);

    state = WIN;
}

void win() {
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToStart();
    }
}

void goToLose() {
    hideSprites();
    initLose();
    (*(volatile unsigned short *)0x04000010) = 0;
    (*(volatile unsigned short *)0x04000012) = 0;
    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);
    (*(volatile unsigned short*)0x4000008) = ((1)<<2) | ((28)<<8) | (0<<14);
    DMANow(3, losebgPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, losebgTiles, &((charblock *)0x6000000)[1], 12128 / 2);
    DMANow(3, losebgMap, &((screenblock *)0x6000000)[28], 2048 / 2);

    state = LOSE;
}

void lose() {
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToStart();
    }
}
