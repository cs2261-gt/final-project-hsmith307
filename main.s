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
	mov	r3, #67108864
	mov	r2, #0
	push	{r4, lr}
	strh	r2, [r3, #16]	@ movhi
	ldr	r4, .L45
	strh	r2, [r3, #18]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L29
	ldr	r2, .L45+4
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L42
.L29:
	tst	r3, #32
	beq	.L30
	ldr	r2, .L45+4
	ldrh	r2, [r2]
	ands	r2, r2, #32
	beq	.L43
.L30:
	tst	r3, #16
	beq	.L28
	ldr	r3, .L45+4
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L44
.L28:
	pop	{r4, lr}
	bx	lr
.L44:
	mov	r2, #1
	ldr	r3, .L45+8
	pop	{r4, lr}
	str	r2, [r3]
	b	goToSpace
.L42:
	bl	goToStart
	ldrh	r3, [r4]
	b	.L29
.L43:
	ldr	r3, .L45+8
	str	r2, [r3]
	bl	goToSpace
	ldrh	r3, [r4]
	b	.L30
.L46:
	.align	2
.L45:
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
	ldr	r3, .L49
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #24064
	ldr	r4, .L49+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L49+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L49+12
	ldr	r1, .L49+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L49+20
	mov	r0, #3
	ldr	r1, .L49+24
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L49+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L50:
	.align	2
.L49:
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
	ldr	r3, .L53
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7680
	ldr	r4, .L53+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L53+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L53+12
	ldr	r1, .L53+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L53+20
	mov	r0, #3
	ldr	r1, .L53+24
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L53+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L54:
	.align	2
.L53:
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
	ldr	r3, .L57
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #24064
	ldr	r4, .L57+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L57+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L57+12
	ldr	r1, .L57+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L57+20
	mov	r0, #3
	ldr	r1, .L57+24
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L57+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L58:
	.align	2
.L57:
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
	ldr	r3, .L61
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r2, #0
	mov	r0, #7680
	strh	r2, [r1, #16]	@ movhi
	ldr	r4, .L61+4
	strh	r2, [r1, #18]	@ movhi
	mov	r3, #256
	strh	r0, [r1, #8]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L61+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L61+12
	ldr	r1, .L61+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L61+20
	mov	r0, #3
	ldr	r1, .L61+24
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L61+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L62:
	.align	2
.L61:
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
	mov	r2, #0
	ldr	r0, .L67+4
	ldr	r3, .L67+8
	str	r2, [r0, #16]
	str	r2, [r3, #16]
	ldr	lr, .L67+12
	ldr	ip, .L67+16
	ldr	r0, .L67+20
	ldr	r3, .L67+24
	str	r2, [lr, #16]
	str	r2, [ip, #16]
	str	r2, [r3, #16]
	str	r2, [r0, #16]
	ldr	lr, .L67+28
	ldr	r0, .L67+32
	ldr	ip, .L67+36
	ldr	r3, .L67+40
	str	r2, [lr, #16]
	str	r2, [ip, #16]
	mov	r1, r2
	str	r2, [r0, #16]
	str	r2, [r0, #36]
	str	r2, [r0, #56]
	add	r2, r3, #280
.L64:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r2, r3
	bne	.L64
	mov	r3, #67108864
	mov	r1, #4352
	ldr	r2, .L67+44
	ldr	r4, .L67+48
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	mov	r0, #3
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L67+52
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L67+56
	ldr	r2, .L67+60
	ldr	r1, .L67+64
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L67+68
	mov	r0, #3
	ldr	r1, .L67+72
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L67+76
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L68:
	.align	2
.L67:
	.word	hideSprites
	.word	fry
	.word	leela
	.word	alien
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
	beq	.L122
	ldr	r2, .L150+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L144
.L122:
	tst	r3, #32
	beq	.L123
	ldr	r3, .L150+12
	ldrh	r4, [r3]
	ands	r4, r4, #32
	beq	.L145
.L123:
	ldr	r3, .L150+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L146
.L125:
	ldr	r3, .L150+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L147
.L126:
	ldr	r4, .L150+24
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L148
.L127:
	cmp	r3, #0
	beq	.L149
.L121:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L149:
	ldr	r3, .L150+28
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #4]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L150+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #32
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r4, .L150+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L121
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	goToSpace
.L148:
	ldr	r3, .L150+40
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #4]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L150+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #32
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r5, .L150+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L128
.L143:
	ldr	r3, [r4]
	b	.L127
.L147:
	bl	goToWin
	b	.L126
.L146:
	bl	goToLose
	b	.L125
.L145:
	ldr	r3, .L150+44
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	r1, r4
	ldr	ip, .L150+48
	ldr	r0, .L150+52
	ldr	r2, .L150+28
	str	r3, [ip, #16]
	str	r3, [r0, #16]
	str	r4, [r2, #16]
	ldr	lr, .L150+40
	ldr	r2, .L150+56
	ldr	ip, .L150+60
	ldr	r0, .L150+32
	ldr	r3, .L150+64
	str	r4, [lr, #16]
	str	r4, [ip, #16]
	str	r4, [r0, #52]
	str	r4, [r2, #16]
	str	r4, [r2, #36]
	str	r4, [r2, #56]
	add	r2, r3, #280
.L124:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L124
	bl	goToSpace
	b	.L123
.L144:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L122
.L128:
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
	.word	hideSprites
	.word	spaceship
	.word	p1
	.word	blocks
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
	push	{r4, r5, lr}
	ldr	r3, .L181
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	r1, #4
	ldr	r4, .L181+4
	ldrh	r3, [r4]
	ldr	r2, .L181+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L153
	ldr	r2, .L181+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L175
.L153:
	tst	r3, #32
	beq	.L154
	ldr	r3, .L181+12
	ldrh	r4, [r3]
	ands	r4, r4, #32
	beq	.L176
.L154:
	ldr	r4, .L181+16
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L177
.L156:
	cmp	r3, #0
	beq	.L178
.L159:
	ldr	r3, .L181+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L179
.L161:
	ldr	r3, .L181+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L180
.L152:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L178:
	ldr	r3, .L181+28
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #4]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L181+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #64
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r4, .L181+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L159
	bl	goToSpace
	ldr	r3, .L181+20
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L161
.L179:
	bl	goToLose
	ldr	r3, .L181+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L152
.L180:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	goToWin
.L177:
	ldr	r3, .L181+40
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #4]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L181+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #64
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r5, .L181+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L157
.L174:
	ldr	r3, [r4]
	b	.L156
.L176:
	ldr	r3, .L181+44
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	r1, r4
	ldr	ip, .L181+48
	ldr	r0, .L181+52
	ldr	r2, .L181+28
	str	r3, [ip, #16]
	str	r3, [r0, #16]
	str	r4, [r2, #16]
	ldr	lr, .L181+40
	ldr	r2, .L181+56
	ldr	ip, .L181+60
	ldr	r0, .L181+32
	ldr	r3, .L181+64
	str	r4, [lr, #16]
	str	r4, [ip, #16]
	str	r4, [r0, #84]
	str	r4, [r2, #16]
	str	r4, [r2, #36]
	str	r4, [r2, #56]
	add	r2, r3, #280
.L155:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L155
	bl	goToSpace
	b	.L154
.L175:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L153
.L157:
	bl	goToSpace
	b	.L174
.L182:
	.align	2
.L181:
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
	.word	hideSprites
	.word	spaceship
	.word	p1
	.word	blocks
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
	push	{r4, r5, lr}
	ldr	r3, .L212
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	r1, #5
	ldr	r4, .L212+4
	ldrh	r3, [r4]
	ldr	r2, .L212+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L184
	ldr	r2, .L212+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L206
.L184:
	tst	r3, #32
	beq	.L185
	ldr	r3, .L212+12
	ldrh	r4, [r3]
	ands	r4, r4, #32
	beq	.L207
.L185:
	ldr	r4, .L212+16
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L208
.L187:
	cmp	r3, #0
	beq	.L209
.L190:
	ldr	r3, .L212+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L210
.L192:
	ldr	r3, .L212+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L211
.L183:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L209:
	ldr	r3, .L212+28
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #4]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L212+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #96
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r4, .L212+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L190
	bl	goToSpace
	ldr	r3, .L212+20
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L192
.L210:
	bl	goToLose
	ldr	r3, .L212+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L183
.L211:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	goToWin
.L208:
	ldr	r3, .L212+40
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #4]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L212+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r5, .L212+36
	ldr	r3, [r0, #108]
	ldr	r2, [r0, #112]
	ldr	r1, [r0, #132]
	ldr	r0, [r0, #96]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L188
.L205:
	ldr	r3, [r4]
	b	.L187
.L207:
	ldr	r3, .L212+44
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	r1, r4
	ldr	ip, .L212+48
	ldr	r0, .L212+52
	ldr	r2, .L212+28
	str	r3, [ip, #16]
	str	r3, [r0, #16]
	str	r4, [r2, #16]
	ldr	lr, .L212+40
	ldr	r2, .L212+56
	ldr	ip, .L212+60
	ldr	r0, .L212+32
	ldr	r3, .L212+64
	str	r4, [lr, #16]
	str	r4, [ip, #16]
	str	r4, [r0, #116]
	str	r4, [r2, #16]
	str	r4, [r2, #36]
	str	r4, [r2, #56]
	add	r2, r3, #280
.L186:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L186
	bl	goToSpace
	b	.L185
.L206:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L184
.L188:
	bl	goToSpace
	b	.L205
.L213:
	.align	2
.L212:
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
	.word	hideSprites
	.word	spaceship
	.word	p1
	.word	blocks
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
	push	{r4, r5, lr}
	ldr	r3, .L243
	sub	sp, sp, #20
	mov	lr, pc
	bx	r3
	mov	r1, #6
	ldr	r4, .L243+4
	ldrh	r3, [r4]
	ldr	r2, .L243+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L215
	ldr	r2, .L243+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L237
.L215:
	tst	r3, #32
	beq	.L216
	ldr	r3, .L243+12
	ldrh	r4, [r3]
	ands	r4, r4, #32
	beq	.L238
.L216:
	ldr	r4, .L243+16
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L239
.L218:
	cmp	r3, #0
	beq	.L240
.L221:
	ldr	r3, .L243+20
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L241
.L223:
	ldr	r3, .L243+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L242
.L214:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L240:
	ldr	r3, .L243+28
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #4]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L243+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #128
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r4, .L243+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	beq	.L221
	bl	goToSpace
	ldr	r3, .L243+20
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L223
.L241:
	bl	goToLose
	ldr	r3, .L243+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L214
.L242:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	goToWin
.L239:
	ldr	r3, .L243+40
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #4]
	ldr	ip, [r3, #8]
	ldr	r3, [r3]
	ldr	r0, .L243+32
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r0, r0, #128
	ldr	r3, [r0, #12]
	ldr	r2, [r0, #16]
	ldr	r5, .L243+36
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L219
.L236:
	ldr	r3, [r4]
	b	.L218
.L238:
	ldr	r3, .L243+44
	mov	lr, pc
	bx	r3
	mov	ip, #1
	mov	r1, r4
	ldr	r0, .L243+48
	ldr	r2, .L243+28
	ldr	r3, .L243+40
	str	ip, [r0, #16]
	str	r4, [r3, #16]
	str	r4, [r2, #16]
	ldr	ip, .L243+52
	ldr	r2, .L243+56
	ldr	r0, .L243+32
	ldr	r3, .L243+60
	str	r4, [ip, #16]
	str	r4, [r0, #148]
	str	r4, [r2, #16]
	str	r4, [r2, #36]
	str	r4, [r2, #56]
	add	r2, r3, #280
.L217:
	str	r1, [r3, #24]
	add	r3, r3, #28
	cmp	r3, r2
	bne	.L217
	mov	r2, #1
	ldr	r3, .L243+64
	str	r2, [r3, #16]
	bl	goToSpace
	b	.L216
.L237:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L215
.L219:
	bl	goToSpace
	b	.L236
.L244:
	.align	2
.L243:
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
	.word	hideSprites
	.word	spaceship
	.word	alien
	.word	blocks
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
	ldr	r2, .L266
	ldr	r3, .L266+4
	strh	r1, [r8]	@ movhi
	ldr	r5, .L266+8
	strh	r7, [r3]	@ movhi
	strh	r7, [r2]	@ movhi
	ldr	r9, .L266+12
	ldrh	r2, [r5, #48]
	ldr	r6, .L266+16
	ldr	r3, .L266+20
	strh	r2, [r9]	@ movhi
	ldr	r4, .L266+24
	mov	lr, pc
	bx	r3
	ldr	fp, .L266+28
	ldrh	r0, [r9]
	ldr	r2, [r6]
	ldr	r10, .L266+32
.L247:
	strh	r0, [r4]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r9]	@ movhi
	cmp	r2, #9
	ldrls	pc, [pc, r2, asl #2]
	b	.L261
.L249:
	.word	.L258
	.word	.L257
	.word	.L256
	.word	.L255
	.word	.L254
	.word	.L253
	.word	.L252
	.word	.L251
	.word	.L250
	.word	.L248
.L248:
	tst	r0, #8
	beq	.L261
	ldr	r3, .L266+36
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L247
.L250:
	tst	r0, #8
	beq	.L261
	ldr	r3, .L266+40
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
.L265:
	ldrh	r0, [r9]
	b	.L247
.L251:
	ldr	r3, .L266+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L247
.L252:
	ldr	r3, .L266+48
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L247
.L253:
	ldr	r3, .L266+52
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L247
.L254:
	ldr	r3, .L266+56
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L247
.L255:
	ldr	r3, .L266+60
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L247
.L256:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L247
.L257:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L247
.L258:
	strh	r7, [r8, #16]	@ movhi
	strh	r7, [r8, #18]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L265
	ldrh	r0, [r9]
	tst	r0, #8
	bne	.L247
	ldr	r3, .L266+64
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r9]
	b	.L247
.L261:
	mov	r0, r3
	b	.L247
.L267:
	.align	2
.L266:
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
