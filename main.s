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
	ldr	r3, .L6
	mov	lr, pc
	bx	r3
	ldr	r0, .L6+4
	ldr	r1, .L6+8
	ldr	r2, .L6+12
	ldr	r3, .L6+16
	strh	r5, [r0]	@ movhi
	strh	r5, [r1]	@ movhi
	str	r5, [r2]
	mov	lr, pc
	bx	r3
	mov	ip, #1
	mov	r4, r5
	ldr	r1, .L6+20
	ldr	r2, .L6+24
	str	r5, [r1, #16]
	ldr	r3, .L6+28
	ldr	r1, .L6+32
	str	r5, [r2, #16]
	str	r5, [r3, #16]
	str	r5, [r1, #16]
	ldr	r2, .L6+36
	ldr	r3, .L6+40
	ldr	r1, .L6+44
	str	r5, [r2, #16]
	str	r5, [r3, #16]
	str	r5, [r1, #16]
	ldr	r2, .L6+48
	ldr	r1, .L6+52
	ldr	r3, .L6+56
	str	r5, [r2, #16]
	str	r5, [r3, #16]
	str	r5, [r1, #20]
	str	r5, [r1, #52]
	str	r5, [r1, #84]
	str	r5, [r1, #116]
	str	r5, [r1, #148]
	ldr	r0, .L6+60
	ldr	r2, .L6+64
	ldr	r3, .L6+68
	ldr	lr, .L6+72
	ldr	r1, .L6+76
	str	r5, [r2, #16]
	str	r5, [r0, #16]
	str	r5, [r0, #40]
	str	r5, [r0, #64]
	add	r2, r3, #1392
	str	ip, [lr, #16]
	str	ip, [r1, #16]
	add	r2, r2, #8
.L2:
	str	r4, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L2
	mov	r2, #67108864
	mov	r1, #7680
	ldr	r5, .L6+80
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L6+84
	mov	lr, pc
	bx	r5
	mov	r3, #1936
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L6+88
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L6+92
	ldr	r1, .L6+96
	mov	lr, pc
	bx	r5
	ldr	r3, .L6+100
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	stopSound
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
	.word	treasure
	.word	life3
	.word	blocks
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
	mov	r3, #1872
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
	mov	r3, #67108864
	mov	r0, #0
	push	{r4, lr}
	mov	r2, #1
	strh	r0, [r3, #16]	@ movhi
	ldr	r1, .L27
	strh	r0, [r3, #18]	@ movhi
	ldr	r3, .L27+4
	ldr	r0, .L27+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L27+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L20
	ldr	r3, .L27+16
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L26
.L20:
	pop	{r4, lr}
	bx	lr
.L26:
	pop	{r4, lr}
	b	goToGame
.L28:
	.align	2
.L27:
	.word	3945888
	.word	playSoundA
	.word	intoSong
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
	ldr	r3, .L31
	mov	lr, pc
	bx	r3
	mov	r5, #67108864
	mov	r2, #4864
	ldr	r4, .L31+4
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L31+8
	mov	lr, pc
	bx	r4
	ldr	r2, .L31+12
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	ldr	r3, .L31+16
	ldr	r2, .L31+20
	ldr	r1, .L31+24
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L31+28
	ldr	r1, .L31+32
	mov	lr, pc
	bx	r4
	mov	r2, #24064
	mov	r0, #3
	strh	r2, [r5, #8]	@ movhi
	ldr	r3, .L31+36
	mov	r2, #100663296
	ldr	r1, .L31+40
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L31+44
	mov	r0, #3
	ldr	r1, .L31+48
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L31+52
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L32:
	.align	2
.L31:
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
	ldr	r4, .L50
	strh	r2, [r3, #18]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L34
	ldr	r2, .L50+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L47
.L34:
	tst	r3, #32
	beq	.L35
	ldr	r2, .L50+4
	ldrh	r2, [r2]
	ands	r2, r2, #32
	beq	.L48
.L35:
	tst	r3, #16
	beq	.L33
	ldr	r3, .L50+4
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L49
.L33:
	pop	{r4, lr}
	bx	lr
.L49:
	mov	r2, #1
	ldr	r3, .L50+8
	pop	{r4, lr}
	str	r2, [r3]
	b	goToSpace
.L47:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L34
.L48:
	ldr	r3, .L50+8
	str	r2, [r3]
	bl	goToSpace
	ldrh	r3, [r4]
	b	.L35
.L51:
	.align	2
.L50:
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
	ldr	r3, .L54
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #4352
	mov	r2, #23552
	ldr	r4, .L54+4
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	mov	r0, #3
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L54+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L54+12
	ldr	r1, .L54+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L54+20
	mov	r0, #3
	ldr	r1, .L54+24
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L54+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L55:
	.align	2
.L54:
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
	ldr	r3, .L58
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7168
	ldr	r4, .L58+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L58+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L58+12
	ldr	r1, .L58+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L58+20
	mov	r0, #3
	ldr	r1, .L58+24
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L58+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L59:
	.align	2
.L58:
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
	ldr	r3, .L62
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #23552
	ldr	r4, .L62+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L62+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L62+12
	ldr	r1, .L62+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L62+20
	mov	r0, #3
	ldr	r1, .L62+24
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L62+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L63:
	.align	2
.L62:
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
	ldr	r3, .L66
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r2, #0
	mov	r0, #7168
	strh	r2, [r1, #16]	@ movhi
	ldr	r4, .L66+4
	strh	r2, [r1, #18]	@ movhi
	mov	r3, #256
	strh	r0, [r1, #8]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L66+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L66+12
	ldr	r1, .L66+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L66+20
	mov	r0, #3
	ldr	r1, .L66+24
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L66+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L67:
	.align	2
.L66:
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
	ldr	r3, .L70
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #4352
	ldr	r2, .L70+4
	ldr	r4, .L70+8
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	mov	r0, #3
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L70+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L70+16
	ldr	r2, .L70+20
	ldr	r1, .L70+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L70+28
	mov	r0, #3
	ldr	r1, .L70+32
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L70+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L71:
	.align	2
.L70:
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
	ldr	r3, .L86
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L86+4
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L86+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L72
	ldr	r3, .L86+12
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L72
	ldr	r3, .L86+16
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L82
	cmp	r3, #4
	beq	.L83
	cmp	r3, #5
	beq	.L84
	cmp	r3, #6
	beq	.L85
	pop	{r4, lr}
	b	goToSpace
.L72:
	pop	{r4, lr}
	bx	lr
.L82:
	pop	{r4, lr}
	b	goToPlanet1
.L85:
	pop	{r4, lr}
	b	goToPlanet4
.L83:
	pop	{r4, lr}
	b	goToPlanet2
.L84:
	pop	{r4, lr}
	b	goToPlanet3
.L87:
	.align	2
.L86:
	.word	hideSprites
	.word	drawGame
	.word	oldButtons
	.word	buttons
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
	ldr	r3, .L90
	mov	lr, pc
	bx	r3
	mov	r0, #67108864
	mov	r1, #0
	mov	ip, #7168
	mov	r3, #4352
	strh	r1, [r0, #16]	@ movhi
	ldr	r4, .L90+4
	strh	r1, [r0, #18]	@ movhi
	strh	r3, [r0]	@ movhi
	strh	r1, [r0, #20]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #22]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #8]	@ movhi
	ldr	r1, .L90+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #48
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L90+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L90+16
	mov	r0, #3
	ldr	r1, .L90+20
	mov	lr, pc
	bx	r4
	mov	r2, #8
	ldr	r3, .L90+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L91:
	.align	2
.L90:
	.word	initWin
	.word	DMANow
	.word	winPal
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
	ldr	r3, .L114
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	lr, #2
	ldr	r4, .L114+4
	ldr	ip, [r4, #8]
	ldr	r1, [r4, #12]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	r0, .L114+8
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	ip, .L114+12
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	str	lr, [ip]
	ldm	r0, {r0, r1}
	ldr	r5, .L114+16
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L107
.L93:
	add	r6, r4, #8
	ldm	r6, {r6, ip}
	ldr	r0, .L114+20
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
	add	r6, r4, #8
	ldm	r6, {r6, ip}
	ldr	r0, .L114+24
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
	beq	.L109
.L95:
	ldr	r7, [r4, #8]
	ldr	r6, [r4, #12]
	ldm	r4, {ip, lr}
	ldr	r0, .L114+28
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	ldm	r0, {r0, r1}
	stm	sp, {ip, lr}
	str	r7, [sp, #12]
	str	r6, [sp, #8]
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L110
.L96:
	ldr	r4, .L114+32
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L97
	ldr	r2, .L114+36
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L111
.L97:
	tst	r3, #2
	beq	.L98
	ldr	r3, .L114+36
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L112
.L98:
	ldr	r3, .L114+40
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L113
.L99:
	mov	r2, #67108864
	ldr	r1, .L114+44
	ldrh	r3, [r1]
	lsr	r3, r3, #1
	strh	r3, [r2, #16]	@ movhi
	ldr	r0, .L114+48
	ldrh	r3, [r1]
	umull	r1, r3, r0, r3
	lsr	r3, r3, #2
	strh	r3, [r2, #20]	@ movhi
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L110:
	bl	goToPlanet4
	b	.L96
.L109:
	bl	goToPlanet3
	b	.L95
.L108:
	bl	goToPlanet2
	b	.L94
.L107:
	bl	goToPlanet1
	b	.L93
.L113:
	bl	goToWin
	b	.L99
.L112:
	bl	goToGame
	b	.L98
.L111:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L97
.L115:
	.align	2
.L114:
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
	ldr	r3, .L118
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L119:
	.align	2
.L118:
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
	ldr	r3, .L122
	mov	lr, pc
	bx	r3
	ldr	r3, .L122+4
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r2, #0
	mov	r3, #4352
	ldr	r0, .L122+8
	strh	r2, [r1, #16]	@ movhi
	ldr	r4, .L122+12
	strh	r2, [r1, #18]	@ movhi
	strh	r3, [r1]	@ movhi
	strh	r0, [r1, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L122+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L122+20
	ldr	r2, .L122+24
	ldr	r1, .L122+28
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L122+32
	mov	r0, #3
	ldr	r1, .L122+36
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L122+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L123:
	.align	2
.L122:
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
	ldr	r3, .L151
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	r1, #3
	ldr	r4, .L151+4
	ldrh	r3, [r4]
	ldr	r2, .L151+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L125
	ldr	r2, .L151+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L145
.L125:
	tst	r3, #32
	beq	.L126
	ldr	r3, .L151+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L146
.L126:
	ldr	r3, .L151+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L147
.L127:
	ldr	r3, .L151+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L148
.L128:
	ldr	r4, .L151+24
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L149
.L129:
	cmp	r3, #0
	beq	.L150
.L124:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L150:
	ldr	r3, .L151+28
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #52]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L151+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #32
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r4, .L151+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L124
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	goToSpace
.L149:
	ldr	r3, .L151+40
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #52]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L151+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #32
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r5, .L151+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L130
.L144:
	ldr	r3, [r4]
	b	.L129
.L148:
	bl	goToWin
	b	.L128
.L147:
	bl	goToLose
	b	.L127
.L146:
	bl	goToSpace
	b	.L126
.L145:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L125
.L130:
	bl	goToSpace
	b	.L144
.L152:
	.align	2
.L151:
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
	ldr	r3, .L180
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	r1, #4
	ldr	r4, .L180+4
	ldrh	r3, [r4]
	ldr	r2, .L180+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L154
	ldr	r2, .L180+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L174
.L154:
	tst	r3, #32
	beq	.L155
	ldr	r3, .L180+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L175
.L155:
	ldr	r4, .L180+16
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L176
.L156:
	cmp	r3, #0
	beq	.L177
.L159:
	ldr	r3, .L180+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L178
.L161:
	ldr	r3, .L180+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L179
.L153:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L177:
	ldr	r3, .L180+28
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #52]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L180+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #64
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r4, .L180+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L159
	bl	goToSpace
	ldr	r3, .L180+20
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L161
.L178:
	bl	goToLose
	ldr	r3, .L180+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L153
.L179:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	goToWin
.L176:
	ldr	r3, .L180+40
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #52]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L180+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #64
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r5, .L180+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L157
.L173:
	ldr	r3, [r4]
	b	.L156
.L175:
	bl	goToSpace
	b	.L155
.L174:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L154
.L157:
	bl	goToSpace
	b	.L173
.L181:
	.align	2
.L180:
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
	ldr	r3, .L209
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	r1, #5
	ldr	r4, .L209+4
	ldrh	r3, [r4]
	ldr	r2, .L209+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L183
	ldr	r2, .L209+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L203
.L183:
	tst	r3, #32
	beq	.L184
	ldr	r3, .L209+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L204
.L184:
	ldr	r4, .L209+16
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L205
.L185:
	cmp	r3, #0
	beq	.L206
.L188:
	ldr	r3, .L209+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L207
.L190:
	ldr	r3, .L209+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L208
.L182:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L206:
	ldr	r3, .L209+28
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #52]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L209+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #96
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r4, .L209+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L188
	bl	goToSpace
	ldr	r3, .L209+20
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L190
.L207:
	bl	goToLose
	ldr	r3, .L209+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L182
.L208:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	goToWin
.L205:
	ldr	r3, .L209+40
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #52]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L209+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r5, .L209+36
	ldr	r3, [r0, #108]
	ldr	r2, [r0, #112]
	ldr	r1, [r0, #132]
	ldr	r0, [r0, #96]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L186
.L202:
	ldr	r3, [r4]
	b	.L185
.L204:
	bl	goToSpace
	b	.L184
.L203:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L183
.L186:
	bl	goToSpace
	b	.L202
.L210:
	.align	2
.L209:
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
	ldr	r3, .L238
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	r1, #6
	ldr	r4, .L238+4
	ldrh	r3, [r4]
	ldr	r2, .L238+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L212
	ldr	r2, .L238+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L232
.L212:
	tst	r3, #32
	beq	.L213
	ldr	r3, .L238+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L233
.L213:
	ldr	r4, .L238+16
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L234
.L214:
	cmp	r3, #0
	beq	.L235
.L217:
	ldr	r3, .L238+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L236
.L219:
	ldr	r3, .L238+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L237
.L211:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L235:
	ldr	r3, .L238+28
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #52]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L238+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #128
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r4, .L238+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L217
	bl	goToSpace
	ldr	r3, .L238+20
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L219
.L236:
	bl	goToLose
	ldr	r3, .L238+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L211
.L237:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	goToWin
.L234:
	ldr	r3, .L238+40
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #52]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L238+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #128
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r5, .L238+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L215
.L231:
	ldr	r3, [r4]
	b	.L214
.L233:
	mov	r2, #1
	ldr	r3, .L238+44
	str	r2, [r3, #16]
	bl	goToSpace
	b	.L213
.L232:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L212
.L215:
	bl	goToSpace
	b	.L231
.L239:
	.align	2
.L238:
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
	ldr	r6, .L259
	ldr	r7, .L259+4
	ldr	r3, .L259+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L259+12
	ldr	r2, [r6]
	ldrh	r0, [r7]
	ldr	fp, .L259+16
	ldr	r10, .L259+20
	ldr	r9, .L259+24
	ldr	r8, .L259+28
	ldr	r4, .L259+32
.L242:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #9
	ldrls	pc, [pc, r2, asl #2]
	b	.L255
.L244:
	.word	.L253
	.word	.L252
	.word	.L251
	.word	.L250
	.word	.L249
	.word	.L248
	.word	.L247
	.word	.L246
	.word	.L245
	.word	.L243
.L243:
	tst	r0, #8
	beq	.L255
	ldr	r3, .L259+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L242
.L245:
	tst	r0, #8
	beq	.L255
	ldr	r3, .L259+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L242
.L246:
	ldr	r3, .L259+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L242
.L247:
	ldr	r3, .L259+48
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L242
.L248:
	ldr	r3, .L259+52
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L242
.L249:
	ldr	r3, .L259+56
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L242
.L250:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L242
.L251:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L242
.L252:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L242
.L253:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L242
.L255:
	mov	r0, r3
	b	.L242
.L260:
	.align	2
.L259:
	.word	state
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	start
	.word	game
	.word	space
	.word	planet1
	.word	67109120
	.word	lose.part.0
	.word	win.part.0
	.word	pause
	.word	planet4
	.word	planet3
	.word	planet2
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
