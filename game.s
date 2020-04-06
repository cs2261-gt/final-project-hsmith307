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
	.file	"game.c"
	.text
	.align	2
	.global	initGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #64
	mov	r0, #1
	mov	ip, #32
	mov	r6, #90
	mov	r5, #200
	mov	r1, #20
	mov	r2, #0
	mov	fp, #4
	mov	r10, #10
	mov	r9, #180
	mov	r7, #67108864
	mov	r8, #4352
	ldr	r3, .L4
	ldrh	lr, [r3]
	ldr	r3, .L4+4
	add	lr, lr, #104
	str	lr, [r3]
	ldr	lr, .L4+8
	ldrh	lr, [lr]
	add	lr, lr, r4
	str	lr, [r3, #4]
	ldr	lr, .L4+12
	str	r0, [r3, #20]
	str	r6, [lr, #4]
	str	r5, [lr]
	str	r0, [r3, #24]
	str	r0, [r3, #16]
	str	ip, [r3, #12]
	str	ip, [r3, #8]
	str	ip, [lr, #12]
	ldr	r3, .L4+16
	str	ip, [lr, #8]
	str	r0, [lr, #16]
	ldr	lr, .L4+20
	str	r4, [r3, #12]
	str	r5, [lr]
	str	r1, [lr, #4]
	str	ip, [lr, #12]
	str	ip, [lr, #8]
	str	r0, [lr, #16]
	str	r4, [r3, #8]
	ldr	lr, .L4+24
	ldr	r4, .L4+28
	stm	lr, {r1, r10}
	stm	r3, {r1, r6}
	str	r0, [r3, #20]
	str	r0, [r3, #24]
	str	r0, [r3, #16]
	str	fp, [r3, #40]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	ip, [lr, #12]
	str	r9, [r4]
	strh	r8, [r7]	@ movhi
	str	ip, [lr, #8]
	str	ip, [r4, #12]
	str	ip, [r4, #8]
	mov	ip, #120
	str	r0, [lr, #16]
	str	r0, [r4, #16]
	ldr	r5, .L4+32
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L4+36
	ldr	r1, .L4+40
	str	ip, [r4, #4]
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L4+44
	ldr	r1, .L4+48
	mov	lr, pc
	bx	r5
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	hOff
	.word	spaceship
	.word	vOff
	.word	p2
	.word	fry
	.word	p1
	.word	p3
	.word	p4
	.word	DMANow
	.word	83886592
	.word	spritesheet5Pal
	.word	100728832
	.word	spritesheet5Tiles
	.size	initGame, .-initGame
	.align	2
	.global	initSpaceship
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSpaceship, %function
initSpaceship:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #1
	mov	ip, #32
	ldr	r1, .L7
	ldr	r3, .L7+4
	ldrh	r0, [r1]
	ldrh	r1, [r3]
	ldr	r3, .L7+8
	add	r0, r0, #104
	add	r1, r1, #64
	stm	r3, {r0, r1}
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #16]
	str	ip, [r3, #12]
	str	ip, [r3, #8]
	bx	lr
.L8:
	.align	2
.L7:
	.word	hOff
	.word	vOff
	.word	spaceship
	.size	initSpaceship, .-initSpaceship
	.align	2
	.global	initFry
	.syntax unified
	.arm
	.fpu softvfp
	.type	initFry, %function
initFry:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r1, #1
	mov	r2, #0
	mov	r4, #20
	mov	lr, #90
	mov	r0, #64
	mov	ip, #4
	ldr	r3, .L11
	stm	r3, {r4, lr}
	str	ip, [r3, #40]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #16]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	pop	{r4, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	fry
	.size	initFry, .-initFry
	.align	2
	.global	initAlien
	.syntax unified
	.arm
	.fpu softvfp
	.type	initAlien, %function
initAlien:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r2, #1
	mov	r5, #170
	mov	r4, #90
	mov	lr, #2
	mov	r1, #64
	mov	ip, #4
	mov	r0, #0
	ldr	r3, .L15
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #28]
	str	ip, [r3, #40]
	str	r0, [r3, #32]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #16]
	str	r2, [r3, #36]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	pop	{r4, r5, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	alien
	.size	initAlien, .-initAlien
	.align	2
	.global	initBlocks
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBlocks, %function
initBlocks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #60
	str	lr, [sp, #-4]!
	mov	r0, #1
	mov	lr, #80
	mov	r2, #32
	ldr	r3, .L21
	add	r1, r3, ip
.L18:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #20
	cmp	r3, r1
	bne	.L18
	ldr	lr, [sp], #4
	bx	lr
.L22:
	.align	2
.L21:
	.word	blocks
	.size	initBlocks, .-initBlocks
	.align	2
	.global	initLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLives, %function
initLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #16
	mov	r0, #5
	mov	ip, #1
	mov	r4, #26
	mov	lr, #47
	ldr	r2, .L25
	ldr	r1, .L25+4
	str	r4, [r2]
	str	r0, [r2, #4]
	str	ip, [r2, #16]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	ldr	r2, .L25+8
	str	r0, [r1]
	str	lr, [r2]
	str	r0, [r1, #4]
	str	ip, [r1, #16]
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	str	r0, [r2, #4]
	str	ip, [r2, #16]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	pop	{r4, lr}
	bx	lr
.L26:
	.align	2
.L25:
	.word	life2
	.word	life1
	.word	life3
	.size	initLives, .-initLives
	.align	2
	.global	initp1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initp1, %function
initp1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #32
	mov	ip, #200
	mov	r0, #20
	mov	r1, #1
	ldr	r3, .L28
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L29:
	.align	2
.L28:
	.word	p1
	.size	initp1, .-initp1
	.align	2
	.global	initp2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initp2, %function
initp2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #32
	mov	ip, #200
	mov	r0, #90
	mov	r1, #1
	ldr	r3, .L31
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L32:
	.align	2
.L31:
	.word	p2
	.size	initp2, .-initp2
	.align	2
	.global	initp3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initp3, %function
initp3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #32
	mov	ip, #20
	mov	r0, #10
	mov	r1, #1
	ldr	r3, .L34
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L35:
	.align	2
.L34:
	.word	p3
	.size	initp3, .-initp3
	.align	2
	.global	initp4
	.syntax unified
	.arm
	.fpu softvfp
	.type	initp4, %function
initp4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #32
	mov	ip, #180
	mov	r0, #120
	mov	r1, #1
	ldr	r3, .L37
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L38:
	.align	2
.L37:
	.word	p4
	.size	initp4, .-initp4
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	updateGame, .-updateGame
	.align	2
	.global	initSpace
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSpace, %function
initSpace:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #32
	mov	r2, #1
	push	{r4, r5, r6, r7, r8, lr}
	mov	ip, #20
	mov	r5, #200
	mov	r7, #90
	mov	r6, #10
	mov	r4, #180
	mov	lr, #120
	ldr	r3, .L42
	ldrh	r0, [r3]
	ldr	r3, .L42+4
	add	r0, r0, #104
	str	r0, [r3]
	ldr	r0, .L42+8
	ldrh	r0, [r0]
	add	r0, r0, #64
	str	r0, [r3, #4]
	str	r2, [r3, #16]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	ldr	r3, .L42+12
	stm	r3, {r5, ip}
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #16]
	ldr	r3, .L42+16
	str	r5, [r3]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #16]
	str	r7, [r3, #4]
	ldr	r3, .L42+20
	str	ip, [r3]
	ldr	ip, .L42+24
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #16]
	str	r6, [r3, #4]
	str	r2, [ip, #16]
	str	r1, [ip, #12]
	str	r1, [ip, #8]
	str	r4, [ip]
	mov	r3, #256
	ldr	r4, .L42+28
	mov	r0, #3
	ldr	r2, .L42+32
	ldr	r1, .L42+36
	str	lr, [ip, #4]
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L42+40
	ldr	r1, .L42+44
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	hOff
	.word	spaceship
	.word	vOff
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	DMANow
	.word	83886592
	.word	spritesheet5Pal
	.word	100728832
	.word	spritesheet5Tiles
	.size	initSpace, .-initSpace
	.align	2
	.global	initPlanet1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlanet1, %function
initPlanet1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L48
	mov	lr, pc
	bx	r3
	mov	ip, #1
	mov	r3, #16
	mov	lr, #5
	mov	r7, #26
	mov	r6, #47
	mov	r4, #60
	mov	r1, ip
	mov	r5, #80
	mov	r2, #32
	ldr	r0, .L48+4
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	ip, [r0, #16]
	str	lr, [r0]
	str	lr, [r0, #4]
	ldr	r0, .L48+8
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	lr, [r0, #4]
	str	ip, [r0, #16]
	str	r7, [r0]
	ldr	r0, .L48+12
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	ldr	r3, .L48+16
	str	lr, [r0, #4]
	str	ip, [r0, #16]
	str	r6, [r0]
	add	r0, r3, r4
.L45:
	str	r5, [r3]
	str	r4, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #20
	cmp	r3, r0
	bne	.L45
	mov	r0, #0
	mov	r3, #20
	mov	ip, #64
	mov	r4, #90
	mov	lr, #4
	mov	r6, #170
	mov	r5, #2
	ldr	r2, .L48+20
	str	r0, [r2, #16]
	ldr	r2, .L48+24
	str	r0, [r2, #16]
	ldr	r2, .L48+28
	str	r0, [r2, #16]
	ldr	r2, .L48+32
	str	r0, [r2, #16]
	ldr	r2, .L48+36
	str	r0, [r2, #16]
	ldr	r2, .L48+40
	str	r3, [r2]
	ldr	r3, .L48+44
	str	r0, [r2, #28]
	str	r1, [r2, #20]
	str	r1, [r2, #24]
	str	r1, [r2, #16]
	str	r0, [r2, #36]
	str	r0, [r2, #32]
	str	r4, [r2, #4]
	str	r0, [r3, #32]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #16]
	str	r1, [r3, #36]
	str	r6, [r3]
	str	r5, [r3, #28]
	str	r4, [r3, #4]
	str	ip, [r2, #12]
	str	ip, [r2, #8]
	str	ip, [r3, #12]
	str	ip, [r3, #8]
	str	lr, [r2, #40]
	str	lr, [r3, #40]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L49:
	.align	2
.L48:
	.word	hideSprites
	.word	life1
	.word	life2
	.word	life3
	.word	blocks
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	fry
	.word	alien
	.size	initPlanet1, .-initPlanet1
	.align	2
	.global	initPlanet2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlanet2, %function
initPlanet2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L52
	mov	lr, pc
	bx	r3
	mov	r1, #0
	mov	r3, #20
	mov	r0, #1
	mov	ip, #64
	mov	r4, #90
	mov	lr, #4
	mov	r6, #170
	mov	r5, #2
	ldr	r2, .L52+4
	str	r1, [r2, #16]
	ldr	r2, .L52+8
	str	r1, [r2, #16]
	ldr	r2, .L52+12
	str	r1, [r2, #16]
	ldr	r2, .L52+16
	str	r1, [r2, #16]
	ldr	r2, .L52+20
	str	r1, [r2, #16]
	ldr	r2, .L52+24
	str	r3, [r2]
	ldr	r3, .L52+28
	str	r4, [r2, #4]
	str	r6, [r3]
	str	r5, [r3, #28]
	str	r4, [r3, #4]
	str	lr, [r2, #40]
	str	lr, [r3, #40]
	str	r1, [r2, #28]
	str	r1, [r2, #36]
	str	r1, [r2, #32]
	str	r1, [r3, #32]
	str	r0, [r2, #20]
	str	r0, [r2, #24]
	str	r0, [r2, #16]
	str	r0, [r3, #20]
	str	r0, [r3, #24]
	str	r0, [r3, #16]
	str	r0, [r3, #36]
	str	ip, [r2, #12]
	str	ip, [r2, #8]
	str	ip, [r3, #12]
	str	ip, [r3, #8]
	pop	{r4, r5, r6, lr}
	bx	lr
.L53:
	.align	2
.L52:
	.word	hideSprites
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	fry
	.word	alien
	.size	initPlanet2, .-initPlanet2
	.align	2
	.global	initPlanet3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlanet3, %function
initPlanet3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	initPlanet2
	.size	initPlanet3, .-initPlanet3
	.align	2
	.global	initPlanet4
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlanet4, %function
initPlanet4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	initPlanet2
	.size	initPlanet4, .-initPlanet4
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L98
	ldr	r3, [r2, #16]
	cmp	r3, #1
	push	{r4, lr}
	bne	.L57
	ldr	r1, [r2]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	ip, [r2, #36]
	ldr	r3, [r2, #28]
	ldr	r0, .L98+4
	add	r3, r3, ip, lsl #5
	ldr	ip, [r2, #4]
	lsl	r3, r3, #3
	strh	r1, [r0, #2]	@ movhi
	strh	ip, [r0]	@ movhi
	strh	r3, [r0, #4]	@ movhi
.L57:
	ldr	r3, .L98+8
	ldr	r1, [r2, #32]
	ldr	r0, [r3, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r2, #32]
	bne	.L58
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	ip, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r0, .L98+4
	add	r2, r2, ip, lsl #5
	ldr	ip, [r3, #4]
	lsl	r2, r2, #3
	strh	r1, [r0, #50]	@ movhi
	strh	ip, [r0, #48]	@ movhi
	strh	r2, [r0, #52]	@ movhi
.L58:
	ldr	r1, .L98+12
	ldr	r2, [r3, #32]
	ldr	r0, [r1, #16]
	add	r2, r2, #1
	cmp	r0, #0
	str	r2, [r3, #32]
	beq	.L59
	mov	r0, #152
	ldr	r2, [r1]
	ldr	r3, .L98+4
	ldr	r1, [r1, #4]
	orr	r2, r2, #16384
	strh	r2, [r3, #58]	@ movhi
	strh	r1, [r3, #56]	@ movhi
	strh	r0, [r3, #60]	@ movhi
.L59:
	ldr	r3, .L98+16
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L60
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	r3, .L98+4
	orr	r2, r2, #16384
	strh	r2, [r3, #66]	@ movhi
	strh	r0, [r3, #64]	@ movhi
	strh	r1, [r3, #68]	@ movhi
.L60:
	ldr	r3, .L98+20
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L61
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	r3, .L98+4
	orr	r2, r2, #16384
	strh	r2, [r3, #74]	@ movhi
	strh	r0, [r3, #72]	@ movhi
	strh	r1, [r3, #76]	@ movhi
.L61:
	mov	r4, #148
	ldr	r3, .L98+24
	ldr	r1, .L98+4
	ldr	lr, .L98+28
	add	r0, r3, #60
.L63:
	ldr	r2, [r3, #16]
	cmp	r2, #0
	ldmne	r3, {r2, ip}
	add	r3, r3, #20
	orrne	r2, r2, lr
	strhne	r4, [r1, #84]	@ movhi
	strhne	r2, [r1, #82]	@ movhi
	strhne	ip, [r1, #80]	@ movhi
	cmp	r3, r0
	bne	.L63
	ldr	r2, .L98+32
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L64
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #144
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L98+4
	strh	r3, [r2, #10]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	strh	r1, [r2, #12]	@ movhi
.L64:
	ldr	r2, .L98+36
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L65
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #16
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L98+4
	strh	r3, [r2, #18]	@ movhi
	strh	r0, [r2, #16]	@ movhi
	strh	r1, [r2, #20]	@ movhi
.L65:
	ldr	r2, .L98+40
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L66
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #20
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L98+4
	strh	r3, [r2, #26]	@ movhi
	strh	r0, [r2, #24]	@ movhi
	strh	r1, [r2, #28]	@ movhi
.L66:
	ldr	r2, .L98+44
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L67
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #24
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L98+4
	strh	r3, [r2, #34]	@ movhi
	strh	r0, [r2, #32]	@ movhi
	strh	r1, [r2, #36]	@ movhi
.L67:
	ldr	r2, .L98+48
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L68
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #28
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L98+4
	strh	r3, [r2, #42]	@ movhi
	strh	r0, [r2, #40]	@ movhi
	strh	r1, [r2, #44]	@ movhi
.L68:
	ldr	r3, .L98+52
	mov	lr, pc
	bx	r3
	ldr	r4, .L98+56
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L98+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L98+60
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L98+64
	ldrh	r3, [r3]
	pop	{r4, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L99:
	.align	2
.L98:
	.word	fry
	.word	shadowOAM
	.word	alien
	.word	life1
	.word	life2
	.word	life3
	.word	blocks
	.word	-32768
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
	.size	drawGame, .-drawGame
	.align	2
	.global	updateSpace
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSpace, %function
updateSpace:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	drawGame
	ldr	r2, .L106
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L106+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldreq	r3, .L106+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	addeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L106+4
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldreq	r3, .L106+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	subeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L106+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldreq	r3, .L106+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	subeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L106+4
	ldrh	r3, [r3, #48]
	tst	r3, #128
	ldreq	r3, .L106+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	addeq	r2, r2, r1
	streq	r2, [r3, #4]
	pop	{r4, lr}
	bx	lr
.L107:
	.align	2
.L106:
	.word	hOff
	.word	67109120
	.word	spaceship
	.size	updateSpace, .-updateSpace
	.align	2
	.global	updatePlanet1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlanet1, %function
updatePlanet1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	lr, #25
	ldr	r1, .L116
	ldr	r2, [r1, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	ip, .L116+4
	ldr	r0, .L116+8
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, ip
	ldrh	r2, [r0]
	cmp	ip, r3, ror #1
	ldr	ip, .L116+12
	add	r3, r2, #1
	strh	r3, [r0]	@ movhi
	strh	lr, [ip]	@ movhi
	sub	sp, sp, #20
	bcc	.L109
	add	r2, r1, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r1, #36]
	strge	r3, [r1, #36]
.L109:
	ldr	r4, .L116+16
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	ip, .L116+4
	rsb	r3, r3, r3, lsl #15
	ldr	r0, [r4]
	add	r3, r2, r3, lsl #3
	ldr	r2, [r4, #20]
	add	r3, r3, ip
	sub	r0, r0, r2
	cmp	ip, r3, ror #1
	str	r0, [r4]
	bcc	.L111
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L111:
	ldr	lr, [r1, #8]
	ldr	ip, [r1, #12]
	ldr	r2, [r1, #4]
	ldr	r3, [r1]
	ldr	r5, .L116+20
	stmib	sp, {r2, ip, lr}
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r5
	cmp	r0, #1
	moveq	r2, #0
	ldreq	r3, .L116+24
	streq	r2, [r3, #16]
	ldr	r3, [r4]
	ldr	r2, [r4, #12]
	adds	r3, r3, r2
	streq	r3, [r4, #16]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	b	drawGame
.L117:
	.align	2
.L116:
	.word	fry
	.word	238609294
	.word	hOff
	.word	vOff
	.word	alien
	.word	collision
	.word	life3
	.size	updatePlanet1, .-updatePlanet1
	.align	2
	.global	updatePlanet2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlanet2, %function
updatePlanet2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	lr, #25
	ldr	r1, .L125
	ldr	r2, [r1, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	ip, .L125+4
	ldr	r0, .L125+8
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, ip
	ldrh	r2, [r0]
	cmp	ip, r3, ror #1
	ldr	ip, .L125+12
	add	r3, r2, #1
	strh	r3, [r0]	@ movhi
	strh	lr, [ip]	@ movhi
	bcc	.L119
	add	r2, r1, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r1, #36]
	strge	r3, [r1, #36]
.L119:
	ldr	r1, .L125+16
	ldr	r2, [r1, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L125+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	ip, [r1, #20]
	ldr	r2, [r1]
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	sub	r3, r2, ip
	str	r3, [r1]
	bcc	.L121
	add	r0, r1, #36
	ldm	r0, {r0, r2}
	sub	r2, r2, #1
	cmp	r0, r2
	movge	r2, #1
	addlt	r0, r0, #1
	strlt	r0, [r1, #36]
	strge	r2, [r1, #36]
.L121:
	ldr	r2, [r1, #12]
	ldr	lr, [sp], #4
	adds	r3, r3, r2
	streq	r3, [r1, #16]
	b	drawGame
.L126:
	.align	2
.L125:
	.word	fry
	.word	238609294
	.word	hOff
	.word	vOff
	.word	alien
	.size	updatePlanet2, .-updatePlanet2
	.align	2
	.global	updatePlanet3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlanet3, %function
updatePlanet3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	lr, #45
	ldr	r1, .L134
	ldr	r2, [r1, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	ip, .L134+4
	ldr	r0, .L134+8
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, ip
	ldrh	r2, [r0]
	cmp	ip, r3, ror #1
	ldr	ip, .L134+12
	add	r3, r2, #1
	strh	r3, [r0]	@ movhi
	strh	lr, [ip]	@ movhi
	bcc	.L128
	add	r2, r1, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r1, #36]
	strge	r3, [r1, #36]
.L128:
	ldr	r1, .L134+16
	ldr	r2, [r1, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L134+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	ip, [r1, #20]
	ldr	r2, [r1]
	add	r3, r3, r0
	cmp	r0, r3, ror #1
	sub	r3, r2, ip
	str	r3, [r1]
	bcc	.L130
	add	r0, r1, #36
	ldm	r0, {r0, r2}
	sub	r2, r2, #1
	cmp	r0, r2
	movge	r2, #1
	addlt	r0, r0, #1
	strlt	r0, [r1, #36]
	strge	r2, [r1, #36]
.L130:
	ldr	r2, [r1, #12]
	ldr	lr, [sp], #4
	adds	r3, r3, r2
	streq	r3, [r1, #16]
	b	drawGame
.L135:
	.align	2
.L134:
	.word	fry
	.word	238609294
	.word	hOff
	.word	vOff
	.word	alien
	.size	updatePlanet3, .-updatePlanet3
	.align	2
	.global	updatePlanet4
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlanet4, %function
updatePlanet4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	updatePlanet3
	.size	updatePlanet4, .-updatePlanet4
	.comm	vOff,2,2
	.comm	hOff,2,2
	.comm	prevState,4,4
	.comm	blocks,60,4
	.comm	life3,20,4
	.comm	life2,20,4
	.comm	life1,20,4
	.comm	p4,28,4
	.comm	p3,28,4
	.comm	p2,28,4
	.comm	p1,28,4
	.comm	alien,44,4
	.comm	spaceship,28,4
	.comm	fry,44,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
