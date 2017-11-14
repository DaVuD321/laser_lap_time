
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 39 00 	jmp	0x72	; 0x72 <__dtors_end>
   4:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
   8:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
   c:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  10:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  14:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  18:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  1c:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  20:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  24:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  28:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  2c:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  30:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  34:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  38:	0c 94 58 01 	jmp	0x2b0	; 0x2b0 <__vector_14>
  3c:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  40:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  44:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  48:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  4c:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  50:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  54:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  58:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  5c:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  60:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  64:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>

00000068 <__ctors_start>:
  68:	aa 00       	.word	0x00aa	; ????
  6a:	bf 01       	movw	r22, r30
  6c:	33 02       	muls	r19, r19

0000006e <__ctors_end>:
  6e:	b4 00       	.word	0x00b4	; ????
  70:	37 02       	muls	r19, r23

00000072 <__dtors_end>:
  72:	11 24       	eor	r1, r1
  74:	1f be       	out	0x3f, r1	; 63
  76:	cf ef       	ldi	r28, 0xFF	; 255
  78:	d8 e0       	ldi	r29, 0x08	; 8
  7a:	de bf       	out	0x3e, r29	; 62
  7c:	cd bf       	out	0x3d, r28	; 61

0000007e <__do_copy_data>:
  7e:	11 e0       	ldi	r17, 0x01	; 1
  80:	a0 e0       	ldi	r26, 0x00	; 0
  82:	b1 e0       	ldi	r27, 0x01	; 1
  84:	ea e3       	ldi	r30, 0x3A	; 58
  86:	f7 e0       	ldi	r31, 0x07	; 7
  88:	02 c0       	rjmp	.+4      	; 0x8e <__do_copy_data+0x10>
  8a:	05 90       	lpm	r0, Z+
  8c:	0d 92       	st	X+, r0
  8e:	a4 33       	cpi	r26, 0x34	; 52
  90:	b1 07       	cpc	r27, r17
  92:	d9 f7       	brne	.-10     	; 0x8a <__do_copy_data+0xc>

00000094 <__do_clear_bss>:
  94:	21 e0       	ldi	r18, 0x01	; 1
  96:	a4 e3       	ldi	r26, 0x34	; 52
  98:	b1 e0       	ldi	r27, 0x01	; 1
  9a:	01 c0       	rjmp	.+2      	; 0x9e <.do_clear_bss_start>

0000009c <.do_clear_bss_loop>:
  9c:	1d 92       	st	X+, r1

0000009e <.do_clear_bss_start>:
  9e:	a3 38       	cpi	r26, 0x83	; 131
  a0:	b2 07       	cpc	r27, r18
  a2:	e1 f7       	brne	.-8      	; 0x9c <.do_clear_bss_loop>

000000a4 <__do_global_ctors>:
  a4:	10 e0       	ldi	r17, 0x00	; 0
  a6:	c7 e3       	ldi	r28, 0x37	; 55
  a8:	d0 e0       	ldi	r29, 0x00	; 0
  aa:	04 c0       	rjmp	.+8      	; 0xb4 <__do_global_ctors+0x10>
  ac:	21 97       	sbiw	r28, 0x01	; 1
  ae:	fe 01       	movw	r30, r28
  b0:	0e 94 5d 02 	call	0x4ba	; 0x4ba <__tablejump2__>
  b4:	c4 33       	cpi	r28, 0x34	; 52
  b6:	d1 07       	cpc	r29, r17
  b8:	c9 f7       	brne	.-14     	; 0xac <__do_global_ctors+0x8>
  ba:	0e 94 96 00 	call	0x12c	; 0x12c <main>
  be:	0c 94 90 03 	jmp	0x720	; 0x720 <__do_global_dtors>

000000c2 <__bad_interrupt>:
  c2:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000c6 <_ZN10CBlinkTaskD1Ev>:
  c6:	08 95       	ret

000000c8 <_ZN10CBlinkTaskD0Ev>:
  c8:	0c 94 cf 00 	jmp	0x19e	; 0x19e <_ZdlPv>

000000cc <_ZN10CBlinkTaskclEv>:
  cc:	cf 92       	push	r12
  ce:	df 92       	push	r13
  d0:	ef 92       	push	r14
  d2:	ff 92       	push	r15
  d4:	fc 01       	movw	r30, r24
  d6:	83 81       	ldd	r24, Z+3	; 0x03
  d8:	94 81       	ldd	r25, Z+4	; 0x04
  da:	00 97       	sbiw	r24, 0x00	; 0
  dc:	31 f0       	breq	.+12     	; 0xea <_ZN10CBlinkTaskclEv+0x1e>
  de:	01 97       	sbiw	r24, 0x01	; 1
  e0:	49 f4       	brne	.+18     	; 0xf4 <_ZN10CBlinkTaskclEv+0x28>
  e2:	2d 98       	cbi	0x05, 5	; 5
  e4:	14 82       	std	Z+4, r1	; 0x04
  e6:	13 82       	std	Z+3, r1	; 0x03
  e8:	05 c0       	rjmp	.+10     	; 0xf4 <_ZN10CBlinkTaskclEv+0x28>
  ea:	2d 9a       	sbi	0x05, 5	; 5
  ec:	81 e0       	ldi	r24, 0x01	; 1
  ee:	90 e0       	ldi	r25, 0x00	; 0
  f0:	94 83       	std	Z+4, r25	; 0x04
  f2:	83 83       	std	Z+3, r24	; 0x03
  f4:	89 e3       	ldi	r24, 0x39	; 57
  f6:	91 e0       	ldi	r25, 0x01	; 1
  f8:	0e 94 39 01 	call	0x272	; 0x272 <_ZN8CRTTimer8get_timeEv>
  fc:	6b 01       	movw	r12, r22
  fe:	7c 01       	movw	r14, r24
 100:	66 e0       	ldi	r22, 0x06	; 6
 102:	71 e0       	ldi	r23, 0x01	; 1
 104:	8e e7       	ldi	r24, 0x7E	; 126
 106:	91 e0       	ldi	r25, 0x01	; 1
 108:	0e 94 c3 01 	call	0x386	; 0x386 <_ZN9CTerminal4putsEPKc>
 10c:	b7 01       	movw	r22, r14
 10e:	a6 01       	movw	r20, r12
 110:	8e e7       	ldi	r24, 0x7E	; 126
 112:	91 e0       	ldi	r25, 0x01	; 1
 114:	0e 94 e7 01 	call	0x3ce	; 0x3ce <_ZN9CTerminal5putuiEm>
 118:	60 e1       	ldi	r22, 0x10	; 16
 11a:	71 e0       	ldi	r23, 0x01	; 1
 11c:	8e e7       	ldi	r24, 0x7E	; 126
 11e:	91 e0       	ldi	r25, 0x01	; 1
 120:	ff 90       	pop	r15
 122:	ef 90       	pop	r14
 124:	df 90       	pop	r13
 126:	cf 90       	pop	r12
 128:	0c 94 c3 01 	jmp	0x386	; 0x386 <_ZN9CTerminal4putsEPKc>

0000012c <main>:
 12c:	21 e0       	ldi	r18, 0x01	; 1
 12e:	44 e6       	ldi	r20, 0x64	; 100
 130:	50 e0       	ldi	r21, 0x00	; 0
 132:	64 e3       	ldi	r22, 0x34	; 52
 134:	71 e0       	ldi	r23, 0x01	; 1
 136:	89 e3       	ldi	r24, 0x39	; 57
 138:	91 e0       	ldi	r25, 0x01	; 1
 13a:	0e 94 f6 00 	call	0x1ec	; 0x1ec <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb>
 13e:	67 e1       	ldi	r22, 0x17	; 23
 140:	71 e0       	ldi	r23, 0x01	; 1
 142:	8e e7       	ldi	r24, 0x7E	; 126
 144:	91 e0       	ldi	r25, 0x01	; 1
 146:	0e 94 c3 01 	call	0x386	; 0x386 <_ZN9CTerminal4putsEPKc>
 14a:	89 e3       	ldi	r24, 0x39	; 57
 14c:	91 e0       	ldi	r25, 0x01	; 1
 14e:	0e 94 19 01 	call	0x232	; 0x232 <_ZN8CRTTimer4mainEv>
 152:	fb cf       	rjmp	.-10     	; 0x14a <main+0x1e>

00000154 <_GLOBAL__sub_I_blink_task>:
 154:	e4 e3       	ldi	r30, 0x34	; 52
 156:	f1 e0       	ldi	r31, 0x01	; 1
 158:	8d e2       	ldi	r24, 0x2D	; 45
 15a:	91 e0       	ldi	r25, 0x01	; 1
 15c:	91 83       	std	Z+1, r25	; 0x01
 15e:	80 83       	st	Z, r24
 160:	25 9a       	sbi	0x04, 5	; 4
 162:	14 82       	std	Z+4, r1	; 0x04
 164:	13 82       	std	Z+3, r1	; 0x03
 166:	08 95       	ret

00000168 <_GLOBAL__sub_D_blink_task>:
 168:	08 95       	ret

0000016a <_ZN6CUSARTC1Ev>:
 16a:	10 92 c5 00 	sts	0x00C5, r1
 16e:	87 e6       	ldi	r24, 0x67	; 103
 170:	80 93 c4 00 	sts	0x00C4, r24
 174:	e2 ec       	ldi	r30, 0xC2	; 194
 176:	f0 e0       	ldi	r31, 0x00	; 0
 178:	80 81       	ld	r24, Z
 17a:	86 60       	ori	r24, 0x06	; 6
 17c:	80 83       	st	Z, r24
 17e:	e1 ec       	ldi	r30, 0xC1	; 193
 180:	f0 e0       	ldi	r31, 0x00	; 0
 182:	80 81       	ld	r24, Z
 184:	88 61       	ori	r24, 0x18	; 24
 186:	80 83       	st	Z, r24
 188:	08 95       	ret

0000018a <_ZN6CUSARTD1Ev>:
 18a:	08 95       	ret

0000018c <_ZN6CUSART8put_charEc>:
 18c:	60 93 c6 00 	sts	0x00C6, r22
 190:	80 91 c0 00 	lds	r24, 0x00C0
 194:	85 fd       	sbrc	r24, 5
 196:	02 c0       	rjmp	.+4      	; 0x19c <_ZN6CUSART8put_charEc+0x10>
 198:	00 00       	nop
 19a:	fa cf       	rjmp	.-12     	; 0x190 <_ZN6CUSART8put_charEc+0x4>
 19c:	08 95       	ret

0000019e <_ZdlPv>:
 19e:	0c 94 f8 02 	jmp	0x5f0	; 0x5f0 <free>

000001a2 <_ZN8CRTTimerC1Ev>:
 1a2:	ea e3       	ldi	r30, 0x3A	; 58
 1a4:	f1 e0       	ldi	r31, 0x01	; 1
 1a6:	80 e0       	ldi	r24, 0x00	; 0
 1a8:	90 e0       	ldi	r25, 0x00	; 0
 1aa:	11 82       	std	Z+1, r1	; 0x01
 1ac:	10 82       	st	Z, r1
 1ae:	13 82       	std	Z+3, r1	; 0x03
 1b0:	12 82       	std	Z+2, r1	; 0x02
 1b2:	15 82       	std	Z+5, r1	; 0x05
 1b4:	14 82       	std	Z+4, r1	; 0x04
 1b6:	dc 01       	movw	r26, r24
 1b8:	a6 5c       	subi	r26, 0xC6	; 198
 1ba:	be 4f       	sbci	r27, 0xFE	; 254
 1bc:	16 96       	adiw	r26, 0x06	; 6
 1be:	1c 92       	st	X, r1
 1c0:	16 97       	sbiw	r26, 0x06	; 6
 1c2:	17 96       	adiw	r26, 0x07	; 7
 1c4:	1c 92       	st	X, r1
 1c6:	38 96       	adiw	r30, 0x08	; 8
 1c8:	08 96       	adiw	r24, 0x08	; 8
 1ca:	80 34       	cpi	r24, 0x40	; 64
 1cc:	91 05       	cpc	r25, r1
 1ce:	69 f7       	brne	.-38     	; 0x1aa <_ZN8CRTTimerC1Ev+0x8>
 1d0:	84 b5       	in	r24, 0x24	; 36
 1d2:	82 60       	ori	r24, 0x02	; 2
 1d4:	84 bd       	out	0x24, r24	; 36
 1d6:	89 ef       	ldi	r24, 0xF9	; 249
 1d8:	87 bd       	out	0x27, r24	; 39
 1da:	83 e0       	ldi	r24, 0x03	; 3
 1dc:	85 bd       	out	0x25, r24	; 37
 1de:	80 91 6e 00 	lds	r24, 0x006E
 1e2:	82 60       	ori	r24, 0x02	; 2
 1e4:	80 93 6e 00 	sts	0x006E, r24
 1e8:	78 94       	sei
 1ea:	08 95       	ret

000001ec <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb>:
 1ec:	f8 94       	cli
 1ee:	ea e3       	ldi	r30, 0x3A	; 58
 1f0:	f1 e0       	ldi	r31, 0x01	; 1
 1f2:	80 e0       	ldi	r24, 0x00	; 0
 1f4:	90 e0       	ldi	r25, 0x00	; 0
 1f6:	a0 81       	ld	r26, Z
 1f8:	b1 81       	ldd	r27, Z+1	; 0x01
 1fa:	ab 2b       	or	r26, r27
 1fc:	89 f4       	brne	.+34     	; 0x220 <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb+0x34>
 1fe:	fc 01       	movw	r30, r24
 200:	33 e0       	ldi	r19, 0x03	; 3
 202:	ee 0f       	add	r30, r30
 204:	ff 1f       	adc	r31, r31
 206:	3a 95       	dec	r19
 208:	e1 f7       	brne	.-8      	; 0x202 <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb+0x16>
 20a:	e6 5c       	subi	r30, 0xC6	; 198
 20c:	fe 4f       	sbci	r31, 0xFE	; 254
 20e:	71 83       	std	Z+1, r23	; 0x01
 210:	60 83       	st	Z, r22
 212:	53 83       	std	Z+3, r21	; 0x03
 214:	42 83       	std	Z+2, r20	; 0x02
 216:	55 83       	std	Z+5, r21	; 0x05
 218:	44 83       	std	Z+4, r20	; 0x04
 21a:	16 82       	std	Z+6, r1	; 0x06
 21c:	27 83       	std	Z+7, r18	; 0x07
 21e:	07 c0       	rjmp	.+14     	; 0x22e <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb+0x42>
 220:	01 96       	adiw	r24, 0x01	; 1
 222:	38 96       	adiw	r30, 0x08	; 8
 224:	88 30       	cpi	r24, 0x08	; 8
 226:	91 05       	cpc	r25, r1
 228:	31 f7       	brne	.-52     	; 0x1f6 <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb+0xa>
 22a:	8f ef       	ldi	r24, 0xFF	; 255
 22c:	9f ef       	ldi	r25, 0xFF	; 255
 22e:	78 94       	sei
 230:	08 95       	ret

00000232 <_ZN8CRTTimer4mainEv>:
 232:	cf 93       	push	r28
 234:	df 93       	push	r29
 236:	c0 e0       	ldi	r28, 0x00	; 0
 238:	d0 e0       	ldi	r29, 0x00	; 0
 23a:	fe 01       	movw	r30, r28
 23c:	e6 5c       	subi	r30, 0xC6	; 198
 23e:	fe 4f       	sbci	r31, 0xFE	; 254
 240:	80 81       	ld	r24, Z
 242:	91 81       	ldd	r25, Z+1	; 0x01
 244:	00 97       	sbiw	r24, 0x00	; 0
 246:	71 f0       	breq	.+28     	; 0x264 <_ZN8CRTTimer4mainEv+0x32>
 248:	26 81       	ldd	r18, Z+6	; 0x06
 24a:	22 23       	and	r18, r18
 24c:	59 f0       	breq	.+22     	; 0x264 <_ZN8CRTTimer4mainEv+0x32>
 24e:	16 82       	std	Z+6, r1	; 0x06
 250:	27 81       	ldd	r18, Z+7	; 0x07
 252:	21 11       	cpse	r18, r1
 254:	07 c0       	rjmp	.+14     	; 0x264 <_ZN8CRTTimer4mainEv+0x32>
 256:	dc 01       	movw	r26, r24
 258:	ed 91       	ld	r30, X+
 25a:	fc 91       	ld	r31, X
 25c:	04 80       	ldd	r0, Z+4	; 0x04
 25e:	f5 81       	ldd	r31, Z+5	; 0x05
 260:	e0 2d       	mov	r30, r0
 262:	09 95       	icall
 264:	28 96       	adiw	r28, 0x08	; 8
 266:	c0 34       	cpi	r28, 0x40	; 64
 268:	d1 05       	cpc	r29, r1
 26a:	39 f7       	brne	.-50     	; 0x23a <_ZN8CRTTimer4mainEv+0x8>
 26c:	df 91       	pop	r29
 26e:	cf 91       	pop	r28
 270:	08 95       	ret

00000272 <_ZN8CRTTimer8get_timeEv>:
 272:	cf 93       	push	r28
 274:	df 93       	push	r29
 276:	00 d0       	rcall	.+0      	; 0x278 <_ZN8CRTTimer8get_timeEv+0x6>
 278:	00 d0       	rcall	.+0      	; 0x27a <_ZN8CRTTimer8get_timeEv+0x8>
 27a:	cd b7       	in	r28, 0x3d	; 61
 27c:	de b7       	in	r29, 0x3e	; 62
 27e:	f8 94       	cli
 280:	80 91 7a 01 	lds	r24, 0x017A
 284:	90 91 7b 01 	lds	r25, 0x017B
 288:	a0 91 7c 01 	lds	r26, 0x017C
 28c:	b0 91 7d 01 	lds	r27, 0x017D
 290:	89 83       	std	Y+1, r24	; 0x01
 292:	9a 83       	std	Y+2, r25	; 0x02
 294:	ab 83       	std	Y+3, r26	; 0x03
 296:	bc 83       	std	Y+4, r27	; 0x04
 298:	78 94       	sei
 29a:	69 81       	ldd	r22, Y+1	; 0x01
 29c:	7a 81       	ldd	r23, Y+2	; 0x02
 29e:	8b 81       	ldd	r24, Y+3	; 0x03
 2a0:	9c 81       	ldd	r25, Y+4	; 0x04
 2a2:	0f 90       	pop	r0
 2a4:	0f 90       	pop	r0
 2a6:	0f 90       	pop	r0
 2a8:	0f 90       	pop	r0
 2aa:	df 91       	pop	r29
 2ac:	cf 91       	pop	r28
 2ae:	08 95       	ret

000002b0 <__vector_14>:
 2b0:	1f 92       	push	r1
 2b2:	0f 92       	push	r0
 2b4:	0f b6       	in	r0, 0x3f	; 63
 2b6:	0f 92       	push	r0
 2b8:	11 24       	eor	r1, r1
 2ba:	0f 93       	push	r16
 2bc:	1f 93       	push	r17
 2be:	2f 93       	push	r18
 2c0:	3f 93       	push	r19
 2c2:	4f 93       	push	r20
 2c4:	5f 93       	push	r21
 2c6:	6f 93       	push	r22
 2c8:	7f 93       	push	r23
 2ca:	8f 93       	push	r24
 2cc:	9f 93       	push	r25
 2ce:	af 93       	push	r26
 2d0:	bf 93       	push	r27
 2d2:	cf 93       	push	r28
 2d4:	df 93       	push	r29
 2d6:	ef 93       	push	r30
 2d8:	ff 93       	push	r31
 2da:	ca e3       	ldi	r28, 0x3A	; 58
 2dc:	d1 e0       	ldi	r29, 0x01	; 1
 2de:	00 e0       	ldi	r16, 0x00	; 0
 2e0:	10 e0       	ldi	r17, 0x00	; 0
 2e2:	8c 81       	ldd	r24, Y+4	; 0x04
 2e4:	9d 81       	ldd	r25, Y+5	; 0x05
 2e6:	00 97       	sbiw	r24, 0x00	; 0
 2e8:	21 f0       	breq	.+8      	; 0x2f2 <__vector_14+0x42>
 2ea:	01 97       	sbiw	r24, 0x01	; 1
 2ec:	9d 83       	std	Y+5, r25	; 0x05
 2ee:	8c 83       	std	Y+4, r24	; 0x04
 2f0:	18 c0       	rjmp	.+48     	; 0x322 <__vector_14+0x72>
 2f2:	8a 81       	ldd	r24, Y+2	; 0x02
 2f4:	9b 81       	ldd	r25, Y+3	; 0x03
 2f6:	9d 83       	std	Y+5, r25	; 0x05
 2f8:	8c 83       	std	Y+4, r24	; 0x04
 2fa:	f8 01       	movw	r30, r16
 2fc:	e6 5c       	subi	r30, 0xC6	; 198
 2fe:	fe 4f       	sbci	r31, 0xFE	; 254
 300:	86 81       	ldd	r24, Z+6	; 0x06
 302:	8f 3f       	cpi	r24, 0xFF	; 255
 304:	11 f0       	breq	.+4      	; 0x30a <__vector_14+0x5a>
 306:	8f 5f       	subi	r24, 0xFF	; 255
 308:	86 83       	std	Z+6, r24	; 0x06
 30a:	87 81       	ldd	r24, Z+7	; 0x07
 30c:	88 23       	and	r24, r24
 30e:	49 f0       	breq	.+18     	; 0x322 <__vector_14+0x72>
 310:	88 81       	ld	r24, Y
 312:	99 81       	ldd	r25, Y+1	; 0x01
 314:	dc 01       	movw	r26, r24
 316:	ed 91       	ld	r30, X+
 318:	fc 91       	ld	r31, X
 31a:	04 80       	ldd	r0, Z+4	; 0x04
 31c:	f5 81       	ldd	r31, Z+5	; 0x05
 31e:	e0 2d       	mov	r30, r0
 320:	09 95       	icall
 322:	08 5f       	subi	r16, 0xF8	; 248
 324:	1f 4f       	sbci	r17, 0xFF	; 255
 326:	28 96       	adiw	r28, 0x08	; 8
 328:	00 34       	cpi	r16, 0x40	; 64
 32a:	11 05       	cpc	r17, r1
 32c:	d1 f6       	brne	.-76     	; 0x2e2 <__vector_14+0x32>
 32e:	80 91 7a 01 	lds	r24, 0x017A
 332:	90 91 7b 01 	lds	r25, 0x017B
 336:	a0 91 7c 01 	lds	r26, 0x017C
 33a:	b0 91 7d 01 	lds	r27, 0x017D
 33e:	01 96       	adiw	r24, 0x01	; 1
 340:	a1 1d       	adc	r26, r1
 342:	b1 1d       	adc	r27, r1
 344:	80 93 7a 01 	sts	0x017A, r24
 348:	90 93 7b 01 	sts	0x017B, r25
 34c:	a0 93 7c 01 	sts	0x017C, r26
 350:	b0 93 7d 01 	sts	0x017D, r27
 354:	ff 91       	pop	r31
 356:	ef 91       	pop	r30
 358:	df 91       	pop	r29
 35a:	cf 91       	pop	r28
 35c:	bf 91       	pop	r27
 35e:	af 91       	pop	r26
 360:	9f 91       	pop	r25
 362:	8f 91       	pop	r24
 364:	7f 91       	pop	r23
 366:	6f 91       	pop	r22
 368:	5f 91       	pop	r21
 36a:	4f 91       	pop	r20
 36c:	3f 91       	pop	r19
 36e:	2f 91       	pop	r18
 370:	1f 91       	pop	r17
 372:	0f 91       	pop	r16
 374:	0f 90       	pop	r0
 376:	0f be       	out	0x3f, r0	; 63
 378:	0f 90       	pop	r0
 37a:	1f 90       	pop	r1
 37c:	18 95       	reti

0000037e <_GLOBAL__sub_I_g_rt_time>:
 37e:	89 e3       	ldi	r24, 0x39	; 57
 380:	91 e0       	ldi	r25, 0x01	; 1
 382:	0c 94 d1 00 	jmp	0x1a2	; 0x1a2 <_ZN8CRTTimerC1Ev>

00000386 <_ZN9CTerminal4putsEPKc>:
 386:	0f 93       	push	r16
 388:	1f 93       	push	r17
 38a:	cf 93       	push	r28
 38c:	df 93       	push	r29
 38e:	8c 01       	movw	r16, r24
 390:	eb 01       	movw	r28, r22
 392:	69 91       	ld	r22, Y+
 394:	66 23       	and	r22, r22
 396:	21 f0       	breq	.+8      	; 0x3a0 <_ZN9CTerminal4putsEPKc+0x1a>
 398:	c8 01       	movw	r24, r16
 39a:	0e 94 c6 00 	call	0x18c	; 0x18c <_ZN6CUSART8put_charEc>
 39e:	f9 cf       	rjmp	.-14     	; 0x392 <_ZN9CTerminal4putsEPKc+0xc>
 3a0:	df 91       	pop	r29
 3a2:	cf 91       	pop	r28
 3a4:	1f 91       	pop	r17
 3a6:	0f 91       	pop	r16
 3a8:	08 95       	ret

000003aa <_ZN9CTerminal4putsEPc>:
 3aa:	0f 93       	push	r16
 3ac:	1f 93       	push	r17
 3ae:	cf 93       	push	r28
 3b0:	df 93       	push	r29
 3b2:	8c 01       	movw	r16, r24
 3b4:	eb 01       	movw	r28, r22
 3b6:	69 91       	ld	r22, Y+
 3b8:	66 23       	and	r22, r22
 3ba:	21 f0       	breq	.+8      	; 0x3c4 <_ZN9CTerminal4putsEPc+0x1a>
 3bc:	c8 01       	movw	r24, r16
 3be:	0e 94 c6 00 	call	0x18c	; 0x18c <_ZN6CUSART8put_charEc>
 3c2:	f9 cf       	rjmp	.-14     	; 0x3b6 <_ZN9CTerminal4putsEPc+0xc>
 3c4:	df 91       	pop	r29
 3c6:	cf 91       	pop	r28
 3c8:	1f 91       	pop	r17
 3ca:	0f 91       	pop	r16
 3cc:	08 95       	ret

000003ce <_ZN9CTerminal5putuiEm>:
 3ce:	8f 92       	push	r8
 3d0:	9f 92       	push	r9
 3d2:	af 92       	push	r10
 3d4:	bf 92       	push	r11
 3d6:	cf 92       	push	r12
 3d8:	df 92       	push	r13
 3da:	ef 92       	push	r14
 3dc:	ff 92       	push	r15
 3de:	1f 93       	push	r17
 3e0:	cf 93       	push	r28
 3e2:	df 93       	push	r29
 3e4:	cd b7       	in	r28, 0x3d	; 61
 3e6:	de b7       	in	r29, 0x3e	; 62
 3e8:	2c 97       	sbiw	r28, 0x0c	; 12
 3ea:	0f b6       	in	r0, 0x3f	; 63
 3ec:	f8 94       	cli
 3ee:	de bf       	out	0x3e, r29	; 62
 3f0:	0f be       	out	0x3f, r0	; 63
 3f2:	cd bf       	out	0x3d, r28	; 61
 3f4:	6c 01       	movw	r12, r24
 3f6:	1c 86       	std	Y+12, r1	; 0x0c
 3f8:	1a e0       	ldi	r17, 0x0A	; 10
 3fa:	9a e0       	ldi	r25, 0x0A	; 10
 3fc:	89 2e       	mov	r8, r25
 3fe:	91 2c       	mov	r9, r1
 400:	a1 2c       	mov	r10, r1
 402:	b1 2c       	mov	r11, r1
 404:	ee 24       	eor	r14, r14
 406:	e3 94       	inc	r14
 408:	f1 2c       	mov	r15, r1
 40a:	ec 0e       	add	r14, r28
 40c:	fd 1e       	adc	r15, r29
 40e:	e1 0e       	add	r14, r17
 410:	f1 1c       	adc	r15, r1
 412:	cb 01       	movw	r24, r22
 414:	ba 01       	movw	r22, r20
 416:	a5 01       	movw	r20, r10
 418:	94 01       	movw	r18, r8
 41a:	0e 94 3b 02 	call	0x476	; 0x476 <__udivmodsi4>
 41e:	94 2f       	mov	r25, r20
 420:	85 2f       	mov	r24, r21
 422:	60 5d       	subi	r22, 0xD0	; 208
 424:	f7 01       	movw	r30, r14
 426:	60 83       	st	Z, r22
 428:	a9 01       	movw	r20, r18
 42a:	69 2f       	mov	r22, r25
 42c:	78 2f       	mov	r23, r24
 42e:	11 50       	subi	r17, 0x01	; 1
 430:	41 15       	cp	r20, r1
 432:	51 05       	cpc	r21, r1
 434:	61 05       	cpc	r22, r1
 436:	71 05       	cpc	r23, r1
 438:	29 f7       	brne	.-54     	; 0x404 <_ZN9CTerminal5putuiEm+0x36>
 43a:	b7 01       	movw	r22, r14
 43c:	c6 01       	movw	r24, r12
 43e:	0e 94 d5 01 	call	0x3aa	; 0x3aa <_ZN9CTerminal4putsEPc>
 442:	2c 96       	adiw	r28, 0x0c	; 12
 444:	0f b6       	in	r0, 0x3f	; 63
 446:	f8 94       	cli
 448:	de bf       	out	0x3e, r29	; 62
 44a:	0f be       	out	0x3f, r0	; 63
 44c:	cd bf       	out	0x3d, r28	; 61
 44e:	df 91       	pop	r29
 450:	cf 91       	pop	r28
 452:	1f 91       	pop	r17
 454:	ff 90       	pop	r15
 456:	ef 90       	pop	r14
 458:	df 90       	pop	r13
 45a:	cf 90       	pop	r12
 45c:	bf 90       	pop	r11
 45e:	af 90       	pop	r10
 460:	9f 90       	pop	r9
 462:	8f 90       	pop	r8
 464:	08 95       	ret

00000466 <_GLOBAL__sub_I_terminal>:
 466:	8e e7       	ldi	r24, 0x7E	; 126
 468:	91 e0       	ldi	r25, 0x01	; 1
 46a:	0c 94 b5 00 	jmp	0x16a	; 0x16a <_ZN6CUSARTC1Ev>

0000046e <_GLOBAL__sub_D_terminal>:
 46e:	8e e7       	ldi	r24, 0x7E	; 126
 470:	91 e0       	ldi	r25, 0x01	; 1
 472:	0c 94 c5 00 	jmp	0x18a	; 0x18a <_ZN6CUSARTD1Ev>

00000476 <__udivmodsi4>:
 476:	a1 e2       	ldi	r26, 0x21	; 33
 478:	1a 2e       	mov	r1, r26
 47a:	aa 1b       	sub	r26, r26
 47c:	bb 1b       	sub	r27, r27
 47e:	fd 01       	movw	r30, r26
 480:	0d c0       	rjmp	.+26     	; 0x49c <__udivmodsi4_ep>

00000482 <__udivmodsi4_loop>:
 482:	aa 1f       	adc	r26, r26
 484:	bb 1f       	adc	r27, r27
 486:	ee 1f       	adc	r30, r30
 488:	ff 1f       	adc	r31, r31
 48a:	a2 17       	cp	r26, r18
 48c:	b3 07       	cpc	r27, r19
 48e:	e4 07       	cpc	r30, r20
 490:	f5 07       	cpc	r31, r21
 492:	20 f0       	brcs	.+8      	; 0x49c <__udivmodsi4_ep>
 494:	a2 1b       	sub	r26, r18
 496:	b3 0b       	sbc	r27, r19
 498:	e4 0b       	sbc	r30, r20
 49a:	f5 0b       	sbc	r31, r21

0000049c <__udivmodsi4_ep>:
 49c:	66 1f       	adc	r22, r22
 49e:	77 1f       	adc	r23, r23
 4a0:	88 1f       	adc	r24, r24
 4a2:	99 1f       	adc	r25, r25
 4a4:	1a 94       	dec	r1
 4a6:	69 f7       	brne	.-38     	; 0x482 <__udivmodsi4_loop>
 4a8:	60 95       	com	r22
 4aa:	70 95       	com	r23
 4ac:	80 95       	com	r24
 4ae:	90 95       	com	r25
 4b0:	9b 01       	movw	r18, r22
 4b2:	ac 01       	movw	r20, r24
 4b4:	bd 01       	movw	r22, r26
 4b6:	cf 01       	movw	r24, r30
 4b8:	08 95       	ret

000004ba <__tablejump2__>:
 4ba:	ee 0f       	add	r30, r30
 4bc:	ff 1f       	adc	r31, r31
 4be:	05 90       	lpm	r0, Z+
 4c0:	f4 91       	lpm	r31, Z
 4c2:	e0 2d       	mov	r30, r0
 4c4:	09 94       	ijmp

000004c6 <malloc>:
 4c6:	cf 93       	push	r28
 4c8:	df 93       	push	r29
 4ca:	82 30       	cpi	r24, 0x02	; 2
 4cc:	91 05       	cpc	r25, r1
 4ce:	10 f4       	brcc	.+4      	; 0x4d4 <malloc+0xe>
 4d0:	82 e0       	ldi	r24, 0x02	; 2
 4d2:	90 e0       	ldi	r25, 0x00	; 0
 4d4:	e0 91 81 01 	lds	r30, 0x0181
 4d8:	f0 91 82 01 	lds	r31, 0x0182
 4dc:	20 e0       	ldi	r18, 0x00	; 0
 4de:	30 e0       	ldi	r19, 0x00	; 0
 4e0:	c0 e0       	ldi	r28, 0x00	; 0
 4e2:	d0 e0       	ldi	r29, 0x00	; 0
 4e4:	30 97       	sbiw	r30, 0x00	; 0
 4e6:	11 f1       	breq	.+68     	; 0x52c <malloc+0x66>
 4e8:	40 81       	ld	r20, Z
 4ea:	51 81       	ldd	r21, Z+1	; 0x01
 4ec:	48 17       	cp	r20, r24
 4ee:	59 07       	cpc	r21, r25
 4f0:	c0 f0       	brcs	.+48     	; 0x522 <malloc+0x5c>
 4f2:	48 17       	cp	r20, r24
 4f4:	59 07       	cpc	r21, r25
 4f6:	61 f4       	brne	.+24     	; 0x510 <malloc+0x4a>
 4f8:	82 81       	ldd	r24, Z+2	; 0x02
 4fa:	93 81       	ldd	r25, Z+3	; 0x03
 4fc:	20 97       	sbiw	r28, 0x00	; 0
 4fe:	19 f0       	breq	.+6      	; 0x506 <malloc+0x40>
 500:	9b 83       	std	Y+3, r25	; 0x03
 502:	8a 83       	std	Y+2, r24	; 0x02
 504:	2b c0       	rjmp	.+86     	; 0x55c <malloc+0x96>
 506:	90 93 82 01 	sts	0x0182, r25
 50a:	80 93 81 01 	sts	0x0181, r24
 50e:	26 c0       	rjmp	.+76     	; 0x55c <malloc+0x96>
 510:	21 15       	cp	r18, r1
 512:	31 05       	cpc	r19, r1
 514:	19 f0       	breq	.+6      	; 0x51c <malloc+0x56>
 516:	42 17       	cp	r20, r18
 518:	53 07       	cpc	r21, r19
 51a:	18 f4       	brcc	.+6      	; 0x522 <malloc+0x5c>
 51c:	9a 01       	movw	r18, r20
 51e:	be 01       	movw	r22, r28
 520:	df 01       	movw	r26, r30
 522:	ef 01       	movw	r28, r30
 524:	02 80       	ldd	r0, Z+2	; 0x02
 526:	f3 81       	ldd	r31, Z+3	; 0x03
 528:	e0 2d       	mov	r30, r0
 52a:	dc cf       	rjmp	.-72     	; 0x4e4 <malloc+0x1e>
 52c:	21 15       	cp	r18, r1
 52e:	31 05       	cpc	r19, r1
 530:	09 f1       	breq	.+66     	; 0x574 <malloc+0xae>
 532:	28 1b       	sub	r18, r24
 534:	39 0b       	sbc	r19, r25
 536:	24 30       	cpi	r18, 0x04	; 4
 538:	31 05       	cpc	r19, r1
 53a:	90 f4       	brcc	.+36     	; 0x560 <malloc+0x9a>
 53c:	12 96       	adiw	r26, 0x02	; 2
 53e:	8d 91       	ld	r24, X+
 540:	9c 91       	ld	r25, X
 542:	13 97       	sbiw	r26, 0x03	; 3
 544:	61 15       	cp	r22, r1
 546:	71 05       	cpc	r23, r1
 548:	21 f0       	breq	.+8      	; 0x552 <malloc+0x8c>
 54a:	fb 01       	movw	r30, r22
 54c:	93 83       	std	Z+3, r25	; 0x03
 54e:	82 83       	std	Z+2, r24	; 0x02
 550:	04 c0       	rjmp	.+8      	; 0x55a <malloc+0x94>
 552:	90 93 82 01 	sts	0x0182, r25
 556:	80 93 81 01 	sts	0x0181, r24
 55a:	fd 01       	movw	r30, r26
 55c:	32 96       	adiw	r30, 0x02	; 2
 55e:	44 c0       	rjmp	.+136    	; 0x5e8 <malloc+0x122>
 560:	fd 01       	movw	r30, r26
 562:	e2 0f       	add	r30, r18
 564:	f3 1f       	adc	r31, r19
 566:	81 93       	st	Z+, r24
 568:	91 93       	st	Z+, r25
 56a:	22 50       	subi	r18, 0x02	; 2
 56c:	31 09       	sbc	r19, r1
 56e:	2d 93       	st	X+, r18
 570:	3c 93       	st	X, r19
 572:	3a c0       	rjmp	.+116    	; 0x5e8 <malloc+0x122>
 574:	20 91 7f 01 	lds	r18, 0x017F
 578:	30 91 80 01 	lds	r19, 0x0180
 57c:	23 2b       	or	r18, r19
 57e:	41 f4       	brne	.+16     	; 0x590 <malloc+0xca>
 580:	20 91 02 01 	lds	r18, 0x0102
 584:	30 91 03 01 	lds	r19, 0x0103
 588:	30 93 80 01 	sts	0x0180, r19
 58c:	20 93 7f 01 	sts	0x017F, r18
 590:	20 91 00 01 	lds	r18, 0x0100
 594:	30 91 01 01 	lds	r19, 0x0101
 598:	21 15       	cp	r18, r1
 59a:	31 05       	cpc	r19, r1
 59c:	41 f4       	brne	.+16     	; 0x5ae <malloc+0xe8>
 59e:	2d b7       	in	r18, 0x3d	; 61
 5a0:	3e b7       	in	r19, 0x3e	; 62
 5a2:	40 91 04 01 	lds	r20, 0x0104
 5a6:	50 91 05 01 	lds	r21, 0x0105
 5aa:	24 1b       	sub	r18, r20
 5ac:	35 0b       	sbc	r19, r21
 5ae:	e0 91 7f 01 	lds	r30, 0x017F
 5b2:	f0 91 80 01 	lds	r31, 0x0180
 5b6:	e2 17       	cp	r30, r18
 5b8:	f3 07       	cpc	r31, r19
 5ba:	a0 f4       	brcc	.+40     	; 0x5e4 <malloc+0x11e>
 5bc:	2e 1b       	sub	r18, r30
 5be:	3f 0b       	sbc	r19, r31
 5c0:	28 17       	cp	r18, r24
 5c2:	39 07       	cpc	r19, r25
 5c4:	78 f0       	brcs	.+30     	; 0x5e4 <malloc+0x11e>
 5c6:	ac 01       	movw	r20, r24
 5c8:	4e 5f       	subi	r20, 0xFE	; 254
 5ca:	5f 4f       	sbci	r21, 0xFF	; 255
 5cc:	24 17       	cp	r18, r20
 5ce:	35 07       	cpc	r19, r21
 5d0:	48 f0       	brcs	.+18     	; 0x5e4 <malloc+0x11e>
 5d2:	4e 0f       	add	r20, r30
 5d4:	5f 1f       	adc	r21, r31
 5d6:	50 93 80 01 	sts	0x0180, r21
 5da:	40 93 7f 01 	sts	0x017F, r20
 5de:	81 93       	st	Z+, r24
 5e0:	91 93       	st	Z+, r25
 5e2:	02 c0       	rjmp	.+4      	; 0x5e8 <malloc+0x122>
 5e4:	e0 e0       	ldi	r30, 0x00	; 0
 5e6:	f0 e0       	ldi	r31, 0x00	; 0
 5e8:	cf 01       	movw	r24, r30
 5ea:	df 91       	pop	r29
 5ec:	cf 91       	pop	r28
 5ee:	08 95       	ret

000005f0 <free>:
 5f0:	0f 93       	push	r16
 5f2:	1f 93       	push	r17
 5f4:	cf 93       	push	r28
 5f6:	df 93       	push	r29
 5f8:	00 97       	sbiw	r24, 0x00	; 0
 5fa:	09 f4       	brne	.+2      	; 0x5fe <free+0xe>
 5fc:	8c c0       	rjmp	.+280    	; 0x716 <free+0x126>
 5fe:	fc 01       	movw	r30, r24
 600:	32 97       	sbiw	r30, 0x02	; 2
 602:	13 82       	std	Z+3, r1	; 0x03
 604:	12 82       	std	Z+2, r1	; 0x02
 606:	00 91 81 01 	lds	r16, 0x0181
 60a:	10 91 82 01 	lds	r17, 0x0182
 60e:	01 15       	cp	r16, r1
 610:	11 05       	cpc	r17, r1
 612:	81 f4       	brne	.+32     	; 0x634 <free+0x44>
 614:	20 81       	ld	r18, Z
 616:	31 81       	ldd	r19, Z+1	; 0x01
 618:	82 0f       	add	r24, r18
 61a:	93 1f       	adc	r25, r19
 61c:	20 91 7f 01 	lds	r18, 0x017F
 620:	30 91 80 01 	lds	r19, 0x0180
 624:	28 17       	cp	r18, r24
 626:	39 07       	cpc	r19, r25
 628:	79 f5       	brne	.+94     	; 0x688 <free+0x98>
 62a:	f0 93 80 01 	sts	0x0180, r31
 62e:	e0 93 7f 01 	sts	0x017F, r30
 632:	71 c0       	rjmp	.+226    	; 0x716 <free+0x126>
 634:	d8 01       	movw	r26, r16
 636:	40 e0       	ldi	r20, 0x00	; 0
 638:	50 e0       	ldi	r21, 0x00	; 0
 63a:	ae 17       	cp	r26, r30
 63c:	bf 07       	cpc	r27, r31
 63e:	50 f4       	brcc	.+20     	; 0x654 <free+0x64>
 640:	12 96       	adiw	r26, 0x02	; 2
 642:	2d 91       	ld	r18, X+
 644:	3c 91       	ld	r19, X
 646:	13 97       	sbiw	r26, 0x03	; 3
 648:	ad 01       	movw	r20, r26
 64a:	21 15       	cp	r18, r1
 64c:	31 05       	cpc	r19, r1
 64e:	09 f1       	breq	.+66     	; 0x692 <free+0xa2>
 650:	d9 01       	movw	r26, r18
 652:	f3 cf       	rjmp	.-26     	; 0x63a <free+0x4a>
 654:	9d 01       	movw	r18, r26
 656:	da 01       	movw	r26, r20
 658:	33 83       	std	Z+3, r19	; 0x03
 65a:	22 83       	std	Z+2, r18	; 0x02
 65c:	60 81       	ld	r22, Z
 65e:	71 81       	ldd	r23, Z+1	; 0x01
 660:	86 0f       	add	r24, r22
 662:	97 1f       	adc	r25, r23
 664:	82 17       	cp	r24, r18
 666:	93 07       	cpc	r25, r19
 668:	69 f4       	brne	.+26     	; 0x684 <free+0x94>
 66a:	ec 01       	movw	r28, r24
 66c:	28 81       	ld	r18, Y
 66e:	39 81       	ldd	r19, Y+1	; 0x01
 670:	26 0f       	add	r18, r22
 672:	37 1f       	adc	r19, r23
 674:	2e 5f       	subi	r18, 0xFE	; 254
 676:	3f 4f       	sbci	r19, 0xFF	; 255
 678:	31 83       	std	Z+1, r19	; 0x01
 67a:	20 83       	st	Z, r18
 67c:	8a 81       	ldd	r24, Y+2	; 0x02
 67e:	9b 81       	ldd	r25, Y+3	; 0x03
 680:	93 83       	std	Z+3, r25	; 0x03
 682:	82 83       	std	Z+2, r24	; 0x02
 684:	45 2b       	or	r20, r21
 686:	29 f4       	brne	.+10     	; 0x692 <free+0xa2>
 688:	f0 93 82 01 	sts	0x0182, r31
 68c:	e0 93 81 01 	sts	0x0181, r30
 690:	42 c0       	rjmp	.+132    	; 0x716 <free+0x126>
 692:	13 96       	adiw	r26, 0x03	; 3
 694:	fc 93       	st	X, r31
 696:	ee 93       	st	-X, r30
 698:	12 97       	sbiw	r26, 0x02	; 2
 69a:	ed 01       	movw	r28, r26
 69c:	49 91       	ld	r20, Y+
 69e:	59 91       	ld	r21, Y+
 6a0:	9e 01       	movw	r18, r28
 6a2:	24 0f       	add	r18, r20
 6a4:	35 1f       	adc	r19, r21
 6a6:	e2 17       	cp	r30, r18
 6a8:	f3 07       	cpc	r31, r19
 6aa:	71 f4       	brne	.+28     	; 0x6c8 <free+0xd8>
 6ac:	80 81       	ld	r24, Z
 6ae:	91 81       	ldd	r25, Z+1	; 0x01
 6b0:	84 0f       	add	r24, r20
 6b2:	95 1f       	adc	r25, r21
 6b4:	02 96       	adiw	r24, 0x02	; 2
 6b6:	11 96       	adiw	r26, 0x01	; 1
 6b8:	9c 93       	st	X, r25
 6ba:	8e 93       	st	-X, r24
 6bc:	82 81       	ldd	r24, Z+2	; 0x02
 6be:	93 81       	ldd	r25, Z+3	; 0x03
 6c0:	13 96       	adiw	r26, 0x03	; 3
 6c2:	9c 93       	st	X, r25
 6c4:	8e 93       	st	-X, r24
 6c6:	12 97       	sbiw	r26, 0x02	; 2
 6c8:	e0 e0       	ldi	r30, 0x00	; 0
 6ca:	f0 e0       	ldi	r31, 0x00	; 0
 6cc:	d8 01       	movw	r26, r16
 6ce:	12 96       	adiw	r26, 0x02	; 2
 6d0:	8d 91       	ld	r24, X+
 6d2:	9c 91       	ld	r25, X
 6d4:	13 97       	sbiw	r26, 0x03	; 3
 6d6:	00 97       	sbiw	r24, 0x00	; 0
 6d8:	19 f0       	breq	.+6      	; 0x6e0 <free+0xf0>
 6da:	f8 01       	movw	r30, r16
 6dc:	8c 01       	movw	r16, r24
 6de:	f6 cf       	rjmp	.-20     	; 0x6cc <free+0xdc>
 6e0:	8d 91       	ld	r24, X+
 6e2:	9c 91       	ld	r25, X
 6e4:	98 01       	movw	r18, r16
 6e6:	2e 5f       	subi	r18, 0xFE	; 254
 6e8:	3f 4f       	sbci	r19, 0xFF	; 255
 6ea:	82 0f       	add	r24, r18
 6ec:	93 1f       	adc	r25, r19
 6ee:	20 91 7f 01 	lds	r18, 0x017F
 6f2:	30 91 80 01 	lds	r19, 0x0180
 6f6:	28 17       	cp	r18, r24
 6f8:	39 07       	cpc	r19, r25
 6fa:	69 f4       	brne	.+26     	; 0x716 <free+0x126>
 6fc:	30 97       	sbiw	r30, 0x00	; 0
 6fe:	29 f4       	brne	.+10     	; 0x70a <free+0x11a>
 700:	10 92 82 01 	sts	0x0182, r1
 704:	10 92 81 01 	sts	0x0181, r1
 708:	02 c0       	rjmp	.+4      	; 0x70e <free+0x11e>
 70a:	13 82       	std	Z+3, r1	; 0x03
 70c:	12 82       	std	Z+2, r1	; 0x02
 70e:	10 93 80 01 	sts	0x0180, r17
 712:	00 93 7f 01 	sts	0x017F, r16
 716:	df 91       	pop	r29
 718:	cf 91       	pop	r28
 71a:	1f 91       	pop	r17
 71c:	0f 91       	pop	r16
 71e:	08 95       	ret

00000720 <__do_global_dtors>:
 720:	10 e0       	ldi	r17, 0x00	; 0
 722:	c7 e3       	ldi	r28, 0x37	; 55
 724:	d0 e0       	ldi	r29, 0x00	; 0
 726:	04 c0       	rjmp	.+8      	; 0x730 <__do_global_dtors+0x10>
 728:	fe 01       	movw	r30, r28
 72a:	0e 94 5d 02 	call	0x4ba	; 0x4ba <__tablejump2__>
 72e:	21 96       	adiw	r28, 0x01	; 1
 730:	c9 33       	cpi	r28, 0x39	; 57
 732:	d1 07       	cpc	r29, r17
 734:	c9 f7       	brne	.-14     	; 0x728 <__do_global_dtors+0x8>
 736:	f8 94       	cli

00000738 <__stop_program>:
 738:	ff cf       	rjmp	.-2      	; 0x738 <__stop_program>
