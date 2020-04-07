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
	mov	r2, #67108864
	mov	r4, #0
	mov	r1, #7680
	ldr	ip, .L4
	ldr	r0, .L4+4
	ldr	r3, .L4+8
	strh	r4, [ip]	@ movhi
	strh	r4, [r0]	@ movhi
	str	r4, [r3]
	ldr	r5, .L4+12
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r5
	mov	r3, #1936
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+20
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+24
	ldr	r1, .L4+28
	mov	lr, pc
	bx	r5
	ldr	r3, .L4+32
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	hOff
	.word	vOff
	.word	isLost
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
	ldr	r0, .L7
	ldr	r1, .L7+4
	strh	ip, [r2]	@ movhi
	strh	r3, [r0]	@ movhi
	strh	r3, [r1]	@ movhi
	add	r2, r2, #256
	ldr	r3, .L7+8
	ldrh	r2, [r2, #48]
	strh	r2, [r3]	@ movhi
	b	goToStart
.L8:
	.align	2
.L7:
	.word	hOff
	.word	vOff
	.word	buttons
	.size	initialize, .-initialize
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
	ldr	r3, .L11
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7680
	ldr	r4, .L11+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L11+8
	mov	lr, pc
	bx	r4
	mov	r3, #3696
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L11+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L11+16
	mov	r0, #3
	ldr	r1, .L11+20
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L11+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L12:
	.align	2
.L11:
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
	ldr	r3, .L18
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L18+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToGame
.L19:
	.align	2
.L18:
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
	ldr	r3, .L22
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7680
	ldr	r4, .L22+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L22+8
	mov	lr, pc
	bx	r4
	mov	r3, #1632
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L22+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L22+16
	mov	r0, #3
	ldr	r1, .L22+20
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L22+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L23:
	.align	2
.L22:
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
	push	{r4, lr}
	ldr	r4, .L36
	ldrh	r3, [r4]
	tst	r3, #32
	beq	.L25
	ldr	r2, .L36+4
	ldrh	r2, [r2]
	ands	r2, r2, #32
	beq	.L34
.L25:
	tst	r3, #16
	beq	.L24
	ldr	r3, .L36+4
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L35
.L24:
	pop	{r4, lr}
	bx	lr
.L35:
	mov	r2, #1
	ldr	r3, .L36+8
	pop	{r4, lr}
	str	r2, [r3]
	b	goToSpace
.L34:
	ldr	r3, .L36+8
	str	r2, [r3]
	bl	goToSpace
	ldrh	r3, [r4]
	b	.L25
.L37:
	.align	2
.L36:
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
	ldr	r3, .L40
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #24064
	ldr	r4, .L40+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L40+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L40+12
	ldr	r1, .L40+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L40+20
	mov	r0, #3
	ldr	r1, .L40+24
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L40+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L41:
	.align	2
.L40:
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
	ldr	r3, .L44
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7680
	ldr	r4, .L44+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L44+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L44+12
	ldr	r1, .L44+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L44+20
	mov	r0, #3
	ldr	r1, .L44+24
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L44+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L45:
	.align	2
.L44:
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
	ldr	r3, .L48
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #24064
	ldr	r4, .L48+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L48+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L48+12
	ldr	r1, .L48+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L48+20
	mov	r0, #3
	ldr	r1, .L48+24
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L48+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L49:
	.align	2
.L48:
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
	ldr	r3, .L52
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7680
	ldr	r4, .L52+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L52+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L52+12
	ldr	r1, .L52+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L52+20
	mov	r0, #3
	ldr	r1, .L52+24
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L52+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L53:
	.align	2
.L52:
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
	ldr	r3, .L58
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	ip, .L58+4
	ldr	r0, .L58+8
	ldr	r3, .L58+12
	str	r2, [ip, #16]
	str	r2, [r3, #16]
	str	r2, [r0, #16]
	ldr	lr, .L58+16
	ldr	ip, .L58+20
	ldr	r0, .L58+24
	ldr	r3, .L58+28
	str	r2, [ip, #16]
	str	r2, [lr, #20]
	str	r2, [r3, #16]
	str	r2, [r0, #16]
	ldr	lr, .L58+32
	ldr	r0, .L58+36
	ldr	ip, .L58+40
	ldr	r3, .L58+44
	str	r2, [lr, #16]
	str	r2, [ip, #16]
	mov	r1, r2
	str	r2, [r0, #16]
	str	r2, [r0, #36]
	str	r2, [r0, #56]
	add	r2, r3, #280
.L55:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L55
	mov	r3, #67108864
	mov	r1, #4352
	ldr	r2, .L58+48
	ldr	r4, .L58+52
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	mov	r0, #3
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L58+56
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L58+60
	ldr	r2, .L58+64
	ldr	r1, .L58+68
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L58+72
	mov	r0, #3
	ldr	r1, .L58+76
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L58+80
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L59:
	.align	2
.L58:
	.word	hideSprites
	.word	fry
	.word	leela
	.word	alien
	.word	treasureP1
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	blocks
	.word	spaceship
	.word	bullets
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
	ldr	r3, .L75
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	lr, #2
	ldr	r4, .L75+4
	ldr	ip, [r4, #8]
	ldr	r1, [r4, #12]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r0, .L75+8
	ldr	ip, .L75+12
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	str	lr, [ip]
	ldm	r0, {r0, r1}
	ldr	r5, .L75+16
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L70
.L61:
	add	r6, r4, #8
	ldm	r6, {r6, ip}
	ldr	r0, .L75+20
	ldr	lr, [r4, #4]
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	ldm	r0, {r0, r1}
	str	ip, [sp, #8]
	ldr	ip, [r4]
	str	r6, [sp, #12]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L71
.L62:
	add	r6, r4, #8
	ldm	r6, {r6, ip}
	ldr	r0, .L75+24
	ldr	lr, [r4, #4]
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	ldm	r0, {r0, r1}
	str	ip, [sp, #8]
	ldr	ip, [r4]
	str	r6, [sp, #12]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L72
.L63:
	ldr	r0, .L75+28
	ldr	r7, [r4, #8]
	ldr	r6, [r4, #12]
	ldm	r4, {ip, lr}
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	ldm	r0, {r0, r1}
	stm	sp, {ip, lr}
	str	r7, [sp, #12]
	str	r6, [sp, #8]
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L73
.L64:
	ldr	r3, .L75+32
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L60
	ldr	r3, .L75+36
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L74
.L60:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L73:
	bl	goToPlanet4
	b	.L64
.L72:
	bl	goToPlanet3
	b	.L63
.L71:
	bl	goToPlanet2
	b	.L62
.L70:
	bl	goToPlanet1
	b	.L61
.L74:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToPause
.L76:
	.align	2
.L75:
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
	.size	space, .-space
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
	ldr	r3, .L91
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L91+4
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L91+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L77
	ldr	r3, .L91+12
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L77
	ldr	r3, .L91+16
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L87
	cmp	r3, #4
	beq	.L88
	cmp	r3, #5
	beq	.L89
	cmp	r3, #6
	beq	.L90
	pop	{r4, lr}
	b	goToSpace
.L77:
	pop	{r4, lr}
	bx	lr
.L87:
	pop	{r4, lr}
	b	goToPlanet1
.L90:
	pop	{r4, lr}
	b	goToPlanet4
.L88:
	pop	{r4, lr}
	b	goToPlanet2
.L89:
	pop	{r4, lr}
	b	goToPlanet3
.L92:
	.align	2
.L91:
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
	@ link register save eliminated.
	bx	lr
	.size	goToWin, .-goToWin
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
	bx	lr
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
	ldr	r3, .L97
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r2, #0
	mov	r3, #4352
	ldr	r0, .L97+4
	strh	r2, [r1, #16]	@ movhi
	ldr	r4, .L97+8
	strh	r2, [r1, #18]	@ movhi
	strh	r3, [r1]	@ movhi
	strh	r0, [r1, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L97+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L97+16
	ldr	r2, .L97+20
	ldr	r1, .L97+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L97+28
	mov	r0, #3
	ldr	r1, .L97+32
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L97+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L98:
	.align	2
.L97:
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
	push	{r4, lr}
	ldr	r3, .L117
	mov	lr, pc
	bx	r3
	mov	r1, #3
	ldr	r4, .L117+4
	ldrh	r3, [r4]
	ldr	r2, .L117+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L100
	ldr	r2, .L117+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L113
.L100:
	tst	r3, #32
	beq	.L101
	ldr	r3, .L117+12
	ldrh	r4, [r3]
	ands	r4, r4, #32
	beq	.L114
.L101:
	ldr	r3, .L117+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L115
.L103:
	ldr	r2, .L117+20
	ldr	r3, .L117+24
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	movgt	r3, #1
	movle	r3, #0
	cmp	r2, #3
	movgt	r3, #0
	cmp	r3, #0
	bne	.L116
	pop	{r4, lr}
	bx	lr
.L115:
	bl	goToLose
	b	.L103
.L114:
	ldr	r3, .L117+28
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	r1, r4
	ldr	r0, .L117+32
	ldr	r2, .L117+36
	str	r3, [r0, #16]
	str	r3, [r2, #16]
	ldr	lr, .L117+40
	ldr	r2, .L117+44
	ldr	ip, .L117+48
	ldr	r0, .L117+52
	ldr	r3, .L117+56
	str	r4, [lr, #16]
	str	r4, [ip, #16]
	str	r4, [r0, #16]
	str	r4, [r2, #16]
	str	r4, [r2, #36]
	str	r4, [r2, #56]
	add	r2, r3, #280
.L102:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L102
	bl	goToSpace
	b	.L101
.L113:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L100
.L116:
	pop	{r4, lr}
	b	goToSpace
.L118:
	.align	2
.L117:
	.word	updatePlanet1
	.word	oldButtons
	.word	prevState
	.word	buttons
	.word	isLost
	.word	treasureNum
	.word	prevTreasureNum
	.word	hideSprites
	.word	spaceship
	.word	p1
	.word	fry
	.word	blocks
	.word	leela
	.word	alien
	.word	bullets
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
	push	{r4, lr}
	ldr	r3, .L137
	mov	lr, pc
	bx	r3
	mov	r1, #4
	ldr	r4, .L137+4
	ldrh	r3, [r4]
	ldr	r2, .L137+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L120
	ldr	r2, .L137+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L133
.L120:
	tst	r3, #32
	beq	.L121
	ldr	r3, .L137+12
	ldrh	r4, [r3]
	ands	r4, r4, #32
	beq	.L134
.L121:
	ldr	r2, .L137+16
	ldr	r3, .L137+20
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	bgt	.L135
	ldr	r3, .L137+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L136
.L119:
	pop	{r4, lr}
	bx	lr
.L135:
	bl	goToSpace
	ldr	r3, .L137+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L119
.L136:
	pop	{r4, lr}
	b	goToLose
.L134:
	ldr	r3, .L137+28
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	r1, r4
	ldr	r0, .L137+32
	ldr	r2, .L137+36
	str	r3, [r0, #16]
	str	r3, [r2, #16]
	ldr	lr, .L137+40
	ldr	r2, .L137+44
	ldr	ip, .L137+48
	ldr	r0, .L137+52
	ldr	r3, .L137+56
	str	r4, [lr, #16]
	str	r4, [ip, #16]
	str	r4, [r0, #16]
	str	r4, [r2, #16]
	str	r4, [r2, #36]
	str	r4, [r2, #56]
	add	r2, r3, #280
.L122:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L122
	bl	goToSpace
	b	.L121
.L133:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L120
.L138:
	.align	2
.L137:
	.word	updatePlanet2
	.word	oldButtons
	.word	prevState
	.word	buttons
	.word	treasureNum
	.word	prevTreasureNum
	.word	isLost
	.word	hideSprites
	.word	spaceship
	.word	p1
	.word	fry
	.word	blocks
	.word	leela
	.word	alien
	.word	bullets
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
	push	{r4, lr}
	ldr	r3, .L157
	mov	lr, pc
	bx	r3
	mov	r1, #5
	ldr	r4, .L157+4
	ldrh	r3, [r4]
	ldr	r2, .L157+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L140
	ldr	r2, .L157+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L153
.L140:
	tst	r3, #32
	beq	.L141
	ldr	r3, .L157+12
	ldrh	r4, [r3]
	ands	r4, r4, #32
	beq	.L154
.L141:
	ldr	r2, .L157+16
	ldr	r3, .L157+20
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	bgt	.L155
	ldr	r3, .L157+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L156
.L139:
	pop	{r4, lr}
	bx	lr
.L155:
	bl	goToSpace
	ldr	r3, .L157+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L139
.L156:
	pop	{r4, lr}
	b	goToLose
.L154:
	ldr	r3, .L157+28
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	r1, r4
	ldr	r0, .L157+32
	ldr	r2, .L157+36
	str	r3, [r0, #16]
	str	r3, [r2, #16]
	ldr	lr, .L157+40
	ldr	r2, .L157+44
	ldr	ip, .L157+48
	ldr	r0, .L157+52
	ldr	r3, .L157+56
	str	r4, [lr, #16]
	str	r4, [ip, #16]
	str	r4, [r0, #16]
	str	r4, [r2, #16]
	str	r4, [r2, #36]
	str	r4, [r2, #56]
	add	r2, r3, #280
.L142:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L142
	bl	goToSpace
	b	.L141
.L153:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L140
.L158:
	.align	2
.L157:
	.word	updatePlanet3
	.word	oldButtons
	.word	prevState
	.word	buttons
	.word	treasureNum
	.word	prevTreasureNum
	.word	isLost
	.word	hideSprites
	.word	spaceship
	.word	p1
	.word	fry
	.word	blocks
	.word	leela
	.word	alien
	.word	bullets
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
	push	{r4, lr}
	ldr	r3, .L177
	mov	lr, pc
	bx	r3
	mov	r1, #6
	ldr	r4, .L177+4
	ldrh	r3, [r4]
	ldr	r2, .L177+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L160
	ldr	r2, .L177+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L173
.L160:
	tst	r3, #32
	beq	.L161
	ldr	r3, .L177+12
	ldrh	r4, [r3]
	ands	r4, r4, #32
	beq	.L174
.L161:
	ldr	r2, .L177+16
	ldr	r3, .L177+20
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	bgt	.L175
	ldr	r3, .L177+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L176
.L159:
	pop	{r4, lr}
	bx	lr
.L175:
	bl	goToSpace
	ldr	r3, .L177+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L159
.L176:
	pop	{r4, lr}
	b	goToLose
.L174:
	ldr	r3, .L177+28
	mov	lr, pc
	bx	r3
	mov	r0, #1
	mov	r1, r4
	ldr	r2, .L177+32
	ldr	r3, .L177+36
	str	r0, [r2, #16]
	str	r4, [r3, #16]
	ldr	r2, .L177+40
	ldr	ip, .L177+44
	ldr	r0, .L177+48
	ldr	r3, .L177+52
	str	r4, [ip, #16]
	str	r4, [r0, #16]
	str	r4, [r2, #16]
	str	r4, [r2, #36]
	str	r4, [r2, #56]
	add	r2, r3, #280
.L162:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L162
	mov	r2, #1
	ldr	r3, .L177+56
	str	r2, [r3, #16]
	bl	goToSpace
	b	.L161
.L173:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L160
.L178:
	.align	2
.L177:
	.word	updatePlanet4
	.word	oldButtons
	.word	prevState
	.word	buttons
	.word	treasureNum
	.word	prevTreasureNum
	.word	isLost
	.word	hideSprites
	.word	spaceship
	.word	fry
	.word	blocks
	.word	leela
	.word	alien
	.word	bullets
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
	mov	r0, #67108864
	mov	r3, #0
	mov	ip, #4352
	ldr	r2, .L200
	ldr	r1, .L200+4
	push	{r4, r7, fp, lr}
	strh	ip, [r0]	@ movhi
	ldr	r4, .L200+8
	strh	r3, [r2]	@ movhi
	strh	r3, [r1]	@ movhi
	ldr	r7, .L200+12
	ldrh	r3, [r4, #48]
	ldr	r6, .L200+16
	strh	r3, [r7]	@ movhi
	ldr	r3, .L200+20
	mov	lr, pc
	bx	r3
	ldr	r5, .L200+24
	ldrh	r0, [r7]
	ldr	r2, [r6]
	ldr	fp, .L200+28
	ldr	r10, .L200+32
	ldr	r9, .L200+36
	ldr	r8, .L200+40
.L181:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #9
	ldrls	pc, [pc, r2, asl #2]
	b	.L193
.L183:
	.word	.L191
	.word	.L190
	.word	.L189
	.word	.L188
	.word	.L187
	.word	.L186
	.word	.L185
	.word	.L184
	.word	.L193
	.word	.L182
.L182:
	tst	r0, #8
	beq	.L193
	tst	r3, #8
	beq	.L199
.L193:
	mov	r0, r3
	b	.L181
.L184:
	ldr	r3, .L200+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L181
.L185:
	ldr	r3, .L200+48
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L181
.L186:
	ldr	r3, .L200+52
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L181
.L187:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L181
.L188:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L181
.L189:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L181
.L191:
	tst	r0, #8
	beq	.L193
	tst	r3, #8
	bne	.L193
	ldr	r3, .L200+56
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L181
.L190:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L181
.L199:
	ldr	r3, .L200+20
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L181
.L201:
	.align	2
.L200:
	.word	vOff
	.word	hOff
	.word	67109120
	.word	buttons
	.word	state
	.word	goToStart
	.word	oldButtons
	.word	game
	.word	space
	.word	planet1
	.word	planet2
	.word	pause
	.word	planet4
	.word	planet3
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
	ldr	r3, .L207
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L207+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L208:
	.align	2
.L207:
	.word	oldButtons
	.word	buttons
	.size	lose, .-lose
	.comm	shadowOAM,1024,4
	.comm	vOff,2,2
	.comm	hOff,2,2
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	prevState,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
