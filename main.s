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
	ldr	r4, .L64
	sub	sp, sp, #20
	ldr	r3, .L64+4
	mov	lr, pc
	bx	r3
	ldr	r1, [r4, #12]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	ip, [r4, #8]
	str	r1, [sp, #8]
	str	ip, [sp, #12]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r0, .L64+8
	ldr	r5, .L64+12
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L60
.L55:
	add	r6, r4, #8
	ldm	r6, {r6, ip}
	ldr	r0, .L64+16
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
	beq	.L61
.L56:
	add	r6, r4, #8
	ldm	r6, {r6, ip}
	ldr	r0, .L64+20
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
	beq	.L62
.L57:
	ldr	r0, .L64+24
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
	beq	.L63
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L60:
	bl	goToPlanet1
	b	.L55
.L63:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToPlanet4
.L62:
	bl	goToPlanet3
	b	.L57
.L61:
	bl	goToPlanet2
	b	.L56
.L65:
	.align	2
.L64:
	.word	spaceship
	.word	updateSpace
	.word	p1
	.word	collision
	.word	p2
	.word	p3
	.word	p4
	.size	space, .-space
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
	mov	r2, #0
	ldr	r3, .L70+4
	ldr	lr, .L70+8
	str	r2, [r3, #16]
	ldr	ip, .L70+12
	ldr	r0, .L70+16
	ldr	r3, .L70+20
	str	r2, [lr, #16]
	str	r2, [ip, #16]
	str	r2, [r3, #16]
	str	r2, [r0, #16]
	ldr	lr, .L70+24
	ldr	r0, .L70+28
	ldr	ip, .L70+32
	ldr	r3, .L70+36
	str	r2, [lr, #16]
	str	r2, [ip, #20]
	mov	r1, r2
	str	r2, [r0, #16]
	str	r2, [r0, #36]
	str	r2, [r0, #56]
	add	r2, r3, #280
.L67:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L67
	mov	r3, #67108864
	mov	r1, #4352
	ldr	r2, .L70+40
	ldr	r4, .L70+44
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	mov	r0, #3
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L70+48
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L70+52
	ldr	r2, .L70+56
	ldr	r1, .L70+60
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L70+64
	mov	r0, #3
	ldr	r1, .L70+68
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L70+72
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L71:
	.align	2
.L70:
	.word	hideSprites
	.word	fry
	.word	leela
	.word	alien
	.word	life1
	.word	life2
	.word	life3
	.word	blocks
	.word	treasureP1
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
	ldr	r3, .L84
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L84+4
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L84+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L72
	ldr	r3, .L84+12
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L72
	ldr	r3, .L84+16
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L81
	cmp	r3, #4
	beq	.L82
	cmp	r3, #5
	beq	.L83
	pop	{r4, lr}
	b	goToPlanet4
.L72:
	pop	{r4, lr}
	bx	lr
.L81:
	pop	{r4, lr}
	b	goToPlanet1
.L83:
	pop	{r4, lr}
	b	goToPlanet3
.L82:
	pop	{r4, lr}
	b	goToPlanet2
.L85:
	.align	2
.L84:
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
	ldr	r3, .L90
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r2, #0
	mov	r3, #4352
	ldr	r0, .L90+4
	strh	r2, [r1, #16]	@ movhi
	ldr	r4, .L90+8
	strh	r2, [r1, #18]	@ movhi
	strh	r3, [r1]	@ movhi
	strh	r0, [r1, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L90+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L90+16
	ldr	r2, .L90+20
	ldr	r1, .L90+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L90+28
	mov	r0, #3
	ldr	r1, .L90+32
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L90+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L91:
	.align	2
.L90:
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
	ldr	r3, .L110
	mov	lr, pc
	bx	r3
	mov	r1, #3
	ldr	r4, .L110+4
	ldrh	r3, [r4]
	ldr	r2, .L110+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L93
	ldr	r2, .L110+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L106
.L93:
	tst	r3, #32
	beq	.L94
	ldr	r3, .L110+12
	ldrh	r4, [r3]
	ands	r4, r4, #32
	beq	.L107
.L94:
	ldr	r3, .L110+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L108
.L96:
	ldr	r3, .L110+20
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L109
	pop	{r4, lr}
	bx	lr
.L109:
	pop	{r4, lr}
	b	goToSpace
.L108:
	bl	goToLose
	b	.L96
.L107:
	ldr	r3, .L110+24
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	r1, r4
	ldr	r0, .L110+28
	ldr	r2, .L110+32
	str	r3, [r0, #16]
	str	r3, [r2, #16]
	ldr	lr, .L110+36
	ldr	r2, .L110+40
	ldr	ip, .L110+44
	ldr	r0, .L110+48
	ldr	r3, .L110+52
	str	r4, [lr, #16]
	str	r4, [ip, #16]
	str	r4, [r0, #16]
	str	r4, [r2, #16]
	str	r4, [r2, #36]
	str	r4, [r2, #56]
	add	r2, r3, #280
.L95:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L95
	bl	goToSpace
	b	.L94
.L106:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L93
.L111:
	.align	2
.L110:
	.word	updatePlanet1
	.word	oldButtons
	.word	prevState
	.word	buttons
	.word	isLost
	.word	treasureNum
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
	ldr	r3, .L128
	mov	lr, pc
	bx	r3
	mov	r1, #4
	ldr	r4, .L128+4
	ldrh	r3, [r4]
	ldr	r2, .L128+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L113
	ldr	r2, .L128+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L125
.L113:
	tst	r3, #32
	beq	.L114
	ldr	r3, .L128+12
	ldrh	r4, [r3]
	ands	r4, r4, #32
	beq	.L126
.L114:
	ldr	r3, .L128+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L127
	pop	{r4, lr}
	bx	lr
.L127:
	pop	{r4, lr}
	b	goToLose
.L126:
	ldr	r3, .L128+20
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	r1, r4
	ldr	r0, .L128+24
	ldr	r2, .L128+28
	str	r3, [r0, #16]
	str	r3, [r2, #16]
	ldr	lr, .L128+32
	ldr	r2, .L128+36
	ldr	ip, .L128+40
	ldr	r0, .L128+44
	ldr	r3, .L128+48
	str	r4, [lr, #16]
	str	r4, [ip, #16]
	str	r4, [r0, #16]
	str	r4, [r2, #16]
	str	r4, [r2, #36]
	str	r4, [r2, #56]
	add	r2, r3, #280
.L115:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L115
	bl	goToSpace
	b	.L114
.L125:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L113
.L129:
	.align	2
.L128:
	.word	updatePlanet2
	.word	oldButtons
	.word	prevState
	.word	buttons
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
	ldr	r3, .L146
	mov	lr, pc
	bx	r3
	mov	r1, #5
	ldr	r4, .L146+4
	ldrh	r3, [r4]
	ldr	r2, .L146+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L131
	ldr	r2, .L146+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L143
.L131:
	tst	r3, #32
	beq	.L132
	ldr	r3, .L146+12
	ldrh	r4, [r3]
	ands	r4, r4, #32
	beq	.L144
.L132:
	ldr	r3, .L146+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L145
	pop	{r4, lr}
	bx	lr
.L145:
	pop	{r4, lr}
	b	goToLose
.L144:
	ldr	r3, .L146+20
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	r1, r4
	ldr	r0, .L146+24
	ldr	r2, .L146+28
	str	r3, [r0, #16]
	str	r3, [r2, #16]
	ldr	lr, .L146+32
	ldr	r2, .L146+36
	ldr	ip, .L146+40
	ldr	r0, .L146+44
	ldr	r3, .L146+48
	str	r4, [lr, #16]
	str	r4, [ip, #16]
	str	r4, [r0, #16]
	str	r4, [r2, #16]
	str	r4, [r2, #36]
	str	r4, [r2, #56]
	add	r2, r3, #280
.L133:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L133
	bl	goToSpace
	b	.L132
.L143:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L131
.L147:
	.align	2
.L146:
	.word	updatePlanet3
	.word	oldButtons
	.word	prevState
	.word	buttons
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
	ldr	r3, .L164
	mov	lr, pc
	bx	r3
	mov	r1, #6
	ldr	r4, .L164+4
	ldrh	r3, [r4]
	ldr	r2, .L164+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L149
	ldr	r2, .L164+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L161
.L149:
	tst	r3, #32
	beq	.L150
	ldr	r3, .L164+12
	ldrh	r4, [r3]
	ands	r4, r4, #32
	beq	.L162
.L150:
	ldr	r3, .L164+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L163
	pop	{r4, lr}
	bx	lr
.L163:
	pop	{r4, lr}
	b	goToLose
.L162:
	ldr	r3, .L164+20
	mov	lr, pc
	bx	r3
	mov	r0, #1
	mov	r1, r4
	ldr	r2, .L164+24
	ldr	r3, .L164+28
	str	r0, [r2, #16]
	str	r4, [r3, #16]
	ldr	r2, .L164+32
	ldr	ip, .L164+36
	ldr	r0, .L164+40
	ldr	r3, .L164+44
	str	r4, [ip, #16]
	str	r4, [r0, #16]
	str	r4, [r2, #16]
	str	r4, [r2, #36]
	str	r4, [r2, #56]
	add	r2, r3, #280
.L151:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L151
	mov	r2, #1
	ldr	r3, .L164+48
	str	r2, [r3, #16]
	bl	goToSpace
	b	.L150
.L161:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L149
.L165:
	.align	2
.L164:
	.word	updatePlanet4
	.word	oldButtons
	.word	prevState
	.word	buttons
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
	ldr	r2, .L187
	ldr	r1, .L187+4
	push	{r4, r7, fp, lr}
	strh	ip, [r0]	@ movhi
	ldr	r4, .L187+8
	strh	r3, [r2]	@ movhi
	strh	r3, [r1]	@ movhi
	ldr	r7, .L187+12
	ldrh	r3, [r4, #48]
	ldr	r6, .L187+16
	strh	r3, [r7]	@ movhi
	ldr	r3, .L187+20
	mov	lr, pc
	bx	r3
	ldr	r5, .L187+24
	ldrh	r0, [r7]
	ldr	r2, [r6]
	ldr	fp, .L187+28
	ldr	r10, .L187+32
	ldr	r9, .L187+36
	ldr	r8, .L187+40
.L168:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #9
	ldrls	pc, [pc, r2, asl #2]
	b	.L180
.L170:
	.word	.L178
	.word	.L177
	.word	.L176
	.word	.L175
	.word	.L174
	.word	.L173
	.word	.L172
	.word	.L171
	.word	.L180
	.word	.L169
.L169:
	tst	r0, #8
	beq	.L180
	tst	r3, #8
	beq	.L186
.L180:
	mov	r0, r3
	b	.L168
.L171:
	ldr	r3, .L187+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L168
.L172:
	ldr	r3, .L187+48
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L168
.L173:
	ldr	r3, .L187+52
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L168
.L174:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L168
.L175:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L168
.L176:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L168
.L178:
	tst	r0, #8
	beq	.L180
	tst	r3, #8
	bne	.L180
	ldr	r3, .L187+56
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L168
.L177:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L168
.L186:
	ldr	r3, .L187+20
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L168
.L188:
	.align	2
.L187:
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
	ldr	r3, .L194
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L194+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L195:
	.align	2
.L194:
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
