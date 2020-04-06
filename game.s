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
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFry.part.0, %function
updateFry.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L5
	ldr	r1, [r2, #40]
	ldr	r3, [r2, #36]
	sub	r1, r1, #1
	cmp	r3, r1
	movge	r3, #0
	addlt	r3, r3, #1
	str	r3, [r2, #36]
	bx	lr
.L6:
	.align	2
.L5:
	.word	fry
	.size	updateFry.part.0, .-updateFry.part.0
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
	ldr	r1, .L8
	ldr	r3, .L8+4
	ldrh	r0, [r1]
	ldrh	r1, [r3]
	ldr	r3, .L8+8
	add	r0, r0, #104
	add	r1, r1, #64
	stm	r3, {r0, r1}
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #16]
	str	ip, [r3, #12]
	str	ip, [r3, #8]
	bx	lr
.L9:
	.align	2
.L8:
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
	ldr	r3, .L12
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
.L13:
	.align	2
.L12:
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
	ldr	r3, .L16
	stm	r3, {r4, lr}
	str	ip, [r3, #40]
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
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
	ldr	r3, .L20
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
.L21:
	.align	2
.L20:
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
	ldr	r3, .L26
	add	r1, r3, ip
.L23:
	str	lr, [r3]
	str	ip, [r3, #4]
	str	r0, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	add	r3, r3, #20
	cmp	r3, r1
	bne	.L23
	ldr	lr, [sp], #4
	bx	lr
.L27:
	.align	2
.L26:
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
	ldr	r2, .L30
	ldr	r1, .L30+4
	str	r4, [r2]
	str	r0, [r2, #4]
	str	ip, [r2, #16]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	ldr	r2, .L30+8
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
.L31:
	.align	2
.L30:
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
	mov	r4, #1
	mov	lr, #0
	ldr	r1, .L36
	ldr	r3, .L36+4
	ldr	ip, [r1, #12]
	ldr	r0, [r1]
	ldr	r1, [r1, #4]
	add	r0, r0, ip
	add	r1, r1, #10
	add	ip, r3, #280
.L33:
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	r4, [r3, #12]
	str	lr, [r3, #24]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, ip
	bne	.L33
	pop	{r4, lr}
	bx	lr
.L37:
	.align	2
.L36:
	.word	fry
	.word	bullets
	.size	initBullets, .-initBullets
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
	push	{r4, lr}
	mov	r2, #8
	mov	ip, #1
	mov	r4, #0
	ldr	r1, .L42
	ldr	r3, .L42+4
	ldr	lr, [r1, #12]
	ldr	r0, [r1]
	ldr	r1, [r1, #4]
	add	r0, r0, lr
	add	r1, r1, #10
	add	lr, r3, #280
.L39:
	str	r2, [r3, #20]
	str	r2, [r3, #16]
	str	ip, [r3, #12]
	str	r4, [r3, #24]
	stm	r3, {r0, r1}
	add	r3, r3, #28
	cmp	r3, lr
	bne	.L39
	mov	r2, #32
	mov	r0, #200
	mov	r1, #20
	ldr	r3, .L42+8
	pop	{r4, lr}
	str	r0, [r3]
	str	ip, [r3, #16]
	str	r1, [r3, #4]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L43:
	.align	2
.L42:
	.word	fry
	.word	bullets
	.word	p1
	.size	initp1, .-initp1
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #64
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	ip, #4
	mov	r5, #1
	mov	r4, #32
	mov	r6, #0
	mov	r8, #20
	mov	r7, #90
	ldr	r3, .L46
	ldrh	r1, [r3]
	ldr	r3, .L46+4
	ldrh	r3, [r3]
	ldr	r2, .L46+8
	add	r3, r3, r0
	add	r1, r1, #104
	stm	r2, {r1, r3}
	ldr	r3, .L46+12
	str	r5, [r2, #20]
	str	r5, [r2, #24]
	str	r5, [r2, #16]
	str	r4, [r2, #12]
	str	r4, [r2, #8]
	str	r5, [r3, #20]
	str	r5, [r3, #24]
	str	ip, [r3, #40]
	str	r8, [r3]
	str	r7, [r3, #4]
	str	r6, [r3, #16]
	str	r6, [r3, #28]
	str	r6, [r3, #36]
	str	r6, [r3, #32]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	bl	initp1
	mov	ip, #200
	mov	r10, #180
	mov	r2, #67108864
	mov	r9, #4352
	mov	r0, #10
	mov	lr, #120
	ldr	r3, .L46+16
	str	r6, [r3]
	ldr	r3, .L46+20
	ldr	r1, .L46+24
	str	ip, [r3]
	ldr	ip, .L46+28
	str	r8, [r1]
	str	r4, [r1, #12]
	str	r4, [r1, #8]
	str	r5, [r1, #16]
	str	r7, [r3, #4]
	str	r4, [r3, #12]
	str	r4, [r3, #8]
	str	r5, [r3, #16]
	str	r10, [ip]
	mov	r3, #256
	strh	r9, [r2]	@ movhi
	str	r0, [r1, #4]
	str	r5, [ip, #16]
	mov	r0, #3
	ldr	r5, .L46+32
	ldr	r2, .L46+36
	ldr	r1, .L46+40
	str	r4, [ip, #12]
	str	r4, [ip, #8]
	str	lr, [ip, #4]
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L46+44
	ldr	r1, .L46+48
	mov	lr, pc
	bx	r5
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	hOff
	.word	vOff
	.word	spaceship
	.word	fry
	.word	isLost
	.word	p2
	.word	p3
	.word	p4
	.word	DMANow
	.word	83886592
	.word	spritesheet5Pal
	.word	100728832
	.word	spritesheet5Tiles
	.size	initGame, .-initGame
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
	ldr	r3, .L49
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L50:
	.align	2
.L49:
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
	ldr	r3, .L52
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L53:
	.align	2
.L52:
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
	ldr	r3, .L55
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #16]
	str	r2, [r3, #12]
	str	r2, [r3, #8]
	bx	lr
.L56:
	.align	2
.L55:
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
	push	{r4, r5, r6, lr}
	mov	lr, #32
	ldr	r0, .L63
	ldr	r2, .L63+4
	ldr	r3, .L63+8
	ldrh	ip, [r0]
	ldrh	r0, [r2]
	ldr	r2, [r3]
	ldr	r3, .L63+12
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
	beq	.L62
	cmp	r2, #0
	bne	.L60
	mov	r0, #64
	mov	r4, #20
	mov	lr, #90
	mov	ip, #4
	ldr	r3, .L63+16
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
.L60:
	bl	initp1
	mov	r6, #200
	mov	r1, #32
	mov	r2, #1
	mov	r5, #90
	mov	r4, #20
	mov	ip, #10
	mov	r0, #180
	mov	lr, #120
	ldr	r3, .L63+20
	str	r6, [r3]
	str	r5, [r3, #4]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #16]
	ldr	r3, .L63+24
	stm	r3, {r4, ip}
	ldr	ip, .L63+28
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	str	r2, [r3, #16]
	str	r2, [ip, #16]
	str	r1, [ip, #12]
	str	r1, [ip, #8]
	str	r0, [ip]
	ldr	r4, .L63+32
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L63+36
	ldr	r1, .L63+40
	str	lr, [ip, #4]
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L63+44
	ldr	r1, .L63+48
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L62:
	mov	r1, #0
	mov	r0, #64
	mov	r4, #20
	mov	lr, #90
	mov	ip, #4
	ldr	r3, .L63+52
	str	r4, [r3]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	lr, [r3, #4]
	str	ip, [r3, #40]
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	str	r1, [r3, #36]
	str	r1, [r3, #32]
	str	r0, [r3, #12]
	str	r0, [r3, #8]
	b	.L60
.L64:
	.align	2
.L63:
	.word	hOff
	.word	vOff
	.word	characterChoice
	.word	spaceship
	.word	fry
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
	ldr	r3, .L72
	mov	lr, pc
	bx	r3
	mov	ip, #1
	mov	r3, #16
	mov	lr, #5
	mov	r7, #26
	mov	r6, #47
	mov	r4, #60
	mov	r2, ip
	mov	r5, #80
	mov	r1, #32
	ldr	r0, .L72+4
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	ip, [r0, #16]
	str	lr, [r0]
	str	lr, [r0, #4]
	ldr	r0, .L72+8
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	lr, [r0, #4]
	str	ip, [r0, #16]
	str	r7, [r0]
	ldr	r0, .L72+12
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	ldr	r3, .L72+16
	str	lr, [r0, #4]
	str	ip, [r0, #16]
	str	r6, [r0]
	add	r0, r3, r4
.L66:
	str	r5, [r3]
	str	r4, [r3, #4]
	str	r2, [r3, #16]
	str	r1, [r3, #12]
	str	r1, [r3, #8]
	add	r3, r3, #20
	cmp	r3, r0
	bne	.L66
	mov	r1, #0
	mov	ip, #64
	mov	r6, #170
	mov	r5, #90
	mov	r4, #2
	mov	lr, #4
	ldr	r3, .L72+20
	ldr	r0, [r3]
	ldr	r3, .L72+24
	str	r1, [r3, #16]
	ldr	r3, .L72+28
	str	r1, [r3, #16]
	ldr	r3, .L72+32
	str	r1, [r3, #16]
	ldr	r3, .L72+36
	str	r1, [r3, #16]
	ldr	r3, .L72+40
	str	r1, [r3, #16]
	ldr	r3, .L72+44
	cmp	r0, #1
	str	r1, [r3, #32]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #16]
	str	r2, [r3, #36]
	str	r6, [r3]
	str	r5, [r3, #4]
	str	r4, [r3, #28]
	str	lr, [r3, #40]
	str	ip, [r3, #12]
	str	ip, [r3, #8]
	beq	.L71
	cmp	r0, #0
	ldreq	r3, .L72+48
	streq	r2, [r3, #16]
.L68:
	mov	r2, #0
	ldr	r3, .L72+52
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L71:
	ldr	r3, .L72+56
	str	r0, [r3, #16]
	b	.L68
.L73:
	.align	2
.L72:
	.word	hideSprites
	.word	life1
	.word	life2
	.word	life3
	.word	blocks
	.word	characterChoice
	.word	spaceship
	.word	p1
	.word	p2
	.word	p3
	.word	p4
	.word	alien
	.word	fry
	.word	life1Counter
	.word	leela
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
	ldr	r3, .L79
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
	ldr	r3, .L79+4
	ldr	lr, [r3]
	ldr	r3, .L79+8
	str	r0, [r3, #16]
	ldr	r3, .L79+12
	str	r0, [r3, #16]
	ldr	r3, .L79+16
	str	r0, [r3, #16]
	ldr	r3, .L79+20
	str	r0, [r3, #16]
	ldr	r3, .L79+24
	str	r0, [r3, #16]
	ldr	r3, .L79+28
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
	ldr	r3, .L79+32
	ldr	r0, .L79+36
	str	ip, [r3, #4]
	str	r2, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r6, [r3]
	ldr	r3, .L79+40
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
	beq	.L78
	cmp	lr, #0
	ldreq	r3, .L79+44
	streq	r2, [r3, #16]
.L76:
	mov	r2, #0
	ldr	r3, .L79+48
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3]
	bx	lr
.L78:
	ldr	r3, .L79+52
	str	lr, [r3, #16]
	b	.L76
.L80:
	.align	2
.L79:
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
	ldr	r3, .L86
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
	ldr	r3, .L86+4
	ldr	lr, [r3]
	ldr	r3, .L86+8
	str	r0, [r3, #16]
	ldr	r3, .L86+12
	str	r0, [r3, #16]
	ldr	r3, .L86+16
	str	r0, [r3, #16]
	ldr	r3, .L86+20
	str	r0, [r3, #16]
	ldr	r3, .L86+24
	str	r0, [r3, #16]
	ldr	r3, .L86+28
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
	ldr	r3, .L86+32
	ldr	r0, .L86+36
	str	ip, [r3, #4]
	str	r2, [r3, #16]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r6, [r3]
	ldr	r3, .L86+40
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
	beq	.L85
	cmp	lr, #0
	ldreq	r3, .L86+44
	streq	r2, [r3, #16]
.L83:
	mov	r2, #0
	ldr	r3, .L86+48
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3]
	bx	lr
.L85:
	ldr	r3, .L86+52
	str	lr, [r3, #16]
	b	.L83
.L87:
	.align	2
.L86:
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
	ldr	r3, .L93
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
	ldr	r3, .L93+4
	ldr	lr, [r3]
	ldr	r3, .L93+8
	str	r0, [r3, #16]
	ldr	r3, .L93+12
	str	r0, [r3, #16]
	ldr	r3, .L93+16
	str	r0, [r3, #16]
	ldr	r3, .L93+20
	str	r0, [r3, #16]
	ldr	r3, .L93+24
	str	r0, [r3, #16]
	ldr	r3, .L93+28
	str	r0, [r3, #32]
	ldr	r0, .L93+32
	str	r2, [r0, #16]
	str	ip, [r0]
	str	ip, [r0, #4]
	str	r1, [r0, #8]
	str	r1, [r0, #12]
	ldr	r0, .L93+36
	str	ip, [r0, #4]
	str	r2, [r0, #16]
	str	r1, [r0, #8]
	str	r1, [r0, #12]
	str	r6, [r0]
	ldr	r0, .L93+40
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
	beq	.L92
	cmp	lr, #0
	ldreq	r3, .L93+44
	streq	r2, [r3, #16]
.L90:
	mov	r2, #0
	ldr	r3, .L93+48
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	str	r2, [r3]
	bx	lr
.L92:
	ldr	r3, .L93+52
	str	lr, [r3, #16]
	b	.L90
.L94:
	.align	2
.L93:
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
	.global	updateFry
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFry, %function
updateFry:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L97
	ldr	r2, [r0, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L97+4
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bxcc	lr
	ldr	r3, [r0, #16]
	cmp	r3, #1
	bxne	lr
	b	updateFry.part.0
.L98:
	.align	2
.L97:
	.word	fry
	.word	238609294
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
	@ link register save eliminated.
	bx	lr
	.size	updateLeela, .-updateLeela
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
	ldr	r3, .L149
	ldr	r2, [r3, #16]
	cmp	r2, #1
	push	{r4, lr}
	bne	.L101
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	ip, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r0, .L149+4
	add	r2, r2, ip, lsl #5
	ldr	ip, [r3, #4]
	lsl	r2, r2, #3
	strh	r1, [r0, #2]	@ movhi
	strh	ip, [r0]	@ movhi
	strh	r2, [r0, #4]	@ movhi
.L101:
	ldr	r2, .L149+8
	ldr	r1, [r3, #32]
	ldr	r0, [r2, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r3, #32]
	bne	.L102
	ldr	r1, [r2]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	ip, [r2, #36]
	ldr	r3, [r2, #28]
	ldr	r0, .L149+4
	add	r3, r3, ip, lsl #5
	ldr	ip, [r2, #4]
	lsl	r3, r3, #3
	strh	r1, [r0, #90]	@ movhi
	strh	ip, [r0, #88]	@ movhi
	strh	r3, [r0, #92]	@ movhi
.L102:
	ldr	r3, .L149+12
	ldr	r1, [r2, #32]
	ldr	r0, [r3, #16]
	add	r1, r1, #1
	cmp	r0, #1
	str	r1, [r2, #32]
	bne	.L103
	ldr	r1, [r3]
	mvn	r1, r1, lsl #18
	mvn	r1, r1, lsr #18
	ldr	ip, [r3, #36]
	ldr	r2, [r3, #28]
	ldr	r0, .L149+4
	add	r2, r2, ip, lsl #5
	ldr	ip, [r3, #4]
	lsl	r2, r2, #3
	strh	r1, [r0, #50]	@ movhi
	strh	ip, [r0, #48]	@ movhi
	strh	r2, [r0, #52]	@ movhi
.L103:
	ldr	r1, .L149+16
	ldr	r2, [r3, #32]
	ldr	r0, [r1, #16]
	add	r2, r2, #1
	cmp	r0, #0
	str	r2, [r3, #32]
	beq	.L104
	mov	r0, #152
	ldr	r2, [r1]
	ldr	r3, .L149+4
	ldr	r1, [r1, #4]
	orr	r2, r2, #16384
	strh	r2, [r3, #58]	@ movhi
	strh	r1, [r3, #56]	@ movhi
	strh	r0, [r3, #60]	@ movhi
.L104:
	ldr	r3, .L149+20
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L105
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	r3, .L149+4
	orr	r2, r2, #16384
	strh	r2, [r3, #66]	@ movhi
	strh	r0, [r3, #64]	@ movhi
	strh	r1, [r3, #68]	@ movhi
.L105:
	ldr	r3, .L149+24
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L106
	mov	r1, #152
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	r3, .L149+4
	orr	r2, r2, #16384
	strh	r2, [r3, #74]	@ movhi
	strh	r0, [r3, #72]	@ movhi
	strh	r1, [r3, #76]	@ movhi
.L106:
	mov	r4, #148
	ldr	r3, .L149+28
	ldr	r1, .L149+4
	ldr	lr, .L149+32
	add	r0, r3, #60
.L108:
	ldr	r2, [r3, #16]
	cmp	r2, #0
	ldmne	r3, {r2, ip}
	add	r3, r3, #20
	orrne	r2, r2, lr
	strhne	r4, [r1, #84]	@ movhi
	strhne	r2, [r1, #82]	@ movhi
	strhne	ip, [r1, #80]	@ movhi
	cmp	r3, r0
	bne	.L108
	mov	lr, #216
	ldr	r3, .L149+36
	ldr	r1, .L149+4
	add	r0, r3, #280
.L110:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	ldmne	r3, {r2, ip}
	add	r3, r3, #28
	orrne	r2, r2, #16384
	strhne	lr, [r1, #100]	@ movhi
	strhne	r2, [r1, #98]	@ movhi
	strhne	ip, [r1, #96]	@ movhi
	cmp	r3, r0
	bne	.L110
	ldr	r2, .L149+40
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L111
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #144
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L149+4
	strh	r3, [r2, #10]	@ movhi
	strh	r0, [r2, #8]	@ movhi
	strh	r1, [r2, #12]	@ movhi
.L111:
	ldr	r2, .L149+44
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L112
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #16
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L149+4
	strh	r3, [r2, #18]	@ movhi
	strh	r0, [r2, #16]	@ movhi
	strh	r1, [r2, #20]	@ movhi
.L112:
	ldr	r2, .L149+48
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L113
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #20
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L149+4
	strh	r3, [r2, #26]	@ movhi
	strh	r0, [r2, #24]	@ movhi
	strh	r1, [r2, #28]	@ movhi
.L113:
	ldr	r2, .L149+52
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L114
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #24
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L149+4
	strh	r3, [r2, #34]	@ movhi
	strh	r0, [r2, #32]	@ movhi
	strh	r1, [r2, #36]	@ movhi
.L114:
	ldr	r2, .L149+56
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L115
	ldr	r3, [r2]
	mvn	r3, r3, lsl #17
	mov	r1, #28
	mvn	r3, r3, lsr #17
	ldr	r0, [r2, #4]
	ldr	r2, .L149+4
	strh	r3, [r2, #42]	@ movhi
	strh	r0, [r2, #40]	@ movhi
	strh	r1, [r2, #44]	@ movhi
.L115:
	ldr	r3, .L149+60
	mov	lr, pc
	bx	r3
	ldr	r4, .L149+64
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L149+4
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r3, .L149+68
	ldrh	r3, [r3]
	lsr	r3, r3, #2
	strh	r3, [r2, #16]	@ movhi
	ldr	r3, .L149+72
	ldrh	r3, [r3]
	pop	{r4, lr}
	strh	r3, [r2, #18]	@ movhi
	bx	lr
.L150:
	.align	2
.L149:
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
	ldr	r2, .L157
	ldrh	r3, [r2]
	add	r3, r3, #3
	strh	r3, [r2]	@ movhi
	ldr	r3, .L157+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldreq	r3, .L157+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	addeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L157+4
	ldrh	r3, [r3, #48]
	tst	r3, #32
	ldreq	r3, .L157+8
	ldreq	r2, [r3]
	ldreq	r1, [r3, #20]
	subeq	r2, r2, r1
	streq	r2, [r3]
	ldr	r3, .L157+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldreq	r3, .L157+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	subeq	r2, r2, r1
	streq	r2, [r3, #4]
	ldr	r3, .L157+4
	ldrh	r3, [r3, #48]
	tst	r3, #128
	ldreq	r3, .L157+8
	ldreq	r2, [r3, #4]
	ldreq	r1, [r3, #24]
	addeq	r2, r2, r1
	streq	r2, [r3, #4]
	pop	{r4, lr}
	bx	lr
.L158:
	.align	2
.L157:
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
	ldr	r2, .L188
	ldrh	r3, [r2]
	ldr	r0, .L188+4
	ldr	r6, .L188+8
	add	r3, r3, #1
	ldr	r1, .L188+12
	sub	sp, sp, #20
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r2, [r6, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L188+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L160
	ldr	r3, [r6, #16]
	cmp	r3, #1
	beq	.L187
.L160:
	ldr	r4, .L188+20
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L188+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	r0, [r4, #20]
	ldr	r2, [r4]
	add	r3, r3, r1
	sub	r0, r2, r0
	cmp	r1, r3, ror #1
	str	r0, [r4]
	bcc	.L161
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L161:
	ldr	r5, .L188+24
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	ip, .L188+16
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r5]
	add	r3, r2, r3, lsl #3
	ldr	lr, [r5, #20]
	add	r3, r3, ip
	add	r2, r1, lr
	cmp	ip, r3, ror #1
	str	r2, [r5]
	bcc	.L163
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L163:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	ldr	r7, .L188+28
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	mov	r3, r0
	beq	.L165
.L167:
	ldr	r0, [r4]
.L166:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L168
.L170:
	ldr	r0, [r4]
.L169:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L171
.L173:
	ldr	r0, [r4]
.L172:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	bne	.L174
	ldr	r3, .L188+32
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L188+36
	streq	r0, [r3]
.L174:
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
	bx	r7
	cmp	r0, #1
	mov	r3, r0
	beq	.L175
.L177:
	ldr	r0, [r4]
.L176:
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
	bx	r7
	cmp	r0, #1
	beq	.L178
.L180:
	ldr	r0, [r4]
.L179:
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
	bx	r7
	cmp	r0, #1
	beq	.L181
.L183:
	ldr	r0, [r4]
.L182:
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
	bx	r7
	cmp	r0, #1
	bne	.L184
	ldr	r3, .L188+32
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L188+36
	streq	r0, [r3]
.L184:
	ldr	r3, [r4]
	ldr	r2, [r4, #12]
	adds	r3, r3, r2
	streq	r3, [r4, #16]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	drawGame
.L178:
	ldr	r3, .L188+32
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L180
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L188+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L179
.L175:
	ldr	r1, .L188+32
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L177
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L188+44
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L176
.L181:
	ldr	r3, .L188+32
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L183
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L188+48
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L182
.L165:
	ldr	r1, .L188+32
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L167
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L188+44
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L166
.L171:
	ldr	r3, .L188+32
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L173
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L188+48
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L172
.L168:
	ldr	r3, .L188+32
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L170
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L188+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L169
.L187:
	bl	updateFry.part.0
	b	.L160
.L189:
	.align	2
.L188:
	.word	hOff
	.word	vOff
	.word	fry
	.word	hideSprites
	.word	238609294
	.word	alien
	.word	leela
	.word	collision
	.word	life1Counter
	.word	isLost
	.word	life2
	.word	life3
	.word	life1
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
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L219
	ldrh	r3, [r2]
	ldr	r0, .L219+4
	ldr	r6, .L219+8
	add	r3, r3, #1
	ldr	r1, .L219+12
	sub	sp, sp, #20
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r2, [r6, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L219+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L191
	ldr	r3, [r6, #16]
	cmp	r3, #1
	beq	.L218
.L191:
	ldr	r4, .L219+20
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L219+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	r0, [r4, #20]
	ldr	r2, [r4]
	add	r3, r3, r1
	sub	r0, r2, r0
	cmp	r1, r3, ror #1
	str	r0, [r4]
	bcc	.L192
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L192:
	ldr	r5, .L219+24
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	ip, .L219+16
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r5]
	add	r3, r2, r3, lsl #3
	ldr	lr, [r5, #20]
	add	r3, r3, ip
	add	r2, r1, lr
	cmp	ip, r3, ror #1
	str	r2, [r5]
	bcc	.L194
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L194:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	ldr	r7, .L219+28
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	mov	r3, r0
	beq	.L196
.L198:
	ldr	r0, [r4]
.L197:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L199
.L201:
	ldr	r0, [r4]
.L200:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L202
.L204:
	ldr	r0, [r4]
.L203:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	bne	.L205
	ldr	r3, .L219+32
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L219+36
	streq	r0, [r3]
.L205:
	ldr	r0, [r4]
	ldr	r2, [r4, #12]
	adds	r3, r0, r2
	streq	r3, [r4, #16]
	ldmib	r5, {r1, r3, ip}
	str	r3, [sp, #12]
	ldr	r3, [r5]
	stmib	sp, {r1, ip}
	str	r3, [sp]
	ldmib	r4, {r1, r3}
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	mov	r3, r0
	beq	.L207
.L209:
	ldr	r0, [r4]
.L208:
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
	bx	r7
	cmp	r0, #1
	beq	.L210
.L212:
	ldr	r0, [r4]
.L211:
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
	bx	r7
	cmp	r0, #1
	beq	.L213
.L215:
	ldr	r0, [r4]
.L214:
	ldr	r3, [r5, #8]
	ldr	r1, [r5, #12]
	ldr	r2, [r5, #4]
	str	r3, [sp, #12]
	ldr	r3, [r5]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	bne	.L216
	ldr	r3, .L219+32
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L219+36
	streq	r0, [r3]
.L216:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	drawGame
.L210:
	ldr	r3, .L219+32
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L212
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L219+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L211
.L207:
	ldr	r1, .L219+32
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L209
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L219+44
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L208
.L213:
	ldr	r3, .L219+32
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L215
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L219+48
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L214
.L196:
	ldr	r1, .L219+32
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L198
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L219+44
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L197
.L202:
	ldr	r3, .L219+32
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L204
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L219+48
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L203
.L199:
	ldr	r3, .L219+32
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L201
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L219+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L200
.L218:
	bl	updateFry.part.0
	b	.L191
.L220:
	.align	2
.L219:
	.word	hOff
	.word	vOff
	.word	fry
	.word	hideSprites
	.word	238609294
	.word	alien
	.word	leela
	.word	collision
	.word	life2Counter
	.word	isLost
	.word	life2
	.word	life3
	.word	life1
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
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L250
	ldrh	r3, [r2]
	ldr	r0, .L250+4
	ldr	r6, .L250+8
	add	r3, r3, #1
	ldr	r1, .L250+12
	sub	sp, sp, #20
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r2, [r6, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L250+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L222
	ldr	r3, [r6, #16]
	cmp	r3, #1
	beq	.L249
.L222:
	ldr	r4, .L250+20
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L250+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	r0, [r4, #20]
	ldr	r2, [r4]
	add	r3, r3, r1
	sub	r0, r2, r0
	cmp	r1, r3, ror #1
	str	r0, [r4]
	bcc	.L223
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L223:
	ldr	r5, .L250+24
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	ip, .L250+16
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r5]
	add	r3, r2, r3, lsl #3
	ldr	lr, [r5, #20]
	add	r3, r3, ip
	add	r2, r1, lr
	cmp	ip, r3, ror #1
	str	r2, [r5]
	bcc	.L225
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L225:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	ldr	r7, .L250+28
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	mov	r3, r0
	beq	.L227
.L229:
	ldr	r0, [r4]
.L228:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L230
.L232:
	ldr	r0, [r4]
.L231:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L233
.L235:
	ldr	r0, [r4]
.L234:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	bne	.L236
	ldr	r3, .L250+32
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L250+36
	streq	r0, [r3]
.L236:
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
	bx	r7
	cmp	r0, #1
	mov	r3, r0
	beq	.L237
.L239:
	ldr	r0, [r4]
.L238:
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
	bx	r7
	cmp	r0, #1
	beq	.L240
.L242:
	ldr	r0, [r4]
.L241:
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
	bx	r7
	cmp	r0, #1
	beq	.L243
.L245:
	ldr	r0, [r4]
.L244:
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
	bx	r7
	cmp	r0, #1
	bne	.L246
	ldr	r3, .L250+32
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L250+36
	streq	r0, [r3]
.L246:
	ldr	r3, [r4]
	ldr	r2, [r4, #12]
	adds	r3, r3, r2
	streq	r3, [r4, #16]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	drawGame
.L240:
	ldr	r3, .L250+32
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L242
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L250+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L241
.L237:
	ldr	r1, .L250+32
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L239
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L250+44
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L238
.L243:
	ldr	r3, .L250+32
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L245
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L250+48
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L244
.L227:
	ldr	r1, .L250+32
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L229
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L250+44
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L228
.L233:
	ldr	r3, .L250+32
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L235
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L250+48
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L234
.L230:
	ldr	r3, .L250+32
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L232
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L250+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L231
.L249:
	bl	updateFry.part.0
	b	.L222
.L251:
	.align	2
.L250:
	.word	hOff
	.word	vOff
	.word	fry
	.word	hideSprites
	.word	238609294
	.word	alien
	.word	leela
	.word	collision
	.word	life3Counter
	.word	isLost
	.word	life2
	.word	life3
	.word	life1
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
	push	{r4, r5, r6, r7, lr}
	ldr	r2, .L281
	ldrh	r3, [r2]
	ldr	r0, .L281+4
	ldr	r6, .L281+8
	add	r3, r3, #1
	ldr	r1, .L281+12
	sub	sp, sp, #20
	strh	r3, [r2]	@ movhi
	strh	ip, [r0]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r2, [r6, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L281+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	add	r3, r3, r1
	cmp	r1, r3, ror #1
	bcc	.L253
	add	r2, r6, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r6, #36]
	strge	r3, [r6, #36]
.L253:
	ldr	r4, .L281+20
	ldr	r2, [r4, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	r1, .L281+16
	rsb	r3, r3, r3, lsl #15
	add	r3, r2, r3, lsl #3
	ldr	r0, [r4, #20]
	ldr	r2, [r4]
	add	r3, r3, r1
	sub	r0, r2, r0
	cmp	r1, r3, ror #1
	str	r0, [r4]
	bcc	.L255
	add	r2, r4, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	addlt	r2, r2, #1
	strlt	r2, [r4, #36]
	strge	r3, [r4, #36]
.L255:
	ldr	r5, .L281+24
	ldr	r2, [r5, #32]
	rsb	r3, r2, r2, lsl #3
	add	r3, r3, r3, lsl #6
	add	r3, r2, r3, lsl #3
	ldr	ip, .L281+16
	rsb	r3, r3, r3, lsl #15
	ldr	r1, [r5]
	add	r3, r2, r3, lsl #3
	ldr	lr, [r5, #20]
	add	r3, r3, ip
	add	r2, r1, lr
	cmp	ip, r3, ror #1
	str	r2, [r5]
	bcc	.L257
	add	r2, r5, #36
	ldm	r2, {r2, r3}
	sub	r3, r3, #1
	cmp	r2, r3
	movge	r3, #0
	addlt	r2, r2, #1
	strlt	r2, [r5, #36]
	strge	r3, [r5, #36]
.L257:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	ldr	r7, .L281+28
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	mov	r3, r0
	beq	.L259
.L261:
	ldr	r0, [r4]
.L260:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L262
.L264:
	ldr	r0, [r4]
.L263:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	beq	.L265
.L267:
	ldr	r0, [r4]
.L266:
	ldr	r1, [r6, #12]
	ldr	r2, [r6, #4]
	ldr	r3, [r6]
	ldr	ip, [r6, #8]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	str	ip, [sp, #12]
	ldr	r3, [r4, #8]
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #4]
	mov	lr, pc
	bx	r7
	cmp	r0, #1
	bne	.L268
	ldr	r3, .L281+32
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L281+36
	streq	r0, [r3]
.L268:
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
	bx	r7
	cmp	r0, #1
	mov	r3, r0
	beq	.L269
.L271:
	ldr	r0, [r4]
.L270:
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
	bx	r7
	cmp	r0, #1
	beq	.L272
.L274:
	ldr	r0, [r4]
.L273:
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
	bx	r7
	cmp	r0, #1
	beq	.L275
.L277:
	ldr	r0, [r4]
.L276:
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
	bx	r7
	cmp	r0, #1
	bne	.L278
	ldr	r3, .L281+32
	ldr	r3, [r3]
	cmp	r3, #3
	ldreq	r3, .L281+36
	streq	r0, [r3]
.L278:
	ldr	r3, [r4]
	ldr	r2, [r4, #12]
	adds	r3, r3, r2
	streq	r3, [r4, #16]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	drawGame
.L275:
	ldr	r3, .L281+32
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L277
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L281+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L276
.L272:
	ldr	r3, .L281+32
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L274
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L281+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L273
.L269:
	ldr	r1, .L281+32
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L271
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L281+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L270
.L265:
	ldr	r3, .L281+32
	ldr	r2, [r3]
	cmp	r2, #2
	bne	.L267
	mov	r2, #190
	mov	r1, #0
	mov	ip, #3
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L281+40
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L266
.L262:
	ldr	r3, .L281+32
	ldr	r2, [r3]
	cmp	r2, #1
	bne	.L264
	mov	r2, #190
	mov	r1, #0
	mov	ip, #2
	mov	r0, r2
	str	r2, [r4]
	ldr	r2, .L281+44
	str	ip, [r3]
	str	r1, [r2, #16]
	b	.L263
.L259:
	ldr	r1, .L281+32
	ldr	r2, [r1]
	cmp	r2, #0
	bne	.L261
	mov	ip, #190
	str	r3, [r1]
	ldr	r3, .L281+48
	mov	r0, ip
	str	ip, [r4]
	str	r2, [r3, #16]
	b	.L260
.L282:
	.align	2
.L281:
	.word	hOff
	.word	vOff
	.word	fry
	.word	hideSprites
	.word	238609294
	.word	alien
	.word	leela
	.word	collision
	.word	life4Counter
	.word	isLost
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
	ldr	r3, .L285
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r2, .L285+4
	ldr	ip, .L285+8
	ldr	r0, .L285+12
	ldr	r1, .L285+16
	str	r3, [r2, #16]
	str	r3, [r2, #36]
	str	r3, [r2, #56]
	pop	{r4, lr}
	str	r3, [ip, #16]
	str	r3, [r0, #16]
	str	r3, [r1, #16]
	b	drawGame
.L286:
	.align	2
.L285:
	.word	hideSprites
	.word	blocks
	.word	fry
	.word	leela
	.word	alien
	.size	initLose, .-initLose
	.comm	vOff,2,2
	.comm	hOff,2,2
	.comm	characterChoice,4,4
	.comm	isLost,4,4
	.comm	prevState,4,4
	.comm	life4Counter,4,4
	.comm	life3Counter,4,4
	.comm	life2Counter,4,4
	.comm	life1Counter,4,4
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
	.comm	leela,44,4
	.comm	fry,44,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
