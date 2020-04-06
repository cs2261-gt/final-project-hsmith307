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
	mov	r2, #67108864
	mov	r1, #7680
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L11
	strh	r1, [r2, #8]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L11+4
	mov	lr, pc
	bx	r4
	mov	r3, #3696
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L11+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L11+12
	mov	r0, #3
	ldr	r1, .L11+16
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L11+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L12:
	.align	2
.L11:
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
	ldr	r3, .L108
	mov	lr, pc
	bx	r3
	mov	r1, #3
	ldr	r4, .L108+4
	ldrh	r3, [r4]
	ldr	r2, .L108+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L93
	ldr	r2, .L108+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L104
.L93:
	tst	r3, #32
	beq	.L94
	ldr	r3, .L108+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L105
.L94:
	ldr	r3, .L108+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L106
.L95:
	ldr	r3, .L108+20
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L107
	pop	{r4, lr}
	bx	lr
.L107:
	pop	{r4, lr}
	b	goToSpace
.L106:
	bl	goToLose
	b	.L95
.L105:
	bl	goToSpace
	b	.L94
.L104:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L93
.L109:
	.align	2
.L108:
	.word	updatePlanet1
	.word	oldButtons
	.word	prevState
	.word	buttons
	.word	isLost
	.word	treasureNum
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
	ldr	r3, .L124
	mov	lr, pc
	bx	r3
	mov	r1, #4
	ldr	r4, .L124+4
	ldrh	r3, [r4]
	ldr	r2, .L124+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L111
	ldr	r2, .L124+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L121
.L111:
	tst	r3, #32
	beq	.L112
	ldr	r3, .L124+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L122
.L112:
	ldr	r3, .L124+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L123
	pop	{r4, lr}
	bx	lr
.L123:
	pop	{r4, lr}
	b	goToLose
.L122:
	bl	goToSpace
	b	.L112
.L121:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L111
.L125:
	.align	2
.L124:
	.word	updatePlanet2
	.word	oldButtons
	.word	prevState
	.word	buttons
	.word	isLost
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
	ldr	r3, .L140
	mov	lr, pc
	bx	r3
	mov	r1, #5
	ldr	r4, .L140+4
	ldrh	r3, [r4]
	ldr	r2, .L140+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L127
	ldr	r2, .L140+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L137
.L127:
	tst	r3, #32
	beq	.L128
	ldr	r3, .L140+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L138
.L128:
	ldr	r3, .L140+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L139
	pop	{r4, lr}
	bx	lr
.L139:
	pop	{r4, lr}
	b	goToLose
.L138:
	bl	goToSpace
	b	.L128
.L137:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L127
.L141:
	.align	2
.L140:
	.word	updatePlanet3
	.word	oldButtons
	.word	prevState
	.word	buttons
	.word	isLost
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
	ldr	r3, .L156
	mov	lr, pc
	bx	r3
	mov	r1, #6
	ldr	r4, .L156+4
	ldrh	r3, [r4]
	ldr	r2, .L156+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L143
	ldr	r2, .L156+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L153
.L143:
	tst	r3, #32
	beq	.L144
	ldr	r3, .L156+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L154
.L144:
	ldr	r3, .L156+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L155
	pop	{r4, lr}
	bx	lr
.L155:
	pop	{r4, lr}
	b	goToLose
.L154:
	bl	goToSpace
	b	.L144
.L153:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L143
.L157:
	.align	2
.L156:
	.word	updatePlanet4
	.word	oldButtons
	.word	prevState
	.word	buttons
	.word	isLost
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
	ldr	r2, .L179
	ldr	r1, .L179+4
	push	{r4, r7, fp, lr}
	strh	ip, [r0]	@ movhi
	ldr	r4, .L179+8
	strh	r3, [r2]	@ movhi
	strh	r3, [r1]	@ movhi
	ldr	r7, .L179+12
	ldrh	r3, [r4, #48]
	ldr	r6, .L179+16
	strh	r3, [r7]	@ movhi
	ldr	r3, .L179+20
	mov	lr, pc
	bx	r3
	ldr	r5, .L179+24
	ldrh	r0, [r7]
	ldr	r2, [r6]
	ldr	fp, .L179+28
	ldr	r10, .L179+32
	ldr	r9, .L179+36
	ldr	r8, .L179+40
.L160:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #9
	ldrls	pc, [pc, r2, asl #2]
	b	.L172
.L162:
	.word	.L170
	.word	.L169
	.word	.L168
	.word	.L167
	.word	.L166
	.word	.L165
	.word	.L164
	.word	.L163
	.word	.L172
	.word	.L161
.L161:
	tst	r0, #8
	beq	.L172
	tst	r3, #8
	beq	.L178
.L172:
	mov	r0, r3
	b	.L160
.L163:
	ldr	r3, .L179+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L160
.L164:
	ldr	r3, .L179+48
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L160
.L165:
	ldr	r3, .L179+52
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L160
.L166:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L160
.L167:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L160
.L168:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L160
.L170:
	tst	r0, #8
	beq	.L172
	tst	r3, #8
	bne	.L172
	ldr	r3, .L179+56
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L160
.L169:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L160
.L178:
	ldr	r3, .L179+20
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L160
.L180:
	.align	2
.L179:
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
	ldr	r3, .L186
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L186+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L187:
	.align	2
.L186:
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
