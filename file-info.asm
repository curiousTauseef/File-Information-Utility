
./file-info.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <ctermid>:
   0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   4:	e28db000 	add	fp, sp, #0
   8:	e24dd00c 	sub	sp, sp, #12
   c:	e50b0008 	str	r0, [fp, #-8]
  10:	e51b3008 	ldr	r3, [fp, #-8]
  14:	e3530000 	cmp	r3, #0
  18:	1a000002 	bne	28 <ctermid+0x28>
  1c:	e59f3038 	ldr	r3, [pc, #56]	; 5c <ctermid+0x5c>
  20:	e08f3003 	add	r3, pc, r3
  24:	ea000008 	b	4c <ctermid+0x4c>
  28:	e51b2008 	ldr	r2, [fp, #-8]
  2c:	e59f302c 	ldr	r3, [pc, #44]	; 60 <ctermid+0x60>
  30:	e08f3003 	add	r3, pc, r3
  34:	e8b30003 	ldm	r3!, {r0, r1}
  38:	e5820000 	str	r0, [r2]
  3c:	e5821004 	str	r1, [r2, #4]
  40:	e5d33000 	ldrb	r3, [r3]
  44:	e5c23008 	strb	r3, [r2, #8]
  48:	e51b3008 	ldr	r3, [fp, #-8]
  4c:	e1a00003 	mov	r0, r3
  50:	e24bd000 	sub	sp, fp, #0
  54:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  58:	e12fff1e 	bx	lr
  5c:	00000034 	.word	0x00000034
  60:	00000028 	.word	0x00000028

00000064 <main>:
  64:	e92d4800 	push	{fp, lr}
  68:	e28db004 	add	fp, sp, #4
  6c:	e59f3048 	ldr	r3, [pc, #72]	; bc <main+0x58>
  70:	e08f3003 	add	r3, pc, r3
  74:	e1a00003 	mov	r0, r3
  78:	ebfffffe 	bl	0 <puts>
  7c:	e59f303c 	ldr	r3, [pc, #60]	; c0 <main+0x5c>
  80:	e08f3003 	add	r3, pc, r3
  84:	e1a00003 	mov	r0, r3
  88:	ebfffffe 	bl	0 <puts>
  8c:	ebfffffe 	bl	cc <count_char>
  90:	e1a02000 	mov	r2, r0
  94:	e1a03001 	mov	r3, r1
  98:	e59f1024 	ldr	r1, [pc, #36]	; c4 <main+0x60>
  9c:	e08f1001 	add	r1, pc, r1
  a0:	e1a00001 	mov	r0, r1
  a4:	ebfffffe 	bl	0 <printf>
  a8:	e59f3018 	ldr	r3, [pc, #24]	; c8 <main+0x64>
  ac:	e08f3003 	add	r3, pc, r3
  b0:	e5933000 	ldr	r3, [r3]
  b4:	e1a00003 	mov	r0, r3
  b8:	e8bd8800 	pop	{fp, pc}
  bc:	00000050 	.word	0x00000050
  c0:	00000060 	.word	0x00000060
  c4:	00000058 	.word	0x00000058
  c8:	00000014 	.word	0x00000014

000000cc <count_char>:
  cc:	e92d4800 	push	{fp, lr}
  d0:	e28db004 	add	fp, sp, #4
  d4:	ea000007 	b	f8 <count_char+0x2c>
  d8:	e59f3040 	ldr	r3, [pc, #64]	; 120 <count_char+0x54>
  dc:	e08f3003 	add	r3, pc, r3
  e0:	edd30b00 	vldr	d16, [r3]
  e4:	eef71b00 	vmov.f64	d17, #112	; 0x3f800000  1.0
  e8:	ee700ba1 	vadd.f64	d16, d16, d17
  ec:	e59f3030 	ldr	r3, [pc, #48]	; 124 <count_char+0x58>
  f0:	e08f3003 	add	r3, pc, r3
  f4:	edc30b00 	vstr	d16, [r3]
  f8:	ebfffffe 	bl	0 <getchar>
  fc:	e1a03000 	mov	r3, r0
 100:	e3730001 	cmn	r3, #1
 104:	1afffff3 	bne	d8 <count_char+0xc>
 108:	e59f3018 	ldr	r3, [pc, #24]	; 128 <count_char+0x5c>
 10c:	e08f3003 	add	r3, pc, r3
 110:	e1c320d0 	ldrd	r2, [r3]
 114:	e1a00002 	mov	r0, r2
 118:	e1a01003 	mov	r1, r3
 11c:	e8bd8800 	pop	{fp, pc}
 120:	0000003c 	.word	0x0000003c
 124:	0000002c 	.word	0x0000002c
 128:	00000014 	.word	0x00000014
