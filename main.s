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
	ldr	r0, .L4
	ldr	r1, .L4+4
	ldr	r2, .L4+8
	ldr	r3, .L4+12
	strh	r4, [r0]	@ movhi
	strh	r4, [r1]	@ movhi
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r2, #7680
	ldr	r1, .L4+16
	ldr	r0, .L4+20
	ldr	lr, .L4+24
	ldr	ip, .L4+28
	strh	r2, [r3, #8]	@ movhi
	str	r4, [r1, #16]
	str	r4, [r0, #16]
	ldr	r3, .L4+32
	ldr	r2, .L4+36
	ldr	r1, .L4+40
	ldr	r0, .L4+44
	str	r4, [lr, #16]
	str	r4, [ip, #16]
	ldr	lr, .L4+48
	ldr	ip, .L4+52
	ldr	r5, .L4+56
	str	r4, [r3, #16]
	str	r4, [r2, #16]
	str	r4, [r1, #16]
	str	r4, [r0, #16]
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L4+60
	str	r4, [lr, #16]
	str	r4, [ip, #16]
	mov	lr, pc
	bx	r5
	mov	r3, #1936
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+64
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+68
	ldr	r1, .L4+72
	mov	lr, pc
	bx	r5
	ldr	r3, .L4+76
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	hOff
	.word	vOff
	.word	isLost
	.word	hideSprites
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	life1
	.word	life2
	.word	life3
	.word	life4
	.word	life5
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
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L18
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	ldrh	r3, [r1]
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
	ldr	r3, .L80
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	lr, #2
	ldr	r4, .L80+4
	ldr	ip, [r4, #8]
	ldr	r1, [r4, #12]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	r0, .L80+8
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	ip, .L80+12
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	str	lr, [ip]
	ldm	r0, {r0, r1}
	ldr	r5, .L80+16
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L74
.L61:
	add	r6, r4, #8
	ldm	r6, {r6, ip}
	ldr	r0, .L80+20
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
	beq	.L75
.L62:
	add	r6, r4, #8
	ldm	r6, {r6, ip}
	ldr	r0, .L80+24
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
	beq	.L76
.L63:
	ldr	r7, [r4, #8]
	ldr	r6, [r4, #12]
	ldm	r4, {ip, lr}
	ldr	r0, .L80+28
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	ldm	r0, {r0, r1}
	stm	sp, {ip, lr}
	str	r7, [sp, #12]
	str	r6, [sp, #8]
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L77
.L64:
	ldr	r4, .L80+32
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L65
	ldr	r2, .L80+36
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L78
.L65:
	tst	r3, #1
	beq	.L60
	ldr	r3, .L80+36
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L79
.L60:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L77:
	bl	goToPlanet4
	b	.L64
.L76:
	bl	goToPlanet3
	b	.L63
.L75:
	bl	goToPlanet2
	b	.L62
.L74:
	bl	goToPlanet1
	b	.L61
.L79:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToStart
.L78:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L65
.L81:
	.align	2
.L80:
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
	ldr	r3, .L96
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L96+4
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L96+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L82
	ldr	r3, .L96+12
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L82
	ldr	r3, .L96+16
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L92
	cmp	r3, #4
	beq	.L93
	cmp	r3, #5
	beq	.L94
	cmp	r3, #6
	beq	.L95
	pop	{r4, lr}
	b	goToSpace
.L82:
	pop	{r4, lr}
	bx	lr
.L92:
	pop	{r4, lr}
	b	goToPlanet1
.L95:
	pop	{r4, lr}
	b	goToPlanet4
.L93:
	pop	{r4, lr}
	b	goToPlanet2
.L94:
	pop	{r4, lr}
	b	goToPlanet3
.L97:
	.align	2
.L96:
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
	ldr	r3, .L102
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r2, #0
	mov	r3, #4352
	ldr	r0, .L102+4
	strh	r2, [r1, #16]	@ movhi
	ldr	r4, .L102+8
	strh	r2, [r1, #18]	@ movhi
	strh	r3, [r1]	@ movhi
	strh	r0, [r1, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L102+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L102+16
	ldr	r2, .L102+20
	ldr	r1, .L102+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L102+28
	mov	r0, #3
	ldr	r1, .L102+32
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L102+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L103:
	.align	2
.L102:
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
	ldr	r3, .L122
	mov	lr, pc
	bx	r3
	mov	r1, #3
	ldr	r4, .L122+4
	ldrh	r3, [r4]
	ldr	r2, .L122+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L105
	ldr	r2, .L122+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L118
.L105:
	tst	r3, #32
	beq	.L106
	ldr	r3, .L122+12
	ldrh	r4, [r3]
	ands	r4, r4, #32
	beq	.L119
.L106:
	ldr	r3, .L122+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L120
.L108:
	ldr	r2, .L122+20
	ldr	r3, .L122+24
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	movgt	r3, #1
	movle	r3, #0
	cmp	r2, #3
	movgt	r3, #0
	cmp	r3, #0
	bne	.L121
	pop	{r4, lr}
	bx	lr
.L120:
	bl	goToLose
	b	.L108
.L119:
	ldr	r3, .L122+28
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	r1, r4
	ldr	r0, .L122+32
	ldr	r2, .L122+36
	str	r3, [r0, #16]
	str	r3, [r2, #16]
	ldr	lr, .L122+40
	ldr	r2, .L122+44
	ldr	ip, .L122+48
	ldr	r0, .L122+52
	ldr	r3, .L122+56
	str	r4, [lr, #16]
	str	r4, [ip, #16]
	str	r4, [r0, #16]
	str	r4, [r2, #16]
	str	r4, [r2, #36]
	str	r4, [r2, #56]
	add	r2, r3, #280
.L107:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L107
	bl	goToSpace
	b	.L106
.L118:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L105
.L121:
	pop	{r4, lr}
	b	goToSpace
.L123:
	.align	2
.L122:
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
	ldr	r3, .L142
	mov	lr, pc
	bx	r3
	mov	r1, #4
	ldr	r4, .L142+4
	ldrh	r3, [r4]
	ldr	r2, .L142+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L125
	ldr	r2, .L142+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L138
.L125:
	tst	r3, #32
	beq	.L126
	ldr	r3, .L142+12
	ldrh	r4, [r3]
	ands	r4, r4, #32
	beq	.L139
.L126:
	ldr	r2, .L142+16
	ldr	r3, .L142+20
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	bgt	.L140
	ldr	r3, .L142+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L141
.L124:
	pop	{r4, lr}
	bx	lr
.L140:
	bl	goToSpace
	ldr	r3, .L142+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L124
.L141:
	pop	{r4, lr}
	b	goToLose
.L139:
	ldr	r3, .L142+28
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	r1, r4
	ldr	r0, .L142+32
	ldr	r2, .L142+36
	str	r3, [r0, #16]
	str	r3, [r2, #16]
	ldr	lr, .L142+40
	ldr	r2, .L142+44
	ldr	ip, .L142+48
	ldr	r0, .L142+52
	ldr	r3, .L142+56
	str	r4, [lr, #16]
	str	r4, [ip, #16]
	str	r4, [r0, #16]
	str	r4, [r2, #16]
	str	r4, [r2, #36]
	str	r4, [r2, #56]
	add	r2, r3, #280
.L127:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L127
	bl	goToSpace
	b	.L126
.L138:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L125
.L143:
	.align	2
.L142:
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
	ldr	r3, .L162
	mov	lr, pc
	bx	r3
	mov	r1, #5
	ldr	r4, .L162+4
	ldrh	r3, [r4]
	ldr	r2, .L162+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L145
	ldr	r2, .L162+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L158
.L145:
	tst	r3, #32
	beq	.L146
	ldr	r3, .L162+12
	ldrh	r4, [r3]
	ands	r4, r4, #32
	beq	.L159
.L146:
	ldr	r2, .L162+16
	ldr	r3, .L162+20
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	bgt	.L160
	ldr	r3, .L162+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L161
.L144:
	pop	{r4, lr}
	bx	lr
.L160:
	bl	goToSpace
	ldr	r3, .L162+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L144
.L161:
	pop	{r4, lr}
	b	goToLose
.L159:
	ldr	r3, .L162+28
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	r1, r4
	ldr	r0, .L162+32
	ldr	r2, .L162+36
	str	r3, [r0, #16]
	str	r3, [r2, #16]
	ldr	lr, .L162+40
	ldr	r2, .L162+44
	ldr	ip, .L162+48
	ldr	r0, .L162+52
	ldr	r3, .L162+56
	str	r4, [lr, #16]
	str	r4, [ip, #16]
	str	r4, [r0, #16]
	str	r4, [r2, #16]
	str	r4, [r2, #36]
	str	r4, [r2, #56]
	add	r2, r3, #280
.L147:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L147
	bl	goToSpace
	b	.L146
.L158:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L145
.L163:
	.align	2
.L162:
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
	ldr	r3, .L182
	mov	lr, pc
	bx	r3
	mov	r1, #6
	ldr	r4, .L182+4
	ldrh	r3, [r4]
	ldr	r2, .L182+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L165
	ldr	r2, .L182+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L178
.L165:
	tst	r3, #32
	beq	.L166
	ldr	r3, .L182+12
	ldrh	r4, [r3]
	ands	r4, r4, #32
	beq	.L179
.L166:
	ldr	r2, .L182+16
	ldr	r3, .L182+20
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	bgt	.L180
	ldr	r3, .L182+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L181
.L164:
	pop	{r4, lr}
	bx	lr
.L180:
	bl	goToSpace
	ldr	r3, .L182+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L164
.L181:
	pop	{r4, lr}
	b	goToLose
.L179:
	ldr	r3, .L182+28
	mov	lr, pc
	bx	r3
	mov	r0, #1
	mov	r1, r4
	ldr	r2, .L182+32
	ldr	r3, .L182+36
	str	r0, [r2, #16]
	str	r4, [r3, #16]
	ldr	r2, .L182+40
	ldr	ip, .L182+44
	ldr	r0, .L182+48
	ldr	r3, .L182+52
	str	r4, [ip, #16]
	str	r4, [r0, #16]
	str	r4, [r2, #16]
	str	r4, [r2, #36]
	str	r4, [r2, #56]
	add	r2, r3, #280
.L167:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L167
	mov	r2, #1
	ldr	r3, .L182+56
	str	r2, [r3, #16]
	bl	goToSpace
	b	.L166
.L178:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L165
.L183:
	.align	2
.L182:
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
	push	{r4, r7, fp, lr}
	mov	r1, #4352
	mov	r7, #0
	mov	r8, #67108864
	ldr	r2, .L205
	ldr	r3, .L205+4
	strh	r1, [r8]	@ movhi
	ldr	r5, .L205+8
	strh	r7, [r2]	@ movhi
	strh	r7, [r3]	@ movhi
	ldr	r9, .L205+12
	ldrh	r3, [r5, #48]
	ldr	r6, .L205+16
	strh	r3, [r9]	@ movhi
	ldr	r3, .L205+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L205+24
	ldrh	r0, [r9]
	ldr	r2, [r6]
	ldr	fp, .L205+28
	ldr	r10, .L205+32
.L186:
	strh	r0, [r4]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r9]	@ movhi
	cmp	r2, #9
	ldrls	pc, [pc, r2, asl #2]
	b	.L199
.L188:
	.word	.L196
	.word	.L195
	.word	.L194
	.word	.L193
	.word	.L192
	.word	.L191
	.word	.L190
	.word	.L189
	.word	.L199
	.word	.L187
.L187:
	tst	r0, #8
	beq	.L199
	tst	r3, #8
	beq	.L204
.L199:
	mov	r0, r3
	b	.L186
.L189:
	ldr	r3, .L205+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
.L203:
	ldrh	r0, [r9]
	b	.L186
.L190:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L186
.L191:
	ldr	r3, .L205+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L186
.L192:
	ldr	r3, .L205+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L186
.L193:
	ldr	r3, .L205+48
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L186
.L194:
	ldr	r3, .L205+52
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L186
.L196:
	strh	r7, [r8, #16]	@ movhi
	strh	r7, [r8, #18]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L203
	ldrh	r0, [r9]
	tst	r0, #8
	bne	.L186
	ldr	r3, .L205+56
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L186
.L195:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L186
.L204:
	ldr	r3, .L205+20
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L186
.L206:
	.align	2
.L205:
	.word	hOff
	.word	vOff
	.word	67109120
	.word	buttons
	.word	state
	.word	goToStart
	.word	oldButtons
	.word	game
	.word	planet4
	.word	pause
	.word	planet3
	.word	planet2
	.word	planet1
	.word	space
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
	ldr	r3, .L212
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L212+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L213:
	.align	2
.L212:
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
