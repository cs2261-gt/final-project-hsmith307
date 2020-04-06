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
	mov	r3, #32
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
	mov	ip, #0
	mov	r3, #67108864
	mov	r1, #4352
	push	{r4, lr}
	ldr	r2, .L68
	ldr	r0, .L68+4
	ldr	lr, .L68+8
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r4, .L68+12
	str	ip, [r0, #16]
	str	ip, [lr, #16]
	ldr	r2, .L68+16
	ldr	lr, .L68+20
	ldr	r1, .L68+24
	ldr	r0, .L68+28
	str	ip, [r4, #16]
	str	ip, [r2, #16]
	str	ip, [r1, #16]
	str	ip, [r0, #16]
	ldr	r4, .L68+32
	str	ip, [lr, #16]
	str	ip, [lr, #36]
	str	ip, [lr, #56]
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L68+36
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L68+40
	ldr	r2, .L68+44
	ldr	r1, .L68+48
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L68+52
	mov	r0, #3
	ldr	r1, .L68+56
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L68+60
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L69:
	.align	2
.L68:
	.word	7684
	.word	fry
	.word	leela
	.word	alien
	.word	life1
	.word	blocks
	.word	life2
	.word	life3
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
	ldr	r3, .L82
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L82+4
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L82+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L70
	ldr	r3, .L82+12
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L70
	ldr	r3, .L82+16
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L79
	cmp	r3, #4
	beq	.L80
	cmp	r3, #5
	beq	.L81
	pop	{r4, lr}
	b	goToPlanet4
.L70:
	pop	{r4, lr}
	bx	lr
.L79:
	pop	{r4, lr}
	b	goToPlanet1
.L81:
	pop	{r4, lr}
	b	goToPlanet3
.L80:
	pop	{r4, lr}
	b	goToPlanet2
.L83:
	.align	2
.L82:
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
	ldr	r3, .L88
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r2, #0
	mov	r3, #4352
	ldr	r0, .L88+4
	strh	r2, [r1, #16]	@ movhi
	ldr	r4, .L88+8
	strh	r2, [r1, #18]	@ movhi
	strh	r3, [r1]	@ movhi
	strh	r0, [r1, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L88+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L88+16
	ldr	r2, .L88+20
	ldr	r1, .L88+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L88+28
	mov	r0, #3
	ldr	r1, .L88+32
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L88+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L89:
	.align	2
.L88:
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
	ldr	r3, .L104
	mov	lr, pc
	bx	r3
	mov	r1, #3
	ldr	r4, .L104+4
	ldrh	r3, [r4]
	ldr	r2, .L104+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L91
	ldr	r2, .L104+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L101
.L91:
	tst	r3, #32
	beq	.L92
	ldr	r3, .L104+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L102
.L92:
	ldr	r3, .L104+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L103
	pop	{r4, lr}
	bx	lr
.L103:
	pop	{r4, lr}
	b	goToLose
.L102:
	bl	goToSpace
	b	.L92
.L101:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L91
.L105:
	.align	2
.L104:
	.word	updatePlanet1
	.word	oldButtons
	.word	prevState
	.word	buttons
	.word	isLost
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
	ldr	r3, .L120
	mov	lr, pc
	bx	r3
	mov	r1, #4
	ldr	r4, .L120+4
	ldrh	r3, [r4]
	ldr	r2, .L120+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L107
	ldr	r2, .L120+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L117
.L107:
	tst	r3, #32
	beq	.L108
	ldr	r3, .L120+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L118
.L108:
	ldr	r3, .L120+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L119
	pop	{r4, lr}
	bx	lr
.L119:
	pop	{r4, lr}
	b	goToLose
.L118:
	bl	goToSpace
	b	.L108
.L117:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L107
.L121:
	.align	2
.L120:
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
	ldr	r3, .L136
	mov	lr, pc
	bx	r3
	mov	r1, #5
	ldr	r4, .L136+4
	ldrh	r3, [r4]
	ldr	r2, .L136+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L123
	ldr	r2, .L136+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L133
.L123:
	tst	r3, #32
	beq	.L124
	ldr	r3, .L136+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L134
.L124:
	ldr	r3, .L136+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L135
	pop	{r4, lr}
	bx	lr
.L135:
	pop	{r4, lr}
	b	goToLose
.L134:
	bl	goToSpace
	b	.L124
.L133:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L123
.L137:
	.align	2
.L136:
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
	ldr	r3, .L152
	mov	lr, pc
	bx	r3
	mov	r1, #6
	ldr	r4, .L152+4
	ldrh	r3, [r4]
	ldr	r2, .L152+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L139
	ldr	r2, .L152+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L149
.L139:
	tst	r3, #32
	beq	.L140
	ldr	r3, .L152+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L150
.L140:
	ldr	r3, .L152+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L151
	pop	{r4, lr}
	bx	lr
.L151:
	pop	{r4, lr}
	b	goToLose
.L150:
	bl	goToSpace
	b	.L140
.L149:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L139
.L153:
	.align	2
.L152:
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
	ldr	r2, .L175
	ldr	r1, .L175+4
	push	{r4, r7, fp, lr}
	strh	ip, [r0]	@ movhi
	ldr	r4, .L175+8
	strh	r3, [r2]	@ movhi
	strh	r3, [r1]	@ movhi
	ldr	r7, .L175+12
	ldrh	r3, [r4, #48]
	ldr	r6, .L175+16
	strh	r3, [r7]	@ movhi
	ldr	r3, .L175+20
	mov	lr, pc
	bx	r3
	ldr	r5, .L175+24
	ldrh	r0, [r7]
	ldr	r2, [r6]
	ldr	fp, .L175+28
	ldr	r10, .L175+32
	ldr	r9, .L175+36
	ldr	r8, .L175+40
.L156:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #9
	ldrls	pc, [pc, r2, asl #2]
	b	.L168
.L158:
	.word	.L166
	.word	.L165
	.word	.L164
	.word	.L163
	.word	.L162
	.word	.L161
	.word	.L160
	.word	.L159
	.word	.L168
	.word	.L157
.L157:
	tst	r0, #8
	beq	.L168
	tst	r3, #8
	beq	.L174
.L168:
	mov	r0, r3
	b	.L156
.L159:
	ldr	r3, .L175+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L156
.L160:
	ldr	r3, .L175+48
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L156
.L161:
	ldr	r3, .L175+52
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L156
.L162:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L156
.L163:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L156
.L164:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L156
.L166:
	tst	r0, #8
	beq	.L168
	tst	r3, #8
	bne	.L168
	ldr	r3, .L175+56
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L156
.L165:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L156
.L174:
	ldr	r3, .L175+20
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L156
.L176:
	.align	2
.L175:
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
	ldr	r3, .L182
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L182+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L183:
	.align	2
.L182:
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
