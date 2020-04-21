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
	str	r5, [r1, #56]
	str	r5, [r1, #92]
	str	r5, [r1, #128]
	str	r5, [r1, #164]
	ldr	lr, .L6+68
	ldr	r1, .L6+72
	str	r5, [r2, #16]
	str	r5, [ip, #16]
	add	r2, r3, #1392
	str	r5, [ip, #48]
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
	mov	r3, #6144
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L18+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L18+16
	mov	r0, #3
	ldr	r1, .L18+20
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L18+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L19:
	.align	2
.L18:
	.word	initGame
	.word	DMANow
	.word	instructionsPal
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
	.word	planetsPal
	.word	23556
	.word	24144
	.word	100679680
	.word	planetsTiles
	.word	100720640
	.word	planetsMap
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
	mov	r2, #67108864
	mov	r1, #7168
	ldr	r4, .L56+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
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
	mov	r2, #67108864
	mov	r1, #23552
	ldr	r4, .L60+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
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
	mov	r0, #7168
	strh	r2, [r1, #16]	@ movhi
	ldr	r4, .L64+4
	strh	r2, [r1, #18]	@ movhi
	mov	r3, #256
	strh	r0, [r1, #8]	@ movhi
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
	.word	6640
	.word	100679680
	.word	pauseTiles
	.word	100720640
	.word	pauseMap
	.word	state
	.size	goToPause, .-goToPause
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
	ldr	r3, .L85
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L85+4
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L85+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L70
	ldr	r3, .L85+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L80
.L70:
	pop	{r4, lr}
	bx	lr
.L80:
	ldr	r3, .L85+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L85+20
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L81
	cmp	r3, #4
	beq	.L82
	cmp	r3, #5
	beq	.L83
	cmp	r3, #6
	beq	.L84
	pop	{r4, lr}
	b	goToSpace
.L81:
	pop	{r4, lr}
	b	goToPlanet1
.L84:
	pop	{r4, lr}
	b	goToPlanet4
.L82:
	pop	{r4, lr}
	b	goToPlanet2
.L83:
	pop	{r4, lr}
	b	goToPlanet3
.L86:
	.align	2
.L85:
	.word	hideSprites
	.word	drawGame
	.word	oldButtons
	.word	buttons
	.word	unpauseSound
	.word	prevState
	.size	pause, .-pause
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
	ldr	r3, .L89
	mov	lr, pc
	bx	r3
	mov	r1, #0
	mov	r2, #67108864
	mov	ip, #4352
	mov	r0, #7168
	ldr	lr, .L89+4
	ldr	r3, .L89+8
	strh	r1, [lr]	@ movhi
	strh	r1, [r3]	@ movhi
	ldr	r4, .L89+12
	strh	r1, [r2, #18]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L89+16
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L89+20
	ldr	r1, .L89+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L89+28
	mov	r0, #3
	ldr	r1, .L89+32
	mov	lr, pc
	bx	r4
	mov	r2, #8
	ldr	r3, .L89+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L90:
	.align	2
.L89:
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
	ldr	r3, .L113
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	lr, #2
	ldr	r4, .L113+4
	ldr	ip, [r4, #8]
	ldr	r1, [r4, #12]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	r0, .L113+8
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	ip, .L113+12
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	str	lr, [ip]
	ldm	r0, {r0, r1}
	ldr	r5, .L113+16
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L106
.L92:
	add	r6, r4, #8
	ldm	r6, {r6, ip}
	ldr	r0, .L113+20
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
	beq	.L107
.L93:
	add	r6, r4, #8
	ldm	r6, {r6, ip}
	ldr	r0, .L113+24
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
	beq	.L108
.L94:
	ldr	r7, [r4, #8]
	ldr	r6, [r4, #12]
	ldm	r4, {ip, lr}
	ldr	r0, .L113+28
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	ldm	r0, {r0, r1}
	stm	sp, {ip, lr}
	str	r7, [sp, #12]
	str	r6, [sp, #8]
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L109
.L95:
	ldr	r4, .L113+32
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L96
	ldr	r2, .L113+36
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L110
.L96:
	tst	r3, #2
	beq	.L97
	ldr	r3, .L113+36
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L111
.L97:
	ldr	r3, .L113+40
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L112
.L98:
	mov	r2, #67108864
	ldr	r1, .L113+44
	ldrh	r3, [r1]
	lsr	r3, r3, #1
	strh	r3, [r2, #16]	@ movhi
	ldr	r0, .L113+48
	ldrh	r3, [r1]
	umull	r1, r3, r0, r3
	lsr	r3, r3, #2
	strh	r3, [r2, #20]	@ movhi
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L109:
	bl	goToPlanet4
	b	.L95
.L108:
	bl	goToPlanet3
	b	.L94
.L107:
	bl	goToPlanet2
	b	.L93
.L106:
	bl	goToPlanet1
	b	.L92
.L112:
	bl	goToWin
	b	.L98
.L111:
	bl	goToGame
	b	.L97
.L110:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L96
.L114:
	.align	2
.L113:
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
	ldr	r3, .L117
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L118:
	.align	2
.L117:
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
	ldr	r3, .L121
	mov	lr, pc
	bx	r3
	ldr	r3, .L121+4
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r2, #0
	mov	r3, #4352
	ldr	r0, .L121+8
	strh	r2, [r1, #16]	@ movhi
	ldr	r4, .L121+12
	strh	r2, [r1, #18]	@ movhi
	strh	r3, [r1]	@ movhi
	strh	r0, [r1, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L121+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L121+20
	ldr	r2, .L121+24
	ldr	r1, .L121+28
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L121+32
	mov	r0, #3
	ldr	r1, .L121+36
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L121+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L122:
	.align	2
.L121:
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
	push	{r4, r5, lr}
	ldr	r3, .L150
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	r1, #3
	ldr	r4, .L150+4
	ldrh	r3, [r4]
	ldr	r2, .L150+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L124
	ldr	r2, .L150+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L144
.L124:
	tst	r3, #32
	beq	.L125
	ldr	r3, .L150+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L145
.L125:
	ldr	r3, .L150+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L146
.L126:
	ldr	r3, .L150+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L147
.L127:
	ldr	r4, .L150+24
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L148
.L128:
	cmp	r3, #0
	beq	.L149
.L123:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L149:
	ldr	r3, .L150+28
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #52]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L150+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #36
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r4, .L150+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L123
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	goToSpace
.L148:
	ldr	r3, .L150+40
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #52]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L150+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #36
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r5, .L150+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L129
.L143:
	ldr	r3, [r4]
	b	.L128
.L147:
	bl	goToWin
	b	.L127
.L146:
	bl	goToLose
	b	.L126
.L145:
	bl	goToSpace
	b	.L125
.L144:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L124
.L129:
	bl	goToSpace
	b	.L143
.L151:
	.align	2
.L150:
	.word	updatePlanet1
	.word	oldButtons
	.word	prevState
	.word	buttons
	.word	isLost
	.word	isWon
	.word	characterChoice
	.word	fry
	.word	treasure
	.word	collision
	.word	leela
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
	push	{r4, r5, lr}
	ldr	r3, .L179
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	r1, #4
	ldr	r4, .L179+4
	ldrh	r3, [r4]
	ldr	r2, .L179+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L153
	ldr	r2, .L179+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L173
.L153:
	tst	r3, #32
	beq	.L154
	ldr	r3, .L179+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L174
.L154:
	ldr	r4, .L179+16
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L175
.L155:
	cmp	r3, #0
	beq	.L176
.L158:
	ldr	r3, .L179+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L177
.L160:
	ldr	r3, .L179+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L178
.L152:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L176:
	ldr	r3, .L179+28
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #52]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L179+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #72
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r4, .L179+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L158
	bl	goToSpace
	ldr	r3, .L179+20
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L160
.L177:
	bl	goToLose
	ldr	r3, .L179+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L152
.L178:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	goToWin
.L175:
	ldr	r3, .L179+40
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #52]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L179+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #72
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r5, .L179+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L156
.L172:
	ldr	r3, [r4]
	b	.L155
.L174:
	bl	goToSpace
	b	.L154
.L173:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L153
.L156:
	bl	goToSpace
	b	.L172
.L180:
	.align	2
.L179:
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
	push	{r4, r5, lr}
	ldr	r3, .L208
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	r1, #5
	ldr	r4, .L208+4
	ldrh	r3, [r4]
	ldr	r2, .L208+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L182
	ldr	r2, .L208+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L202
.L182:
	tst	r3, #32
	beq	.L183
	ldr	r3, .L208+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L203
.L183:
	ldr	r4, .L208+16
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L204
.L184:
	cmp	r3, #0
	beq	.L205
.L187:
	ldr	r3, .L208+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L206
.L189:
	ldr	r3, .L208+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L207
.L181:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L205:
	ldr	r3, .L208+28
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #52]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L208+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #108
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r4, .L208+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L187
	bl	goToSpace
	ldr	r3, .L208+20
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L189
.L206:
	bl	goToLose
	ldr	r3, .L208+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L181
.L207:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	goToWin
.L204:
	ldr	r3, .L208+40
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #52]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L208+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r5, .L208+36
	ldr	r3, [r0, #120]
	ldr	r2, [r0, #124]
	ldr	r1, [r0, #148]
	ldr	r0, [r0, #108]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L185
.L201:
	ldr	r3, [r4]
	b	.L184
.L203:
	bl	goToSpace
	b	.L183
.L202:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L182
.L185:
	bl	goToSpace
	b	.L201
.L209:
	.align	2
.L208:
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
	push	{r4, r5, lr}
	ldr	r3, .L237
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	r1, #6
	ldr	r4, .L237+4
	ldrh	r3, [r4]
	ldr	r2, .L237+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L211
	ldr	r2, .L237+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L231
.L211:
	tst	r3, #32
	beq	.L212
	ldr	r3, .L237+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L232
.L212:
	ldr	r4, .L237+16
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L233
.L213:
	cmp	r3, #0
	beq	.L234
.L216:
	ldr	r3, .L237+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L235
.L218:
	ldr	r3, .L237+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L236
.L210:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L234:
	ldr	r3, .L237+28
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #52]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L237+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #144
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r4, .L237+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L216
	bl	goToSpace
	ldr	r3, .L237+20
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L218
.L235:
	bl	goToLose
	ldr	r3, .L237+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L210
.L236:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	goToWin
.L233:
	ldr	r3, .L237+40
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #52]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L237+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #144
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r5, .L237+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L214
.L230:
	ldr	r3, [r4]
	b	.L213
.L232:
	mov	r2, #1
	ldr	r3, .L237+44
	str	r2, [r3, #16]
	bl	goToSpace
	b	.L212
.L231:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L211
.L214:
	bl	goToSpace
	b	.L230
.L238:
	.align	2
.L237:
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
	ldr	r6, .L260
	ldr	r9, .L260+4
	ldr	r3, .L260+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L260+12
	ldr	r2, [r6]
	ldrh	r0, [r9]
	ldr	fp, .L260+16
	ldr	r10, .L260+20
	ldr	r5, .L260+24
.L241:
	strh	r0, [r4]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r9]	@ movhi
	cmp	r2, #9
	ldrls	pc, [pc, r2, asl #2]
	b	.L255
.L243:
	.word	.L252
	.word	.L251
	.word	.L250
	.word	.L249
	.word	.L248
	.word	.L247
	.word	.L246
	.word	.L245
	.word	.L244
	.word	.L242
.L242:
	tst	r0, #8
	beq	.L255
	ldr	r3, .L260+28
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L241
.L244:
	tst	r0, #8
	beq	.L255
	ldr	r3, .L260+32
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
.L259:
	ldrh	r0, [r9]
	b	.L241
.L245:
	ldr	r3, .L260+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L241
.L246:
	ldr	r3, .L260+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L241
.L247:
	ldr	r3, .L260+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L241
.L248:
	ldr	r3, .L260+48
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L241
.L249:
	ldr	r3, .L260+52
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L241
.L250:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L241
.L251:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L241
.L252:
	strh	r7, [r8, #16]	@ movhi
	strh	r7, [r8, #18]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L259
	ldrh	r0, [r9]
	tst	r0, #8
	bne	.L241
	ldr	r3, .L260+56
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L241
.L255:
	mov	r0, r3
	b	.L241
.L261:
	.align	2
.L260:
	.word	state
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	game
	.word	space
	.word	67109120
	.word	lose.part.0
	.word	win.part.0
	.word	pause
	.word	planet4
	.word	planet3
	.word	planet2
	.word	planet1
	.word	goToGame
	.size	main, .-main
	.text
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
