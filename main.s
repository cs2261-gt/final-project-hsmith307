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
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.0, %function
win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L11
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L12:
	.align	2
.L11:
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
	ldr	r3, .L15
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7680
	ldr	r4, .L15+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L15+8
	mov	lr, pc
	bx	r4
	mov	r3, #3696
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L15+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L15+16
	mov	r0, #3
	ldr	r1, .L15+20
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L15+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L16:
	.align	2
.L15:
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
	ldr	r1, .L22
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	ldrh	r3, [r1]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L22+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToGame
.L23:
	.align	2
.L22:
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
	ldr	r3, .L26
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7680
	ldr	r4, .L26+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L26+8
	mov	lr, pc
	bx	r4
	mov	r3, #1632
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L26+12
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L26+16
	mov	r0, #3
	ldr	r1, .L26+20
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L26+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L27:
	.align	2
.L26:
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
	ldr	r4, .L40
	ldrh	r3, [r4]
	tst	r3, #32
	beq	.L29
	ldr	r2, .L40+4
	ldrh	r2, [r2]
	ands	r2, r2, #32
	beq	.L38
.L29:
	tst	r3, #16
	beq	.L28
	ldr	r3, .L40+4
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L39
.L28:
	pop	{r4, lr}
	bx	lr
.L39:
	mov	r2, #1
	ldr	r3, .L40+8
	pop	{r4, lr}
	str	r2, [r3]
	b	goToSpace
.L38:
	ldr	r3, .L40+8
	str	r2, [r3]
	bl	goToSpace
	ldrh	r3, [r4]
	b	.L29
.L41:
	.align	2
.L40:
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
	ldr	r3, .L44
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #24064
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
	mov	r3, #2048
	ldr	r2, .L44+20
	mov	r0, #3
	ldr	r1, .L44+24
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L44+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L45:
	.align	2
.L44:
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
	ldr	r3, .L48
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7680
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
	mov	r3, #1024
	ldr	r2, .L48+20
	mov	r0, #3
	ldr	r1, .L48+24
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L48+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L49:
	.align	2
.L48:
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
	ldr	r3, .L52
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #24064
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
	mov	r3, #2048
	ldr	r2, .L52+20
	mov	r0, #3
	ldr	r1, .L52+24
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L52+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L53:
	.align	2
.L52:
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
	ldr	r3, .L56
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r2, #0
	mov	r0, #7680
	strh	r2, [r1, #16]	@ movhi
	ldr	r4, .L56+4
	strh	r2, [r1, #18]	@ movhi
	mov	r3, #256
	strh	r0, [r1, #8]	@ movhi
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
	mov	r2, #6
	ldr	r3, .L56+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L57:
	.align	2
.L56:
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
	ldr	r3, .L62
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	ip, .L62+4
	ldr	r0, .L62+8
	ldr	r3, .L62+12
	str	r2, [ip, #16]
	str	r2, [r3, #16]
	str	r2, [r0, #16]
	ldr	lr, .L62+16
	ldr	ip, .L62+20
	ldr	r0, .L62+24
	ldr	r3, .L62+28
	str	r2, [ip, #16]
	str	r2, [lr, #20]
	str	r2, [r3, #16]
	str	r2, [r0, #16]
	ldr	lr, .L62+32
	ldr	r0, .L62+36
	ldr	ip, .L62+40
	ldr	r3, .L62+44
	str	r2, [lr, #16]
	str	r2, [ip, #16]
	mov	r1, r2
	str	r2, [r0, #16]
	str	r2, [r0, #36]
	str	r2, [r0, #56]
	add	r2, r3, #280
.L59:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L59
	mov	r3, #67108864
	mov	r1, #4352
	ldr	r2, .L62+48
	ldr	r4, .L62+52
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	mov	r0, #3
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L62+56
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L62+60
	ldr	r2, .L62+64
	ldr	r1, .L62+68
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L62+72
	mov	r0, #3
	ldr	r1, .L62+76
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L62+80
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L63:
	.align	2
.L62:
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
	ldr	r3, .L78
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L78+4
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L78+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L64
	ldr	r3, .L78+12
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L64
	ldr	r3, .L78+16
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L74
	cmp	r3, #4
	beq	.L75
	cmp	r3, #5
	beq	.L76
	cmp	r3, #6
	beq	.L77
	pop	{r4, lr}
	b	goToSpace
.L64:
	pop	{r4, lr}
	bx	lr
.L74:
	pop	{r4, lr}
	b	goToPlanet1
.L77:
	pop	{r4, lr}
	b	goToPlanet4
.L75:
	pop	{r4, lr}
	b	goToPlanet2
.L76:
	pop	{r4, lr}
	b	goToPlanet3
.L79:
	.align	2
.L78:
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
	mov	r2, #67108864
	mov	r1, #7680
	push	{r4, lr}
	mov	r3, #256
	strh	r1, [r2, #8]	@ movhi
	ldr	r4, .L84
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L84+4
	mov	lr, pc
	bx	r4
	mov	r3, #48
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L84+8
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L84+12
	ldr	r1, .L84+16
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L84+20
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	ip, .L84+24
	ldr	r0, .L84+28
	ldr	r3, .L84+32
	str	r2, [ip, #16]
	str	r2, [r3, #16]
	str	r2, [r0, #16]
	ldr	lr, .L84+36
	ldr	ip, .L84+40
	ldr	r0, .L84+44
	ldr	r3, .L84+48
	str	r2, [ip, #16]
	str	r2, [lr, #20]
	str	r2, [r3, #16]
	str	r2, [r0, #16]
	ldr	lr, .L84+52
	ldr	r0, .L84+56
	ldr	ip, .L84+60
	ldr	r3, .L84+64
	str	r2, [lr, #16]
	str	r2, [ip, #16]
	mov	r1, r2
	str	r2, [r0, #16]
	str	r2, [r0, #36]
	str	r2, [r0, #56]
	add	r2, r3, #280
.L81:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L81
	mov	r2, #8
	ldr	r3, .L84+68
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L85:
	.align	2
.L84:
	.word	DMANow
	.word	winPal
	.word	winTiles
	.word	100724736
	.word	winMap
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
	ldr	r3, .L108
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	lr, #2
	ldr	r4, .L108+4
	ldr	ip, [r4, #8]
	ldr	r1, [r4, #12]
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	ldr	r0, .L108+8
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	ip, .L108+12
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	str	lr, [ip]
	ldm	r0, {r0, r1}
	ldr	r5, .L108+16
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L101
.L87:
	add	r6, r4, #8
	ldm	r6, {r6, ip}
	ldr	r0, .L108+20
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
	beq	.L102
.L88:
	add	r6, r4, #8
	ldm	r6, {r6, ip}
	ldr	r0, .L108+24
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
	beq	.L103
.L89:
	ldr	r7, [r4, #8]
	ldr	r6, [r4, #12]
	ldm	r4, {ip, lr}
	ldr	r0, .L108+28
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	ldm	r0, {r0, r1}
	stm	sp, {ip, lr}
	str	r7, [sp, #12]
	str	r6, [sp, #8]
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L104
.L90:
	ldr	r4, .L108+32
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L91
	ldr	r2, .L108+36
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L105
.L91:
	tst	r3, #1
	beq	.L92
	ldr	r3, .L108+36
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L106
.L92:
	ldr	r3, .L108+40
	ldr	r3, [r3]
	cmp	r3, #3
	bgt	.L107
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L107:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToWin
.L104:
	bl	goToPlanet4
	b	.L90
.L101:
	bl	goToPlanet1
	b	.L87
.L103:
	bl	goToPlanet3
	b	.L89
.L102:
	bl	goToPlanet2
	b	.L88
.L106:
	bl	goToStart
	b	.L92
.L105:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L91
.L109:
	.align	2
.L108:
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
	.word	treasureNum
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
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L112
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	ldrh	r3, [r1]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L113:
	.align	2
.L112:
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
	ldr	r3, .L116
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r2, #0
	mov	r3, #4352
	ldr	r0, .L116+4
	strh	r2, [r1, #16]	@ movhi
	ldr	r4, .L116+8
	strh	r2, [r1, #18]	@ movhi
	strh	r3, [r1]	@ movhi
	strh	r0, [r1, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L116+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L116+16
	ldr	r2, .L116+20
	ldr	r1, .L116+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L116+28
	mov	r0, #3
	ldr	r1, .L116+32
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L116+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L117:
	.align	2
.L116:
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
	ldr	r3, .L136
	mov	lr, pc
	bx	r3
	mov	r1, #3
	ldr	r4, .L136+4
	ldrh	r3, [r4]
	ldr	r2, .L136+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L119
	ldr	r2, .L136+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L132
.L119:
	tst	r3, #32
	beq	.L120
	ldr	r3, .L136+12
	ldrh	r4, [r3]
	ands	r4, r4, #32
	beq	.L133
.L120:
	ldr	r3, .L136+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L134
.L122:
	ldr	r2, .L136+20
	ldr	r3, .L136+24
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	movgt	r3, #1
	movle	r3, #0
	cmp	r2, #3
	movgt	r3, #0
	cmp	r3, #0
	bne	.L135
	pop	{r4, lr}
	bx	lr
.L134:
	bl	goToLose
	b	.L122
.L133:
	ldr	r3, .L136+28
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	r1, r4
	ldr	ip, .L136+32
	ldr	r0, .L136+36
	ldr	r2, .L136+40
	str	r3, [ip, #16]
	str	r3, [r0, #16]
	str	r4, [r2, #16]
	ldr	lr, .L136+44
	ldr	r2, .L136+48
	ldr	ip, .L136+52
	ldr	r0, .L136+56
	ldr	r3, .L136+60
	str	r4, [lr, #16]
	str	r4, [ip, #16]
	str	r4, [r0, #48]
	str	r4, [r2, #16]
	str	r4, [r2, #36]
	str	r4, [r2, #56]
	add	r2, r3, #280
.L121:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L121
	bl	goToSpace
	b	.L120
.L132:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L119
.L135:
	pop	{r4, lr}
	b	goToSpace
.L137:
	.align	2
.L136:
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
	.word	leela
	.word	blocks
	.word	alien
	.word	treasure
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
	ldr	r3, .L156
	mov	lr, pc
	bx	r3
	mov	r1, #4
	ldr	r4, .L156+4
	ldrh	r3, [r4]
	ldr	r2, .L156+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L139
	ldr	r2, .L156+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L152
.L139:
	tst	r3, #32
	beq	.L140
	ldr	r3, .L156+12
	ldrh	r4, [r3]
	ands	r4, r4, #32
	beq	.L153
.L140:
	ldr	r2, .L156+16
	ldr	r3, .L156+20
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	bgt	.L154
	ldr	r3, .L156+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L155
.L138:
	pop	{r4, lr}
	bx	lr
.L154:
	bl	goToSpace
	ldr	r3, .L156+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L138
.L155:
	pop	{r4, lr}
	b	goToLose
.L153:
	ldr	r3, .L156+28
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	r1, r4
	ldr	ip, .L156+32
	ldr	r0, .L156+36
	ldr	r2, .L156+40
	str	r3, [ip, #16]
	str	r3, [r0, #16]
	str	r4, [r2, #16]
	ldr	lr, .L156+44
	ldr	r2, .L156+48
	ldr	ip, .L156+52
	ldr	r0, .L156+56
	ldr	r3, .L156+60
	str	r4, [lr, #16]
	str	r4, [ip, #16]
	str	r4, [r0, #76]
	str	r4, [r2, #16]
	str	r4, [r2, #36]
	str	r4, [r2, #56]
	add	r2, r3, #280
.L141:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L141
	bl	goToSpace
	b	.L140
.L152:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L139
.L157:
	.align	2
.L156:
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
	.word	leela
	.word	blocks
	.word	alien
	.word	treasure
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
	ldr	r3, .L176
	mov	lr, pc
	bx	r3
	mov	r1, #5
	ldr	r4, .L176+4
	ldrh	r3, [r4]
	ldr	r2, .L176+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L159
	ldr	r2, .L176+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L172
.L159:
	tst	r3, #32
	beq	.L160
	ldr	r3, .L176+12
	ldrh	r4, [r3]
	ands	r4, r4, #32
	beq	.L173
.L160:
	ldr	r2, .L176+16
	ldr	r3, .L176+20
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	bgt	.L174
	ldr	r3, .L176+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L175
.L158:
	pop	{r4, lr}
	bx	lr
.L174:
	bl	goToSpace
	ldr	r3, .L176+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L158
.L175:
	pop	{r4, lr}
	b	goToLose
.L173:
	ldr	r3, .L176+28
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	r1, r4
	ldr	ip, .L176+32
	ldr	r0, .L176+36
	ldr	r2, .L176+40
	str	r3, [ip, #16]
	str	r3, [r0, #16]
	str	r4, [r2, #16]
	ldr	lr, .L176+44
	ldr	r2, .L176+48
	ldr	ip, .L176+52
	ldr	r0, .L176+56
	ldr	r3, .L176+60
	str	r4, [lr, #16]
	str	r4, [ip, #16]
	str	r4, [r0, #104]
	str	r4, [r2, #16]
	str	r4, [r2, #36]
	str	r4, [r2, #56]
	add	r2, r3, #280
.L161:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L161
	bl	goToSpace
	b	.L160
.L172:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L159
.L177:
	.align	2
.L176:
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
	.word	leela
	.word	blocks
	.word	alien
	.word	treasure
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
	ldr	r3, .L196
	mov	lr, pc
	bx	r3
	mov	r1, #6
	ldr	r4, .L196+4
	ldrh	r3, [r4]
	ldr	r2, .L196+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L179
	ldr	r2, .L196+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L192
.L179:
	tst	r3, #32
	beq	.L180
	ldr	r3, .L196+12
	ldrh	r4, [r3]
	ands	r4, r4, #32
	beq	.L193
.L180:
	ldr	r2, .L196+16
	ldr	r3, .L196+20
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	bgt	.L194
	ldr	r3, .L196+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L195
.L178:
	pop	{r4, lr}
	bx	lr
.L194:
	bl	goToSpace
	ldr	r3, .L196+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L178
.L195:
	pop	{r4, lr}
	b	goToLose
.L193:
	ldr	r3, .L196+28
	mov	lr, pc
	bx	r3
	mov	ip, #1
	mov	r1, r4
	ldr	r0, .L196+32
	ldr	r2, .L196+36
	ldr	r3, .L196+40
	str	ip, [r0, #16]
	str	r4, [r3, #16]
	str	r4, [r2, #16]
	ldr	ip, .L196+44
	ldr	r2, .L196+48
	ldr	r0, .L196+52
	ldr	r3, .L196+56
	str	r4, [ip, #16]
	str	r4, [r0, #132]
	str	r4, [r2, #16]
	str	r4, [r2, #36]
	str	r4, [r2, #56]
	add	r2, r3, #280
.L181:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L181
	mov	r2, #1
	ldr	r3, .L196+60
	str	r2, [r3, #16]
	bl	goToSpace
	b	.L180
.L192:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L179
.L197:
	.align	2
.L196:
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
	.word	leela
	.word	alien
	.word	blocks
	.word	treasure
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
	ldr	r2, .L219
	ldr	r3, .L219+4
	strh	r1, [r8]	@ movhi
	ldr	r5, .L219+8
	strh	r7, [r3]	@ movhi
	strh	r7, [r2]	@ movhi
	ldr	r9, .L219+12
	ldrh	r2, [r5, #48]
	ldr	r6, .L219+16
	ldr	r3, .L219+20
	strh	r2, [r9]	@ movhi
	ldr	r4, .L219+24
	mov	lr, pc
	bx	r3
	ldr	fp, .L219+28
	ldrh	r0, [r9]
	ldr	r2, [r6]
	ldr	r10, .L219+32
.L200:
	strh	r0, [r4]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r9]	@ movhi
	cmp	r2, #9
	ldrls	pc, [pc, r2, asl #2]
	b	.L215
.L202:
	.word	.L211
	.word	.L210
	.word	.L209
	.word	.L208
	.word	.L207
	.word	.L206
	.word	.L205
	.word	.L204
	.word	.L203
	.word	.L201
.L201:
	tst	r0, #8
	beq	.L215
	ldr	r3, .L219+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L200
.L203:
	strh	r7, [r8, #16]	@ movhi
	strh	r7, [r8, #18]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L218
	ldr	r3, .L219+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
.L218:
	ldrh	r0, [r9]
	b	.L200
.L204:
	ldr	r3, .L219+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L200
.L205:
	ldr	r3, .L219+48
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L200
.L206:
	ldr	r3, .L219+52
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L200
.L207:
	ldr	r3, .L219+56
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L200
.L208:
	ldr	r3, .L219+60
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L200
.L209:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L200
.L210:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L200
.L211:
	strh	r7, [r8, #16]	@ movhi
	strh	r7, [r8, #18]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L218
	ldrh	r0, [r9]
	tst	r0, #8
	bne	.L200
	ldr	r3, .L219+64
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L200
.L215:
	mov	r0, r3
	b	.L200
.L220:
	.align	2
.L219:
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
	ldr	r3, .L223
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	lose.part.0
.L224:
	.align	2
.L223:
	.word	oldButtons
	.size	lose, .-lose
	.comm	shadowOAM,1024,4
	.comm	vOff,2,2
	.comm	hOff,2,2
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	prevState,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
