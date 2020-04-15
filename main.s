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
	mov	r4, #0
	ldr	r0, .L6
	ldr	r1, .L6+4
	ldr	r2, .L6+8
	ldr	r3, .L6+12
	strh	r4, [r0]	@ movhi
	strh	r4, [r1]	@ movhi
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	mov	r1, #1
	mov	r5, r4
	ldr	r0, .L6+16
	ldr	r3, .L6+20
	str	r4, [r0, #16]
	ldr	r2, .L6+24
	ldr	r0, .L6+28
	str	r4, [r3, #16]
	ldr	r3, .L6+32
	str	r4, [r0, #16]
	str	r4, [r2, #16]
	ldr	r0, .L6+36
	ldr	r2, .L6+40
	str	r4, [r3, #16]
	ldr	r3, .L6+44
	str	r4, [r0, #16]
	str	r4, [r2, #16]
	ldr	r0, .L6+48
	ldr	r2, .L6+52
	str	r4, [r3, #16]
	ldr	r3, .L6+56
	str	r4, [r0, #16]
	str	r4, [r2, #16]
	ldr	ip, .L6+60
	ldr	r2, .L6+64
	ldr	r0, .L6+68
	str	r4, [r3, #20]
	str	r4, [r3, #52]
	str	r4, [r3, #84]
	str	r4, [r3, #116]
	str	r4, [r3, #148]
	ldr	r3, .L6+72
	str	r4, [r2, #16]
	str	r4, [r2, #40]
	str	r4, [r2, #64]
	str	r1, [ip, #16]
	str	r1, [r0, #16]
	add	r2, r3, #280
.L2:
	str	r5, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L2
	mov	r2, #67108864
	mov	r1, #7680
	ldr	r4, .L6+76
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L6+80
	mov	lr, pc
	bx	r4
	mov	r3, #1936
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L6+84
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L6+88
	ldr	r1, .L6+92
	mov	lr, pc
	bx	r4
	ldr	r3, .L6+96
	str	r5, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	hOff
	.word	vOff
	.word	isLost
	.word	hideSprites
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	life2
	.word	life1
	.word	life3
	.word	life5
	.word	life4
	.word	treasure
	.word	leela
	.word	blocks
	.word	fry
	.word	bullets
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
	@ link register save eliminated.
	mov	r3, #0
	mov	r2, #67108864
	mov	ip, #4352
	ldr	r0, .L9
	ldr	r1, .L9+4
	strh	ip, [r2]	@ movhi
	strh	r3, [r0]	@ movhi
	strh	r3, [r1]	@ movhi
	add	r2, r2, #256
	ldr	r3, .L9+8
	ldrh	r2, [r2, #48]
	strh	r2, [r3]	@ movhi
	b	goToStart
.L10:
	.align	2
.L9:
	.word	hOff
	.word	vOff
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
	ldr	r3, .L13
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L14:
	.align	2
.L13:
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
	ldr	r3, .L17
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7680
	ldr	r4, .L17+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L17+8
	mov	lr, pc
	bx	r4
	mov	r3, #1872
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L17+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L17+16
	mov	r0, #3
	ldr	r1, .L17+20
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L17+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L18:
	.align	2
.L17:
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
	ldr	r1, .L24
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	ldrh	r3, [r1]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L24+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToGame
.L25:
	.align	2
.L24:
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
	push	{r4, lr}
	ldr	r3, .L28
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7680
	ldr	r4, .L28+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L28+8
	mov	lr, pc
	bx	r4
	mov	r3, #1632
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L28+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L28+16
	mov	r0, #3
	ldr	r1, .L28+20
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L28+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L29:
	.align	2
.L28:
	.word	initSpace
	.word	DMANow
	.word	bgPal
	.word	bgTiles
	.word	100724736
	.word	bgMap
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
	ldr	r4, .L47
	strh	r2, [r3, #18]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L31
	ldr	r2, .L47+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L44
.L31:
	tst	r3, #32
	beq	.L32
	ldr	r2, .L47+4
	ldrh	r2, [r2]
	ands	r2, r2, #32
	beq	.L45
.L32:
	tst	r3, #16
	beq	.L30
	ldr	r3, .L47+4
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L46
.L30:
	pop	{r4, lr}
	bx	lr
.L46:
	mov	r2, #1
	ldr	r3, .L47+8
	pop	{r4, lr}
	str	r2, [r3]
	b	goToSpace
.L44:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L31
.L45:
	ldr	r3, .L47+8
	str	r2, [r3]
	bl	goToSpace
	ldrh	r3, [r4]
	b	.L32
.L48:
	.align	2
.L47:
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
	ldr	r3, .L51
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #24064
	ldr	r4, .L51+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L51+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L51+12
	ldr	r1, .L51+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L51+20
	mov	r0, #3
	ldr	r1, .L51+24
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L51+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L52:
	.align	2
.L51:
	.word	initPlanet1
	.word	DMANow
	.word	planet1PSPal
	.word	18080
	.word	planet1PSTiles
	.word	100724736
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
	ldr	r3, .L55
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7680
	ldr	r4, .L55+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L55+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L55+12
	ldr	r1, .L55+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L55+20
	mov	r0, #3
	ldr	r1, .L55+24
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L55+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L56:
	.align	2
.L55:
	.word	initPlanet2
	.word	DMANow
	.word	planet2bgPal
	.word	9840
	.word	planet2bgTiles
	.word	100724736
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
	ldr	r3, .L59
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #24064
	ldr	r4, .L59+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L59+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L59+12
	ldr	r1, .L59+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L59+20
	mov	r0, #3
	ldr	r1, .L59+24
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L59+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L60:
	.align	2
.L59:
	.word	initPlanet3
	.word	DMANow
	.word	planet3bgPal
	.word	15696
	.word	planet3bgTiles
	.word	100724736
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
	ldr	r3, .L63
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r2, #0
	mov	r0, #7680
	strh	r2, [r1, #16]	@ movhi
	ldr	r4, .L63+4
	strh	r2, [r1, #18]	@ movhi
	mov	r3, #256
	strh	r0, [r1, #8]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L63+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L63+12
	ldr	r1, .L63+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L63+20
	mov	r0, #3
	ldr	r1, .L63+24
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L63+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L64:
	.align	2
.L63:
	.word	initPlanet4
	.word	DMANow
	.word	planet4bgPal
	.word	13296
	.word	planet4bgTiles
	.word	100724736
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
	ldr	r3, .L67
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #4352
	ldr	r2, .L67+4
	ldr	r4, .L67+8
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	mov	r0, #3
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L67+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L67+16
	ldr	r2, .L67+20
	ldr	r1, .L67+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L67+28
	mov	r0, #3
	ldr	r1, .L67+32
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L67+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L68:
	.align	2
.L67:
	.word	initPause
	.word	7684
	.word	DMANow
	.word	pausePal
	.word	6640
	.word	100679680
	.word	pauseTiles
	.word	100724736
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
	ldr	r3, .L83
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L83+4
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L83+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L69
	ldr	r3, .L83+12
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L69
	ldr	r3, .L83+16
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L79
	cmp	r3, #4
	beq	.L80
	cmp	r3, #5
	beq	.L81
	cmp	r3, #6
	beq	.L82
	pop	{r4, lr}
	b	goToSpace
.L69:
	pop	{r4, lr}
	bx	lr
.L79:
	pop	{r4, lr}
	b	goToPlanet1
.L82:
	pop	{r4, lr}
	b	goToPlanet4
.L80:
	pop	{r4, lr}
	b	goToPlanet2
.L81:
	pop	{r4, lr}
	b	goToPlanet3
.L84:
	.align	2
.L83:
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
	ldr	r3, .L87
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r2, #0
	mov	r3, #4352
	mov	r0, #7680
	strh	r2, [r1, #16]	@ movhi
	ldr	r4, .L87+4
	strh	r2, [r1, #18]	@ movhi
	strh	r3, [r1]	@ movhi
	strh	r0, [r1, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L87+8
	mov	lr, pc
	bx	r4
	mov	r3, #48
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L87+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L87+16
	mov	r0, #3
	ldr	r1, .L87+20
	mov	lr, pc
	bx	r4
	mov	r2, #8
	ldr	r3, .L87+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L88:
	.align	2
.L87:
	.word	initWin
	.word	DMANow
	.word	winPal
	.word	winTiles
	.word	100724736
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
	ldr	r3, .L111
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	lr, #2
	ldr	r4, .L111+4
	ldr	ip, [r4, #8]
	ldr	r1, [r4, #12]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	r0, .L111+8
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	ip, .L111+12
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	str	lr, [ip]
	ldm	r0, {r0, r1}
	ldr	r5, .L111+16
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L104
.L90:
	add	r6, r4, #8
	ldm	r6, {r6, ip}
	ldr	r0, .L111+20
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
	beq	.L105
.L91:
	add	r6, r4, #8
	ldm	r6, {r6, ip}
	ldr	r0, .L111+24
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
	beq	.L106
.L92:
	ldr	r7, [r4, #8]
	ldr	r6, [r4, #12]
	ldm	r4, {ip, lr}
	ldr	r0, .L111+28
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	ldm	r0, {r0, r1}
	stm	sp, {ip, lr}
	str	r7, [sp, #12]
	str	r6, [sp, #8]
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L107
.L93:
	ldr	r4, .L111+32
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L94
	ldr	r2, .L111+36
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L108
.L94:
	tst	r3, #2
	beq	.L95
	ldr	r3, .L111+36
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L109
.L95:
	ldr	r3, .L111+40
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L110
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L107:
	bl	goToPlanet4
	b	.L93
.L106:
	bl	goToPlanet3
	b	.L92
.L105:
	bl	goToPlanet2
	b	.L91
.L104:
	bl	goToPlanet1
	b	.L90
.L110:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToWin
.L109:
	bl	goToGame
	b	.L95
.L108:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L94
.L112:
	.align	2
.L111:
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
	ldr	r3, .L115
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L116:
	.align	2
.L115:
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
	ldr	r3, .L119
	mov	lr, pc
	bx	r3
	ldr	r3, .L119+4
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r2, #0
	mov	r3, #4352
	ldr	r0, .L119+8
	strh	r2, [r1, #16]	@ movhi
	ldr	r4, .L119+12
	strh	r2, [r1, #18]	@ movhi
	strh	r3, [r1]	@ movhi
	strh	r0, [r1, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L119+16
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L119+20
	ldr	r2, .L119+24
	ldr	r1, .L119+28
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L119+32
	mov	r0, #3
	ldr	r1, .L119+36
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L119+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L120:
	.align	2
.L119:
	.word	hideSprites
	.word	initLose
	.word	7684
	.word	DMANow
	.word	losebgPal
	.word	6064
	.word	100679680
	.word	losebgTiles
	.word	100724736
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
	ldr	r3, .L148
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	r1, #3
	ldr	r4, .L148+4
	ldrh	r3, [r4]
	ldr	r2, .L148+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L122
	ldr	r2, .L148+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L142
.L122:
	tst	r3, #32
	beq	.L123
	ldr	r3, .L148+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L143
.L123:
	ldr	r3, .L148+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L144
.L124:
	ldr	r3, .L148+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L145
.L125:
	ldr	r4, .L148+24
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L146
.L126:
	cmp	r3, #0
	beq	.L147
.L121:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L147:
	ldr	r3, .L148+28
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #4]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L148+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #32
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r4, .L148+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L121
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	goToSpace
.L146:
	ldr	r3, .L148+40
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #52]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L148+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #32
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r5, .L148+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L127
.L141:
	ldr	r3, [r4]
	b	.L126
.L145:
	bl	goToWin
	b	.L125
.L144:
	bl	goToLose
	b	.L124
.L143:
	bl	goToSpace
	b	.L123
.L142:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L122
.L127:
	bl	goToSpace
	b	.L141
.L149:
	.align	2
.L148:
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
	ldr	r3, .L177
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	r1, #4
	ldr	r4, .L177+4
	ldrh	r3, [r4]
	ldr	r2, .L177+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L151
	ldr	r2, .L177+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L171
.L151:
	tst	r3, #32
	beq	.L152
	ldr	r3, .L177+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L172
.L152:
	ldr	r4, .L177+16
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L173
.L153:
	cmp	r3, #0
	beq	.L174
.L156:
	ldr	r3, .L177+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L175
.L158:
	ldr	r3, .L177+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L176
.L150:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L174:
	ldr	r3, .L177+28
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #4]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L177+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #64
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r4, .L177+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L156
	bl	goToSpace
	ldr	r3, .L177+20
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L158
.L175:
	bl	goToLose
	ldr	r3, .L177+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L150
.L176:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	goToWin
.L173:
	ldr	r3, .L177+40
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #52]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L177+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #64
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r5, .L177+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L154
.L170:
	ldr	r3, [r4]
	b	.L153
.L172:
	bl	goToSpace
	b	.L152
.L171:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L151
.L154:
	bl	goToSpace
	b	.L170
.L178:
	.align	2
.L177:
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
	ldr	r3, .L206
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	r1, #5
	ldr	r4, .L206+4
	ldrh	r3, [r4]
	ldr	r2, .L206+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L180
	ldr	r2, .L206+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L200
.L180:
	tst	r3, #32
	beq	.L181
	ldr	r3, .L206+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L201
.L181:
	ldr	r4, .L206+16
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L202
.L182:
	cmp	r3, #0
	beq	.L203
.L185:
	ldr	r3, .L206+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L204
.L187:
	ldr	r3, .L206+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L205
.L179:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L203:
	ldr	r3, .L206+28
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #4]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L206+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #96
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r4, .L206+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L185
	bl	goToSpace
	ldr	r3, .L206+20
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L187
.L204:
	bl	goToLose
	ldr	r3, .L206+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L179
.L205:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	goToWin
.L202:
	ldr	r3, .L206+40
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #52]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L206+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r5, .L206+36
	ldr	r3, [r0, #108]
	ldr	r2, [r0, #112]
	ldr	r1, [r0, #132]
	ldr	r0, [r0, #96]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L183
.L199:
	ldr	r3, [r4]
	b	.L182
.L201:
	bl	goToSpace
	b	.L181
.L200:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L180
.L183:
	bl	goToSpace
	b	.L199
.L207:
	.align	2
.L206:
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
	ldr	r3, .L235
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	r1, #6
	ldr	r4, .L235+4
	ldrh	r3, [r4]
	ldr	r2, .L235+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L209
	ldr	r2, .L235+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L229
.L209:
	tst	r3, #32
	beq	.L210
	ldr	r3, .L235+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L230
.L210:
	ldr	r4, .L235+16
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L231
.L211:
	cmp	r3, #0
	beq	.L232
.L214:
	ldr	r3, .L235+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L233
.L216:
	ldr	r3, .L235+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L234
.L208:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L232:
	ldr	r3, .L235+28
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #4]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L235+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #128
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r4, .L235+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L214
	bl	goToSpace
	ldr	r3, .L235+20
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L216
.L233:
	bl	goToLose
	ldr	r3, .L235+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L208
.L234:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	goToWin
.L231:
	ldr	r3, .L235+40
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #52]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L235+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #128
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r5, .L235+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L212
.L228:
	ldr	r3, [r4]
	b	.L211
.L230:
	mov	r2, #1
	ldr	r3, .L235+44
	str	r2, [r3, #16]
	bl	goToSpace
	b	.L210
.L229:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L209
.L212:
	bl	goToSpace
	b	.L228
.L236:
	.align	2
.L235:
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
	mov	r1, #4352
	mov	r7, #0
	mov	r8, #67108864
	ldr	r2, .L258
	ldr	r3, .L258+4
	strh	r1, [r8]	@ movhi
	ldr	r5, .L258+8
	strh	r7, [r3]	@ movhi
	strh	r7, [r2]	@ movhi
	ldr	r9, .L258+12
	ldrh	r2, [r5, #48]
	ldr	r6, .L258+16
	ldr	r3, .L258+20
	strh	r2, [r9]	@ movhi
	ldr	r4, .L258+24
	mov	lr, pc
	bx	r3
	ldr	fp, .L258+28
	ldrh	r0, [r9]
	ldr	r2, [r6]
	ldr	r10, .L258+32
.L239:
	strh	r0, [r4]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r9]	@ movhi
	cmp	r2, #9
	ldrls	pc, [pc, r2, asl #2]
	b	.L253
.L241:
	.word	.L250
	.word	.L249
	.word	.L248
	.word	.L247
	.word	.L246
	.word	.L245
	.word	.L244
	.word	.L243
	.word	.L242
	.word	.L240
.L240:
	tst	r0, #8
	beq	.L253
	ldr	r3, .L258+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L239
.L242:
	tst	r0, #8
	beq	.L253
	ldr	r3, .L258+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
.L257:
	ldrh	r0, [r9]
	b	.L239
.L243:
	ldr	r3, .L258+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L239
.L244:
	ldr	r3, .L258+48
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L239
.L245:
	ldr	r3, .L258+52
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L239
.L246:
	ldr	r3, .L258+56
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L239
.L247:
	ldr	r3, .L258+60
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L239
.L248:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L239
.L249:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L239
.L250:
	strh	r7, [r8, #16]	@ movhi
	strh	r7, [r8, #18]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L257
	ldrh	r0, [r9]
	tst	r0, #8
	bne	.L239
	ldr	r3, .L258+64
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L239
.L253:
	mov	r0, r3
	b	.L239
.L259:
	.align	2
.L258:
	.word	hOff
	.word	vOff
	.word	67109120
	.word	buttons
	.word	state
	.word	goToStart
	.word	oldButtons
	.word	game
	.word	space
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
	.ident	"GCC: (devkitARM release 53) 9.1.0"
