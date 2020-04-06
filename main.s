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
	mov	r3, #1744
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
	ldr	r4, .L11+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L11+8
	mov	lr, pc
	bx	r4
	mov	r3, #1632
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
	.word	bgPal
	.word	bgTiles
	.word	100724736
	.word	bgMap
	.word	state
	.size	goToGame, .-goToGame
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
	mov	r3, #1632
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
	mov	r2, #2
	ldr	r3, .L15+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L16:
	.align	2
.L15:
	.word	initSpace
	.word	DMANow
	.word	bgPal
	.word	bgTiles
	.word	100724736
	.word	bgMap
	.word	state
	.size	goToSpace, .-goToSpace
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	start.part.0, %function
start.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L19
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToSpace
.L20:
	.align	2
.L19:
	.word	buttons
	.size	start.part.0, .-start.part.0
	.set	game.part.0,start.part.0
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
	@ link register save eliminated.
	ldr	r3, .L23
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	game.part.0
.L24:
	.align	2
.L23:
	.word	oldButtons
	.size	game, .-game
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
	b	game
	.size	start, .-start
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
	ldr	r3, .L28
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #24064
	ldr	r4, .L28+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L28+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L28+12
	ldr	r1, .L28+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L28+20
	mov	r0, #3
	ldr	r1, .L28+24
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L28+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L29:
	.align	2
.L28:
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
	ldr	r3, .L32
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7680
	ldr	r4, .L32+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L32+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L32+12
	ldr	r1, .L32+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L32+20
	mov	r0, #3
	ldr	r1, .L32+24
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L32+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L33:
	.align	2
.L32:
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
	ldr	r3, .L36
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #24064
	ldr	r4, .L36+4
	strh	r1, [r2, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L36+8
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L36+12
	ldr	r1, .L36+16
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L36+20
	mov	r0, #3
	ldr	r1, .L36+24
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L36+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L37:
	.align	2
.L36:
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
	ldr	r3, .L40
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #7680
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
	mov	r3, #1024
	ldr	r2, .L40+20
	mov	r0, #3
	ldr	r1, .L40+24
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L40+28
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L41:
	.align	2
.L40:
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
	ldr	r4, .L52
	sub	sp, sp, #20
	ldr	r3, .L52+4
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
	ldr	r0, .L52+8
	ldr	r5, .L52+12
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	ldm	r0, {r0, r1}
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	beq	.L48
.L43:
	add	r6, r4, #8
	ldm	r6, {r6, ip}
	ldr	r0, .L52+16
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
	beq	.L49
.L44:
	add	r6, r4, #8
	ldm	r6, {r6, ip}
	ldr	r0, .L52+20
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
	beq	.L50
.L45:
	ldr	r0, .L52+24
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
	beq	.L51
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L48:
	bl	goToPlanet1
	b	.L43
.L51:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToPlanet4
.L50:
	bl	goToPlanet3
	b	.L45
.L49:
	bl	goToPlanet2
	b	.L44
.L53:
	.align	2
.L52:
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
	mov	r2, #4352
	push	{r4, lr}
	ldr	r1, .L56
	ldr	lr, .L56+4
	strh	r2, [r3]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	ldr	r4, .L56+8
	str	ip, [lr, #16]
	ldr	r2, .L56+12
	ldr	lr, .L56+16
	ldr	r1, .L56+20
	ldr	r0, .L56+24
	str	ip, [r4, #16]
	str	ip, [r2, #16]
	str	ip, [r1, #16]
	str	ip, [r0, #16]
	ldr	r4, .L56+28
	str	ip, [lr, #16]
	str	ip, [lr, #36]
	str	ip, [lr, #56]
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L56+32
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L56+36
	ldr	r2, .L56+40
	ldr	r1, .L56+44
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L56+48
	mov	r0, #3
	ldr	r1, .L56+52
	mov	lr, pc
	bx	r4
	mov	r2, #7
	ldr	r3, .L56+56
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L57:
	.align	2
.L56:
	.word	7684
	.word	fry
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
	ldr	r3, .L70
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r2, #0
	ldr	r1, .L70+4
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L70+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L58
	ldr	r3, .L70+12
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L58
	ldr	r3, .L70+16
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L67
	cmp	r3, #4
	beq	.L68
	cmp	r3, #5
	beq	.L69
	pop	{r4, lr}
	b	goToPlanet4
.L58:
	pop	{r4, lr}
	bx	lr
.L67:
	pop	{r4, lr}
	b	goToPlanet1
.L69:
	pop	{r4, lr}
	b	goToPlanet3
.L68:
	pop	{r4, lr}
	b	goToPlanet2
.L71:
	.align	2
.L70:
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
	ldr	r3, .L76
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r2, #0
	mov	r3, #4352
	ldr	r0, .L76+4
	strh	r2, [r1, #16]	@ movhi
	ldr	r4, .L76+8
	strh	r2, [r1, #18]	@ movhi
	strh	r3, [r1]	@ movhi
	strh	r0, [r1, #8]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L76+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L76+16
	ldr	r2, .L76+20
	ldr	r1, .L76+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L76+28
	mov	r0, #3
	ldr	r1, .L76+32
	mov	lr, pc
	bx	r4
	mov	r2, #9
	ldr	r3, .L76+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L77:
	.align	2
.L76:
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
	ldr	r3, .L92
	mov	lr, pc
	bx	r3
	mov	r1, #3
	ldr	r4, .L92+4
	ldrh	r3, [r4]
	ldr	r2, .L92+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L79
	ldr	r2, .L92+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L89
.L79:
	tst	r3, #32
	beq	.L80
	ldr	r3, .L92+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L90
.L80:
	ldr	r3, .L92+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L91
	pop	{r4, lr}
	bx	lr
.L91:
	pop	{r4, lr}
	b	goToLose
.L90:
	bl	goToSpace
	b	.L80
.L89:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L79
.L93:
	.align	2
.L92:
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
	ldr	r3, .L108
	mov	lr, pc
	bx	r3
	mov	r1, #4
	ldr	r4, .L108+4
	ldrh	r3, [r4]
	ldr	r2, .L108+8
	tst	r3, #8
	str	r1, [r2]
	beq	.L95
	ldr	r2, .L108+12
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L105
.L95:
	tst	r3, #32
	beq	.L96
	ldr	r3, .L108+12
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L106
.L96:
	ldr	r3, .L108+16
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L107
	pop	{r4, lr}
	bx	lr
.L107:
	pop	{r4, lr}
	b	goToLose
.L106:
	bl	goToSpace
	b	.L96
.L105:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L95
.L109:
	.align	2
.L108:
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
	ldr	r3, .L124
	mov	lr, pc
	bx	r3
	mov	r1, #5
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
	ldr	r3, .L140
	mov	lr, pc
	bx	r3
	mov	r1, #6
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
	ldr	r2, .L163
	ldr	r1, .L163+4
	push	{r4, r7, fp, lr}
	strh	ip, [r0]	@ movhi
	ldr	r4, .L163+8
	strh	r3, [r2]	@ movhi
	strh	r3, [r1]	@ movhi
	ldr	r7, .L163+12
	ldrh	r3, [r4, #48]
	ldr	r6, .L163+16
	strh	r3, [r7]	@ movhi
	ldr	r3, .L163+20
	mov	lr, pc
	bx	r3
	ldr	r5, .L163+24
	ldrh	r0, [r7]
	ldr	r2, [r6]
	ldr	fp, .L163+28
	ldr	r10, .L163+32
	ldr	r9, .L163+36
	ldr	r8, .L163+40
.L144:
	strh	r0, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r7]	@ movhi
	cmp	r2, #9
	ldrls	pc, [pc, r2, asl #2]
	b	.L156
.L146:
	.word	.L154
	.word	.L153
	.word	.L152
	.word	.L151
	.word	.L150
	.word	.L149
	.word	.L148
	.word	.L147
	.word	.L156
	.word	.L145
.L145:
	tst	r0, #8
	beq	.L156
	tst	r3, #8
	beq	.L162
.L156:
	mov	r0, r3
	b	.L144
.L147:
	ldr	r3, .L163+44
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L144
.L148:
	ldr	r3, .L163+48
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L144
.L149:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L144
.L150:
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L144
.L151:
	mov	lr, pc
	bx	r10
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L144
.L152:
	mov	lr, pc
	bx	fp
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L144
.L154:
	tst	r0, #8
	beq	.L156
	ldr	r3, .L163+52
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L144
.L153:
	tst	r0, #8
	beq	.L156
	ldr	r3, .L163+56
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L144
.L162:
	ldr	r3, .L163+20
	mov	lr, pc
	bx	r3
	ldr	r2, [r6]
	ldrh	r0, [r7]
	b	.L144
.L164:
	.align	2
.L163:
	.word	vOff
	.word	hOff
	.word	67109120
	.word	buttons
	.word	state
	.word	goToStart
	.word	oldButtons
	.word	space
	.word	planet1
	.word	planet2
	.word	planet3
	.word	pause
	.word	planet4
	.word	start.part.0
	.word	game.part.0
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
	ldr	r3, .L170
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L170+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L171:
	.align	2
.L170:
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
