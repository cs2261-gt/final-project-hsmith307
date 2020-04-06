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
	mov	r0, #32
	mov	r1, #1
	mov	r6, #90
	mov	r5, #200
	mov	r2, #20
	mov	ip, #0
	mov	fp, #4
	mov	r10, #10
	mov	r9, #180
	mov	r8, #120
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
	str	r6, [lr, #4]
	str	r5, [lr]
	str	r0, [lr, #12]
	str	r0, [lr, #8]
	str	r1, [lr, #16]
	ldr	lr, .L4+16
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #16]
	str	r0, [r3, #12]
	str	r5, [lr]
	str	r2, [lr, #4]
	str	r0, [r3, #8]
	str	r0, [lr, #12]
	ldr	r3, .L4+20
	str	r0, [lr, #8]
	str	r1, [lr, #16]
	ldr	lr, .L4+24
	stm	r3, {r2, r6}
	stm	lr, {r2, r10}
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	fp, [r3, #40]
	str	ip, [r3, #16]
	str	ip, [r3, #28]
	str	ip, [r3, #36]
	str	ip, [r3, #32]
	str	r4, [r3, #12]
	str	r4, [r3, #8]
	ldr	r3, .L4+28
	str	ip, [r3]
	ldr	r3, .L4+32
	str	ip, [r3]
	ldr	r3, .L4+36
	mov	r7, #220
	str	r9, [r3]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	str	r1, [r3, #16]
	str	r8, [r3, #4]
	mov	r2, #4352	@ movhi
	mov	r3, #67108864
	str	r0, [lr, #12]
	str	r0, [lr, #8]
	str	r1, [lr, #16]
	ldr	lr, .L4+40
	str	r7, [lr]
	strh	r2, [r3]	@ movhi
	str	ip, [lr, #20]
	str	ip, [lr, #24]
	mov	ip, #100
	str	r1, [lr, #8]
	str	r0, [lr, #16]
	str	r0, [lr, #12]
	ldr	r4, .L4+44
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L4+48
	ldr	r1, .L4+52
	str	ip, [lr, #4]
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L4+56
	ldr	r1, .L4+60
	mov	lr, pc
	bx	r4
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	hOff
	.word	spaceship
	.word	vOff
	.word	p2
	.word	p1
	.word	fry
	.word	p3
	.word	isLost
	.word	treasureNum
	.word	p4
	.word	treasureP1
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
	mov	r2, #0
	mov	r4, #20
	mov	lr, #90
	mov	r0, #1
	mov	r1, #64
	mov	ip, #4
	ldr	r3, .L11
	stm	r3, {r4, lr}
	str	ip, [r3, #40]
	str	r0, [r3, #20]
	str	r0, [r3, #24]
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	pop	{r4, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	fry
	.size	initFry, .-initFry
	.align	2
	.global	initLeela
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLeela, %function
initLeela:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #20
	mov	lr, #90
	mov	r0, #1
	mov	r1, #64
	mov	ip, #4
	ldr	r3, .L15
	stm	r3, {r4, lr}
	str	ip, [r3, #40]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	pop	{r4, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	leela
	.size	initLeela, .-initLeela
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
	ldr	r3, .L19
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
.L20:
	.align	2
.L19:
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
	ldr	r3, .L25
	add	r1, r3, ip
.L22:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #20
	cmp	r3, r1
	bne	.L22
	ldr	lr, [sp], #4
	bx	lr
.L26:
	.align	2
.L25:
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
	ldr	r2, .L29
	ldr	r1, .L29+4
	str	r4, [r2]
	str	r0, [r2, #4]
	str	ip, [r2, #16]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	ldr	r2, .L29+8
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
.L30:
	.align	2
.L29:
	.word	life2
	.word	life1
	.word	life3
	.size	initLives, .-initLives
	.align	2
	.global	initBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBullets, %function
initBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #8
	mov	r4, #0
	mov	lr, #1
	ldr	r1, .L35
	ldr	r3, .L35+4
	ldr	ip, [r1, #12]
	ldr	r0, [r1]
	ldr	r1, [r1, #4]
	add	r0, r0, ip
	add	r1, r1, #20
	add	ip, r3, #280
.L32:
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r4, [r3, #24]
	str	lr, [r3, #12]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L32
	pop	{r4, lr}
	bx	lr
.L36:
	.align	2
.L35:
	.word	leela
	.word	bullets
	.size	initBullets, .-initBullets
	.align	2
	.global	initTreasure
	.syntax unified
	.arm
	.fpu softvfp
	.type	initTreasure, %function
initTreasure:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #0
	mov	lr, #220
	mov	r2, #32
	mov	ip, #100
	mov	r0, #1
	ldr	r3, .L39
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #8]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r2, [r3, #16]
	str	r2, [r3, #12]
	ldr	lr, [sp], #4
	bx	lr
.L40:
	.align	2
.L39:
	.word	treasureP1
	.size	initTreasure, .-initTreasure
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
	ldr	r3, .L42
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L43:
	.align	2
.L42:
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
	ldr	r3, .L45
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L46:
	.align	2
.L45:
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
	ldr	r3, .L48
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L49:
	.align	2
.L48:
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
	ldr	r3, .L51
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L52:
	.align	2
.L51:
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
	mov	r1, #1
	push	{r4, r5, r6, r7, r8, lr}
	mov	lr, #32
	ldr	r0, .L59
	ldr	r2, .L59+4
	ldr	r3, .L59+8
	ldrh	ip, [r0]
	ldrh	r0, [r2]
	ldr	r2, [r3]
	ldr	r3, .L59+12
	add	ip, ip, #104
	add	r0, r0, #64
	cmp	r2, r1
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #16]
	str	lr, [r3, #12]
	str	lr, [r3, #8]
	beq	.L58
	cmp	r2, #0
	bne	.L56
	mov	r0, #64
	mov	r4, #20
	mov	lr, #90
	mov	ip, #4
	ldr	r3, .L59+16
	str	r4, [r3]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r2, [r3, #16]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	lr, [r3, #4]
	str	ip, [r3, #40]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
.L56:
	mov	r3, #200
	mov	r7, #90
	mov	ip, #20
	mov	r1, #32
	mov	lr, #1
	mov	r6, #10
	mov	r4, #120
	mov	r5, #180
	ldr	r0, .L59+20
	ldr	r2, .L59+24
	str	r3, [r0]
	stm	r2, {r3, r7}
	ldr	r3, .L59+28
	str	ip, [r0, #4]
	str	ip, [r3]
	ldr	ip, .L59+32
	str	lr, [r0, #16]
	str	lr, [r2, #16]
	str	lr, [r3, #16]
	str	r6, [r3, #4]
	str	r1, [r0, #12]
	str	r1, [r0, #8]
	str	r1, [r2, #12]
	str	r1, [r2, #8]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r1, [ip, #12]
	str	r1, [ip, #8]
	str	r4, [ip, #4]
	mov	r3, #256
	ldr	r4, .L59+36
	mov	r0, #3
	ldr	r2, .L59+40
	ldr	r1, .L59+44
	str	lr, [ip, #16]
	str	r5, [ip]
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L59+48
	ldr	r1, .L59+52
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L58:
	mov	r1, #0
	mov	r0, #64
	mov	r4, #20
	mov	lr, #90
	mov	ip, #4
	ldr	r3, .L59+56
	str	r4, [r3]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	lr, [r3, #4]
	str	ip, [r3, #40]
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	str	r1, [r3, #36]
	str	r1, [r3, #32]
	str	r1, [r3, #44]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	b	.L56
.L60:
	.align	2
.L59:
	.word	hOff
	.word	vOff
	.word	characterChoice
	.word	spaceship
	.word	fry
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	DMANow
	.word	83886592
	.word	spritesheet5Pal
	.word	100728832
	.word	spritesheet5Tiles
	.word	leela
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
	ldr	r3, .L71
	mov	lr, pc
	bx	r3
	mov	r0, #1
	mov	r3, #16
	mov	ip, #5
	mov	r7, #26
	mov	r6, #47
	mov	lr, #60
	mov	r5, r0
	mov	r4, #80
	mov	r2, #32
	ldr	r1, .L71+4
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	str	r0, [r1, #16]
	str	ip, [r1]
	str	ip, [r1, #4]
	ldr	r1, .L71+8
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	str	ip, [r1, #4]
	str	r0, [r1, #16]
	str	r7, [r1]
	ldr	r1, .L71+12
	str	r3, [r1, #8]
	str	r3, [r1, #12]
	ldr	r3, .L71+16
	str	ip, [r1, #4]
	str	r0, [r1, #16]
	str	r6, [r1]
	add	r1, r3, lr
.L62:
	str	r5, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	stm	r3, {r4, lr}
	add	r3, r3, #20
	cmp	r3, r1
	bne	.L62
	ldr	r2, .L71+20
	mov	r0, #8
	mov	r3, r2
	mov	r5, #0
	mov	r4, #1
	ldr	r6, .L71+24
	ldr	r1, [r6, #12]
	ldr	lr, [r6]
	ldr	ip, [r6, #4]
	add	lr, lr, r1
	add	ip, ip, #20
	add	r1, r2, #280
.L63:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r5, [r3, #24]
	str	r4, [r3, #12]
	add	r3, r3, #28
	cmp	r3, r1
	bne	.L63
	mov	lr, #203
	mov	ip, #120
	mov	r3, #1
	ldr	r0, .L71+28
	str	lr, [r0]
	str	r4, [r0, #8]
	str	ip, [r0, #4]
.L64:
	str	r3, [r2, #12]
	add	r2, r2, #28
	cmp	r2, r1
	bne	.L64
	mov	r1, #0
	mov	ip, #64
	mov	r7, #170
	mov	r5, #90
	mov	r4, #2
	mov	lr, #4
	ldr	r2, .L71+32
	ldr	r0, [r2]
	ldr	r2, .L71+36
	str	r1, [r2, #16]
	ldr	r2, .L71+40
	str	r1, [r2, #16]
	ldr	r2, .L71+44
	str	r1, [r2, #16]
	ldr	r2, .L71+48
	str	r1, [r2, #16]
	ldr	r2, .L71+52
	str	r1, [r2, #16]
	ldr	r2, .L71+56
	cmp	r0, #1
	str	r1, [r2, #32]
	str	r3, [r2, #20]
	str	r3, [r2, #24]
	str	r3, [r2, #16]
	str	r3, [r2, #36]
	str	r7, [r2]
	str	r5, [r2, #4]
	str	r4, [r2, #28]
	str	lr, [r2, #40]
	str	ip, [r2, #12]
	str	ip, [r2, #8]
	streq	r0, [r6, #16]
	beq	.L66
	cmp	r0, #0
	ldreq	r2, .L71+60
	streq	r3, [r2, #16]
.L66:
	mov	r2, #0
	ldr	r3, .L71+64
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L72:
	.align	2
.L71:
	.word	hideSprites
	.word	life1
	.word	life2
	.word	life3
	.word	blocks
	.word	bullets
	.word	leela
	.word	treasureP1
	.word	characterChoice
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	alien
	.word	fry
	.word	life1Counter
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, .L78
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r2, #1
	mov	r4, #64
	mov	r10, #170
	mov	r9, #90
	mov	r8, #2
	mov	r7, #4
	mov	r1, #16
	mov	ip, #5
	mov	r6, #26
	mov	r5, #47
	ldr	r3, .L78+4
	ldr	lr, [r3]
	ldr	r3, .L78+8
	str	r0, [r3, #16]
	ldr	r3, .L78+12
	str	r0, [r3, #16]
	ldr	r3, .L78+16
	str	r0, [r3, #16]
	ldr	r3, .L78+20
	str	r0, [r3, #16]
	ldr	r3, .L78+24
	str	r0, [r3, #16]
	ldr	r3, .L78+28
	str	r10, [r3]
	str	r9, [r3, #4]
	str	r2, [r3, #16]
	str	r4, [r3, #12]
	str	r4, [r3, #8]
	str	r0, [r3, #32]
	str	r8, [r3, #28]
	str	r7, [r3, #40]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	ldr	r3, .L78+32
	ldr	r0, .L78+36
	str	ip, [r3, #4]
	str	r2, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r6, [r3]
	ldr	r3, .L78+40
	cmp	lr, r2
	str	r2, [r0, #16]
	str	ip, [r0]
	str	ip, [r0, #4]
	str	r1, [r0, #8]
	str	r1, [r0, #12]
	str	ip, [r3, #4]
	str	r2, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r5, [r3]
	beq	.L77
	cmp	lr, #0
	ldreq	r3, .L78+44
	streq	r2, [r3, #16]
.L75:
	mov	r2, #0
	ldr	r3, .L78+48
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3]
	bx	lr
.L77:
	ldr	r3, .L78+52
	str	lr, [r3, #16]
	b	.L75
.L79:
	.align	2
.L78:
	.word	hideSprites
	.word	characterChoice
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	alien
	.word	life2
	.word	life1
	.word	life3
	.word	fry
	.word	life1Counter
	.word	leela
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, .L85
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r2, #1
	mov	r4, #64
	mov	r10, #170
	mov	r9, #90
	mov	r8, #2
	mov	r7, #4
	mov	r1, #16
	mov	ip, #5
	mov	r6, #26
	mov	r5, #47
	ldr	r3, .L85+4
	ldr	lr, [r3]
	ldr	r3, .L85+8
	str	r0, [r3, #16]
	ldr	r3, .L85+12
	str	r0, [r3, #16]
	ldr	r3, .L85+16
	str	r0, [r3, #16]
	ldr	r3, .L85+20
	str	r0, [r3, #16]
	ldr	r3, .L85+24
	str	r0, [r3, #16]
	ldr	r3, .L85+28
	str	r10, [r3]
	str	r9, [r3, #4]
	str	r2, [r3, #16]
	str	r4, [r3, #12]
	str	r4, [r3, #8]
	str	r0, [r3, #32]
	str	r8, [r3, #28]
	str	r7, [r3, #40]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	ldr	r3, .L85+32
	ldr	r0, .L85+36
	str	ip, [r3, #4]
	str	r2, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r6, [r3]
	ldr	r3, .L85+40
	cmp	lr, r2
	str	r2, [r0, #16]
	str	ip, [r0]
	str	ip, [r0, #4]
	str	r1, [r0, #8]
	str	r1, [r0, #12]
	str	ip, [r3, #4]
	str	r2, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r5, [r3]
	beq	.L84
	cmp	lr, #0
	ldreq	r3, .L85+44
	streq	r2, [r3, #16]
.L82:
	mov	r2, #0
	ldr	r3, .L85+48
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3]
	bx	lr
.L84:
	ldr	r3, .L85+52
	str	lr, [r3, #16]
	b	.L82
.L86:
	.align	2
.L85:
	.word	hideSprites
	.word	characterChoice
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	alien
	.word	life2
	.word	life1
	.word	life3
	.word	fry
	.word	life3Counter
	.word	leela
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, .L92
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r2, #1
	mov	r1, #16
	mov	ip, #5
	mov	r6, #26
	mov	r4, #64
	mov	r10, #170
	mov	r9, #90
	mov	r8, #2
	mov	r7, #4
	mov	r5, #47
	ldr	r3, .L92+4
	ldr	lr, [r3]
	ldr	r3, .L92+8
	str	r0, [r3, #16]
	ldr	r3, .L92+12
	str	r0, [r3, #16]
	ldr	r3, .L92+16
	str	r0, [r3, #16]
	ldr	r3, .L92+20
	str	r0, [r3, #16]
	ldr	r3, .L92+24
	str	r0, [r3, #16]
	ldr	r3, .L92+28
	str	r0, [r3, #32]
	ldr	r0, .L92+32
	str	r2, [r0, #16]
	str	ip, [r0]
	str	ip, [r0, #4]
	str	r1, [r0, #8]
	str	r1, [r0, #12]
	ldr	r0, .L92+36
	str	ip, [r0, #4]
	str	r2, [r0, #16]
	str	r1, [r0, #8]
	str	r1, [r0, #12]
	str	r6, [r0]
	ldr	r0, .L92+40
	cmp	lr, r2
	str	r10, [r3]
	str	r9, [r3, #4]
	str	r8, [r3, #28]
	str	r7, [r3, #40]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #16]
	str	r2, [r3, #36]
	str	r4, [r3, #12]
	str	r4, [r3, #8]
	str	ip, [r0, #4]
	str	r2, [r0, #16]
	str	r1, [r0, #8]
	str	r1, [r0, #12]
	str	r5, [r0]
	beq	.L91
	cmp	lr, #0
	ldreq	r3, .L92+44
	streq	r2, [r3, #16]
.L89:
	mov	r2, #0
	ldr	r3, .L92+48
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3]
	bx	lr
.L91:
	ldr	r3, .L92+52
	str	lr, [r3, #16]
	b	.L89
.L93:
	.align	2
.L92:
	.word	hideSprites
	.word	characterChoice
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	alien
	.word	life1
	.word	life2
	.word	life3
	.word	fry
	.word	life4Counter
	.word	leela
	.size	initPlanet4, .-initPlanet4
	.align	2
	.global	shootBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	shootBullets, %function
shootBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, #1
	ldr	r3, .L103
	ldr	r2, .L103+4
	ldr	r1, .L103+8
	ldm	r2, {r0, ip}
	ldr	lr, [r2, #12]
	ldr	r5, [r3]
	ldr	r2, [r3, #12]
	ldr	r4, [r3, #4]
	ldr	r3, .L103+12
	ldr	r1, [r1]
	add	lr, lr, r0
	add	ip, ip, #10
	add	r5, r5, r2
	add	r4, r4, #20
	add	r0, r3, #280
.L97:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L99
	cmp	r1, #1
	streq	r5, [r3]
	streq	r4, [r3, #4]
	streq	r1, [r3, #24]
	beq	.L99
	cmp	r1, #0
	streq	lr, [r3]
	streq	ip, [r3, #4]
	streq	r6, [r3, #24]
.L99:
	add	r3, r3, #28
	cmp	r3, r0
	bne	.L97
	pop	{r4, r5, r6, lr}
	bx	lr
.L104:
	.align	2
.L103:
	.word	leela
	.word	fry
	.word	characterChoice
	.word	bullets
	.size	shootBullets, .-shootBullets
	.align	2
	.global	updateFry
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFry, %function
updateFry:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L114
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L114+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L106
	ldr	r3, [r4, #16]
	cmp	r3, #1
	beq	.L112
.L106:
	ldr	r3, .L114+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L110
	ldr	r3, .L114+12
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L113
.L110:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L112:
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
	b	.L106
.L113:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L115:
	.align	2
.L114:
	.word	fry
	.word	238609294
	.word	oldButtons
	.word	buttons
	.size	updateFry, .-updateFry
	.align	2
	.global	updateLeela
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLeela, %function
updateLeela:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L124
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L124+4
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	add	r3, r2, r3, lsl #3
	ldr	ip, [r4, #20]
	add	r3, r3, r0
	add	r2, r1, ip
	cmp	r0, r3, ror #1
	str	r2, [r4]
	bcc	.L117
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L117:
	ldr	r3, .L124+8
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L121
	ldr	r3, .L124+12
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L123
.L121:
	ldr	r3, [r4, #44]
	add	r3, r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L123:
	bl	shootBullets
	mov	r3, #1
	str	r3, [r4, #44]
	pop	{r4, lr}
	bx	lr
.L125:
	.align	2
.L124:
	.word	leela
	.word	238609294
	.word	oldButtons
	.word	buttons
	.size	updateLeela, .-updateLeela
	.align	2
	.global	updateBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullets, %function
updateBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	ldr	r2, [r0, #4]
	ldr	r3, [r0, #20]
	add	r3, r2, r3
	cmp	r3, #0
	ble	.L128
	ldr	r1, [r0, #12]
	ldr	r3, [r0]
	add	r3, r3, r1
	sub	r1, r3, #1
	cmp	r1, #237
	bls	.L132
.L128:
	mov	r3, #0
	str	r3, [r0, #24]
	bx	lr
.L132:
	ldr	r1, [r0, #8]
	add	r2, r1, r2
	str	r3, [r0]
	str	r2, [r0, #4]
	bx	lr
	.size	updateBullets, .-updateBullets
	.align	2
	.global	updateTreasure
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateTreasure, %function
updateTreasure:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L145
	ldr	r3, [r4]
	ldr	r2, [r4, #8]
	ldr	r6, .L145+4
	sub	r3, r3, r2
	sub	sp, sp, #16
	ldr	r2, .L145+8
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	ldr	r5, [r6]
	cmp	r5, #1
	beq	.L143
.L134:
	cmp	r5, #0
	beq	.L144
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L144:
	add	r6, r4, #12
	ldm	r6, {r6, ip}
	ldr	r0, .L145+12
	ldr	lr, [r4, #4]
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	ldm	r0, {r0, r1}
	str	ip, [sp, #8]
	ldr	ip, [r4]
	str	r6, [sp, #12]
	stm	sp, {ip, lr}
	ldr	r6, .L145+16
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	ldrne	r2, .L145+20
	ldrne	r3, [r2]
	addne	r3, r3, #1
	strne	r5, [r4, #20]
	strne	r3, [r2]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L143:
	add	r5, r4, #12
	ldm	r5, {r5, ip}
	ldr	r0, .L145+24
	ldr	lr, [r4, #4]
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #12]
	ldm	r0, {r0, r1}
	str	ip, [sp, #8]
	ldr	ip, [r4]
	str	r5, [sp, #12]
	stm	sp, {ip, lr}
	ldr	r5, .L145+16
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r1, #0
	ldrne	r2, .L145+20
	ldrne	r3, [r2]
	addne	r3, r3, #1
	ldreq	r5, [r6]
	ldrne	r5, [r6]
	strne	r3, [r2]
	strne	r1, [r4, #20]
	b	.L134
.L146:
	.align	2
.L145:
	.word	treasureP1
	.word	characterChoice
	.word	hideSprites
	.word	fry
	.word	collision
	.word	treasureNum
	.word	leela
	.size	updateTreasure, .-updateTreasure
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
	ldr	r3, .L200
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, lr}
	bne	.L148
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	ip, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r0, .L200+4
	add	r2, r2, ip, lsl #5
	ldr	ip, [r3, #4]
	lsl	r2, r2, #3
	strh	r1, [r0, #2]	@ movhi
	strh	ip, [r0]	@ movhi
	strh	r2, [r0, #4]	@ movhi
.L148:
	ldr	r2, .L200+8
	ldr	r1, [r3, #32]
	ldr	r0, [r2, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r3, #32]
	bne	.L149
	ldr	r1, [r2]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	ip, [r2, #36]
	ldr	r3, [r2, #28]
	ldr	r0, .L200+4
	add	r3, r3, ip, lsl #5
	ldr	ip, [r2, #4]
	lsl	r3, r3, #3
	strh	r1, [r0, #90]	@ movhi
	strh	ip, [r0, #88]	@ movhi
	strh	r3, [r0, #92]	@ movhi
.L149:
	ldr	r3, .L200+12
	ldr	r1, [r2, #32]
	ldr	r0, [r3, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r2, #32]
	bne	.L150
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	ip, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r0, .L200+4
	add	r2, r2, ip, lsl #5
	ldr	ip, [r3, #4]
	lsl	r2, r2, #3
	strh	r1, [r0, #50]	@ movhi
	strh	ip, [r0, #48]	@ movhi
	strh	r2, [r0, #52]	@ movhi
.L150:
	ldr	r1, .L200+16
	ldr	r2, [r3, #32]
	ldr	r0, [r1, #16]
	add	r2, r2, #1
	cmp	r0, #0
	str	r2, [r3, #32]
	beq	.L151
	mov	r0, #152
	ldr	r2, [r1]
	ldr	r3, .L200+4
	ldr	r1, [r1, #4]
	orr	r2, r2, #16384
	strh	r2, [r3, #58]	@ movhi
	strh	r1, [r3, #56]	@ movhi
	strh	r0, [r3, #60]	@ movhi
.L151:
	ldr	r3, .L200+20
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L152
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	r3, .L200+4
	orr	r2, r2, #16384
	strh	r2, [r3, #66]	@ movhi
	strh	r0, [r3, #64]	@ movhi
	strh	r1, [r3, #68]	@ movhi
.L152:
	ldr	r3, .L200+24
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L153
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	r3, .L200+4
	orr	r2, r2, #16384
	strh	r2, [r3, #74]	@ movhi
	strh	r0, [r3, #72]	@ movhi
	strh	r1, [r3, #76]	@ movhi
.L153:
	mov	r4, #148
	ldr	r3, .L200+28
	ldr	r1, .L200+4
	ldr	lr, .L200+32
	add	r0, r3, #60
.L155:
	ldr	r2, [r3, #16]
	cmp	r2, #0
	ldmne	r3, {r2, ip}
	add	r3, r3, #20
	orrne	r2, r2, lr
	strhne	r4, [r1, #84]	@ movhi
	strhne	r2, [r1, #82]	@ movhi
	strhne	ip, [r1, #80]	@ movhi
	cmp	r3, r0
	bne	.L155
	mov	lr, #154
	ldr	r3, .L200+36
	ldr	r1, .L200+4
	add	r0, r3, #280
.L157:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	ldmne	r3, {r2, ip}
	add	r3, r3, #28
	strhne	lr, [r1, #116]	@ movhi
	strhne	ip, [r1, #112]	@ movhi
	strhne	r2, [r1, #114]	@ movhi
	cmp	r3, r0
	bne	.L157
	ldr	r2, .L200+40
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L158
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #144
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L200+4
	strh	r3, [r2, #10]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	strh	r1, [r2, #12]	@ movhi
.L158:
	ldr	r2, .L200+44
	ldr	r3, [r2, #20]
	cmp	r3, #0
	beq	.L159
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #156
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L200+4
	strh	r3, [r2, #106]	@ movhi
	strh	r0, [r2, #104]	@ movhi
	strh	r1, [r2, #108]	@ movhi
.L159:
	ldr	r2, .L200+48
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L160
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #16
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L200+4
	strh	r3, [r2, #18]	@ movhi
	strh	r0, [r2, #16]	@ movhi
	strh	r1, [r2, #20]	@ movhi
.L160:
	ldr	r2, .L200+52
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L161
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #20
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L200+4
	strh	r3, [r2, #26]	@ movhi
	strh	r0, [r2, #24]	@ movhi
	strh	r1, [r2, #28]	@ movhi
.L161:
	ldr	r2, .L200+56
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L162
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #24
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L200+4
	strh	r3, [r2, #34]	@ movhi
	strh	r0, [r2, #32]	@ movhi
	strh	r1, [r2, #36]	@ movhi
.L162:
	ldr	r2, .L200+60
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L163
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #28
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L200+4
	strh	r3, [r2, #42]	@ movhi
	strh	r0, [r2, #40]	@ movhi
	strh	r1, [r2, #44]	@ movhi
.L163:
	ldr	r3, .L200+64
	mov	lr, pc
	bx	r3
	ldr	r4, .L200+68
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L200+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L200+72
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L200+76
	ldrh	r3, [r3]
	pop	{r4, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L201:
	.align	2
.L200:
	.word	fry
	.word	shadowOAM
	.word	leela
	.word	alien
	.word	life1
	.word	life2
	.word	life3
	.word	blocks
	.word	-32768
	.word	bullets
	.word	spaceship
	.word	treasureP1
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
	ldr	r2, .L208
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L208+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldreq	r3, .L208+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	addeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L208+4
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldreq	r3, .L208+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	subeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L208+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldreq	r3, .L208+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	subeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L208+4
	ldrh	r3, [r3, #48]
	tst	r3, #128
	ldreq	r3, .L208+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	addeq	r2, r2, r1
	streq	r2, [r3, #4]
	pop	{r4, lr}
	bx	lr
.L209:
	.align	2
.L208:
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
	mov	ip, #25
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L297
	ldrh	r3, [r2]
	ldr	r0, .L297+4
	ldr	r4, .L297+8
	add	r3, r3, #1
	ldr	r1, .L297+12
	sub	sp, sp, #20
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L297+16
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	add	r3, r2, r3, lsl #3
	ldr	ip, [r4, #20]
	add	r3, r3, r0
	sub	r2, r1, ip
	cmp	r0, r3, ror #1
	str	r2, [r4]
	bcc	.L211
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L211:
	ldr	r6, .L297+20
	bl	updateLeela
	ldr	r3, [r6, #24]
	ldr	r2, .L297+24
	cmp	r3, r2
	bgt	.L294
.L213:
	mov	r5, #0
	mov	r7, r5
	add	r2, r3, #1
	ldr	r3, .L297+28
	str	r2, [r6, #24]
	ldr	r0, [r4]
	ldr	lr, [r4, #16]
	add	ip, r3, #280
.L215:
	ldr	r2, [r3]
	ldr	r1, [r3, #20]
	add	r2, r2, r1
	cmp	r0, r2
	bne	.L214
	cmp	lr, #0
	movne	r5, #1
	movne	lr, #0
	strne	r7, [r3, #24]
.L214:
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L215
	cmp	r5, #0
	ldr	r5, .L297+32
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	ldr	r6, .L297+36
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	strne	lr, [r4, #16]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	mov	r3, r0
	beq	.L217
.L219:
	ldr	r0, [r4]
.L218:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L220
.L222:
	ldr	r0, [r4]
.L221:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L223
.L225:
	ldr	r0, [r4]
.L224:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L295
.L226:
	ldr	r5, .L297+40
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	mov	r3, r0
	beq	.L227
.L229:
	ldr	r0, [r4]
.L228:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L230
.L232:
	ldr	r0, [r4]
.L231:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L233
.L235:
	ldr	r0, [r4]
.L234:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L296
.L236:
	ldr	r3, [r4]
	ldr	r2, [r4, #12]
	adds	r3, r3, r2
	streq	r3, [r4, #16]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	drawGame
.L217:
	ldr	r1, .L297+44
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L219
	ldr	r0, [r4, #16]
	cmp	r0, #0
	beq	.L219
	ldr	r0, [r5, #16]
	cmp	r0, #0
	beq	.L219
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L297+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L218
.L296:
	ldr	r3, .L297+44
	ldr	r3, [r3]
	cmp	r3, #3
	bne	.L236
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L236
	ldr	r3, [r5, #16]
	cmp	r3, #0
	ldrne	r3, .L297+52
	strne	r0, [r3]
	b	.L236
.L233:
	ldr	r3, .L297+44
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L235
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L235
	ldr	r2, [r5, #16]
	cmp	r2, #0
	beq	.L235
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L297+56
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L234
.L230:
	ldr	r3, .L297+44
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L232
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L232
	ldr	r2, [r5, #16]
	cmp	r2, #0
	beq	.L232
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L297+60
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L231
.L227:
	ldr	r1, .L297+44
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L229
	ldr	r0, [r4, #16]
	cmp	r0, #0
	beq	.L229
	ldr	r0, [r5, #16]
	cmp	r0, #0
	beq	.L229
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L297+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L228
.L295:
	ldr	r3, .L297+44
	ldr	r3, [r3]
	cmp	r3, #3
	bne	.L226
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L226
	ldr	r3, [r5, #16]
	cmp	r3, #0
	ldrne	r3, .L297+52
	strne	r0, [r3]
	b	.L226
.L223:
	ldr	r3, .L297+44
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L225
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L225
	ldr	r2, [r5, #16]
	cmp	r2, #0
	beq	.L225
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L297+56
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L224
.L220:
	ldr	r3, .L297+44
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L222
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L222
	ldr	r2, [r5, #16]
	cmp	r2, #0
	beq	.L222
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L297+60
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L221
.L294:
	mov	r3, #1
	str	r3, [r6, #20]
	bl	updateTreasure
	ldr	r3, [r6, #24]
	b	.L213
.L298:
	.align	2
.L297:
	.word	hOff
	.word	vOff
	.word	alien
	.word	hideSprites
	.word	238609294
	.word	treasureP1
	.word	270
	.word	bullets
	.word	fry
	.word	collision
	.word	leela
	.word	life1Counter
	.word	life3
	.word	isLost
	.word	life1
	.word	life2
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
	mov	ip, #25
	push	{r4, r5, r6, lr}
	ldr	r2, .L324
	ldrh	r3, [r2]
	ldr	r0, .L324+4
	ldr	r4, .L324+8
	add	r3, r3, #1
	ldr	r1, .L324+12
	sub	sp, sp, #16
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L324+16
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	add	r3, r2, r3, lsl #3
	ldr	ip, [r4, #20]
	add	r3, r3, r0
	sub	r2, r1, ip
	cmp	r0, r3, ror #1
	str	r2, [r4]
	bcc	.L300
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L300:
	ldr	r5, .L324+20
	bl	updateLeela
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	r6, .L324+24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	mov	r3, r0
	beq	.L302
.L304:
	ldr	r0, [r4]
.L303:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L305
.L307:
	ldr	r0, [r4]
.L306:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L308
.L310:
	ldr	r0, [r4]
.L309:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	bne	.L311
	ldr	r3, .L324+28
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L324+32
	streq	r0, [r3]
.L311:
	ldr	r0, [r4]
	ldr	r2, [r4, #12]
	ldr	r5, .L324+36
	adds	r3, r0, r2
	streq	r3, [r4, #16]
	ldmib	r5, {r1, r3, ip}
	str	r3, [sp, #12]
	ldr	r3, [r5]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	ldmib	r4, {r1, r3}
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	mov	r3, r0
	beq	.L313
.L315:
	ldr	r0, [r4]
.L314:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L316
.L318:
	ldr	r0, [r4]
.L317:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L319
.L321:
	ldr	r0, [r4]
.L320:
	ldr	r3, [r5, #8]
	ldr	r1, [r5, #12]
	str	r3, [sp, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	bne	.L322
	ldr	r3, .L324+28
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L324+32
	streq	r0, [r3]
.L322:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	drawGame
.L319:
	ldr	r3, .L324+28
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L321
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L324+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L320
.L316:
	ldr	r3, .L324+28
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L318
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L324+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L317
.L313:
	ldr	r1, .L324+28
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L315
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L324+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L314
.L308:
	ldr	r3, .L324+28
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L310
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L324+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L309
.L305:
	ldr	r3, .L324+28
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L307
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L324+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L306
.L302:
	ldr	r1, .L324+28
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L304
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L324+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L303
.L325:
	.align	2
.L324:
	.word	hOff
	.word	vOff
	.word	alien
	.word	hideSprites
	.word	238609294
	.word	fry
	.word	collision
	.word	life2Counter
	.word	isLost
	.word	leela
	.word	life1
	.word	life2
	.word	life3
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
	mov	ip, #45
	push	{r4, r5, r6, lr}
	ldr	r2, .L351
	ldrh	r3, [r2]
	ldr	r0, .L351+4
	ldr	r4, .L351+8
	add	r3, r3, #1
	ldr	r1, .L351+12
	sub	sp, sp, #16
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	bl	updateFry
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L351+16
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	add	r3, r2, r3, lsl #3
	ldr	ip, [r4, #20]
	add	r3, r3, r0
	sub	r2, r1, ip
	cmp	r0, r3, ror #1
	str	r2, [r4]
	bcc	.L327
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L327:
	ldr	r5, .L351+20
	bl	updateLeela
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	r6, .L351+24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	mov	r3, r0
	beq	.L329
.L331:
	ldr	r0, [r4]
.L330:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L332
.L334:
	ldr	r0, [r4]
.L333:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L335
.L337:
	ldr	r0, [r4]
.L336:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	bne	.L338
	ldr	r3, .L351+28
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L351+32
	streq	r0, [r3]
.L338:
	ldr	r5, .L351+36
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	mov	r3, r0
	beq	.L339
.L341:
	ldr	r0, [r4]
.L340:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L342
.L344:
	ldr	r0, [r4]
.L343:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L345
.L347:
	ldr	r0, [r4]
.L346:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	bne	.L348
	ldr	r3, .L351+28
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L351+32
	streq	r0, [r3]
.L348:
	ldr	r3, [r4]
	ldr	r2, [r4, #12]
	adds	r3, r3, r2
	streq	r3, [r4, #16]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	drawGame
.L345:
	ldr	r3, .L351+28
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L347
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L351+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L346
.L342:
	ldr	r3, .L351+28
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L344
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L351+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L343
.L339:
	ldr	r1, .L351+28
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L341
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L351+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L340
.L335:
	ldr	r3, .L351+28
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L337
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L351+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L336
.L332:
	ldr	r3, .L351+28
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L334
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L351+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L333
.L329:
	ldr	r1, .L351+28
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L331
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L351+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L330
.L352:
	.align	2
.L351:
	.word	hOff
	.word	vOff
	.word	alien
	.word	hideSprites
	.word	238609294
	.word	fry
	.word	collision
	.word	life3Counter
	.word	isLost
	.word	leela
	.word	life1
	.word	life2
	.word	life3
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
	mov	ip, #45
	push	{r4, r5, r6, lr}
	ldr	r2, .L380
	ldrh	r3, [r2]
	ldr	r0, .L380+4
	ldr	r5, .L380+8
	add	r3, r3, #1
	ldr	r1, .L380+12
	sub	sp, sp, #16
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L380+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L354
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L354:
	ldr	r4, .L380+20
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r0, .L380+16
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r4]
	add	r3, r2, r3, lsl #3
	ldr	ip, [r4, #20]
	add	r3, r3, r0
	sub	r2, r1, ip
	cmp	r0, r3, ror #1
	str	r2, [r4]
	bcc	.L356
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L356:
	bl	updateLeela
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	r6, .L380+24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	mov	r3, r0
	beq	.L358
.L360:
	ldr	r0, [r4]
.L359:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L361
.L363:
	ldr	r0, [r4]
.L362:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L364
.L366:
	ldr	r0, [r4]
.L365:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	bne	.L367
	ldr	r3, .L380+28
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L380+32
	streq	r0, [r3]
.L367:
	ldr	r5, .L380+36
	add	r0, r5, #8
	ldm	r0, {r0, r1}
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldm	r4, {r0, r1}
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	mov	r3, r0
	beq	.L368
.L370:
	ldr	r0, [r4]
.L369:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L371
.L373:
	ldr	r0, [r4]
.L372:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	beq	.L374
.L376:
	ldr	r0, [r4]
.L375:
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	ip, [r5, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #1
	bne	.L377
	ldr	r3, .L380+28
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L380+32
	streq	r0, [r3]
.L377:
	ldr	r3, [r4]
	ldr	r2, [r4, #12]
	adds	r3, r3, r2
	streq	r3, [r4, #16]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	drawGame
.L374:
	ldr	r3, .L380+28
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L376
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L380+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L375
.L371:
	ldr	r3, .L380+28
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L373
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L380+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L372
.L368:
	ldr	r1, .L380+28
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L370
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L380+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L369
.L364:
	ldr	r3, .L380+28
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L366
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L380+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L365
.L361:
	ldr	r3, .L380+28
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L363
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L380+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L362
.L358:
	ldr	r1, .L380+28
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L360
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L380+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L359
.L381:
	.align	2
.L380:
	.word	hOff
	.word	vOff
	.word	fry
	.word	hideSprites
	.word	238609294
	.word	alien
	.word	collision
	.word	life4Counter
	.word	isLost
	.word	leela
	.word	life1
	.word	life2
	.word	life3
	.size	updatePlanet4, .-updatePlanet4
	.align	2
	.global	initLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLose, %function
initLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L384
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r2, .L384+4
	ldr	lr, .L384+8
	ldr	ip, .L384+12
	ldr	r0, .L384+16
	ldr	r1, .L384+20
	str	r3, [lr, #16]
	str	r3, [r2, #16]
	str	r3, [r2, #36]
	str	r3, [r2, #56]
	pop	{r4, lr}
	str	r3, [ip, #16]
	str	r3, [r0, #16]
	str	r3, [r1, #20]
	b	drawGame
.L385:
	.align	2
.L384:
	.word	hideSprites
	.word	blocks
	.word	fry
	.word	leela
	.word	alien
	.word	treasureP1
	.size	initLose, .-initLose
	.comm	vOff,2,2
	.comm	hOff,2,2
	.comm	characterChoice,4,4
	.comm	treasureNum,4,4
	.comm	isLost,4,4
	.comm	prevState,4,4
	.comm	life4Counter,4,4
	.comm	life3Counter,4,4
	.comm	life2Counter,4,4
	.comm	life1Counter,4,4
	.comm	treasureP1,28,4
	.comm	bullet,28,4
	.comm	bullets,280,4
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
	.comm	leela,48,4
	.comm	fry,48,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
