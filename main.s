	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, #0
	ldr	r0, .L6
	ldr	r1, .L6+4
	ldr	r2, .L6+8
	ldr	r3, .L6+12
	strh	r5, [r0]	@ movhi
	strh	r5, [r1]	@ movhi
	str	r5, [r2]
	mov	lr, pc
	bx	r3
	mov	r0, #1
	mov	r4, r5
	ldr	r1, .L6+16
	ldr	r2, .L6+20
	str	r5, [r1, #16]
	ldr	r3, .L6+24
	ldr	r1, .L6+28
	str	r5, [r2, #16]
	str	r5, [r3, #16]
	str	r5, [r1, #16]
	ldr	r2, .L6+32
	ldr	r3, .L6+36
	ldr	r1, .L6+40
	str	r5, [r2, #16]
	str	r5, [r3, #16]
	ldr	r2, .L6+44
	ldr	r3, .L6+48
	str	r5, [r1, #16]
	ldr	r1, .L6+52
	str	r5, [r2, #16]
	ldr	ip, .L6+56
	ldr	r2, .L6+60
	str	r5, [r3, #16]
	str	r5, [r1, #20]
	ldr	r3, .L6+64
	str	r5, [r1, #60]
	str	r5, [r1, #100]
	str	r5, [r1, #140]
	str	r5, [r1, #180]
	ldr	lr, .L6+68
	ldr	r1, .L6+72
	str	r5, [r2, #16]
	str	r5, [ip, #16]
	add	r2, r3, #1392
	str	r5, [ip, #56]
	str	r0, [lr, #16]
	str	r0, [r1, #16]
	add	r2, r2, #8
.L2:
	str	r4, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L2
	mov	r2, #67108864
	mov	r1, #7680
	ldr	r5, .L6+76
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L6+80
	mov	lr, pc
	bx	r5
	mov	r3, #1936
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L6+84
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L6+88
	ldr	r1, .L6+92
	mov	lr, pc
	bx	r5
	ldr	r3, .L6+96
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	hOff
	.word	vOff
	.word	isLost
	.word	hideSprites
	.word	p2
	.word	spaceship
	.word	p1
	.word	life1
	.word	p3
	.word	p4
	.word	life4
	.word	life2
	.word	life3
	.word	treasure
	.word	coins
	.word	life5
	.word	bullets
	.word	leela
	.word	fry
	.word	DMANow
	.word	futuramapagePal
	.word	futuramapageTiles
	.word	100724736
	.word	futuramapageMap
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #4352
	mov	r3, #67108864
	push	{r4, lr}
	mov	r4, #0
	ldr	r1, .L10
	ldr	r2, .L10+4
	strh	r0, [r3]	@ movhi
	ldr	r3, .L10+8
	strh	r4, [r1]	@ movhi
	strh	r4, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L10+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L10+16
	ldr	r1, .L10+20
	ldrh	r2, [r3, #48]
	ldr	r3, .L10+24
	strh	r4, [r1]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3]	@ movhi
	b	goToStart
.L11:
	.align	2
.L10:
	.word	hOff
	.word	vOff
	.word	setupSounds
	.word	setupInterrupts
	.word	67109120
	.word	oldButtons
	.word	buttons
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.0, %function
win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L14
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L15:
	.align	2
.L14:
	.word	buttons
	.size	win.part.0, .-win.part.0
	.set	lose.part.0,win.part.0
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L18
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7680
	ldr	r4, .L18+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L18+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L18+12
	ldr	r1, .L18+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L18+20
	mov	r0, #3
	ldr	r1, .L18+24
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L18+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L19:
	.align	2
.L18:
	.word	initGame
	.word	DMANow
	.word	instructionsPal
	.word	6928
	.word	instructionsTiles
	.word	100724736
	.word	instructionsMap
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L25
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	ldrh	r3, [r1]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L25+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToGame
.L26:
	.align	2
.L25:
	.word	oldButtons
	.word	buttons
	.size	start, .-start
	.align	2
	.global	goToSpace
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToSpace, %function
goToSpace:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L29
	mov	lr, pc
	bx	r3
	mov	r5, #67108864
	mov	r2, #4864
	ldr	r4, .L29+4
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L29+8
	mov	lr, pc
	bx	r4
	ldr	r2, .L29+12
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r3, .L29+16
	ldr	r2, .L29+20
	ldr	r1, .L29+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L29+28
	ldr	r1, .L29+32
	mov	lr, pc
	bx	r4
	mov	r2, #24064
	mov	r0, #3
	strh	r2, [r5, #8]	@ movhi
	ldr	r3, .L29+36
	mov	r2, #100663296
	ldr	r1, .L29+40
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L29+44
	mov	r0, #3
	ldr	r1, .L29+48
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L29+52
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L30:
	.align	2
.L29:
	.word	initSpace
	.word	DMANow
	.word	planets2Pal
	.word	23044
	.word	11936
	.word	100679680
	.word	planets2Tiles
	.word	100716544
	.word	planets2Map
	.word	7312
	.word	starsTiles
	.word	100724736
	.word	starsMap
	.word	state
	.size	goToSpace, .-goToSpace
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #0
	push	{r4, lr}
	strh	r2, [r3, #16]	@ movhi
	ldr	r4, .L48
	strh	r2, [r3, #18]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L32
	ldr	r2, .L48+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L45
.L32:
	tst	r3, #32
	beq	.L33
	ldr	r2, .L48+4
	ldrh	r2, [r2]
	ands	r2, r2, #32
	beq	.L46
.L33:
	tst	r3, #16
	beq	.L31
	ldr	r3, .L48+4
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L47
.L31:
	pop	{r4, lr}
	bx	lr
.L47:
	mov	r2, #1
	ldr	r3, .L48+8
	pop	{r4, lr}
	str	r2, [r3]
	b	goToSpace
.L45:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L32
.L46:
	ldr	r3, .L48+8
	str	r2, [r3]
	bl	goToSpace
	ldrh	r3, [r4]
	b	.L33
.L49:
	.align	2
.L48:
	.word	oldButtons
	.word	buttons
	.word	characterChoice
	.size	game, .-game
	.align	2
	.global	goToPlanet1
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPlanet1, %function
goToPlanet1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L52
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #4352
	mov	r2, #23552
	ldr	r4, .L52+4
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	mov	r0, #3
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L52+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L52+12
	ldr	r1, .L52+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L52+20
	mov	r0, #3
	ldr	r1, .L52+24
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L52+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L53:
	.align	2
.L52:
	.word	initPlanet1
	.word	DMANow
	.word	planet1PSPal
	.word	18080
	.word	planet1PSTiles
	.word	100720640
	.word	planet1PSMap
	.word	state
	.size	goToPlanet1, .-goToPlanet1
	.align	2
	.global	goToPlanet2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPlanet2, %function
goToPlanet2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L56
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #4352
	mov	r2, #7168
	ldr	r4, .L56+4
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	mov	r0, #3
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L56+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L56+12
	ldr	r1, .L56+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L56+20
	mov	r0, #3
	ldr	r1, .L56+24
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L56+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L57:
	.align	2
.L56:
	.word	initPlanet2
	.word	DMANow
	.word	planet2bgPal
	.word	9840
	.word	planet2bgTiles
	.word	100720640
	.word	planet2bgMap
	.word	state
	.size	goToPlanet2, .-goToPlanet2
	.align	2
	.global	goToPlanet3
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPlanet3, %function
goToPlanet3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L60
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #4352
	mov	r2, #23552
	ldr	r4, .L60+4
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	mov	r0, #3
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L60+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L60+12
	ldr	r1, .L60+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L60+20
	mov	r0, #3
	ldr	r1, .L60+24
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L60+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L61:
	.align	2
.L60:
	.word	initPlanet3
	.word	DMANow
	.word	planet3bgPal
	.word	15696
	.word	planet3bgTiles
	.word	100720640
	.word	planet3bgMap
	.word	state
	.size	goToPlanet3, .-goToPlanet3
	.align	2
	.global	goToPlanet4
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPlanet4, %function
goToPlanet4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L64
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r2, #0
	mov	r3, #4352
	mov	r0, #7168
	strh	r2, [r1, #16]	@ movhi
	ldr	r4, .L64+4
	strh	r2, [r1, #18]	@ movhi
	strh	r3, [r1]	@ movhi
	strh	r0, [r1, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L64+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L64+12
	ldr	r1, .L64+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L64+20
	mov	r0, #3
	ldr	r1, .L64+24
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L64+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L65:
	.align	2
.L64:
	.word	initPlanet4
	.word	DMANow
	.word	planet4bgPal
	.word	13296
	.word	planet4bgTiles
	.word	100720640
	.word	planet4bgMap
	.word	state
	.size	goToPlanet4, .-goToPlanet4
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L68
	mov	lr, pc
	bx	r3
	ldr	r3, .L68+4
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #4352
	ldr	r2, .L68+8
	ldr	r4, .L68+12
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	mov	r0, #3
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L68+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L68+20
	ldr	r2, .L68+24
	ldr	r1, .L68+28
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L68+32
	mov	r0, #3
	ldr	r1, .L68+36
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L68+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L69:
	.align	2
.L68:
	.word	pauseSound
	.word	initPause
	.word	7172
	.word	DMANow
	.word	pausePal
	.word	4976
	.word	100679680
	.word	pauseTiles
	.word	100720640
	.word	pauseMap
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L72
	mov	lr, pc
	bx	r3
	mov	r1, #0
	mov	r2, #67108864
	mov	ip, #4352
	mov	r0, #7168
	ldr	lr, .L72+4
	ldr	r3, .L72+8
	strh	r1, [lr]	@ movhi
	strh	r1, [r3]	@ movhi
	ldr	r4, .L72+12
	strh	r1, [r2, #18]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L72+16
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L72+20
	ldr	r1, .L72+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L72+28
	mov	r0, #3
	ldr	r1, .L72+32
	mov	lr, pc
	bx	r4
	mov	r2, #8
	ldr	r3, .L72+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L73:
	.align	2
.L72:
	.word	initWin
	.word	vOff
	.word	hOff
	.word	DMANow
	.word	winPal
	.word	8352
	.word	winTiles
	.word	100720640
	.word	winMap
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	space
	.syntax unified
	.arm
	.fpu softvfp
	.type	space, %function
space:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L96
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	lr, #2
	ldr	r4, .L96+4
	ldr	ip, [r4, #8]
	ldr	r1, [r4, #12]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	r0, .L96+8
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	ip, .L96+12
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	str	lr, [ip]
	ldm	r0, {r0, r1}
	ldr	r5, .L96+16
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L89
.L75:
	add	r6, r4, #8
	ldm	r6, {r6, ip}
	ldr	r0, .L96+20
	ldr	lr, [r4, #4]
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	ldm	r0, {r0, r1}
	str	r6, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L90
.L76:
	add	r6, r4, #8
	ldm	r6, {r6, ip}
	ldr	r0, .L96+24
	ldr	lr, [r4, #4]
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	ldm	r0, {r0, r1}
	str	r6, [sp, #12]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L91
.L77:
	ldr	r7, [r4, #8]
	ldr	r6, [r4, #12]
	ldm	r4, {ip, lr}
	ldr	r0, .L96+28
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	ldm	r0, {r0, r1}
	stm	sp, {ip, lr}
	str	r7, [sp, #12]
	str	r6, [sp, #8]
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L92
.L78:
	ldr	r4, .L96+32
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L79
	ldr	r2, .L96+36
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L93
.L79:
	tst	r3, #2
	beq	.L80
	ldr	r3, .L96+36
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L94
.L80:
	ldr	r3, .L96+40
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L95
.L81:
	mov	r2, #67108864
	ldr	r1, .L96+44
	ldrh	r3, [r1]
	lsr	r3, r3, #1
	strh	r3, [r2, #16]	@ movhi
	ldr	r0, .L96+48
	ldrh	r3, [r1]
	umull	r1, r3, r0, r3
	lsr	r3, r3, #2
	strh	r3, [r2, #20]	@ movhi
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L92:
	bl	goToPlanet4
	b	.L78
.L91:
	bl	goToPlanet3
	b	.L77
.L90:
	bl	goToPlanet2
	b	.L76
.L89:
	bl	goToPlanet1
	b	.L75
.L95:
	bl	goToWin
	b	.L81
.L94:
	bl	goToGame
	b	.L80
.L93:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L79
.L97:
	.align	2
.L96:
	.word	updateSpace
	.word	spaceship
	.word	p1
	.word	prevState
	.word	collision
	.word	p2
	.word	p3
	.word	p4
	.word	oldButtons
	.word	buttons
	.word	isWon
	.word	hOff
	.word	-858993459
	.size	space, .-space
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L100
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L101:
	.align	2
.L100:
	.word	oldButtons
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L104
	mov	lr, pc
	bx	r3
	ldr	r3, .L104+4
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r2, #0
	mov	r3, #4352
	ldr	r0, .L104+8
	strh	r2, [r1, #16]	@ movhi
	ldr	r4, .L104+12
	strh	r2, [r1, #18]	@ movhi
	strh	r3, [r1]	@ movhi
	strh	r0, [r1, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L104+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L104+20
	ldr	r2, .L104+24
	ldr	r1, .L104+28
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L104+32
	mov	r0, #3
	ldr	r1, .L104+36
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L104+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L105:
	.align	2
.L104:
	.word	hideSprites
	.word	initLose
	.word	7172
	.word	DMANow
	.word	losebgPal
	.word	6064
	.word	100679680
	.word	losebgTiles
	.word	100720640
	.word	losebgMap
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	planet1
	.syntax unified
	.arm
	.fpu softvfp
	.type	planet1, %function
planet1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L141
	sub	sp, sp, #16
	mov	lr, pc
	bx	r3
	mov	r1, #3
	ldr	r4, .L141+4
	ldrh	r3, [r4]
	ldr	r2, .L141+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L107
	ldr	r2, .L141+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L134
.L107:
	tst	r3, #32
	beq	.L108
	ldr	r3, .L141+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L135
.L108:
	ldr	r3, .L141+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L136
.L109:
	ldr	r3, .L141+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L137
.L110:
	ldr	r5, .L141+24
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	r4, .L141+28
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r6, .L141+32
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L138
.L111:
	ldr	r7, .L141+36
	ldr	r5, [r7]
	cmp	r5, #1
	beq	.L139
.L112:
	cmp	r5, #0
	beq	.L140
.L106:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L138:
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L111
	ldr	r3, [r4, #16]
	cmp	r3, #0
	movne	r3, #0
	ldr	r7, .L141+36
	ldr	r5, [r7]
	strne	r3, [r4, #16]
	cmp	r5, #1
	bne	.L112
.L139:
	ldr	r3, .L141+40
	add	r0, r3, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r3, #52]
	ldr	r3, [r3]
	ldr	r8, .L141+44
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r8, #40
	ldr	r3, [r8, #52]
	ldr	r2, [r8, #56]
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L113
.L133:
	ldr	r5, [r7]
	cmp	r5, #0
	bne	.L106
.L140:
	ldr	r5, .L141+44
	ldr	r8, [r4, #8]
	ldr	r7, [r4, #12]
	ldr	lr, [r4, #52]
	ldr	ip, [r4]
	add	r0, r5, #40
	ldr	r3, [r5, #52]
	ldr	r2, [r5, #56]
	ldm	r0, {r0, r1}
	stm	sp, {ip, lr}
	str	r8, [sp, #12]
	str	r7, [sp, #8]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L106
	mov	r3, #1
	str	r3, [r5, #76]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	goToSpace
.L137:
	bl	goToWin
	b	.L110
.L136:
	bl	goToLose
	b	.L109
.L134:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L107
.L135:
	bl	goToSpace
	b	.L108
.L113:
	str	r5, [r8, #76]
	bl	goToSpace
	b	.L133
.L142:
	.align	2
.L141:
	.word	updatePlanet1
	.word	oldButtons
	.word	prevState
	.word	buttons
	.word	isLost
	.word	isWon
	.word	cannonball
	.word	fry
	.word	collision
	.word	characterChoice
	.word	leela
	.word	treasure
	.size	planet1, .-planet1
	.align	2
	.global	planet2
	.syntax unified
	.arm
	.fpu softvfp
	.type	planet2, %function
planet2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L170
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	r1, #4
	ldr	r4, .L170+4
	ldrh	r3, [r4]
	ldr	r2, .L170+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L144
	ldr	r2, .L170+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L164
.L144:
	tst	r3, #32
	beq	.L145
	ldr	r3, .L170+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L165
.L145:
	ldr	r5, .L170+16
	ldr	r4, [r5]
	cmp	r4, #1
	beq	.L166
.L146:
	cmp	r4, #0
	beq	.L167
.L149:
	ldr	r3, .L170+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L168
.L151:
	ldr	r3, .L170+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L169
.L143:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L167:
	ldr	r3, .L170+28
	add	r0, r3, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r3, #52]
	ldr	r3, [r3]
	ldr	r4, .L170+32
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r4, #80
	ldr	r3, [r4, #92]
	ldr	r2, [r4, #96]
	ldm	r0, {r0, r1}
	ldr	r5, .L170+36
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L149
	mov	r3, #1
	str	r3, [r4, #116]
	bl	goToSpace
	ldr	r3, .L170+20
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L151
.L168:
	bl	goToLose
	ldr	r3, .L170+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L143
.L169:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToWin
.L166:
	ldr	r3, .L170+40
	add	r0, r3, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r3, #52]
	ldr	r3, [r3]
	ldr	r6, .L170+32
	str	r0, [sp, #12]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	r1, [sp, #8]
	add	r0, r6, #80
	ldr	r3, [r6, #92]
	ldr	r2, [r6, #96]
	ldm	r0, {r0, r1}
	ldr	r7, .L170+36
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L147
.L163:
	ldr	r4, [r5]
	b	.L146
.L165:
	bl	goToSpace
	b	.L145
.L164:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L144
.L147:
	str	r4, [r6, #116]
	bl	goToSpace
	b	.L163
.L171:
	.align	2
.L170:
	.word	updatePlanet2
	.word	oldButtons
	.word	prevState
	.word	buttons
	.word	characterChoice
	.word	isLost
	.word	isWon
	.word	fry
	.word	treasure
	.word	collision
	.word	leela
	.size	planet2, .-planet2
	.align	2
	.global	planet3
	.syntax unified
	.arm
	.fpu softvfp
	.type	planet3, %function
planet3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L199
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	r1, #5
	ldr	r4, .L199+4
	ldrh	r3, [r4]
	ldr	r2, .L199+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L173
	ldr	r2, .L199+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L193
.L173:
	tst	r3, #32
	beq	.L174
	ldr	r3, .L199+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L194
.L174:
	ldr	r5, .L199+16
	ldr	r4, [r5]
	cmp	r4, #1
	beq	.L195
.L175:
	cmp	r4, #0
	beq	.L196
.L178:
	ldr	r3, .L199+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L197
.L180:
	ldr	r3, .L199+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L198
.L172:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L196:
	ldr	r3, .L199+28
	add	r0, r3, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r3, #52]
	ldr	r3, [r3]
	ldr	r4, .L199+32
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r4, #120
	ldr	r3, [r4, #132]
	ldr	r2, [r4, #136]
	ldm	r0, {r0, r1}
	ldr	r5, .L199+36
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L178
	mov	r3, #1
	str	r3, [r4, #156]
	bl	goToSpace
	ldr	r3, .L199+20
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L180
.L197:
	bl	goToLose
	ldr	r3, .L199+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L172
.L198:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToWin
.L195:
	ldr	r3, .L199+40
	add	r0, r3, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r3, #52]
	ldr	r6, .L199+32
	ldr	r3, [r3]
	ldr	r7, .L199+36
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r6, #136]
	ldr	r3, [r6, #132]
	ldr	r1, [r6, #164]
	ldr	r0, [r6, #120]
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L176
.L192:
	ldr	r4, [r5]
	b	.L175
.L194:
	bl	goToSpace
	b	.L174
.L193:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L173
.L176:
	str	r4, [r6, #156]
	bl	goToSpace
	b	.L192
.L200:
	.align	2
.L199:
	.word	updatePlanet3
	.word	oldButtons
	.word	prevState
	.word	buttons
	.word	characterChoice
	.word	isLost
	.word	isWon
	.word	fry
	.word	treasure
	.word	collision
	.word	leela
	.size	planet3, .-planet3
	.align	2
	.global	planet4
	.syntax unified
	.arm
	.fpu softvfp
	.type	planet4, %function
planet4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L228
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	r1, #6
	ldr	r4, .L228+4
	ldrh	r3, [r4]
	ldr	r2, .L228+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L202
	ldr	r2, .L228+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L222
.L202:
	tst	r3, #32
	beq	.L203
	ldr	r3, .L228+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L223
.L203:
	ldr	r5, .L228+16
	ldr	r4, [r5]
	cmp	r4, #1
	beq	.L224
.L204:
	cmp	r4, #0
	beq	.L225
.L207:
	ldr	r3, .L228+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L226
.L209:
	ldr	r3, .L228+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L227
.L201:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L225:
	ldr	r3, .L228+28
	add	r0, r3, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r3, #52]
	ldr	r3, [r3]
	ldr	r4, .L228+32
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r4, #160
	ldr	r3, [r4, #172]
	ldr	r2, [r4, #176]
	ldm	r0, {r0, r1}
	ldr	r5, .L228+36
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L207
	mov	r3, #1
	str	r3, [r4, #196]
	bl	goToSpace
	ldr	r3, .L228+20
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L209
.L226:
	bl	goToLose
	ldr	r3, .L228+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L201
.L227:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToWin
.L224:
	ldr	r3, .L228+40
	add	r0, r3, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r3, #52]
	ldr	r3, [r3]
	ldr	r6, .L228+32
	str	r0, [sp, #12]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	r1, [sp, #8]
	add	r0, r6, #160
	ldr	r3, [r6, #172]
	ldr	r2, [r6, #176]
	ldm	r0, {r0, r1}
	ldr	r7, .L228+36
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L205
.L221:
	ldr	r4, [r5]
	b	.L204
.L223:
	mov	r2, #1
	ldr	r3, .L228+44
	str	r2, [r3, #16]
	bl	goToSpace
	b	.L203
.L222:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L202
.L205:
	str	r4, [r6, #196]
	bl	goToSpace
	b	.L221
.L229:
	.align	2
.L228:
	.word	updatePlanet4
	.word	oldButtons
	.word	prevState
	.word	buttons
	.word	characterChoice
	.word	isLost
	.word	isWon
	.word	fry
	.word	treasure
	.word	collision
	.word	leela
	.word	p1
	.size	planet4, .-planet4
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #7680
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L235
	strh	r1, [r2, #8]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L235+4
	mov	lr, pc
	bx	r4
	mov	r3, #6528
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L235+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L235+12
	ldr	r1, .L235+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L235+20
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, r0
	ldr	ip, .L235+24
	ldr	lr, .L235+28
	str	r0, [ip, #16]
	ldr	ip, .L235+32
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L235+36
	ldr	ip, .L235+40
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L235+44
	ldr	ip, .L235+48
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L235+52
	ldr	ip, .L235+56
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	lr, .L235+60
	ldr	ip, .L235+64
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	ldr	r3, .L235+68
	ldr	ip, .L235+72
	ldr	r4, .L235+76
	ldr	lr, .L235+80
	add	r2, r3, #1392
	str	r0, [r4, #16]
	str	r0, [lr, #16]
	str	r0, [ip, #16]
	str	r0, [ip, #56]
	add	r2, r2, #8
.L232:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L232
	mov	r0, #10
	ldr	r2, .L235+84
	ldr	r3, .L235+88
	str	r0, [r2]
	str	r1, [r3, #16]
	pop	{r4, lr}
	bx	lr
.L236:
	.align	2
.L235:
	.word	DMANow
	.word	instructions2Pal
	.word	instructions2Tiles
	.word	100724736
	.word	instructions2Map
	.word	hideSprites
	.word	leela
	.word	alien
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	spaceship
	.word	life1
	.word	life2
	.word	life3
	.word	life4
	.word	bullets
	.word	coins
	.word	fry
	.word	life5
	.word	state
	.word	enemy
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L257
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r2, #0
	ldr	r4, .L257+4
	strh	r2, [r3, #16]	@ movhi
	ldr	r1, .L257+8
	strh	r2, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r1
	ldrh	r3, [r4]
	tst	r3, #2
	beq	.L238
	ldr	r2, .L257+12
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L251
.L238:
	tst	r3, #8
	beq	.L237
	ldr	r3, .L257+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L252
.L237:
	pop	{r4, lr}
	bx	lr
.L252:
	ldr	r3, .L257+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L257+20
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L253
	cmp	r3, #4
	beq	.L254
	cmp	r3, #5
	beq	.L255
	cmp	r3, #6
	beq	.L256
	pop	{r4, lr}
	b	goToSpace
.L251:
	bl	goToInstructions
	ldrh	r3, [r4]
	b	.L238
.L253:
	pop	{r4, lr}
	b	goToPlanet1
.L256:
	pop	{r4, lr}
	b	goToPlanet4
.L254:
	pop	{r4, lr}
	b	goToPlanet2
.L255:
	pop	{r4, lr}
	b	goToPlanet3
.L258:
	.align	2
.L257:
	.word	hideSprites
	.word	oldButtons
	.word	drawGame
	.word	buttons
	.word	unpauseSound
	.word	prevState
	.size	pause, .-pause
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L266
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L266+4
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L266+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L259
	ldr	r3, .L266+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L265
.L259:
	pop	{r4, lr}
	bx	lr
.L265:
	pop	{r4, lr}
	b	goToPause
.L267:
	.align	2
.L266:
	.word	hideSprites
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.size	instructions, .-instructions
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	mov	r8, #67108864
	mov	r7, #0
	ldr	r6, .L290
	ldr	r9, .L290+4
	ldr	r3, .L290+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L290+12
	ldr	r2, [r6]
	ldrh	r0, [r9]
	ldr	fp, .L290+16
	ldr	r10, .L290+20
	ldr	r5, .L290+24
.L270:
	strh	r0, [r4]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r9]	@ movhi
	cmp	r2, #10
	ldrls	pc, [pc, r2, asl #2]
	b	.L285
.L272:
	.word	.L282
	.word	.L281
	.word	.L280
	.word	.L279
	.word	.L278
	.word	.L277
	.word	.L276
	.word	.L275
	.word	.L274
	.word	.L273
	.word	.L271
.L271:
	ldr	r3, .L290+28
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L270
.L273:
	tst	r0, #8
	beq	.L285
	ldr	r3, .L290+32
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
.L289:
	ldrh	r0, [r9]
	b	.L270
.L274:
	tst	r0, #8
	beq	.L285
	ldr	r3, .L290+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L270
.L275:
	ldr	r3, .L290+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L270
.L276:
	ldr	r3, .L290+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L270
.L277:
	ldr	r3, .L290+48
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L270
.L278:
	ldr	r3, .L290+52
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L270
.L279:
	ldr	r3, .L290+56
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L270
.L280:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L270
.L281:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L270
.L282:
	strh	r7, [r8, #16]	@ movhi
	strh	r7, [r8, #18]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L289
	ldrh	r0, [r9]
	tst	r0, #8
	bne	.L270
	ldr	r3, .L290+60
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L270
.L285:
	mov	r0, r3
	b	.L270
.L291:
	.align	2
.L290:
	.word	state
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	game
	.word	space
	.word	67109120
	.word	instructions
	.word	lose.part.0
	.word	win.part.0
	.word	pause
	.word	planet4
	.word	planet3
	.word	planet2
	.word	planet1
	.word	goToGame
	.size	main, .-main
	.comm	shadowOAM,1024,4
	.comm	vOff,2,2
	.comm	hOff,2,2
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	prevState,4,4
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
