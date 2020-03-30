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
	mov	r2, #67108864
	mov	r1, #7680
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L4
	strh	r1, [r2, #8]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L4+4
	mov	lr, pc
	bx	r4
	mov	r3, #1744
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+8
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L4+12
	mov	r0, #3
	ldr	r1, .L4+16
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+20
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
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
	mov	r3, #0
	str	lr, [sp, #-4]!
	mov	r2, #67108864
	mov	lr, #4864
	ldr	r1, .L8
	ldr	r0, .L8+4
	str	r3, [r1]
	ldr	r1, .L8+8
	strh	lr, [r2]	@ movhi
	ldr	ip, .L8+12
	strh	r3, [r0]	@ movhi
	strh	r3, [r1]	@ movhi
	add	r2, r2, #256
	str	r3, [ip]
	ldrh	r2, [r2, #48]
	ldr	r3, .L8+16
	ldr	lr, [sp], #4
	strh	r2, [r3]	@ movhi
	b	goToStart
.L9:
	.align	2
.L8:
	.word	counter
	.word	hOff
	.word	vOff
	.word	curLocation
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
	push	{r4, r5, r6, lr}
	mov	r2, #4864
	mov	r5, #67108864
	ldr	r3, .L12
	strh	r2, [r5]	@ movhi
	mov	lr, pc
	bx	r3
	mov	r2, #56320
	ldr	r4, .L12+4
	strh	r2, [r5, #8]	@ movhi
	mov	r3, #1472
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L12+8
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	mov	r0, #3
	ldr	r2, .L12+12
	ldr	r1, .L12+16
	mov	lr, pc
	bx	r4
	mov	r3, #3616
	ldr	r2, .L12+20
	mov	r1, r3
	strh	r2, [r5, #10]	@ movhi
	mov	r0, #3
	ldr	r2, .L12+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L12+28
	mov	r0, #3
	ldr	r1, .L12+32
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L12+36
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	initGame
	.word	DMANow
	.word	starsbgTiles
	.word	100720640
	.word	starsbgMap
	.word	24068
	.word	100679680
	.word	100724736
	.word	planetsMap
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
	ldr	r3, .L19
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L19+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToGame
.L20:
	.align	2
.L19:
	.word	oldButtons
	.word	buttons
	.size	start, .-start
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
	mov	r3, #0
	mov	r4, #67108864
	ldr	r2, .L23
	strh	r3, [r4, #20]	@ movhi
	strh	r3, [r4, #16]	@ movhi
	strh	r3, [r4, #22]	@ movhi
	mov	lr, pc
	bx	r2
	mov	r2, #4608
	ldr	r3, .L23+4
	strh	r2, [r4]	@ movhi
	strh	r3, [r4, #10]	@ movhi
	mov	r2, #83886080
	ldr	r4, .L23+8
	mov	r3, #256
	mov	r0, #3
	ldr	r1, .L23+12
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L23+16
	ldr	r2, .L23+20
	ldr	r1, .L23+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L23+28
	mov	r0, #3
	ldr	r1, .L23+32
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L23+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L24:
	.align	2
.L23:
	.word	hideSprites
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
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L32
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L32+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L25
	ldr	r3, .L32+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L31
.L25:
	pop	{r4, lr}
	bx	lr
.L31:
	pop	{r4, lr}
	b	goToPause
.L33:
	.align	2
.L32:
	.word	updateGame
	.word	oldButtons
	.word	buttons
	.size	game, .-game
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
	ldr	r3, .L41
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L41+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L34
	ldr	r3, .L41+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L40
.L34:
	pop	{r4, lr}
	bx	lr
.L40:
	pop	{r4, lr}
	b	goToGame
.L42:
	.align	2
.L41:
	.word	hideSprites
	.word	oldButtons
	.word	buttons
	.size	pause, .-pause
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
	push	{r7, lr}
	mov	r3, #0
	mov	lr, #67108864
	mov	r4, #4864
	ldr	r6, .L54
	ldr	r0, .L54+4
	ldr	r1, .L54+8
	str	r3, [r6]
	ldr	r2, .L54+12
	strh	r4, [lr]	@ movhi
	strh	r3, [r0]	@ movhi
	strh	r3, [r1]	@ movhi
	ldr	ip, .L54+16
	ldr	r10, .L54+20
	mov	r5, r2
	ldr	r6, .L54+24
	ldrh	r2, [r2, #48]
	str	r3, [ip]
	ldr	r3, .L54+28
	strh	r2, [r10]	@ movhi
	ldr	r4, .L54+32
	mov	lr, pc
	bx	r3
	ldr	r9, .L54+36
	ldrh	r3, [r10]
	ldr	r2, [r6]
	ldr	r8, .L54+40
	ldr	r7, .L54+44
.L47:
	strh	r3, [r4]	@ movhi
	ldrh	r1, [r5, #48]
	cmp	r2, #1
	mov	r0, r3
	strh	r1, [r10]	@ movhi
	mov	r3, r1
	beq	.L45
	cmp	r2, #2
	beq	.L46
	cmp	r2, #0
	bne	.L47
	tst	r0, #8
	beq	.L47
	tst	r1, #8
	bne	.L47
	mov	lr, pc
	bx	r9
	ldr	r2, [r6]
	ldrh	r3, [r10]
	b	.L47
.L46:
	mov	lr, pc
	bx	r7
	ldr	r2, [r6]
	ldrh	r3, [r10]
	b	.L47
.L45:
	mov	lr, pc
	bx	r8
	ldr	r2, [r6]
	ldrh	r3, [r10]
	b	.L47
.L55:
	.align	2
.L54:
	.word	counter
	.word	hOff
	.word	vOff
	.word	67109120
	.word	curLocation
	.word	buttons
	.word	state
	.word	goToStart
	.word	oldButtons
	.word	goToGame
	.word	game
	.word	pause
	.size	main, .-main
	.text
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
	@ link register save eliminated.
	bx	lr
	.size	goToLose, .-goToLose
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
	bx	lr
	.size	lose, .-lose
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
	mov	r3, #67108864
	mov	r1, #4608
	ldr	r2, .L64
	push	{r4, lr}
	mov	r0, #3
	ldr	r4, .L64+4
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	ldr	r1, .L64+8
	mov	r3, #256
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L64+12
	ldr	r2, .L64+16
	ldr	r1, .L64+20
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L64+24
	ldr	r1, .L64+28
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L64+32
	mov	lr, pc
	bx	r3
	mov	r1, #0
	ldr	r0, .L64+36
	ldr	r2, [r0, #48]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	ip, .L64+40
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, ip
	ldr	r4, .L64+44
	ldr	lr, .L64+48
	ldr	r2, .L64+52
	cmp	ip, r3, ror #1
	ldr	r3, .L64+56
	str	r1, [r4, #32]
	str	r1, [lr, #32]
	str	r1, [r2, #32]
	str	r1, [r3, #32]
	bcc	.L61
	ldr	r3, [r0, #52]
	ldr	r2, [r0, #44]
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r0, #44]
	strge	r3, [r0, #44]
.L61:
	ldr	r3, .L64+60
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L65:
	.align	2
.L64:
	.word	23556
	.word	DMANow
	.word	planet1PSPal
	.word	18080
	.word	100679680
	.word	planet1PSTiles
	.word	100720640
	.word	planet1PSMap
	.word	waitForVBlank
	.word	fry
	.word	238609294
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	updatePlanet1
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
	@ link register save eliminated.
	bx	lr
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
	@ link register save eliminated.
	bx	lr
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
	@ link register save eliminated.
	bx	lr
	.size	planet4, .-planet4
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
	@ link register save eliminated.
	bx	lr
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
	@ link register save eliminated.
	bx	lr
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
	@ link register save eliminated.
	bx	lr
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
	@ link register save eliminated.
	bx	lr
	.size	goToPlanet4, .-goToPlanet4
	.comm	shadowOAM,1024,4
	.comm	counter,4,4
	.comm	vOff,2,2
	.comm	hOff,2,2
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	curLocation,4,4
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
