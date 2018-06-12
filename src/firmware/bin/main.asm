
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 37 00 	jmp	0x6e	; 0x6e <__dtors_end>
       4:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
       8:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
       c:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      10:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      14:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      18:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      1c:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      20:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      24:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      28:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      2c:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      30:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      34:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      38:	0c 94 4d 02 	jmp	0x49a	; 0x49a <__vector_14>
      3c:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      40:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      44:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      48:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      4c:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      50:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      54:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      58:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      5c:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      60:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      64:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>

00000068 <__ctors_start>:
      68:	aa 02       	muls	r26, r26
      6a:	f6 03       	fmuls	r23, r22

0000006c <__ctors_end>:
      6c:	fa 03       	fmulsu	r23, r18

0000006e <__dtors_end>:
      6e:	11 24       	eor	r1, r1
      70:	1f be       	out	0x3f, r1	; 63
      72:	cf ef       	ldi	r28, 0xFF	; 255
      74:	d8 e0       	ldi	r29, 0x08	; 8
      76:	de bf       	out	0x3e, r29	; 62
      78:	cd bf       	out	0x3d, r28	; 61

0000007a <__do_copy_data>:
      7a:	11 e0       	ldi	r17, 0x01	; 1
      7c:	a0 e0       	ldi	r26, 0x00	; 0
      7e:	b1 e0       	ldi	r27, 0x01	; 1
      80:	e8 e9       	ldi	r30, 0x98	; 152
      82:	f3 e2       	ldi	r31, 0x23	; 35
      84:	02 c0       	rjmp	.+4      	; 0x8a <__do_copy_data+0x10>
      86:	05 90       	lpm	r0, Z+
      88:	0d 92       	st	X+, r0
      8a:	ac 3a       	cpi	r26, 0xAC	; 172
      8c:	b1 07       	cpc	r27, r17
      8e:	d9 f7       	brne	.-10     	; 0x86 <__do_copy_data+0xc>

00000090 <__do_clear_bss>:
      90:	21 e0       	ldi	r18, 0x01	; 1
      92:	ac ea       	ldi	r26, 0xAC	; 172
      94:	b1 e0       	ldi	r27, 0x01	; 1
      96:	01 c0       	rjmp	.+2      	; 0x9a <.do_clear_bss_start>

00000098 <.do_clear_bss_loop>:
      98:	1d 92       	st	X+, r1

0000009a <.do_clear_bss_start>:
      9a:	a6 3f       	cpi	r26, 0xF6	; 246
      9c:	b2 07       	cpc	r27, r18
      9e:	e1 f7       	brne	.-8      	; 0x98 <.do_clear_bss_loop>

000000a0 <__do_global_ctors>:
      a0:	10 e0       	ldi	r17, 0x00	; 0
      a2:	c6 e3       	ldi	r28, 0x36	; 54
      a4:	d0 e0       	ldi	r29, 0x00	; 0
      a6:	04 c0       	rjmp	.+8      	; 0xb0 <__do_global_ctors+0x10>
      a8:	21 97       	sbiw	r28, 0x01	; 1
      aa:	fe 01       	movw	r30, r28
      ac:	0e 94 c8 0e 	call	0x1d90	; 0x1d90 <__tablejump2__>
      b0:	c4 33       	cpi	r28, 0x34	; 52
      b2:	d1 07       	cpc	r29, r17
      b4:	c9 f7       	brne	.-14     	; 0xa8 <__do_global_ctors+0x8>
      b6:	0e 94 21 0e 	call	0x1c42	; 0x1c42 <main>
      ba:	0c 94 bf 11 	jmp	0x237e	; 0x237e <__do_global_dtors>

000000be <__bad_interrupt>:
      be:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000c2 <_ZN7Mag3110C1Ev>:
      c2:	cf 93       	push	r28
      c4:	df 93       	push	r29
      c6:	ec 01       	movw	r28, r24
      c8:	19 82       	std	Y+1, r1	; 0x01
      ca:	18 82       	st	Y, r1
      cc:	1b 82       	std	Y+3, r1	; 0x03
      ce:	1a 82       	std	Y+2, r1	; 0x02
      d0:	1d 82       	std	Y+5, r1	; 0x05
      d2:	1c 82       	std	Y+4, r1	; 0x04
      d4:	86 e0       	ldi	r24, 0x06	; 6
      d6:	fe 01       	movw	r30, r28
      d8:	de 01       	movw	r26, r28
      da:	16 96       	adiw	r26, 0x06	; 6
      dc:	01 90       	ld	r0, Z+
      de:	0d 92       	st	X+, r0
      e0:	8a 95       	dec	r24
      e2:	e1 f7       	brne	.-8      	; 0xdc <_ZN7Mag3110C1Ev+0x1a>
      e4:	86 e0       	ldi	r24, 0x06	; 6
      e6:	fe 01       	movw	r30, r28
      e8:	de 01       	movw	r26, r28
      ea:	1c 96       	adiw	r26, 0x0c	; 12
      ec:	01 90       	ld	r0, Z+
      ee:	0d 92       	st	X+, r0
      f0:	8a 95       	dec	r24
      f2:	e1 f7       	brne	.-8      	; 0xec <_ZN7Mag3110C1Ev+0x2a>
      f4:	df 91       	pop	r29
      f6:	cf 91       	pop	r28
      f8:	08 95       	ret

000000fa <_ZN7Mag3110D1Ev>:
      fa:	08 95       	ret

000000fc <_ZN7Mag31104initEP14CI2C_Interface>:
      fc:	cf 93       	push	r28
      fe:	df 93       	push	r29
     100:	ec 01       	movw	r28, r24
     102:	cb 01       	movw	r24, r22
     104:	7f 8b       	std	Y+23, r23	; 0x17
     106:	6e 8b       	std	Y+22, r22	; 0x16
     108:	db 01       	movw	r26, r22
     10a:	ed 91       	ld	r30, X+
     10c:	fc 91       	ld	r31, X
     10e:	00 84       	ldd	r0, Z+8	; 0x08
     110:	f1 85       	ldd	r31, Z+9	; 0x09
     112:	e0 2d       	mov	r30, r0
     114:	21 e0       	ldi	r18, 0x01	; 1
     116:	40 e1       	ldi	r20, 0x10	; 16
     118:	6c e1       	ldi	r22, 0x1C	; 28
     11a:	09 95       	icall
     11c:	8e 89       	ldd	r24, Y+22	; 0x16
     11e:	9f 89       	ldd	r25, Y+23	; 0x17
     120:	dc 01       	movw	r26, r24
     122:	ed 91       	ld	r30, X+
     124:	fc 91       	ld	r31, X
     126:	00 84       	ldd	r0, Z+8	; 0x08
     128:	f1 85       	ldd	r31, Z+9	; 0x09
     12a:	e0 2d       	mov	r30, r0
     12c:	20 e8       	ldi	r18, 0x80	; 128
     12e:	41 e1       	ldi	r20, 0x11	; 17
     130:	6c e1       	ldi	r22, 0x1C	; 28
     132:	09 95       	icall
     134:	8e 89       	ldd	r24, Y+22	; 0x16
     136:	9f 89       	ldd	r25, Y+23	; 0x17
     138:	dc 01       	movw	r26, r24
     13a:	ed 91       	ld	r30, X+
     13c:	fc 91       	ld	r31, X
     13e:	00 84       	ldd	r0, Z+8	; 0x08
     140:	f1 85       	ldd	r31, Z+9	; 0x09
     142:	e0 2d       	mov	r30, r0
     144:	29 e0       	ldi	r18, 0x09	; 9
     146:	40 e1       	ldi	r20, 0x10	; 16
     148:	6c e1       	ldi	r22, 0x1C	; 28
     14a:	09 95       	icall
     14c:	8e 89       	ldd	r24, Y+22	; 0x16
     14e:	9f 89       	ldd	r25, Y+23	; 0x17
     150:	dc 01       	movw	r26, r24
     152:	ed 91       	ld	r30, X+
     154:	fc 91       	ld	r31, X
     156:	00 84       	ldd	r0, Z+8	; 0x08
     158:	f1 85       	ldd	r31, Z+9	; 0x09
     15a:	e0 2d       	mov	r30, r0
     15c:	20 e0       	ldi	r18, 0x00	; 0
     15e:	41 e1       	ldi	r20, 0x11	; 17
     160:	6c e1       	ldi	r22, 0x1C	; 28
     162:	09 95       	icall
     164:	8e 89       	ldd	r24, Y+22	; 0x16
     166:	9f 89       	ldd	r25, Y+23	; 0x17
     168:	dc 01       	movw	r26, r24
     16a:	ed 91       	ld	r30, X+
     16c:	fc 91       	ld	r31, X
     16e:	06 84       	ldd	r0, Z+14	; 0x0e
     170:	f7 85       	ldd	r31, Z+15	; 0x0f
     172:	e0 2d       	mov	r30, r0
     174:	47 e0       	ldi	r20, 0x07	; 7
     176:	6c e1       	ldi	r22, 0x1C	; 28
     178:	09 95       	icall
     17a:	21 e0       	ldi	r18, 0x01	; 1
     17c:	30 e0       	ldi	r19, 0x00	; 0
     17e:	84 3c       	cpi	r24, 0xC4	; 196
     180:	11 f4       	brne	.+4      	; 0x186 <_ZN7Mag31104initEP14CI2C_Interface+0x8a>
     182:	30 e0       	ldi	r19, 0x00	; 0
     184:	20 e0       	ldi	r18, 0x00	; 0
     186:	88 27       	eor	r24, r24
     188:	99 27       	eor	r25, r25
     18a:	82 1b       	sub	r24, r18
     18c:	93 0b       	sbc	r25, r19
     18e:	df 91       	pop	r29
     190:	cf 91       	pop	r28
     192:	08 95       	ret

00000194 <_ZN7Mag311013get_intensityER10sMagResult>:
     194:	cf 92       	push	r12
     196:	df 92       	push	r13
     198:	ef 92       	push	r14
     19a:	ff 92       	push	r15
     19c:	cf 93       	push	r28
     19e:	df 93       	push	r29
     1a0:	fb 01       	movw	r30, r22
     1a2:	a0 81       	ld	r26, Z
     1a4:	b1 81       	ldd	r27, Z+1	; 0x01
     1a6:	c2 81       	ldd	r28, Z+2	; 0x02
     1a8:	d3 81       	ldd	r29, Z+3	; 0x03
     1aa:	44 81       	ldd	r20, Z+4	; 0x04
     1ac:	55 81       	ldd	r21, Z+5	; 0x05
     1ae:	9d 01       	movw	r18, r26
     1b0:	0e 94 96 0e 	call	0x1d2c	; 0x1d2c <__mulhisi3>
     1b4:	6b 01       	movw	r12, r22
     1b6:	7c 01       	movw	r14, r24
     1b8:	9e 01       	movw	r18, r28
     1ba:	de 01       	movw	r26, r28
     1bc:	0e 94 96 0e 	call	0x1d2c	; 0x1d2c <__mulhisi3>
     1c0:	c6 0e       	add	r12, r22
     1c2:	d7 1e       	adc	r13, r23
     1c4:	e8 1e       	adc	r14, r24
     1c6:	f9 1e       	adc	r15, r25
     1c8:	9a 01       	movw	r18, r20
     1ca:	da 01       	movw	r26, r20
     1cc:	0e 94 96 0e 	call	0x1d2c	; 0x1d2c <__mulhisi3>
     1d0:	6c 0d       	add	r22, r12
     1d2:	7d 1d       	adc	r23, r13
     1d4:	8e 1d       	adc	r24, r14
     1d6:	9f 1d       	adc	r25, r15
     1d8:	df 91       	pop	r29
     1da:	cf 91       	pop	r28
     1dc:	ff 90       	pop	r15
     1de:	ef 90       	pop	r14
     1e0:	df 90       	pop	r13
     1e2:	cf 90       	pop	r12
     1e4:	08 95       	ret

000001e6 <_ZN7Mag31104readEv>:
     1e6:	ef 92       	push	r14
     1e8:	ff 92       	push	r15
     1ea:	0f 93       	push	r16
     1ec:	1f 93       	push	r17
     1ee:	cf 93       	push	r28
     1f0:	df 93       	push	r29
     1f2:	00 d0       	rcall	.+0      	; 0x1f4 <_ZN7Mag31104readEv+0xe>
     1f4:	00 d0       	rcall	.+0      	; 0x1f6 <_ZN7Mag31104readEv+0x10>
     1f6:	00 d0       	rcall	.+0      	; 0x1f8 <_ZN7Mag31104readEv+0x12>
     1f8:	cd b7       	in	r28, 0x3d	; 61
     1fa:	de b7       	in	r29, 0x3e	; 62
     1fc:	8c 01       	movw	r16, r24
     1fe:	86 e0       	ldi	r24, 0x06	; 6
     200:	f8 01       	movw	r30, r16
     202:	d8 01       	movw	r26, r16
     204:	16 96       	adiw	r26, 0x06	; 6
     206:	01 90       	ld	r0, Z+
     208:	0d 92       	st	X+, r0
     20a:	8a 95       	dec	r24
     20c:	e1 f7       	brne	.-8      	; 0x206 <_ZN7Mag31104readEv+0x20>
     20e:	d8 01       	movw	r26, r16
     210:	56 96       	adiw	r26, 0x16	; 22
     212:	8d 91       	ld	r24, X+
     214:	9c 91       	ld	r25, X
     216:	dc 01       	movw	r26, r24
     218:	ed 91       	ld	r30, X+
     21a:	fc 91       	ld	r31, X
     21c:	01 90       	ld	r0, Z+
     21e:	f0 81       	ld	r31, Z
     220:	e0 2d       	mov	r30, r0
     222:	09 95       	icall
     224:	f8 01       	movw	r30, r16
     226:	86 89       	ldd	r24, Z+22	; 0x16
     228:	97 89       	ldd	r25, Z+23	; 0x17
     22a:	dc 01       	movw	r26, r24
     22c:	ed 91       	ld	r30, X+
     22e:	fc 91       	ld	r31, X
     230:	04 80       	ldd	r0, Z+4	; 0x04
     232:	f5 81       	ldd	r31, Z+5	; 0x05
     234:	e0 2d       	mov	r30, r0
     236:	6c e1       	ldi	r22, 0x1C	; 28
     238:	09 95       	icall
     23a:	f8 01       	movw	r30, r16
     23c:	86 89       	ldd	r24, Z+22	; 0x16
     23e:	97 89       	ldd	r25, Z+23	; 0x17
     240:	dc 01       	movw	r26, r24
     242:	ed 91       	ld	r30, X+
     244:	fc 91       	ld	r31, X
     246:	04 80       	ldd	r0, Z+4	; 0x04
     248:	f5 81       	ldd	r31, Z+5	; 0x05
     24a:	e0 2d       	mov	r30, r0
     24c:	61 e0       	ldi	r22, 0x01	; 1
     24e:	09 95       	icall
     250:	f8 01       	movw	r30, r16
     252:	86 89       	ldd	r24, Z+22	; 0x16
     254:	97 89       	ldd	r25, Z+23	; 0x17
     256:	dc 01       	movw	r26, r24
     258:	ed 91       	ld	r30, X+
     25a:	fc 91       	ld	r31, X
     25c:	02 80       	ldd	r0, Z+2	; 0x02
     25e:	f3 81       	ldd	r31, Z+3	; 0x03
     260:	e0 2d       	mov	r30, r0
     262:	09 95       	icall
     264:	f8 01       	movw	r30, r16
     266:	86 89       	ldd	r24, Z+22	; 0x16
     268:	97 89       	ldd	r25, Z+23	; 0x17
     26a:	dc 01       	movw	r26, r24
     26c:	ed 91       	ld	r30, X+
     26e:	fc 91       	ld	r31, X
     270:	01 90       	ld	r0, Z+
     272:	f0 81       	ld	r31, Z
     274:	e0 2d       	mov	r30, r0
     276:	09 95       	icall
     278:	f8 01       	movw	r30, r16
     27a:	86 89       	ldd	r24, Z+22	; 0x16
     27c:	97 89       	ldd	r25, Z+23	; 0x17
     27e:	dc 01       	movw	r26, r24
     280:	ed 91       	ld	r30, X+
     282:	fc 91       	ld	r31, X
     284:	04 80       	ldd	r0, Z+4	; 0x04
     286:	f5 81       	ldd	r31, Z+5	; 0x05
     288:	e0 2d       	mov	r30, r0
     28a:	6d e1       	ldi	r22, 0x1D	; 29
     28c:	09 95       	icall
     28e:	f8 01       	movw	r30, r16
     290:	86 89       	ldd	r24, Z+22	; 0x16
     292:	97 89       	ldd	r25, Z+23	; 0x17
     294:	dc 01       	movw	r26, r24
     296:	ed 91       	ld	r30, X+
     298:	fc 91       	ld	r31, X
     29a:	06 80       	ldd	r0, Z+6	; 0x06
     29c:	f7 81       	ldd	r31, Z+7	; 0x07
     29e:	e0 2d       	mov	r30, r0
     2a0:	61 e0       	ldi	r22, 0x01	; 1
     2a2:	09 95       	icall
     2a4:	e8 2e       	mov	r14, r24
     2a6:	f1 2c       	mov	r15, r1
     2a8:	fe 2c       	mov	r15, r14
     2aa:	ee 24       	eor	r14, r14
     2ac:	f8 01       	movw	r30, r16
     2ae:	86 89       	ldd	r24, Z+22	; 0x16
     2b0:	97 89       	ldd	r25, Z+23	; 0x17
     2b2:	dc 01       	movw	r26, r24
     2b4:	ed 91       	ld	r30, X+
     2b6:	fc 91       	ld	r31, X
     2b8:	06 80       	ldd	r0, Z+6	; 0x06
     2ba:	f7 81       	ldd	r31, Z+7	; 0x07
     2bc:	e0 2d       	mov	r30, r0
     2be:	61 e0       	ldi	r22, 0x01	; 1
     2c0:	09 95       	icall
     2c2:	e8 2a       	or	r14, r24
     2c4:	f8 01       	movw	r30, r16
     2c6:	f1 82       	std	Z+1, r15	; 0x01
     2c8:	e0 82       	st	Z, r14
     2ca:	86 89       	ldd	r24, Z+22	; 0x16
     2cc:	97 89       	ldd	r25, Z+23	; 0x17
     2ce:	dc 01       	movw	r26, r24
     2d0:	ed 91       	ld	r30, X+
     2d2:	fc 91       	ld	r31, X
     2d4:	06 80       	ldd	r0, Z+6	; 0x06
     2d6:	f7 81       	ldd	r31, Z+7	; 0x07
     2d8:	e0 2d       	mov	r30, r0
     2da:	61 e0       	ldi	r22, 0x01	; 1
     2dc:	09 95       	icall
     2de:	e8 2e       	mov	r14, r24
     2e0:	f1 2c       	mov	r15, r1
     2e2:	fe 2c       	mov	r15, r14
     2e4:	ee 24       	eor	r14, r14
     2e6:	f8 01       	movw	r30, r16
     2e8:	86 89       	ldd	r24, Z+22	; 0x16
     2ea:	97 89       	ldd	r25, Z+23	; 0x17
     2ec:	dc 01       	movw	r26, r24
     2ee:	ed 91       	ld	r30, X+
     2f0:	fc 91       	ld	r31, X
     2f2:	06 80       	ldd	r0, Z+6	; 0x06
     2f4:	f7 81       	ldd	r31, Z+7	; 0x07
     2f6:	e0 2d       	mov	r30, r0
     2f8:	61 e0       	ldi	r22, 0x01	; 1
     2fa:	09 95       	icall
     2fc:	e8 2a       	or	r14, r24
     2fe:	f8 01       	movw	r30, r16
     300:	f3 82       	std	Z+3, r15	; 0x03
     302:	e2 82       	std	Z+2, r14	; 0x02
     304:	86 89       	ldd	r24, Z+22	; 0x16
     306:	97 89       	ldd	r25, Z+23	; 0x17
     308:	dc 01       	movw	r26, r24
     30a:	ed 91       	ld	r30, X+
     30c:	fc 91       	ld	r31, X
     30e:	06 80       	ldd	r0, Z+6	; 0x06
     310:	f7 81       	ldd	r31, Z+7	; 0x07
     312:	e0 2d       	mov	r30, r0
     314:	61 e0       	ldi	r22, 0x01	; 1
     316:	09 95       	icall
     318:	e8 2e       	mov	r14, r24
     31a:	f1 2c       	mov	r15, r1
     31c:	fe 2c       	mov	r15, r14
     31e:	ee 24       	eor	r14, r14
     320:	f8 01       	movw	r30, r16
     322:	86 89       	ldd	r24, Z+22	; 0x16
     324:	97 89       	ldd	r25, Z+23	; 0x17
     326:	dc 01       	movw	r26, r24
     328:	ed 91       	ld	r30, X+
     32a:	fc 91       	ld	r31, X
     32c:	06 80       	ldd	r0, Z+6	; 0x06
     32e:	f7 81       	ldd	r31, Z+7	; 0x07
     330:	e0 2d       	mov	r30, r0
     332:	60 e0       	ldi	r22, 0x00	; 0
     334:	09 95       	icall
     336:	e8 2a       	or	r14, r24
     338:	f8 01       	movw	r30, r16
     33a:	f5 82       	std	Z+5, r15	; 0x05
     33c:	e4 82       	std	Z+4, r14	; 0x04
     33e:	86 89       	ldd	r24, Z+22	; 0x16
     340:	97 89       	ldd	r25, Z+23	; 0x17
     342:	dc 01       	movw	r26, r24
     344:	ed 91       	ld	r30, X+
     346:	fc 91       	ld	r31, X
     348:	02 80       	ldd	r0, Z+2	; 0x02
     34a:	f3 81       	ldd	r31, Z+3	; 0x03
     34c:	e0 2d       	mov	r30, r0
     34e:	09 95       	icall
     350:	f8 01       	movw	r30, r16
     352:	80 81       	ld	r24, Z
     354:	91 81       	ldd	r25, Z+1	; 0x01
     356:	26 81       	ldd	r18, Z+6	; 0x06
     358:	37 81       	ldd	r19, Z+7	; 0x07
     35a:	82 1b       	sub	r24, r18
     35c:	93 0b       	sbc	r25, r19
     35e:	24 85       	ldd	r18, Z+12	; 0x0c
     360:	35 85       	ldd	r19, Z+13	; 0x0d
     362:	43 e0       	ldi	r20, 0x03	; 3
     364:	22 0f       	add	r18, r18
     366:	33 1f       	adc	r19, r19
     368:	4a 95       	dec	r20
     36a:	e1 f7       	brne	.-8      	; 0x364 <_ZN7Mag31104readEv+0x17e>
     36c:	82 0f       	add	r24, r18
     36e:	93 1f       	adc	r25, r19
     370:	29 e0       	ldi	r18, 0x09	; 9
     372:	30 e0       	ldi	r19, 0x00	; 0
     374:	b9 01       	movw	r22, r18
     376:	0e 94 41 0e 	call	0x1c82	; 0x1c82 <__divmodhi4>
     37a:	75 87       	std	Z+13, r23	; 0x0d
     37c:	64 87       	std	Z+12, r22	; 0x0c
     37e:	82 81       	ldd	r24, Z+2	; 0x02
     380:	93 81       	ldd	r25, Z+3	; 0x03
     382:	40 85       	ldd	r20, Z+8	; 0x08
     384:	51 85       	ldd	r21, Z+9	; 0x09
     386:	84 1b       	sub	r24, r20
     388:	95 0b       	sbc	r25, r21
     38a:	46 85       	ldd	r20, Z+14	; 0x0e
     38c:	57 85       	ldd	r21, Z+15	; 0x0f
     38e:	63 e0       	ldi	r22, 0x03	; 3
     390:	44 0f       	add	r20, r20
     392:	55 1f       	adc	r21, r21
     394:	6a 95       	dec	r22
     396:	e1 f7       	brne	.-8      	; 0x390 <_ZN7Mag31104readEv+0x1aa>
     398:	84 0f       	add	r24, r20
     39a:	95 1f       	adc	r25, r21
     39c:	b9 01       	movw	r22, r18
     39e:	0e 94 41 0e 	call	0x1c82	; 0x1c82 <__divmodhi4>
     3a2:	77 87       	std	Z+15, r23	; 0x0f
     3a4:	66 87       	std	Z+14, r22	; 0x0e
     3a6:	84 81       	ldd	r24, Z+4	; 0x04
     3a8:	95 81       	ldd	r25, Z+5	; 0x05
     3aa:	42 85       	ldd	r20, Z+10	; 0x0a
     3ac:	53 85       	ldd	r21, Z+11	; 0x0b
     3ae:	84 1b       	sub	r24, r20
     3b0:	95 0b       	sbc	r25, r21
     3b2:	40 89       	ldd	r20, Z+16	; 0x10
     3b4:	51 89       	ldd	r21, Z+17	; 0x11
     3b6:	73 e0       	ldi	r23, 0x03	; 3
     3b8:	44 0f       	add	r20, r20
     3ba:	55 1f       	adc	r21, r21
     3bc:	7a 95       	dec	r23
     3be:	e1 f7       	brne	.-8      	; 0x3b8 <_ZN7Mag31104readEv+0x1d2>
     3c0:	84 0f       	add	r24, r20
     3c2:	95 1f       	adc	r25, r21
     3c4:	b9 01       	movw	r22, r18
     3c6:	0e 94 41 0e 	call	0x1c82	; 0x1c82 <__divmodhi4>
     3ca:	71 8b       	std	Z+17, r23	; 0x11
     3cc:	60 8b       	std	Z+16, r22	; 0x10
     3ce:	b8 01       	movw	r22, r16
     3d0:	64 5f       	subi	r22, 0xF4	; 244
     3d2:	7f 4f       	sbci	r23, 0xFF	; 255
     3d4:	c8 01       	movw	r24, r16
     3d6:	0e 94 ca 00 	call	0x194	; 0x194 <_ZN7Mag311013get_intensityER10sMagResult>
     3da:	d8 01       	movw	r26, r16
     3dc:	52 96       	adiw	r26, 0x12	; 18
     3de:	6d 93       	st	X+, r22
     3e0:	7d 93       	st	X+, r23
     3e2:	8d 93       	st	X+, r24
     3e4:	9c 93       	st	X, r25
     3e6:	55 97       	sbiw	r26, 0x15	; 21
     3e8:	86 e0       	ldi	r24, 0x06	; 6
     3ea:	f8 01       	movw	r30, r16
     3ec:	de 01       	movw	r26, r28
     3ee:	11 96       	adiw	r26, 0x01	; 1
     3f0:	01 90       	ld	r0, Z+
     3f2:	0d 92       	st	X+, r0
     3f4:	8a 95       	dec	r24
     3f6:	e1 f7       	brne	.-8      	; 0x3f0 <_ZN7Mag31104readEv+0x20a>
     3f8:	29 81       	ldd	r18, Y+1	; 0x01
     3fa:	3a 81       	ldd	r19, Y+2	; 0x02
     3fc:	4b 81       	ldd	r20, Y+3	; 0x03
     3fe:	5c 81       	ldd	r21, Y+4	; 0x04
     400:	6d 81       	ldd	r22, Y+5	; 0x05
     402:	7e 81       	ldd	r23, Y+6	; 0x06
     404:	80 e0       	ldi	r24, 0x00	; 0
     406:	90 e0       	ldi	r25, 0x00	; 0
     408:	26 96       	adiw	r28, 0x06	; 6
     40a:	0f b6       	in	r0, 0x3f	; 63
     40c:	f8 94       	cli
     40e:	de bf       	out	0x3e, r29	; 62
     410:	0f be       	out	0x3f, r0	; 63
     412:	cd bf       	out	0x3d, r28	; 61
     414:	df 91       	pop	r29
     416:	cf 91       	pop	r28
     418:	1f 91       	pop	r17
     41a:	0f 91       	pop	r16
     41c:	ff 90       	pop	r15
     41e:	ef 90       	pop	r14
     420:	08 95       	ret

00000422 <_ZN8CRTTimerC1Ev>:
     422:	ed ea       	ldi	r30, 0xAD	; 173
     424:	f1 e0       	ldi	r31, 0x01	; 1
     426:	11 82       	std	Z+1, r1	; 0x01
     428:	10 82       	st	Z, r1
     42a:	13 82       	std	Z+3, r1	; 0x03
     42c:	12 82       	std	Z+2, r1	; 0x02
     42e:	15 82       	std	Z+5, r1	; 0x05
     430:	14 82       	std	Z+4, r1	; 0x04
     432:	16 82       	std	Z+6, r1	; 0x06
     434:	17 82       	std	Z+7, r1	; 0x07
     436:	38 96       	adiw	r30, 0x08	; 8
     438:	81 e0       	ldi	r24, 0x01	; 1
     43a:	ed 3e       	cpi	r30, 0xED	; 237
     43c:	f8 07       	cpc	r31, r24
     43e:	99 f7       	brne	.-26     	; 0x426 <_ZN8CRTTimerC1Ev+0x4>
     440:	84 b5       	in	r24, 0x24	; 36
     442:	82 60       	ori	r24, 0x02	; 2
     444:	84 bd       	out	0x24, r24	; 36
     446:	89 ef       	ldi	r24, 0xF9	; 249
     448:	87 bd       	out	0x27, r24	; 39
     44a:	83 e0       	ldi	r24, 0x03	; 3
     44c:	85 bd       	out	0x25, r24	; 37
     44e:	80 91 6e 00 	lds	r24, 0x006E	; 0x80006e <__TEXT_REGION_LENGTH__+0x7e006e>
     452:	82 60       	ori	r24, 0x02	; 2
     454:	80 93 6e 00 	sts	0x006E, r24	; 0x80006e <__TEXT_REGION_LENGTH__+0x7e006e>
     458:	78 94       	sei
     45a:	08 95       	ret

0000045c <_ZN8CRTTimer8get_timeEv>:
     45c:	cf 93       	push	r28
     45e:	df 93       	push	r29
     460:	00 d0       	rcall	.+0      	; 0x462 <_ZN8CRTTimer8get_timeEv+0x6>
     462:	00 d0       	rcall	.+0      	; 0x464 <_ZN8CRTTimer8get_timeEv+0x8>
     464:	cd b7       	in	r28, 0x3d	; 61
     466:	de b7       	in	r29, 0x3e	; 62
     468:	f8 94       	cli
     46a:	80 91 ed 01 	lds	r24, 0x01ED	; 0x8001ed <g_rt_time>
     46e:	90 91 ee 01 	lds	r25, 0x01EE	; 0x8001ee <g_rt_time+0x1>
     472:	a0 91 ef 01 	lds	r26, 0x01EF	; 0x8001ef <g_rt_time+0x2>
     476:	b0 91 f0 01 	lds	r27, 0x01F0	; 0x8001f0 <g_rt_time+0x3>
     47a:	89 83       	std	Y+1, r24	; 0x01
     47c:	9a 83       	std	Y+2, r25	; 0x02
     47e:	ab 83       	std	Y+3, r26	; 0x03
     480:	bc 83       	std	Y+4, r27	; 0x04
     482:	78 94       	sei
     484:	69 81       	ldd	r22, Y+1	; 0x01
     486:	7a 81       	ldd	r23, Y+2	; 0x02
     488:	8b 81       	ldd	r24, Y+3	; 0x03
     48a:	9c 81       	ldd	r25, Y+4	; 0x04
     48c:	0f 90       	pop	r0
     48e:	0f 90       	pop	r0
     490:	0f 90       	pop	r0
     492:	0f 90       	pop	r0
     494:	df 91       	pop	r29
     496:	cf 91       	pop	r28
     498:	08 95       	ret

0000049a <__vector_14>:
     49a:	1f 92       	push	r1
     49c:	0f 92       	push	r0
     49e:	0f b6       	in	r0, 0x3f	; 63
     4a0:	0f 92       	push	r0
     4a2:	11 24       	eor	r1, r1
     4a4:	2f 93       	push	r18
     4a6:	3f 93       	push	r19
     4a8:	4f 93       	push	r20
     4aa:	5f 93       	push	r21
     4ac:	6f 93       	push	r22
     4ae:	7f 93       	push	r23
     4b0:	8f 93       	push	r24
     4b2:	9f 93       	push	r25
     4b4:	af 93       	push	r26
     4b6:	bf 93       	push	r27
     4b8:	cf 93       	push	r28
     4ba:	df 93       	push	r29
     4bc:	ef 93       	push	r30
     4be:	ff 93       	push	r31
     4c0:	cd ea       	ldi	r28, 0xAD	; 173
     4c2:	d1 e0       	ldi	r29, 0x01	; 1
     4c4:	8c 81       	ldd	r24, Y+4	; 0x04
     4c6:	9d 81       	ldd	r25, Y+5	; 0x05
     4c8:	00 97       	sbiw	r24, 0x00	; 0
     4ca:	71 f1       	breq	.+92     	; 0x528 <__vector_14+0x8e>
     4cc:	01 97       	sbiw	r24, 0x01	; 1
     4ce:	9d 83       	std	Y+5, r25	; 0x05
     4d0:	8c 83       	std	Y+4, r24	; 0x04
     4d2:	28 96       	adiw	r28, 0x08	; 8
     4d4:	b1 e0       	ldi	r27, 0x01	; 1
     4d6:	cd 3e       	cpi	r28, 0xED	; 237
     4d8:	db 07       	cpc	r29, r27
     4da:	a1 f7       	brne	.-24     	; 0x4c4 <__vector_14+0x2a>
     4dc:	80 91 ed 01 	lds	r24, 0x01ED	; 0x8001ed <g_rt_time>
     4e0:	90 91 ee 01 	lds	r25, 0x01EE	; 0x8001ee <g_rt_time+0x1>
     4e4:	a0 91 ef 01 	lds	r26, 0x01EF	; 0x8001ef <g_rt_time+0x2>
     4e8:	b0 91 f0 01 	lds	r27, 0x01F0	; 0x8001f0 <g_rt_time+0x3>
     4ec:	01 96       	adiw	r24, 0x01	; 1
     4ee:	a1 1d       	adc	r26, r1
     4f0:	b1 1d       	adc	r27, r1
     4f2:	80 93 ed 01 	sts	0x01ED, r24	; 0x8001ed <g_rt_time>
     4f6:	90 93 ee 01 	sts	0x01EE, r25	; 0x8001ee <g_rt_time+0x1>
     4fa:	a0 93 ef 01 	sts	0x01EF, r26	; 0x8001ef <g_rt_time+0x2>
     4fe:	b0 93 f0 01 	sts	0x01F0, r27	; 0x8001f0 <g_rt_time+0x3>
     502:	ff 91       	pop	r31
     504:	ef 91       	pop	r30
     506:	df 91       	pop	r29
     508:	cf 91       	pop	r28
     50a:	bf 91       	pop	r27
     50c:	af 91       	pop	r26
     50e:	9f 91       	pop	r25
     510:	8f 91       	pop	r24
     512:	7f 91       	pop	r23
     514:	6f 91       	pop	r22
     516:	5f 91       	pop	r21
     518:	4f 91       	pop	r20
     51a:	3f 91       	pop	r19
     51c:	2f 91       	pop	r18
     51e:	0f 90       	pop	r0
     520:	0f be       	out	0x3f, r0	; 63
     522:	0f 90       	pop	r0
     524:	1f 90       	pop	r1
     526:	18 95       	reti
     528:	8a 81       	ldd	r24, Y+2	; 0x02
     52a:	9b 81       	ldd	r25, Y+3	; 0x03
     52c:	9d 83       	std	Y+5, r25	; 0x05
     52e:	8c 83       	std	Y+4, r24	; 0x04
     530:	8e 81       	ldd	r24, Y+6	; 0x06
     532:	8f 3f       	cpi	r24, 0xFF	; 255
     534:	11 f0       	breq	.+4      	; 0x53a <__vector_14+0xa0>
     536:	8f 5f       	subi	r24, 0xFF	; 255
     538:	8e 83       	std	Y+6, r24	; 0x06
     53a:	8f 81       	ldd	r24, Y+7	; 0x07
     53c:	88 23       	and	r24, r24
     53e:	49 f2       	breq	.-110    	; 0x4d2 <__vector_14+0x38>
     540:	88 81       	ld	r24, Y
     542:	99 81       	ldd	r25, Y+1	; 0x01
     544:	dc 01       	movw	r26, r24
     546:	ed 91       	ld	r30, X+
     548:	fc 91       	ld	r31, X
     54a:	04 80       	ldd	r0, Z+4	; 0x04
     54c:	f5 81       	ldd	r31, Z+5	; 0x05
     54e:	e0 2d       	mov	r30, r0
     550:	09 95       	icall
     552:	bf cf       	rjmp	.-130    	; 0x4d2 <__vector_14+0x38>

00000554 <_GLOBAL__sub_I_g_rt_time>:
     554:	8c ea       	ldi	r24, 0xAC	; 172
     556:	91 e0       	ldi	r25, 0x01	; 1
     558:	0c 94 11 02 	jmp	0x422	; 0x422 <_ZN8CRTTimerC1Ev>

0000055c <_ZN6CUSARTC1Ev>:
     55c:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
     560:	87 e6       	ldi	r24, 0x67	; 103
     562:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
     566:	e2 ec       	ldi	r30, 0xC2	; 194
     568:	f0 e0       	ldi	r31, 0x00	; 0
     56a:	80 81       	ld	r24, Z
     56c:	86 60       	ori	r24, 0x06	; 6
     56e:	80 83       	st	Z, r24
     570:	e1 ec       	ldi	r30, 0xC1	; 193
     572:	f0 e0       	ldi	r31, 0x00	; 0
     574:	80 81       	ld	r24, Z
     576:	88 61       	ori	r24, 0x18	; 24
     578:	80 83       	st	Z, r24
     57a:	08 95       	ret

0000057c <_ZN6CUSARTD1Ev>:
     57c:	08 95       	ret

0000057e <_ZN6CUSART8put_charEc>:
     57e:	6a 30       	cpi	r22, 0x0A	; 10
     580:	49 f4       	brne	.+18     	; 0x594 <_ZN6CUSART8put_charEc+0x16>
     582:	8d e0       	ldi	r24, 0x0D	; 13
     584:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     588:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     58c:	85 fd       	sbrc	r24, 5
     58e:	02 c0       	rjmp	.+4      	; 0x594 <_ZN6CUSART8put_charEc+0x16>
     590:	00 00       	nop
     592:	fa cf       	rjmp	.-12     	; 0x588 <_ZN6CUSART8put_charEc+0xa>
     594:	60 93 c6 00 	sts	0x00C6, r22	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     598:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     59c:	85 fd       	sbrc	r24, 5
     59e:	02 c0       	rjmp	.+4      	; 0x5a4 <_ZN6CUSART8put_charEc+0x26>
     5a0:	00 00       	nop
     5a2:	fa cf       	rjmp	.-12     	; 0x598 <_ZN6CUSART8put_charEc+0x1a>
     5a4:	08 95       	ret

000005a6 <_ZN9CTerminal4putsEPKc>:
     5a6:	0f 93       	push	r16
     5a8:	1f 93       	push	r17
     5aa:	cf 93       	push	r28
     5ac:	df 93       	push	r29
     5ae:	8c 01       	movw	r16, r24
     5b0:	eb 01       	movw	r28, r22
     5b2:	69 91       	ld	r22, Y+
     5b4:	66 23       	and	r22, r22
     5b6:	21 f0       	breq	.+8      	; 0x5c0 <_ZN9CTerminal4putsEPKc+0x1a>
     5b8:	c8 01       	movw	r24, r16
     5ba:	0e 94 bf 02 	call	0x57e	; 0x57e <_ZN6CUSART8put_charEc>
     5be:	f9 cf       	rjmp	.-14     	; 0x5b2 <_ZN9CTerminal4putsEPKc+0xc>
     5c0:	df 91       	pop	r29
     5c2:	cf 91       	pop	r28
     5c4:	1f 91       	pop	r17
     5c6:	0f 91       	pop	r16
     5c8:	08 95       	ret

000005ca <_ZN9CTerminal4putiEl>:
     5ca:	8f 92       	push	r8
     5cc:	9f 92       	push	r9
     5ce:	af 92       	push	r10
     5d0:	bf 92       	push	r11
     5d2:	cf 92       	push	r12
     5d4:	df 92       	push	r13
     5d6:	ef 92       	push	r14
     5d8:	ff 92       	push	r15
     5da:	0f 93       	push	r16
     5dc:	1f 93       	push	r17
     5de:	cf 93       	push	r28
     5e0:	df 93       	push	r29
     5e2:	cd b7       	in	r28, 0x3d	; 61
     5e4:	de b7       	in	r29, 0x3e	; 62
     5e6:	2c 97       	sbiw	r28, 0x0c	; 12
     5e8:	0f b6       	in	r0, 0x3f	; 63
     5ea:	f8 94       	cli
     5ec:	de bf       	out	0x3e, r29	; 62
     5ee:	0f be       	out	0x3f, r0	; 63
     5f0:	cd bf       	out	0x3d, r28	; 61
     5f2:	7c 01       	movw	r14, r24
     5f4:	00 e0       	ldi	r16, 0x00	; 0
     5f6:	77 ff       	sbrs	r23, 7
     5f8:	08 c0       	rjmp	.+16     	; 0x60a <_ZN9CTerminal4putiEl+0x40>
     5fa:	70 95       	com	r23
     5fc:	60 95       	com	r22
     5fe:	50 95       	com	r21
     600:	41 95       	neg	r20
     602:	5f 4f       	sbci	r21, 0xFF	; 255
     604:	6f 4f       	sbci	r22, 0xFF	; 255
     606:	7f 4f       	sbci	r23, 0xFF	; 255
     608:	01 e0       	ldi	r16, 0x01	; 1
     60a:	1c 86       	std	Y+12, r1	; 0x0c
     60c:	1a e0       	ldi	r17, 0x0A	; 10
     60e:	9a e0       	ldi	r25, 0x0A	; 10
     610:	89 2e       	mov	r8, r25
     612:	91 2c       	mov	r9, r1
     614:	a1 2c       	mov	r10, r1
     616:	b1 2c       	mov	r11, r1
     618:	cc 24       	eor	r12, r12
     61a:	c3 94       	inc	r12
     61c:	d1 2c       	mov	r13, r1
     61e:	cc 0e       	add	r12, r28
     620:	dd 1e       	adc	r13, r29
     622:	c1 0e       	add	r12, r17
     624:	d1 1c       	adc	r13, r1
     626:	cb 01       	movw	r24, r22
     628:	ba 01       	movw	r22, r20
     62a:	a5 01       	movw	r20, r10
     62c:	94 01       	movw	r18, r8
     62e:	0e 94 77 0e 	call	0x1cee	; 0x1cee <__divmodsi4>
     632:	94 2f       	mov	r25, r20
     634:	85 2f       	mov	r24, r21
     636:	60 5d       	subi	r22, 0xD0	; 208
     638:	f6 01       	movw	r30, r12
     63a:	60 83       	st	Z, r22
     63c:	a9 01       	movw	r20, r18
     63e:	69 2f       	mov	r22, r25
     640:	78 2f       	mov	r23, r24
     642:	8f ef       	ldi	r24, 0xFF	; 255
     644:	81 0f       	add	r24, r17
     646:	41 15       	cp	r20, r1
     648:	51 05       	cpc	r21, r1
     64a:	61 05       	cpc	r22, r1
     64c:	71 05       	cpc	r23, r1
     64e:	39 f5       	brne	.+78     	; 0x69e <_ZN9CTerminal4putiEl+0xd4>
     650:	00 23       	and	r16, r16
     652:	49 f0       	breq	.+18     	; 0x666 <_ZN9CTerminal4putiEl+0x9c>
     654:	e1 e0       	ldi	r30, 0x01	; 1
     656:	f0 e0       	ldi	r31, 0x00	; 0
     658:	ec 0f       	add	r30, r28
     65a:	fd 1f       	adc	r31, r29
     65c:	e8 0f       	add	r30, r24
     65e:	f1 1d       	adc	r31, r1
     660:	9d e2       	ldi	r25, 0x2D	; 45
     662:	90 83       	st	Z, r25
     664:	18 2f       	mov	r17, r24
     666:	61 e0       	ldi	r22, 0x01	; 1
     668:	70 e0       	ldi	r23, 0x00	; 0
     66a:	6c 0f       	add	r22, r28
     66c:	7d 1f       	adc	r23, r29
     66e:	61 0f       	add	r22, r17
     670:	71 1d       	adc	r23, r1
     672:	c7 01       	movw	r24, r14
     674:	0e 94 d3 02 	call	0x5a6	; 0x5a6 <_ZN9CTerminal4putsEPKc>
     678:	2c 96       	adiw	r28, 0x0c	; 12
     67a:	0f b6       	in	r0, 0x3f	; 63
     67c:	f8 94       	cli
     67e:	de bf       	out	0x3e, r29	; 62
     680:	0f be       	out	0x3f, r0	; 63
     682:	cd bf       	out	0x3d, r28	; 61
     684:	df 91       	pop	r29
     686:	cf 91       	pop	r28
     688:	1f 91       	pop	r17
     68a:	0f 91       	pop	r16
     68c:	ff 90       	pop	r15
     68e:	ef 90       	pop	r14
     690:	df 90       	pop	r13
     692:	cf 90       	pop	r12
     694:	bf 90       	pop	r11
     696:	af 90       	pop	r10
     698:	9f 90       	pop	r9
     69a:	8f 90       	pop	r8
     69c:	08 95       	ret
     69e:	18 2f       	mov	r17, r24
     6a0:	bb cf       	rjmp	.-138    	; 0x618 <_ZN9CTerminal4putiEl+0x4e>

000006a2 <_ZN9CTerminal4putfEfh>:
     6a2:	4f 92       	push	r4
     6a4:	5f 92       	push	r5
     6a6:	6f 92       	push	r6
     6a8:	7f 92       	push	r7
     6aa:	8f 92       	push	r8
     6ac:	9f 92       	push	r9
     6ae:	af 92       	push	r10
     6b0:	bf 92       	push	r11
     6b2:	cf 92       	push	r12
     6b4:	df 92       	push	r13
     6b6:	ef 92       	push	r14
     6b8:	ff 92       	push	r15
     6ba:	0f 93       	push	r16
     6bc:	1f 93       	push	r17
     6be:	cf 93       	push	r28
     6c0:	df 93       	push	r29
     6c2:	8c 01       	movw	r16, r24
     6c4:	2a 01       	movw	r4, r20
     6c6:	3b 01       	movw	r6, r22
     6c8:	c2 2f       	mov	r28, r18
     6ca:	20 e0       	ldi	r18, 0x00	; 0
     6cc:	30 e0       	ldi	r19, 0x00	; 0
     6ce:	a9 01       	movw	r20, r18
     6d0:	cb 01       	movw	r24, r22
     6d2:	b2 01       	movw	r22, r4
     6d4:	0e 94 3b 0f 	call	0x1e76	; 0x1e76 <__cmpsf2>
     6d8:	d0 e2       	ldi	r29, 0x20	; 32
     6da:	87 ff       	sbrs	r24, 7
     6dc:	05 c0       	rjmp	.+10     	; 0x6e8 <_ZN9CTerminal4putfEfh+0x46>
     6de:	77 fa       	bst	r7, 7
     6e0:	70 94       	com	r7
     6e2:	77 f8       	bld	r7, 7
     6e4:	70 94       	com	r7
     6e6:	dd e2       	ldi	r29, 0x2D	; 45
     6e8:	ee 24       	eor	r14, r14
     6ea:	e3 94       	inc	r14
     6ec:	f1 2c       	mov	r15, r1
     6ee:	90 e0       	ldi	r25, 0x00	; 0
     6f0:	80 e0       	ldi	r24, 0x00	; 0
     6f2:	4c 2f       	mov	r20, r28
     6f4:	50 e0       	ldi	r21, 0x00	; 0
     6f6:	2a e0       	ldi	r18, 0x0A	; 10
     6f8:	84 17       	cp	r24, r20
     6fa:	95 07       	cpc	r25, r21
     6fc:	40 f4       	brcc	.+16     	; 0x70e <_ZN9CTerminal4putfEfh+0x6c>
     6fe:	b7 01       	movw	r22, r14
     700:	26 9f       	mul	r18, r22
     702:	70 01       	movw	r14, r0
     704:	27 9f       	mul	r18, r23
     706:	f0 0c       	add	r15, r0
     708:	11 24       	eor	r1, r1
     70a:	01 96       	adiw	r24, 0x01	; 1
     70c:	f5 cf       	rjmp	.-22     	; 0x6f8 <_ZN9CTerminal4putfEfh+0x56>
     70e:	c3 01       	movw	r24, r6
     710:	b2 01       	movw	r22, r4
     712:	0e 94 40 0f 	call	0x1e80	; 0x1e80 <__fixsfsi>
     716:	4b 01       	movw	r8, r22
     718:	5c 01       	movw	r10, r24
     71a:	0e 94 78 0f 	call	0x1ef0	; 0x1ef0 <__floatsisf>
     71e:	9b 01       	movw	r18, r22
     720:	ac 01       	movw	r20, r24
     722:	c3 01       	movw	r24, r6
     724:	b2 01       	movw	r22, r4
     726:	0e 94 ce 0e 	call	0x1d9c	; 0x1d9c <__subsf3>
     72a:	2b 01       	movw	r4, r22
     72c:	3c 01       	movw	r6, r24
     72e:	b7 01       	movw	r22, r14
     730:	90 e0       	ldi	r25, 0x00	; 0
     732:	80 e0       	ldi	r24, 0x00	; 0
     734:	0e 94 76 0f 	call	0x1eec	; 0x1eec <__floatunsisf>
     738:	9b 01       	movw	r18, r22
     73a:	ac 01       	movw	r20, r24
     73c:	c3 01       	movw	r24, r6
     73e:	b2 01       	movw	r22, r4
     740:	0e 94 2d 10 	call	0x205a	; 0x205a <__mulsf3>
     744:	0e 94 40 0f 	call	0x1e80	; 0x1e80 <__fixsfsi>
     748:	6b 01       	movw	r12, r22
     74a:	7c 01       	movw	r14, r24
     74c:	f7 fe       	sbrs	r15, 7
     74e:	08 c0       	rjmp	.+16     	; 0x760 <_ZN9CTerminal4putfEfh+0xbe>
     750:	f0 94       	com	r15
     752:	e0 94       	com	r14
     754:	d0 94       	com	r13
     756:	c0 94       	com	r12
     758:	c1 1c       	adc	r12, r1
     75a:	d1 1c       	adc	r13, r1
     75c:	e1 1c       	adc	r14, r1
     75e:	f1 1c       	adc	r15, r1
     760:	6d 2f       	mov	r22, r29
     762:	c8 01       	movw	r24, r16
     764:	0e 94 bf 02 	call	0x57e	; 0x57e <_ZN6CUSART8put_charEc>
     768:	b5 01       	movw	r22, r10
     76a:	a4 01       	movw	r20, r8
     76c:	c8 01       	movw	r24, r16
     76e:	0e 94 e5 02 	call	0x5ca	; 0x5ca <_ZN9CTerminal4putiEl>
     772:	6e e2       	ldi	r22, 0x2E	; 46
     774:	c8 01       	movw	r24, r16
     776:	0e 94 bf 02 	call	0x57e	; 0x57e <_ZN6CUSART8put_charEc>
     77a:	80 e0       	ldi	r24, 0x00	; 0
     77c:	21 e0       	ldi	r18, 0x01	; 1
     77e:	30 e0       	ldi	r19, 0x00	; 0
     780:	9a e0       	ldi	r25, 0x0A	; 10
     782:	a9 01       	movw	r20, r18
     784:	94 9f       	mul	r25, r20
     786:	90 01       	movw	r18, r0
     788:	95 9f       	mul	r25, r21
     78a:	30 0d       	add	r19, r0
     78c:	11 24       	eor	r1, r1
     78e:	8f 5f       	subi	r24, 0xFF	; 255
     790:	a9 01       	movw	r20, r18
     792:	03 2e       	mov	r0, r19
     794:	00 0c       	add	r0, r0
     796:	66 0b       	sbc	r22, r22
     798:	77 0b       	sbc	r23, r23
     79a:	4c 15       	cp	r20, r12
     79c:	5d 05       	cpc	r21, r13
     79e:	6e 05       	cpc	r22, r14
     7a0:	7f 05       	cpc	r23, r15
     7a2:	7c f3       	brlt	.-34     	; 0x782 <_ZN9CTerminal4putfEfh+0xe0>
     7a4:	c8 1b       	sub	r28, r24
     7a6:	b1 2c       	mov	r11, r1
     7a8:	a1 2c       	mov	r10, r1
     7aa:	d0 e0       	ldi	r29, 0x00	; 0
     7ac:	ac 16       	cp	r10, r28
     7ae:	bd 06       	cpc	r11, r29
     7b0:	40 f4       	brcc	.+16     	; 0x7c2 <_ZN9CTerminal4putfEfh+0x120>
     7b2:	60 e3       	ldi	r22, 0x30	; 48
     7b4:	c8 01       	movw	r24, r16
     7b6:	0e 94 bf 02 	call	0x57e	; 0x57e <_ZN6CUSART8put_charEc>
     7ba:	5f ef       	ldi	r21, 0xFF	; 255
     7bc:	a5 1a       	sub	r10, r21
     7be:	b5 0a       	sbc	r11, r21
     7c0:	f5 cf       	rjmp	.-22     	; 0x7ac <_ZN9CTerminal4putfEfh+0x10a>
     7c2:	b7 01       	movw	r22, r14
     7c4:	a6 01       	movw	r20, r12
     7c6:	c8 01       	movw	r24, r16
     7c8:	df 91       	pop	r29
     7ca:	cf 91       	pop	r28
     7cc:	1f 91       	pop	r17
     7ce:	0f 91       	pop	r16
     7d0:	ff 90       	pop	r15
     7d2:	ef 90       	pop	r14
     7d4:	df 90       	pop	r13
     7d6:	cf 90       	pop	r12
     7d8:	bf 90       	pop	r11
     7da:	af 90       	pop	r10
     7dc:	9f 90       	pop	r9
     7de:	8f 90       	pop	r8
     7e0:	7f 90       	pop	r7
     7e2:	6f 90       	pop	r6
     7e4:	5f 90       	pop	r5
     7e6:	4f 90       	pop	r4
     7e8:	0c 94 e5 02 	jmp	0x5ca	; 0x5ca <_ZN9CTerminal4putiEl>

000007ec <_GLOBAL__sub_I_terminal>:
     7ec:	81 ef       	ldi	r24, 0xF1	; 241
     7ee:	91 e0       	ldi	r25, 0x01	; 1
     7f0:	0c 94 ae 02 	jmp	0x55c	; 0x55c <_ZN6CUSARTC1Ev>

000007f4 <_GLOBAL__sub_D_terminal>:
     7f4:	81 ef       	ldi	r24, 0xF1	; 241
     7f6:	91 e0       	ldi	r25, 0x01	; 1
     7f8:	0c 94 be 02 	jmp	0x57c	; 0x57c <_ZN6CUSARTD1Ev>

000007fc <_ZdlPv>:
     7fc:	0c 94 36 11 	jmp	0x226c	; 0x226c <free>

00000800 <_ZN4TI2CILh2ELh3ELh5ELh100ELh2EE9write_regEhhh>:
     800:	ff 92       	push	r15
     802:	0f 93       	push	r16
     804:	1f 93       	push	r17
     806:	cf 93       	push	r28
     808:	df 93       	push	r29
     80a:	ec 01       	movw	r28, r24
     80c:	f6 2e       	mov	r15, r22
     80e:	04 2f       	mov	r16, r20
     810:	12 2f       	mov	r17, r18
     812:	e8 81       	ld	r30, Y
     814:	f9 81       	ldd	r31, Y+1	; 0x01
     816:	01 90       	ld	r0, Z+
     818:	f0 81       	ld	r31, Z
     81a:	e0 2d       	mov	r30, r0
     81c:	09 95       	icall
     81e:	e8 81       	ld	r30, Y
     820:	f9 81       	ldd	r31, Y+1	; 0x01
     822:	04 80       	ldd	r0, Z+4	; 0x04
     824:	f5 81       	ldd	r31, Z+5	; 0x05
     826:	e0 2d       	mov	r30, r0
     828:	6f 2d       	mov	r22, r15
     82a:	ce 01       	movw	r24, r28
     82c:	09 95       	icall
     82e:	e8 81       	ld	r30, Y
     830:	f9 81       	ldd	r31, Y+1	; 0x01
     832:	04 80       	ldd	r0, Z+4	; 0x04
     834:	f5 81       	ldd	r31, Z+5	; 0x05
     836:	e0 2d       	mov	r30, r0
     838:	60 2f       	mov	r22, r16
     83a:	ce 01       	movw	r24, r28
     83c:	09 95       	icall
     83e:	e8 81       	ld	r30, Y
     840:	f9 81       	ldd	r31, Y+1	; 0x01
     842:	04 80       	ldd	r0, Z+4	; 0x04
     844:	f5 81       	ldd	r31, Z+5	; 0x05
     846:	e0 2d       	mov	r30, r0
     848:	61 2f       	mov	r22, r17
     84a:	ce 01       	movw	r24, r28
     84c:	09 95       	icall
     84e:	e8 81       	ld	r30, Y
     850:	f9 81       	ldd	r31, Y+1	; 0x01
     852:	02 80       	ldd	r0, Z+2	; 0x02
     854:	f3 81       	ldd	r31, Z+3	; 0x03
     856:	e0 2d       	mov	r30, r0
     858:	ce 01       	movw	r24, r28
     85a:	df 91       	pop	r29
     85c:	cf 91       	pop	r28
     85e:	1f 91       	pop	r17
     860:	0f 91       	pop	r16
     862:	ff 90       	pop	r15
     864:	09 94       	ijmp

00000866 <_ZN4TI2CILh2ELh3ELh5ELh100ELh2EE15write_reg_16bitEhhj>:
     866:	ef 92       	push	r14
     868:	ff 92       	push	r15
     86a:	0f 93       	push	r16
     86c:	1f 93       	push	r17
     86e:	cf 93       	push	r28
     870:	df 93       	push	r29
     872:	ec 01       	movw	r28, r24
     874:	e6 2e       	mov	r14, r22
     876:	f4 2e       	mov	r15, r20
     878:	12 2f       	mov	r17, r18
     87a:	03 2f       	mov	r16, r19
     87c:	e8 81       	ld	r30, Y
     87e:	f9 81       	ldd	r31, Y+1	; 0x01
     880:	01 90       	ld	r0, Z+
     882:	f0 81       	ld	r31, Z
     884:	e0 2d       	mov	r30, r0
     886:	09 95       	icall
     888:	e8 81       	ld	r30, Y
     88a:	f9 81       	ldd	r31, Y+1	; 0x01
     88c:	04 80       	ldd	r0, Z+4	; 0x04
     88e:	f5 81       	ldd	r31, Z+5	; 0x05
     890:	e0 2d       	mov	r30, r0
     892:	6e 2d       	mov	r22, r14
     894:	ce 01       	movw	r24, r28
     896:	09 95       	icall
     898:	e8 81       	ld	r30, Y
     89a:	f9 81       	ldd	r31, Y+1	; 0x01
     89c:	04 80       	ldd	r0, Z+4	; 0x04
     89e:	f5 81       	ldd	r31, Z+5	; 0x05
     8a0:	e0 2d       	mov	r30, r0
     8a2:	6f 2d       	mov	r22, r15
     8a4:	ce 01       	movw	r24, r28
     8a6:	09 95       	icall
     8a8:	e8 81       	ld	r30, Y
     8aa:	f9 81       	ldd	r31, Y+1	; 0x01
     8ac:	04 80       	ldd	r0, Z+4	; 0x04
     8ae:	f5 81       	ldd	r31, Z+5	; 0x05
     8b0:	e0 2d       	mov	r30, r0
     8b2:	60 2f       	mov	r22, r16
     8b4:	ce 01       	movw	r24, r28
     8b6:	09 95       	icall
     8b8:	e8 81       	ld	r30, Y
     8ba:	f9 81       	ldd	r31, Y+1	; 0x01
     8bc:	04 80       	ldd	r0, Z+4	; 0x04
     8be:	f5 81       	ldd	r31, Z+5	; 0x05
     8c0:	e0 2d       	mov	r30, r0
     8c2:	61 2f       	mov	r22, r17
     8c4:	ce 01       	movw	r24, r28
     8c6:	09 95       	icall
     8c8:	e8 81       	ld	r30, Y
     8ca:	f9 81       	ldd	r31, Y+1	; 0x01
     8cc:	02 80       	ldd	r0, Z+2	; 0x02
     8ce:	f3 81       	ldd	r31, Z+3	; 0x03
     8d0:	e0 2d       	mov	r30, r0
     8d2:	ce 01       	movw	r24, r28
     8d4:	df 91       	pop	r29
     8d6:	cf 91       	pop	r28
     8d8:	1f 91       	pop	r17
     8da:	0f 91       	pop	r16
     8dc:	ff 90       	pop	r15
     8de:	ef 90       	pop	r14
     8e0:	09 94       	ijmp

000008e2 <_ZN4TI2CILh2ELh3ELh5ELh100ELh2EE15write_reg_multiEhhPhj>:
     8e2:	cf 92       	push	r12
     8e4:	df 92       	push	r13
     8e6:	ef 92       	push	r14
     8e8:	ff 92       	push	r15
     8ea:	0f 93       	push	r16
     8ec:	1f 93       	push	r17
     8ee:	cf 93       	push	r28
     8f0:	df 93       	push	r29
     8f2:	ec 01       	movw	r28, r24
     8f4:	e6 2e       	mov	r14, r22
     8f6:	f4 2e       	mov	r15, r20
     8f8:	69 01       	movw	r12, r18
     8fa:	e8 81       	ld	r30, Y
     8fc:	f9 81       	ldd	r31, Y+1	; 0x01
     8fe:	01 90       	ld	r0, Z+
     900:	f0 81       	ld	r31, Z
     902:	e0 2d       	mov	r30, r0
     904:	09 95       	icall
     906:	e8 81       	ld	r30, Y
     908:	f9 81       	ldd	r31, Y+1	; 0x01
     90a:	04 80       	ldd	r0, Z+4	; 0x04
     90c:	f5 81       	ldd	r31, Z+5	; 0x05
     90e:	e0 2d       	mov	r30, r0
     910:	6e 2d       	mov	r22, r14
     912:	ce 01       	movw	r24, r28
     914:	09 95       	icall
     916:	e8 81       	ld	r30, Y
     918:	f9 81       	ldd	r31, Y+1	; 0x01
     91a:	04 80       	ldd	r0, Z+4	; 0x04
     91c:	f5 81       	ldd	r31, Z+5	; 0x05
     91e:	e0 2d       	mov	r30, r0
     920:	6f 2d       	mov	r22, r15
     922:	ce 01       	movw	r24, r28
     924:	09 95       	icall
     926:	76 01       	movw	r14, r12
     928:	0c 0d       	add	r16, r12
     92a:	1d 1d       	adc	r17, r13
     92c:	e8 81       	ld	r30, Y
     92e:	f9 81       	ldd	r31, Y+1	; 0x01
     930:	e0 16       	cp	r14, r16
     932:	f1 06       	cpc	r15, r17
     934:	49 f0       	breq	.+18     	; 0x948 <__stack+0x49>
     936:	d7 01       	movw	r26, r14
     938:	6d 91       	ld	r22, X+
     93a:	7d 01       	movw	r14, r26
     93c:	04 80       	ldd	r0, Z+4	; 0x04
     93e:	f5 81       	ldd	r31, Z+5	; 0x05
     940:	e0 2d       	mov	r30, r0
     942:	ce 01       	movw	r24, r28
     944:	09 95       	icall
     946:	f2 cf       	rjmp	.-28     	; 0x92c <__stack+0x2d>
     948:	02 80       	ldd	r0, Z+2	; 0x02
     94a:	f3 81       	ldd	r31, Z+3	; 0x03
     94c:	e0 2d       	mov	r30, r0
     94e:	ce 01       	movw	r24, r28
     950:	df 91       	pop	r29
     952:	cf 91       	pop	r28
     954:	1f 91       	pop	r17
     956:	0f 91       	pop	r16
     958:	ff 90       	pop	r15
     95a:	ef 90       	pop	r14
     95c:	df 90       	pop	r13
     95e:	cf 90       	pop	r12
     960:	09 94       	ijmp

00000962 <_ZN4TI2CILh2ELh3ELh5ELh100ELh2EE8read_regEhh>:
     962:	0f 93       	push	r16
     964:	1f 93       	push	r17
     966:	cf 93       	push	r28
     968:	df 93       	push	r29
     96a:	ec 01       	movw	r28, r24
     96c:	16 2f       	mov	r17, r22
     96e:	04 2f       	mov	r16, r20
     970:	e8 81       	ld	r30, Y
     972:	f9 81       	ldd	r31, Y+1	; 0x01
     974:	01 90       	ld	r0, Z+
     976:	f0 81       	ld	r31, Z
     978:	e0 2d       	mov	r30, r0
     97a:	09 95       	icall
     97c:	e8 81       	ld	r30, Y
     97e:	f9 81       	ldd	r31, Y+1	; 0x01
     980:	04 80       	ldd	r0, Z+4	; 0x04
     982:	f5 81       	ldd	r31, Z+5	; 0x05
     984:	e0 2d       	mov	r30, r0
     986:	61 2f       	mov	r22, r17
     988:	ce 01       	movw	r24, r28
     98a:	09 95       	icall
     98c:	e8 81       	ld	r30, Y
     98e:	f9 81       	ldd	r31, Y+1	; 0x01
     990:	04 80       	ldd	r0, Z+4	; 0x04
     992:	f5 81       	ldd	r31, Z+5	; 0x05
     994:	e0 2d       	mov	r30, r0
     996:	60 2f       	mov	r22, r16
     998:	ce 01       	movw	r24, r28
     99a:	09 95       	icall
     99c:	e8 81       	ld	r30, Y
     99e:	f9 81       	ldd	r31, Y+1	; 0x01
     9a0:	01 90       	ld	r0, Z+
     9a2:	f0 81       	ld	r31, Z
     9a4:	e0 2d       	mov	r30, r0
     9a6:	ce 01       	movw	r24, r28
     9a8:	09 95       	icall
     9aa:	61 2f       	mov	r22, r17
     9ac:	61 60       	ori	r22, 0x01	; 1
     9ae:	e8 81       	ld	r30, Y
     9b0:	f9 81       	ldd	r31, Y+1	; 0x01
     9b2:	04 80       	ldd	r0, Z+4	; 0x04
     9b4:	f5 81       	ldd	r31, Z+5	; 0x05
     9b6:	e0 2d       	mov	r30, r0
     9b8:	ce 01       	movw	r24, r28
     9ba:	09 95       	icall
     9bc:	e8 81       	ld	r30, Y
     9be:	f9 81       	ldd	r31, Y+1	; 0x01
     9c0:	06 80       	ldd	r0, Z+6	; 0x06
     9c2:	f7 81       	ldd	r31, Z+7	; 0x07
     9c4:	e0 2d       	mov	r30, r0
     9c6:	60 e0       	ldi	r22, 0x00	; 0
     9c8:	ce 01       	movw	r24, r28
     9ca:	09 95       	icall
     9cc:	18 2f       	mov	r17, r24
     9ce:	e8 81       	ld	r30, Y
     9d0:	f9 81       	ldd	r31, Y+1	; 0x01
     9d2:	02 80       	ldd	r0, Z+2	; 0x02
     9d4:	f3 81       	ldd	r31, Z+3	; 0x03
     9d6:	e0 2d       	mov	r30, r0
     9d8:	ce 01       	movw	r24, r28
     9da:	09 95       	icall
     9dc:	81 2f       	mov	r24, r17
     9de:	df 91       	pop	r29
     9e0:	cf 91       	pop	r28
     9e2:	1f 91       	pop	r17
     9e4:	0f 91       	pop	r16
     9e6:	08 95       	ret

000009e8 <_ZN4TI2CILh2ELh3ELh5ELh100ELh2EE14read_reg_16bitEhh>:
     9e8:	0f 93       	push	r16
     9ea:	1f 93       	push	r17
     9ec:	cf 93       	push	r28
     9ee:	df 93       	push	r29
     9f0:	ec 01       	movw	r28, r24
     9f2:	16 2f       	mov	r17, r22
     9f4:	04 2f       	mov	r16, r20
     9f6:	e8 81       	ld	r30, Y
     9f8:	f9 81       	ldd	r31, Y+1	; 0x01
     9fa:	01 90       	ld	r0, Z+
     9fc:	f0 81       	ld	r31, Z
     9fe:	e0 2d       	mov	r30, r0
     a00:	09 95       	icall
     a02:	e8 81       	ld	r30, Y
     a04:	f9 81       	ldd	r31, Y+1	; 0x01
     a06:	04 80       	ldd	r0, Z+4	; 0x04
     a08:	f5 81       	ldd	r31, Z+5	; 0x05
     a0a:	e0 2d       	mov	r30, r0
     a0c:	61 2f       	mov	r22, r17
     a0e:	ce 01       	movw	r24, r28
     a10:	09 95       	icall
     a12:	e8 81       	ld	r30, Y
     a14:	f9 81       	ldd	r31, Y+1	; 0x01
     a16:	04 80       	ldd	r0, Z+4	; 0x04
     a18:	f5 81       	ldd	r31, Z+5	; 0x05
     a1a:	e0 2d       	mov	r30, r0
     a1c:	60 2f       	mov	r22, r16
     a1e:	ce 01       	movw	r24, r28
     a20:	09 95       	icall
     a22:	e8 81       	ld	r30, Y
     a24:	f9 81       	ldd	r31, Y+1	; 0x01
     a26:	01 90       	ld	r0, Z+
     a28:	f0 81       	ld	r31, Z
     a2a:	e0 2d       	mov	r30, r0
     a2c:	ce 01       	movw	r24, r28
     a2e:	09 95       	icall
     a30:	61 2f       	mov	r22, r17
     a32:	61 60       	ori	r22, 0x01	; 1
     a34:	e8 81       	ld	r30, Y
     a36:	f9 81       	ldd	r31, Y+1	; 0x01
     a38:	04 80       	ldd	r0, Z+4	; 0x04
     a3a:	f5 81       	ldd	r31, Z+5	; 0x05
     a3c:	e0 2d       	mov	r30, r0
     a3e:	ce 01       	movw	r24, r28
     a40:	09 95       	icall
     a42:	e8 81       	ld	r30, Y
     a44:	f9 81       	ldd	r31, Y+1	; 0x01
     a46:	06 80       	ldd	r0, Z+6	; 0x06
     a48:	f7 81       	ldd	r31, Z+7	; 0x07
     a4a:	e0 2d       	mov	r30, r0
     a4c:	61 e0       	ldi	r22, 0x01	; 1
     a4e:	ce 01       	movw	r24, r28
     a50:	09 95       	icall
     a52:	08 2f       	mov	r16, r24
     a54:	10 e0       	ldi	r17, 0x00	; 0
     a56:	10 2f       	mov	r17, r16
     a58:	00 27       	eor	r16, r16
     a5a:	e8 81       	ld	r30, Y
     a5c:	f9 81       	ldd	r31, Y+1	; 0x01
     a5e:	06 80       	ldd	r0, Z+6	; 0x06
     a60:	f7 81       	ldd	r31, Z+7	; 0x07
     a62:	e0 2d       	mov	r30, r0
     a64:	60 e0       	ldi	r22, 0x00	; 0
     a66:	ce 01       	movw	r24, r28
     a68:	09 95       	icall
     a6a:	08 2b       	or	r16, r24
     a6c:	e8 81       	ld	r30, Y
     a6e:	f9 81       	ldd	r31, Y+1	; 0x01
     a70:	02 80       	ldd	r0, Z+2	; 0x02
     a72:	f3 81       	ldd	r31, Z+3	; 0x03
     a74:	e0 2d       	mov	r30, r0
     a76:	ce 01       	movw	r24, r28
     a78:	09 95       	icall
     a7a:	c8 01       	movw	r24, r16
     a7c:	df 91       	pop	r29
     a7e:	cf 91       	pop	r28
     a80:	1f 91       	pop	r17
     a82:	0f 91       	pop	r16
     a84:	08 95       	ret

00000a86 <_ZN4TI2CILh2ELh3ELh5ELh100ELh2EE14read_reg_multiEhhPhj>:
     a86:	cf 92       	push	r12
     a88:	df 92       	push	r13
     a8a:	ef 92       	push	r14
     a8c:	ff 92       	push	r15
     a8e:	0f 93       	push	r16
     a90:	1f 93       	push	r17
     a92:	cf 93       	push	r28
     a94:	df 93       	push	r29
     a96:	ec 01       	movw	r28, r24
     a98:	f6 2e       	mov	r15, r22
     a9a:	e4 2e       	mov	r14, r20
     a9c:	69 01       	movw	r12, r18
     a9e:	e8 81       	ld	r30, Y
     aa0:	f9 81       	ldd	r31, Y+1	; 0x01
     aa2:	01 90       	ld	r0, Z+
     aa4:	f0 81       	ld	r31, Z
     aa6:	e0 2d       	mov	r30, r0
     aa8:	09 95       	icall
     aaa:	e8 81       	ld	r30, Y
     aac:	f9 81       	ldd	r31, Y+1	; 0x01
     aae:	04 80       	ldd	r0, Z+4	; 0x04
     ab0:	f5 81       	ldd	r31, Z+5	; 0x05
     ab2:	e0 2d       	mov	r30, r0
     ab4:	6f 2d       	mov	r22, r15
     ab6:	ce 01       	movw	r24, r28
     ab8:	09 95       	icall
     aba:	e8 81       	ld	r30, Y
     abc:	f9 81       	ldd	r31, Y+1	; 0x01
     abe:	04 80       	ldd	r0, Z+4	; 0x04
     ac0:	f5 81       	ldd	r31, Z+5	; 0x05
     ac2:	e0 2d       	mov	r30, r0
     ac4:	6e 2d       	mov	r22, r14
     ac6:	ce 01       	movw	r24, r28
     ac8:	09 95       	icall
     aca:	e8 81       	ld	r30, Y
     acc:	f9 81       	ldd	r31, Y+1	; 0x01
     ace:	01 90       	ld	r0, Z+
     ad0:	f0 81       	ld	r31, Z
     ad2:	e0 2d       	mov	r30, r0
     ad4:	ce 01       	movw	r24, r28
     ad6:	09 95       	icall
     ad8:	6f 2d       	mov	r22, r15
     ada:	61 60       	ori	r22, 0x01	; 1
     adc:	e8 81       	ld	r30, Y
     ade:	f9 81       	ldd	r31, Y+1	; 0x01
     ae0:	04 80       	ldd	r0, Z+4	; 0x04
     ae2:	f5 81       	ldd	r31, Z+5	; 0x05
     ae4:	e0 2d       	mov	r30, r0
     ae6:	ce 01       	movw	r24, r28
     ae8:	09 95       	icall
     aea:	76 01       	movw	r14, r12
     aec:	0c 0d       	add	r16, r12
     aee:	1d 1d       	adc	r17, r13
     af0:	e8 81       	ld	r30, Y
     af2:	f9 81       	ldd	r31, Y+1	; 0x01
     af4:	e0 16       	cp	r14, r16
     af6:	f1 06       	cpc	r15, r17
     af8:	51 f0       	breq	.+20     	; 0xb0e <_ZN4TI2CILh2ELh3ELh5ELh100ELh2EE14read_reg_multiEhhPhj+0x88>
     afa:	06 80       	ldd	r0, Z+6	; 0x06
     afc:	f7 81       	ldd	r31, Z+7	; 0x07
     afe:	e0 2d       	mov	r30, r0
     b00:	61 e0       	ldi	r22, 0x01	; 1
     b02:	ce 01       	movw	r24, r28
     b04:	09 95       	icall
     b06:	f7 01       	movw	r30, r14
     b08:	81 93       	st	Z+, r24
     b0a:	7f 01       	movw	r14, r30
     b0c:	f1 cf       	rjmp	.-30     	; 0xaf0 <_ZN4TI2CILh2ELh3ELh5ELh100ELh2EE14read_reg_multiEhhPhj+0x6a>
     b0e:	02 80       	ldd	r0, Z+2	; 0x02
     b10:	f3 81       	ldd	r31, Z+3	; 0x03
     b12:	e0 2d       	mov	r30, r0
     b14:	ce 01       	movw	r24, r28
     b16:	df 91       	pop	r29
     b18:	cf 91       	pop	r28
     b1a:	1f 91       	pop	r17
     b1c:	0f 91       	pop	r16
     b1e:	ff 90       	pop	r15
     b20:	ef 90       	pop	r14
     b22:	df 90       	pop	r13
     b24:	cf 90       	pop	r12
     b26:	09 94       	ijmp

00000b28 <_ZN4TI2CILh2ELh2ELh5ELh100ELh2EE9write_regEhhh>:
     b28:	ff 92       	push	r15
     b2a:	0f 93       	push	r16
     b2c:	1f 93       	push	r17
     b2e:	cf 93       	push	r28
     b30:	df 93       	push	r29
     b32:	ec 01       	movw	r28, r24
     b34:	f6 2e       	mov	r15, r22
     b36:	04 2f       	mov	r16, r20
     b38:	12 2f       	mov	r17, r18
     b3a:	e8 81       	ld	r30, Y
     b3c:	f9 81       	ldd	r31, Y+1	; 0x01
     b3e:	01 90       	ld	r0, Z+
     b40:	f0 81       	ld	r31, Z
     b42:	e0 2d       	mov	r30, r0
     b44:	09 95       	icall
     b46:	e8 81       	ld	r30, Y
     b48:	f9 81       	ldd	r31, Y+1	; 0x01
     b4a:	04 80       	ldd	r0, Z+4	; 0x04
     b4c:	f5 81       	ldd	r31, Z+5	; 0x05
     b4e:	e0 2d       	mov	r30, r0
     b50:	6f 2d       	mov	r22, r15
     b52:	ce 01       	movw	r24, r28
     b54:	09 95       	icall
     b56:	e8 81       	ld	r30, Y
     b58:	f9 81       	ldd	r31, Y+1	; 0x01
     b5a:	04 80       	ldd	r0, Z+4	; 0x04
     b5c:	f5 81       	ldd	r31, Z+5	; 0x05
     b5e:	e0 2d       	mov	r30, r0
     b60:	60 2f       	mov	r22, r16
     b62:	ce 01       	movw	r24, r28
     b64:	09 95       	icall
     b66:	e8 81       	ld	r30, Y
     b68:	f9 81       	ldd	r31, Y+1	; 0x01
     b6a:	04 80       	ldd	r0, Z+4	; 0x04
     b6c:	f5 81       	ldd	r31, Z+5	; 0x05
     b6e:	e0 2d       	mov	r30, r0
     b70:	61 2f       	mov	r22, r17
     b72:	ce 01       	movw	r24, r28
     b74:	09 95       	icall
     b76:	e8 81       	ld	r30, Y
     b78:	f9 81       	ldd	r31, Y+1	; 0x01
     b7a:	02 80       	ldd	r0, Z+2	; 0x02
     b7c:	f3 81       	ldd	r31, Z+3	; 0x03
     b7e:	e0 2d       	mov	r30, r0
     b80:	ce 01       	movw	r24, r28
     b82:	df 91       	pop	r29
     b84:	cf 91       	pop	r28
     b86:	1f 91       	pop	r17
     b88:	0f 91       	pop	r16
     b8a:	ff 90       	pop	r15
     b8c:	09 94       	ijmp

00000b8e <_ZN4TI2CILh2ELh2ELh5ELh100ELh2EE15write_reg_16bitEhhj>:
     b8e:	ef 92       	push	r14
     b90:	ff 92       	push	r15
     b92:	0f 93       	push	r16
     b94:	1f 93       	push	r17
     b96:	cf 93       	push	r28
     b98:	df 93       	push	r29
     b9a:	ec 01       	movw	r28, r24
     b9c:	e6 2e       	mov	r14, r22
     b9e:	f4 2e       	mov	r15, r20
     ba0:	12 2f       	mov	r17, r18
     ba2:	03 2f       	mov	r16, r19
     ba4:	e8 81       	ld	r30, Y
     ba6:	f9 81       	ldd	r31, Y+1	; 0x01
     ba8:	01 90       	ld	r0, Z+
     baa:	f0 81       	ld	r31, Z
     bac:	e0 2d       	mov	r30, r0
     bae:	09 95       	icall
     bb0:	e8 81       	ld	r30, Y
     bb2:	f9 81       	ldd	r31, Y+1	; 0x01
     bb4:	04 80       	ldd	r0, Z+4	; 0x04
     bb6:	f5 81       	ldd	r31, Z+5	; 0x05
     bb8:	e0 2d       	mov	r30, r0
     bba:	6e 2d       	mov	r22, r14
     bbc:	ce 01       	movw	r24, r28
     bbe:	09 95       	icall
     bc0:	e8 81       	ld	r30, Y
     bc2:	f9 81       	ldd	r31, Y+1	; 0x01
     bc4:	04 80       	ldd	r0, Z+4	; 0x04
     bc6:	f5 81       	ldd	r31, Z+5	; 0x05
     bc8:	e0 2d       	mov	r30, r0
     bca:	6f 2d       	mov	r22, r15
     bcc:	ce 01       	movw	r24, r28
     bce:	09 95       	icall
     bd0:	e8 81       	ld	r30, Y
     bd2:	f9 81       	ldd	r31, Y+1	; 0x01
     bd4:	04 80       	ldd	r0, Z+4	; 0x04
     bd6:	f5 81       	ldd	r31, Z+5	; 0x05
     bd8:	e0 2d       	mov	r30, r0
     bda:	60 2f       	mov	r22, r16
     bdc:	ce 01       	movw	r24, r28
     bde:	09 95       	icall
     be0:	e8 81       	ld	r30, Y
     be2:	f9 81       	ldd	r31, Y+1	; 0x01
     be4:	04 80       	ldd	r0, Z+4	; 0x04
     be6:	f5 81       	ldd	r31, Z+5	; 0x05
     be8:	e0 2d       	mov	r30, r0
     bea:	61 2f       	mov	r22, r17
     bec:	ce 01       	movw	r24, r28
     bee:	09 95       	icall
     bf0:	e8 81       	ld	r30, Y
     bf2:	f9 81       	ldd	r31, Y+1	; 0x01
     bf4:	02 80       	ldd	r0, Z+2	; 0x02
     bf6:	f3 81       	ldd	r31, Z+3	; 0x03
     bf8:	e0 2d       	mov	r30, r0
     bfa:	ce 01       	movw	r24, r28
     bfc:	df 91       	pop	r29
     bfe:	cf 91       	pop	r28
     c00:	1f 91       	pop	r17
     c02:	0f 91       	pop	r16
     c04:	ff 90       	pop	r15
     c06:	ef 90       	pop	r14
     c08:	09 94       	ijmp

00000c0a <_ZN4TI2CILh2ELh2ELh5ELh100ELh2EE15write_reg_multiEhhPhj>:
     c0a:	cf 92       	push	r12
     c0c:	df 92       	push	r13
     c0e:	ef 92       	push	r14
     c10:	ff 92       	push	r15
     c12:	0f 93       	push	r16
     c14:	1f 93       	push	r17
     c16:	cf 93       	push	r28
     c18:	df 93       	push	r29
     c1a:	ec 01       	movw	r28, r24
     c1c:	e6 2e       	mov	r14, r22
     c1e:	f4 2e       	mov	r15, r20
     c20:	69 01       	movw	r12, r18
     c22:	e8 81       	ld	r30, Y
     c24:	f9 81       	ldd	r31, Y+1	; 0x01
     c26:	01 90       	ld	r0, Z+
     c28:	f0 81       	ld	r31, Z
     c2a:	e0 2d       	mov	r30, r0
     c2c:	09 95       	icall
     c2e:	e8 81       	ld	r30, Y
     c30:	f9 81       	ldd	r31, Y+1	; 0x01
     c32:	04 80       	ldd	r0, Z+4	; 0x04
     c34:	f5 81       	ldd	r31, Z+5	; 0x05
     c36:	e0 2d       	mov	r30, r0
     c38:	6e 2d       	mov	r22, r14
     c3a:	ce 01       	movw	r24, r28
     c3c:	09 95       	icall
     c3e:	e8 81       	ld	r30, Y
     c40:	f9 81       	ldd	r31, Y+1	; 0x01
     c42:	04 80       	ldd	r0, Z+4	; 0x04
     c44:	f5 81       	ldd	r31, Z+5	; 0x05
     c46:	e0 2d       	mov	r30, r0
     c48:	6f 2d       	mov	r22, r15
     c4a:	ce 01       	movw	r24, r28
     c4c:	09 95       	icall
     c4e:	76 01       	movw	r14, r12
     c50:	0c 0d       	add	r16, r12
     c52:	1d 1d       	adc	r17, r13
     c54:	e8 81       	ld	r30, Y
     c56:	f9 81       	ldd	r31, Y+1	; 0x01
     c58:	e0 16       	cp	r14, r16
     c5a:	f1 06       	cpc	r15, r17
     c5c:	49 f0       	breq	.+18     	; 0xc70 <_ZN4TI2CILh2ELh2ELh5ELh100ELh2EE15write_reg_multiEhhPhj+0x66>
     c5e:	d7 01       	movw	r26, r14
     c60:	6d 91       	ld	r22, X+
     c62:	7d 01       	movw	r14, r26
     c64:	04 80       	ldd	r0, Z+4	; 0x04
     c66:	f5 81       	ldd	r31, Z+5	; 0x05
     c68:	e0 2d       	mov	r30, r0
     c6a:	ce 01       	movw	r24, r28
     c6c:	09 95       	icall
     c6e:	f2 cf       	rjmp	.-28     	; 0xc54 <_ZN4TI2CILh2ELh2ELh5ELh100ELh2EE15write_reg_multiEhhPhj+0x4a>
     c70:	02 80       	ldd	r0, Z+2	; 0x02
     c72:	f3 81       	ldd	r31, Z+3	; 0x03
     c74:	e0 2d       	mov	r30, r0
     c76:	ce 01       	movw	r24, r28
     c78:	df 91       	pop	r29
     c7a:	cf 91       	pop	r28
     c7c:	1f 91       	pop	r17
     c7e:	0f 91       	pop	r16
     c80:	ff 90       	pop	r15
     c82:	ef 90       	pop	r14
     c84:	df 90       	pop	r13
     c86:	cf 90       	pop	r12
     c88:	09 94       	ijmp

00000c8a <_ZN4TI2CILh2ELh2ELh5ELh100ELh2EE8read_regEhh>:
     c8a:	0f 93       	push	r16
     c8c:	1f 93       	push	r17
     c8e:	cf 93       	push	r28
     c90:	df 93       	push	r29
     c92:	ec 01       	movw	r28, r24
     c94:	16 2f       	mov	r17, r22
     c96:	04 2f       	mov	r16, r20
     c98:	e8 81       	ld	r30, Y
     c9a:	f9 81       	ldd	r31, Y+1	; 0x01
     c9c:	01 90       	ld	r0, Z+
     c9e:	f0 81       	ld	r31, Z
     ca0:	e0 2d       	mov	r30, r0
     ca2:	09 95       	icall
     ca4:	e8 81       	ld	r30, Y
     ca6:	f9 81       	ldd	r31, Y+1	; 0x01
     ca8:	04 80       	ldd	r0, Z+4	; 0x04
     caa:	f5 81       	ldd	r31, Z+5	; 0x05
     cac:	e0 2d       	mov	r30, r0
     cae:	61 2f       	mov	r22, r17
     cb0:	ce 01       	movw	r24, r28
     cb2:	09 95       	icall
     cb4:	e8 81       	ld	r30, Y
     cb6:	f9 81       	ldd	r31, Y+1	; 0x01
     cb8:	04 80       	ldd	r0, Z+4	; 0x04
     cba:	f5 81       	ldd	r31, Z+5	; 0x05
     cbc:	e0 2d       	mov	r30, r0
     cbe:	60 2f       	mov	r22, r16
     cc0:	ce 01       	movw	r24, r28
     cc2:	09 95       	icall
     cc4:	e8 81       	ld	r30, Y
     cc6:	f9 81       	ldd	r31, Y+1	; 0x01
     cc8:	01 90       	ld	r0, Z+
     cca:	f0 81       	ld	r31, Z
     ccc:	e0 2d       	mov	r30, r0
     cce:	ce 01       	movw	r24, r28
     cd0:	09 95       	icall
     cd2:	61 2f       	mov	r22, r17
     cd4:	61 60       	ori	r22, 0x01	; 1
     cd6:	e8 81       	ld	r30, Y
     cd8:	f9 81       	ldd	r31, Y+1	; 0x01
     cda:	04 80       	ldd	r0, Z+4	; 0x04
     cdc:	f5 81       	ldd	r31, Z+5	; 0x05
     cde:	e0 2d       	mov	r30, r0
     ce0:	ce 01       	movw	r24, r28
     ce2:	09 95       	icall
     ce4:	e8 81       	ld	r30, Y
     ce6:	f9 81       	ldd	r31, Y+1	; 0x01
     ce8:	06 80       	ldd	r0, Z+6	; 0x06
     cea:	f7 81       	ldd	r31, Z+7	; 0x07
     cec:	e0 2d       	mov	r30, r0
     cee:	60 e0       	ldi	r22, 0x00	; 0
     cf0:	ce 01       	movw	r24, r28
     cf2:	09 95       	icall
     cf4:	18 2f       	mov	r17, r24
     cf6:	e8 81       	ld	r30, Y
     cf8:	f9 81       	ldd	r31, Y+1	; 0x01
     cfa:	02 80       	ldd	r0, Z+2	; 0x02
     cfc:	f3 81       	ldd	r31, Z+3	; 0x03
     cfe:	e0 2d       	mov	r30, r0
     d00:	ce 01       	movw	r24, r28
     d02:	09 95       	icall
     d04:	81 2f       	mov	r24, r17
     d06:	df 91       	pop	r29
     d08:	cf 91       	pop	r28
     d0a:	1f 91       	pop	r17
     d0c:	0f 91       	pop	r16
     d0e:	08 95       	ret

00000d10 <_ZN4TI2CILh2ELh2ELh5ELh100ELh2EE14read_reg_16bitEhh>:
     d10:	0f 93       	push	r16
     d12:	1f 93       	push	r17
     d14:	cf 93       	push	r28
     d16:	df 93       	push	r29
     d18:	ec 01       	movw	r28, r24
     d1a:	16 2f       	mov	r17, r22
     d1c:	04 2f       	mov	r16, r20
     d1e:	e8 81       	ld	r30, Y
     d20:	f9 81       	ldd	r31, Y+1	; 0x01
     d22:	01 90       	ld	r0, Z+
     d24:	f0 81       	ld	r31, Z
     d26:	e0 2d       	mov	r30, r0
     d28:	09 95       	icall
     d2a:	e8 81       	ld	r30, Y
     d2c:	f9 81       	ldd	r31, Y+1	; 0x01
     d2e:	04 80       	ldd	r0, Z+4	; 0x04
     d30:	f5 81       	ldd	r31, Z+5	; 0x05
     d32:	e0 2d       	mov	r30, r0
     d34:	61 2f       	mov	r22, r17
     d36:	ce 01       	movw	r24, r28
     d38:	09 95       	icall
     d3a:	e8 81       	ld	r30, Y
     d3c:	f9 81       	ldd	r31, Y+1	; 0x01
     d3e:	04 80       	ldd	r0, Z+4	; 0x04
     d40:	f5 81       	ldd	r31, Z+5	; 0x05
     d42:	e0 2d       	mov	r30, r0
     d44:	60 2f       	mov	r22, r16
     d46:	ce 01       	movw	r24, r28
     d48:	09 95       	icall
     d4a:	e8 81       	ld	r30, Y
     d4c:	f9 81       	ldd	r31, Y+1	; 0x01
     d4e:	01 90       	ld	r0, Z+
     d50:	f0 81       	ld	r31, Z
     d52:	e0 2d       	mov	r30, r0
     d54:	ce 01       	movw	r24, r28
     d56:	09 95       	icall
     d58:	61 2f       	mov	r22, r17
     d5a:	61 60       	ori	r22, 0x01	; 1
     d5c:	e8 81       	ld	r30, Y
     d5e:	f9 81       	ldd	r31, Y+1	; 0x01
     d60:	04 80       	ldd	r0, Z+4	; 0x04
     d62:	f5 81       	ldd	r31, Z+5	; 0x05
     d64:	e0 2d       	mov	r30, r0
     d66:	ce 01       	movw	r24, r28
     d68:	09 95       	icall
     d6a:	e8 81       	ld	r30, Y
     d6c:	f9 81       	ldd	r31, Y+1	; 0x01
     d6e:	06 80       	ldd	r0, Z+6	; 0x06
     d70:	f7 81       	ldd	r31, Z+7	; 0x07
     d72:	e0 2d       	mov	r30, r0
     d74:	61 e0       	ldi	r22, 0x01	; 1
     d76:	ce 01       	movw	r24, r28
     d78:	09 95       	icall
     d7a:	08 2f       	mov	r16, r24
     d7c:	10 e0       	ldi	r17, 0x00	; 0
     d7e:	10 2f       	mov	r17, r16
     d80:	00 27       	eor	r16, r16
     d82:	e8 81       	ld	r30, Y
     d84:	f9 81       	ldd	r31, Y+1	; 0x01
     d86:	06 80       	ldd	r0, Z+6	; 0x06
     d88:	f7 81       	ldd	r31, Z+7	; 0x07
     d8a:	e0 2d       	mov	r30, r0
     d8c:	60 e0       	ldi	r22, 0x00	; 0
     d8e:	ce 01       	movw	r24, r28
     d90:	09 95       	icall
     d92:	08 2b       	or	r16, r24
     d94:	e8 81       	ld	r30, Y
     d96:	f9 81       	ldd	r31, Y+1	; 0x01
     d98:	02 80       	ldd	r0, Z+2	; 0x02
     d9a:	f3 81       	ldd	r31, Z+3	; 0x03
     d9c:	e0 2d       	mov	r30, r0
     d9e:	ce 01       	movw	r24, r28
     da0:	09 95       	icall
     da2:	c8 01       	movw	r24, r16
     da4:	df 91       	pop	r29
     da6:	cf 91       	pop	r28
     da8:	1f 91       	pop	r17
     daa:	0f 91       	pop	r16
     dac:	08 95       	ret

00000dae <_ZN4TI2CILh2ELh2ELh5ELh100ELh2EE14read_reg_multiEhhPhj>:
     dae:	cf 92       	push	r12
     db0:	df 92       	push	r13
     db2:	ef 92       	push	r14
     db4:	ff 92       	push	r15
     db6:	0f 93       	push	r16
     db8:	1f 93       	push	r17
     dba:	cf 93       	push	r28
     dbc:	df 93       	push	r29
     dbe:	ec 01       	movw	r28, r24
     dc0:	f6 2e       	mov	r15, r22
     dc2:	e4 2e       	mov	r14, r20
     dc4:	69 01       	movw	r12, r18
     dc6:	e8 81       	ld	r30, Y
     dc8:	f9 81       	ldd	r31, Y+1	; 0x01
     dca:	01 90       	ld	r0, Z+
     dcc:	f0 81       	ld	r31, Z
     dce:	e0 2d       	mov	r30, r0
     dd0:	09 95       	icall
     dd2:	e8 81       	ld	r30, Y
     dd4:	f9 81       	ldd	r31, Y+1	; 0x01
     dd6:	04 80       	ldd	r0, Z+4	; 0x04
     dd8:	f5 81       	ldd	r31, Z+5	; 0x05
     dda:	e0 2d       	mov	r30, r0
     ddc:	6f 2d       	mov	r22, r15
     dde:	ce 01       	movw	r24, r28
     de0:	09 95       	icall
     de2:	e8 81       	ld	r30, Y
     de4:	f9 81       	ldd	r31, Y+1	; 0x01
     de6:	04 80       	ldd	r0, Z+4	; 0x04
     de8:	f5 81       	ldd	r31, Z+5	; 0x05
     dea:	e0 2d       	mov	r30, r0
     dec:	6e 2d       	mov	r22, r14
     dee:	ce 01       	movw	r24, r28
     df0:	09 95       	icall
     df2:	e8 81       	ld	r30, Y
     df4:	f9 81       	ldd	r31, Y+1	; 0x01
     df6:	01 90       	ld	r0, Z+
     df8:	f0 81       	ld	r31, Z
     dfa:	e0 2d       	mov	r30, r0
     dfc:	ce 01       	movw	r24, r28
     dfe:	09 95       	icall
     e00:	6f 2d       	mov	r22, r15
     e02:	61 60       	ori	r22, 0x01	; 1
     e04:	e8 81       	ld	r30, Y
     e06:	f9 81       	ldd	r31, Y+1	; 0x01
     e08:	04 80       	ldd	r0, Z+4	; 0x04
     e0a:	f5 81       	ldd	r31, Z+5	; 0x05
     e0c:	e0 2d       	mov	r30, r0
     e0e:	ce 01       	movw	r24, r28
     e10:	09 95       	icall
     e12:	76 01       	movw	r14, r12
     e14:	0c 0d       	add	r16, r12
     e16:	1d 1d       	adc	r17, r13
     e18:	e8 81       	ld	r30, Y
     e1a:	f9 81       	ldd	r31, Y+1	; 0x01
     e1c:	e0 16       	cp	r14, r16
     e1e:	f1 06       	cpc	r15, r17
     e20:	51 f0       	breq	.+20     	; 0xe36 <_ZN4TI2CILh2ELh2ELh5ELh100ELh2EE14read_reg_multiEhhPhj+0x88>
     e22:	06 80       	ldd	r0, Z+6	; 0x06
     e24:	f7 81       	ldd	r31, Z+7	; 0x07
     e26:	e0 2d       	mov	r30, r0
     e28:	61 e0       	ldi	r22, 0x01	; 1
     e2a:	ce 01       	movw	r24, r28
     e2c:	09 95       	icall
     e2e:	f7 01       	movw	r30, r14
     e30:	81 93       	st	Z+, r24
     e32:	7f 01       	movw	r14, r30
     e34:	f1 cf       	rjmp	.-30     	; 0xe18 <_ZN4TI2CILh2ELh2ELh5ELh100ELh2EE14read_reg_multiEhhPhj+0x6a>
     e36:	02 80       	ldd	r0, Z+2	; 0x02
     e38:	f3 81       	ldd	r31, Z+3	; 0x03
     e3a:	e0 2d       	mov	r30, r0
     e3c:	ce 01       	movw	r24, r28
     e3e:	df 91       	pop	r29
     e40:	cf 91       	pop	r28
     e42:	1f 91       	pop	r17
     e44:	0f 91       	pop	r16
     e46:	ff 90       	pop	r15
     e48:	ef 90       	pop	r14
     e4a:	df 90       	pop	r13
     e4c:	cf 90       	pop	r12
     e4e:	09 94       	ijmp

00000e50 <_ZN4TI2CILh2ELh1ELh5ELh100ELh2EE9write_regEhhh>:
     e50:	ff 92       	push	r15
     e52:	0f 93       	push	r16
     e54:	1f 93       	push	r17
     e56:	cf 93       	push	r28
     e58:	df 93       	push	r29
     e5a:	ec 01       	movw	r28, r24
     e5c:	f6 2e       	mov	r15, r22
     e5e:	04 2f       	mov	r16, r20
     e60:	12 2f       	mov	r17, r18
     e62:	e8 81       	ld	r30, Y
     e64:	f9 81       	ldd	r31, Y+1	; 0x01
     e66:	01 90       	ld	r0, Z+
     e68:	f0 81       	ld	r31, Z
     e6a:	e0 2d       	mov	r30, r0
     e6c:	09 95       	icall
     e6e:	e8 81       	ld	r30, Y
     e70:	f9 81       	ldd	r31, Y+1	; 0x01
     e72:	04 80       	ldd	r0, Z+4	; 0x04
     e74:	f5 81       	ldd	r31, Z+5	; 0x05
     e76:	e0 2d       	mov	r30, r0
     e78:	6f 2d       	mov	r22, r15
     e7a:	ce 01       	movw	r24, r28
     e7c:	09 95       	icall
     e7e:	e8 81       	ld	r30, Y
     e80:	f9 81       	ldd	r31, Y+1	; 0x01
     e82:	04 80       	ldd	r0, Z+4	; 0x04
     e84:	f5 81       	ldd	r31, Z+5	; 0x05
     e86:	e0 2d       	mov	r30, r0
     e88:	60 2f       	mov	r22, r16
     e8a:	ce 01       	movw	r24, r28
     e8c:	09 95       	icall
     e8e:	e8 81       	ld	r30, Y
     e90:	f9 81       	ldd	r31, Y+1	; 0x01
     e92:	04 80       	ldd	r0, Z+4	; 0x04
     e94:	f5 81       	ldd	r31, Z+5	; 0x05
     e96:	e0 2d       	mov	r30, r0
     e98:	61 2f       	mov	r22, r17
     e9a:	ce 01       	movw	r24, r28
     e9c:	09 95       	icall
     e9e:	e8 81       	ld	r30, Y
     ea0:	f9 81       	ldd	r31, Y+1	; 0x01
     ea2:	02 80       	ldd	r0, Z+2	; 0x02
     ea4:	f3 81       	ldd	r31, Z+3	; 0x03
     ea6:	e0 2d       	mov	r30, r0
     ea8:	ce 01       	movw	r24, r28
     eaa:	df 91       	pop	r29
     eac:	cf 91       	pop	r28
     eae:	1f 91       	pop	r17
     eb0:	0f 91       	pop	r16
     eb2:	ff 90       	pop	r15
     eb4:	09 94       	ijmp

00000eb6 <_ZN4TI2CILh2ELh1ELh5ELh100ELh2EE15write_reg_16bitEhhj>:
     eb6:	ef 92       	push	r14
     eb8:	ff 92       	push	r15
     eba:	0f 93       	push	r16
     ebc:	1f 93       	push	r17
     ebe:	cf 93       	push	r28
     ec0:	df 93       	push	r29
     ec2:	ec 01       	movw	r28, r24
     ec4:	e6 2e       	mov	r14, r22
     ec6:	f4 2e       	mov	r15, r20
     ec8:	12 2f       	mov	r17, r18
     eca:	03 2f       	mov	r16, r19
     ecc:	e8 81       	ld	r30, Y
     ece:	f9 81       	ldd	r31, Y+1	; 0x01
     ed0:	01 90       	ld	r0, Z+
     ed2:	f0 81       	ld	r31, Z
     ed4:	e0 2d       	mov	r30, r0
     ed6:	09 95       	icall
     ed8:	e8 81       	ld	r30, Y
     eda:	f9 81       	ldd	r31, Y+1	; 0x01
     edc:	04 80       	ldd	r0, Z+4	; 0x04
     ede:	f5 81       	ldd	r31, Z+5	; 0x05
     ee0:	e0 2d       	mov	r30, r0
     ee2:	6e 2d       	mov	r22, r14
     ee4:	ce 01       	movw	r24, r28
     ee6:	09 95       	icall
     ee8:	e8 81       	ld	r30, Y
     eea:	f9 81       	ldd	r31, Y+1	; 0x01
     eec:	04 80       	ldd	r0, Z+4	; 0x04
     eee:	f5 81       	ldd	r31, Z+5	; 0x05
     ef0:	e0 2d       	mov	r30, r0
     ef2:	6f 2d       	mov	r22, r15
     ef4:	ce 01       	movw	r24, r28
     ef6:	09 95       	icall
     ef8:	e8 81       	ld	r30, Y
     efa:	f9 81       	ldd	r31, Y+1	; 0x01
     efc:	04 80       	ldd	r0, Z+4	; 0x04
     efe:	f5 81       	ldd	r31, Z+5	; 0x05
     f00:	e0 2d       	mov	r30, r0
     f02:	60 2f       	mov	r22, r16
     f04:	ce 01       	movw	r24, r28
     f06:	09 95       	icall
     f08:	e8 81       	ld	r30, Y
     f0a:	f9 81       	ldd	r31, Y+1	; 0x01
     f0c:	04 80       	ldd	r0, Z+4	; 0x04
     f0e:	f5 81       	ldd	r31, Z+5	; 0x05
     f10:	e0 2d       	mov	r30, r0
     f12:	61 2f       	mov	r22, r17
     f14:	ce 01       	movw	r24, r28
     f16:	09 95       	icall
     f18:	e8 81       	ld	r30, Y
     f1a:	f9 81       	ldd	r31, Y+1	; 0x01
     f1c:	02 80       	ldd	r0, Z+2	; 0x02
     f1e:	f3 81       	ldd	r31, Z+3	; 0x03
     f20:	e0 2d       	mov	r30, r0
     f22:	ce 01       	movw	r24, r28
     f24:	df 91       	pop	r29
     f26:	cf 91       	pop	r28
     f28:	1f 91       	pop	r17
     f2a:	0f 91       	pop	r16
     f2c:	ff 90       	pop	r15
     f2e:	ef 90       	pop	r14
     f30:	09 94       	ijmp

00000f32 <_ZN4TI2CILh2ELh1ELh5ELh100ELh2EE15write_reg_multiEhhPhj>:
     f32:	cf 92       	push	r12
     f34:	df 92       	push	r13
     f36:	ef 92       	push	r14
     f38:	ff 92       	push	r15
     f3a:	0f 93       	push	r16
     f3c:	1f 93       	push	r17
     f3e:	cf 93       	push	r28
     f40:	df 93       	push	r29
     f42:	ec 01       	movw	r28, r24
     f44:	e6 2e       	mov	r14, r22
     f46:	f4 2e       	mov	r15, r20
     f48:	69 01       	movw	r12, r18
     f4a:	e8 81       	ld	r30, Y
     f4c:	f9 81       	ldd	r31, Y+1	; 0x01
     f4e:	01 90       	ld	r0, Z+
     f50:	f0 81       	ld	r31, Z
     f52:	e0 2d       	mov	r30, r0
     f54:	09 95       	icall
     f56:	e8 81       	ld	r30, Y
     f58:	f9 81       	ldd	r31, Y+1	; 0x01
     f5a:	04 80       	ldd	r0, Z+4	; 0x04
     f5c:	f5 81       	ldd	r31, Z+5	; 0x05
     f5e:	e0 2d       	mov	r30, r0
     f60:	6e 2d       	mov	r22, r14
     f62:	ce 01       	movw	r24, r28
     f64:	09 95       	icall
     f66:	e8 81       	ld	r30, Y
     f68:	f9 81       	ldd	r31, Y+1	; 0x01
     f6a:	04 80       	ldd	r0, Z+4	; 0x04
     f6c:	f5 81       	ldd	r31, Z+5	; 0x05
     f6e:	e0 2d       	mov	r30, r0
     f70:	6f 2d       	mov	r22, r15
     f72:	ce 01       	movw	r24, r28
     f74:	09 95       	icall
     f76:	76 01       	movw	r14, r12
     f78:	0c 0d       	add	r16, r12
     f7a:	1d 1d       	adc	r17, r13
     f7c:	e8 81       	ld	r30, Y
     f7e:	f9 81       	ldd	r31, Y+1	; 0x01
     f80:	e0 16       	cp	r14, r16
     f82:	f1 06       	cpc	r15, r17
     f84:	49 f0       	breq	.+18     	; 0xf98 <_ZN4TI2CILh2ELh1ELh5ELh100ELh2EE15write_reg_multiEhhPhj+0x66>
     f86:	d7 01       	movw	r26, r14
     f88:	6d 91       	ld	r22, X+
     f8a:	7d 01       	movw	r14, r26
     f8c:	04 80       	ldd	r0, Z+4	; 0x04
     f8e:	f5 81       	ldd	r31, Z+5	; 0x05
     f90:	e0 2d       	mov	r30, r0
     f92:	ce 01       	movw	r24, r28
     f94:	09 95       	icall
     f96:	f2 cf       	rjmp	.-28     	; 0xf7c <_ZN4TI2CILh2ELh1ELh5ELh100ELh2EE15write_reg_multiEhhPhj+0x4a>
     f98:	02 80       	ldd	r0, Z+2	; 0x02
     f9a:	f3 81       	ldd	r31, Z+3	; 0x03
     f9c:	e0 2d       	mov	r30, r0
     f9e:	ce 01       	movw	r24, r28
     fa0:	df 91       	pop	r29
     fa2:	cf 91       	pop	r28
     fa4:	1f 91       	pop	r17
     fa6:	0f 91       	pop	r16
     fa8:	ff 90       	pop	r15
     faa:	ef 90       	pop	r14
     fac:	df 90       	pop	r13
     fae:	cf 90       	pop	r12
     fb0:	09 94       	ijmp

00000fb2 <_ZN4TI2CILh2ELh1ELh5ELh100ELh2EE8read_regEhh>:
     fb2:	0f 93       	push	r16
     fb4:	1f 93       	push	r17
     fb6:	cf 93       	push	r28
     fb8:	df 93       	push	r29
     fba:	ec 01       	movw	r28, r24
     fbc:	16 2f       	mov	r17, r22
     fbe:	04 2f       	mov	r16, r20
     fc0:	e8 81       	ld	r30, Y
     fc2:	f9 81       	ldd	r31, Y+1	; 0x01
     fc4:	01 90       	ld	r0, Z+
     fc6:	f0 81       	ld	r31, Z
     fc8:	e0 2d       	mov	r30, r0
     fca:	09 95       	icall
     fcc:	e8 81       	ld	r30, Y
     fce:	f9 81       	ldd	r31, Y+1	; 0x01
     fd0:	04 80       	ldd	r0, Z+4	; 0x04
     fd2:	f5 81       	ldd	r31, Z+5	; 0x05
     fd4:	e0 2d       	mov	r30, r0
     fd6:	61 2f       	mov	r22, r17
     fd8:	ce 01       	movw	r24, r28
     fda:	09 95       	icall
     fdc:	e8 81       	ld	r30, Y
     fde:	f9 81       	ldd	r31, Y+1	; 0x01
     fe0:	04 80       	ldd	r0, Z+4	; 0x04
     fe2:	f5 81       	ldd	r31, Z+5	; 0x05
     fe4:	e0 2d       	mov	r30, r0
     fe6:	60 2f       	mov	r22, r16
     fe8:	ce 01       	movw	r24, r28
     fea:	09 95       	icall
     fec:	e8 81       	ld	r30, Y
     fee:	f9 81       	ldd	r31, Y+1	; 0x01
     ff0:	01 90       	ld	r0, Z+
     ff2:	f0 81       	ld	r31, Z
     ff4:	e0 2d       	mov	r30, r0
     ff6:	ce 01       	movw	r24, r28
     ff8:	09 95       	icall
     ffa:	61 2f       	mov	r22, r17
     ffc:	61 60       	ori	r22, 0x01	; 1
     ffe:	e8 81       	ld	r30, Y
    1000:	f9 81       	ldd	r31, Y+1	; 0x01
    1002:	04 80       	ldd	r0, Z+4	; 0x04
    1004:	f5 81       	ldd	r31, Z+5	; 0x05
    1006:	e0 2d       	mov	r30, r0
    1008:	ce 01       	movw	r24, r28
    100a:	09 95       	icall
    100c:	e8 81       	ld	r30, Y
    100e:	f9 81       	ldd	r31, Y+1	; 0x01
    1010:	06 80       	ldd	r0, Z+6	; 0x06
    1012:	f7 81       	ldd	r31, Z+7	; 0x07
    1014:	e0 2d       	mov	r30, r0
    1016:	60 e0       	ldi	r22, 0x00	; 0
    1018:	ce 01       	movw	r24, r28
    101a:	09 95       	icall
    101c:	18 2f       	mov	r17, r24
    101e:	e8 81       	ld	r30, Y
    1020:	f9 81       	ldd	r31, Y+1	; 0x01
    1022:	02 80       	ldd	r0, Z+2	; 0x02
    1024:	f3 81       	ldd	r31, Z+3	; 0x03
    1026:	e0 2d       	mov	r30, r0
    1028:	ce 01       	movw	r24, r28
    102a:	09 95       	icall
    102c:	81 2f       	mov	r24, r17
    102e:	df 91       	pop	r29
    1030:	cf 91       	pop	r28
    1032:	1f 91       	pop	r17
    1034:	0f 91       	pop	r16
    1036:	08 95       	ret

00001038 <_ZN4TI2CILh2ELh1ELh5ELh100ELh2EE14read_reg_16bitEhh>:
    1038:	0f 93       	push	r16
    103a:	1f 93       	push	r17
    103c:	cf 93       	push	r28
    103e:	df 93       	push	r29
    1040:	ec 01       	movw	r28, r24
    1042:	16 2f       	mov	r17, r22
    1044:	04 2f       	mov	r16, r20
    1046:	e8 81       	ld	r30, Y
    1048:	f9 81       	ldd	r31, Y+1	; 0x01
    104a:	01 90       	ld	r0, Z+
    104c:	f0 81       	ld	r31, Z
    104e:	e0 2d       	mov	r30, r0
    1050:	09 95       	icall
    1052:	e8 81       	ld	r30, Y
    1054:	f9 81       	ldd	r31, Y+1	; 0x01
    1056:	04 80       	ldd	r0, Z+4	; 0x04
    1058:	f5 81       	ldd	r31, Z+5	; 0x05
    105a:	e0 2d       	mov	r30, r0
    105c:	61 2f       	mov	r22, r17
    105e:	ce 01       	movw	r24, r28
    1060:	09 95       	icall
    1062:	e8 81       	ld	r30, Y
    1064:	f9 81       	ldd	r31, Y+1	; 0x01
    1066:	04 80       	ldd	r0, Z+4	; 0x04
    1068:	f5 81       	ldd	r31, Z+5	; 0x05
    106a:	e0 2d       	mov	r30, r0
    106c:	60 2f       	mov	r22, r16
    106e:	ce 01       	movw	r24, r28
    1070:	09 95       	icall
    1072:	e8 81       	ld	r30, Y
    1074:	f9 81       	ldd	r31, Y+1	; 0x01
    1076:	01 90       	ld	r0, Z+
    1078:	f0 81       	ld	r31, Z
    107a:	e0 2d       	mov	r30, r0
    107c:	ce 01       	movw	r24, r28
    107e:	09 95       	icall
    1080:	61 2f       	mov	r22, r17
    1082:	61 60       	ori	r22, 0x01	; 1
    1084:	e8 81       	ld	r30, Y
    1086:	f9 81       	ldd	r31, Y+1	; 0x01
    1088:	04 80       	ldd	r0, Z+4	; 0x04
    108a:	f5 81       	ldd	r31, Z+5	; 0x05
    108c:	e0 2d       	mov	r30, r0
    108e:	ce 01       	movw	r24, r28
    1090:	09 95       	icall
    1092:	e8 81       	ld	r30, Y
    1094:	f9 81       	ldd	r31, Y+1	; 0x01
    1096:	06 80       	ldd	r0, Z+6	; 0x06
    1098:	f7 81       	ldd	r31, Z+7	; 0x07
    109a:	e0 2d       	mov	r30, r0
    109c:	61 e0       	ldi	r22, 0x01	; 1
    109e:	ce 01       	movw	r24, r28
    10a0:	09 95       	icall
    10a2:	08 2f       	mov	r16, r24
    10a4:	10 e0       	ldi	r17, 0x00	; 0
    10a6:	10 2f       	mov	r17, r16
    10a8:	00 27       	eor	r16, r16
    10aa:	e8 81       	ld	r30, Y
    10ac:	f9 81       	ldd	r31, Y+1	; 0x01
    10ae:	06 80       	ldd	r0, Z+6	; 0x06
    10b0:	f7 81       	ldd	r31, Z+7	; 0x07
    10b2:	e0 2d       	mov	r30, r0
    10b4:	60 e0       	ldi	r22, 0x00	; 0
    10b6:	ce 01       	movw	r24, r28
    10b8:	09 95       	icall
    10ba:	08 2b       	or	r16, r24
    10bc:	e8 81       	ld	r30, Y
    10be:	f9 81       	ldd	r31, Y+1	; 0x01
    10c0:	02 80       	ldd	r0, Z+2	; 0x02
    10c2:	f3 81       	ldd	r31, Z+3	; 0x03
    10c4:	e0 2d       	mov	r30, r0
    10c6:	ce 01       	movw	r24, r28
    10c8:	09 95       	icall
    10ca:	c8 01       	movw	r24, r16
    10cc:	df 91       	pop	r29
    10ce:	cf 91       	pop	r28
    10d0:	1f 91       	pop	r17
    10d2:	0f 91       	pop	r16
    10d4:	08 95       	ret

000010d6 <_ZN4TI2CILh2ELh1ELh5ELh100ELh2EE14read_reg_multiEhhPhj>:
    10d6:	cf 92       	push	r12
    10d8:	df 92       	push	r13
    10da:	ef 92       	push	r14
    10dc:	ff 92       	push	r15
    10de:	0f 93       	push	r16
    10e0:	1f 93       	push	r17
    10e2:	cf 93       	push	r28
    10e4:	df 93       	push	r29
    10e6:	ec 01       	movw	r28, r24
    10e8:	f6 2e       	mov	r15, r22
    10ea:	e4 2e       	mov	r14, r20
    10ec:	69 01       	movw	r12, r18
    10ee:	e8 81       	ld	r30, Y
    10f0:	f9 81       	ldd	r31, Y+1	; 0x01
    10f2:	01 90       	ld	r0, Z+
    10f4:	f0 81       	ld	r31, Z
    10f6:	e0 2d       	mov	r30, r0
    10f8:	09 95       	icall
    10fa:	e8 81       	ld	r30, Y
    10fc:	f9 81       	ldd	r31, Y+1	; 0x01
    10fe:	04 80       	ldd	r0, Z+4	; 0x04
    1100:	f5 81       	ldd	r31, Z+5	; 0x05
    1102:	e0 2d       	mov	r30, r0
    1104:	6f 2d       	mov	r22, r15
    1106:	ce 01       	movw	r24, r28
    1108:	09 95       	icall
    110a:	e8 81       	ld	r30, Y
    110c:	f9 81       	ldd	r31, Y+1	; 0x01
    110e:	04 80       	ldd	r0, Z+4	; 0x04
    1110:	f5 81       	ldd	r31, Z+5	; 0x05
    1112:	e0 2d       	mov	r30, r0
    1114:	6e 2d       	mov	r22, r14
    1116:	ce 01       	movw	r24, r28
    1118:	09 95       	icall
    111a:	e8 81       	ld	r30, Y
    111c:	f9 81       	ldd	r31, Y+1	; 0x01
    111e:	01 90       	ld	r0, Z+
    1120:	f0 81       	ld	r31, Z
    1122:	e0 2d       	mov	r30, r0
    1124:	ce 01       	movw	r24, r28
    1126:	09 95       	icall
    1128:	6f 2d       	mov	r22, r15
    112a:	61 60       	ori	r22, 0x01	; 1
    112c:	e8 81       	ld	r30, Y
    112e:	f9 81       	ldd	r31, Y+1	; 0x01
    1130:	04 80       	ldd	r0, Z+4	; 0x04
    1132:	f5 81       	ldd	r31, Z+5	; 0x05
    1134:	e0 2d       	mov	r30, r0
    1136:	ce 01       	movw	r24, r28
    1138:	09 95       	icall
    113a:	76 01       	movw	r14, r12
    113c:	0c 0d       	add	r16, r12
    113e:	1d 1d       	adc	r17, r13
    1140:	e8 81       	ld	r30, Y
    1142:	f9 81       	ldd	r31, Y+1	; 0x01
    1144:	e0 16       	cp	r14, r16
    1146:	f1 06       	cpc	r15, r17
    1148:	51 f0       	breq	.+20     	; 0x115e <_ZN4TI2CILh2ELh1ELh5ELh100ELh2EE14read_reg_multiEhhPhj+0x88>
    114a:	06 80       	ldd	r0, Z+6	; 0x06
    114c:	f7 81       	ldd	r31, Z+7	; 0x07
    114e:	e0 2d       	mov	r30, r0
    1150:	61 e0       	ldi	r22, 0x01	; 1
    1152:	ce 01       	movw	r24, r28
    1154:	09 95       	icall
    1156:	f7 01       	movw	r30, r14
    1158:	81 93       	st	Z+, r24
    115a:	7f 01       	movw	r14, r30
    115c:	f1 cf       	rjmp	.-30     	; 0x1140 <_ZN4TI2CILh2ELh1ELh5ELh100ELh2EE14read_reg_multiEhhPhj+0x6a>
    115e:	02 80       	ldd	r0, Z+2	; 0x02
    1160:	f3 81       	ldd	r31, Z+3	; 0x03
    1162:	e0 2d       	mov	r30, r0
    1164:	ce 01       	movw	r24, r28
    1166:	df 91       	pop	r29
    1168:	cf 91       	pop	r28
    116a:	1f 91       	pop	r17
    116c:	0f 91       	pop	r16
    116e:	ff 90       	pop	r15
    1170:	ef 90       	pop	r14
    1172:	df 90       	pop	r13
    1174:	cf 90       	pop	r12
    1176:	09 94       	ijmp

00001178 <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE9write_regEhhh>:
    1178:	ff 92       	push	r15
    117a:	0f 93       	push	r16
    117c:	1f 93       	push	r17
    117e:	cf 93       	push	r28
    1180:	df 93       	push	r29
    1182:	ec 01       	movw	r28, r24
    1184:	f6 2e       	mov	r15, r22
    1186:	04 2f       	mov	r16, r20
    1188:	12 2f       	mov	r17, r18
    118a:	e8 81       	ld	r30, Y
    118c:	f9 81       	ldd	r31, Y+1	; 0x01
    118e:	01 90       	ld	r0, Z+
    1190:	f0 81       	ld	r31, Z
    1192:	e0 2d       	mov	r30, r0
    1194:	09 95       	icall
    1196:	e8 81       	ld	r30, Y
    1198:	f9 81       	ldd	r31, Y+1	; 0x01
    119a:	04 80       	ldd	r0, Z+4	; 0x04
    119c:	f5 81       	ldd	r31, Z+5	; 0x05
    119e:	e0 2d       	mov	r30, r0
    11a0:	6f 2d       	mov	r22, r15
    11a2:	ce 01       	movw	r24, r28
    11a4:	09 95       	icall
    11a6:	e8 81       	ld	r30, Y
    11a8:	f9 81       	ldd	r31, Y+1	; 0x01
    11aa:	04 80       	ldd	r0, Z+4	; 0x04
    11ac:	f5 81       	ldd	r31, Z+5	; 0x05
    11ae:	e0 2d       	mov	r30, r0
    11b0:	60 2f       	mov	r22, r16
    11b2:	ce 01       	movw	r24, r28
    11b4:	09 95       	icall
    11b6:	e8 81       	ld	r30, Y
    11b8:	f9 81       	ldd	r31, Y+1	; 0x01
    11ba:	04 80       	ldd	r0, Z+4	; 0x04
    11bc:	f5 81       	ldd	r31, Z+5	; 0x05
    11be:	e0 2d       	mov	r30, r0
    11c0:	61 2f       	mov	r22, r17
    11c2:	ce 01       	movw	r24, r28
    11c4:	09 95       	icall
    11c6:	e8 81       	ld	r30, Y
    11c8:	f9 81       	ldd	r31, Y+1	; 0x01
    11ca:	02 80       	ldd	r0, Z+2	; 0x02
    11cc:	f3 81       	ldd	r31, Z+3	; 0x03
    11ce:	e0 2d       	mov	r30, r0
    11d0:	ce 01       	movw	r24, r28
    11d2:	df 91       	pop	r29
    11d4:	cf 91       	pop	r28
    11d6:	1f 91       	pop	r17
    11d8:	0f 91       	pop	r16
    11da:	ff 90       	pop	r15
    11dc:	09 94       	ijmp

000011de <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE15write_reg_16bitEhhj>:
    11de:	ef 92       	push	r14
    11e0:	ff 92       	push	r15
    11e2:	0f 93       	push	r16
    11e4:	1f 93       	push	r17
    11e6:	cf 93       	push	r28
    11e8:	df 93       	push	r29
    11ea:	ec 01       	movw	r28, r24
    11ec:	e6 2e       	mov	r14, r22
    11ee:	f4 2e       	mov	r15, r20
    11f0:	12 2f       	mov	r17, r18
    11f2:	03 2f       	mov	r16, r19
    11f4:	e8 81       	ld	r30, Y
    11f6:	f9 81       	ldd	r31, Y+1	; 0x01
    11f8:	01 90       	ld	r0, Z+
    11fa:	f0 81       	ld	r31, Z
    11fc:	e0 2d       	mov	r30, r0
    11fe:	09 95       	icall
    1200:	e8 81       	ld	r30, Y
    1202:	f9 81       	ldd	r31, Y+1	; 0x01
    1204:	04 80       	ldd	r0, Z+4	; 0x04
    1206:	f5 81       	ldd	r31, Z+5	; 0x05
    1208:	e0 2d       	mov	r30, r0
    120a:	6e 2d       	mov	r22, r14
    120c:	ce 01       	movw	r24, r28
    120e:	09 95       	icall
    1210:	e8 81       	ld	r30, Y
    1212:	f9 81       	ldd	r31, Y+1	; 0x01
    1214:	04 80       	ldd	r0, Z+4	; 0x04
    1216:	f5 81       	ldd	r31, Z+5	; 0x05
    1218:	e0 2d       	mov	r30, r0
    121a:	6f 2d       	mov	r22, r15
    121c:	ce 01       	movw	r24, r28
    121e:	09 95       	icall
    1220:	e8 81       	ld	r30, Y
    1222:	f9 81       	ldd	r31, Y+1	; 0x01
    1224:	04 80       	ldd	r0, Z+4	; 0x04
    1226:	f5 81       	ldd	r31, Z+5	; 0x05
    1228:	e0 2d       	mov	r30, r0
    122a:	60 2f       	mov	r22, r16
    122c:	ce 01       	movw	r24, r28
    122e:	09 95       	icall
    1230:	e8 81       	ld	r30, Y
    1232:	f9 81       	ldd	r31, Y+1	; 0x01
    1234:	04 80       	ldd	r0, Z+4	; 0x04
    1236:	f5 81       	ldd	r31, Z+5	; 0x05
    1238:	e0 2d       	mov	r30, r0
    123a:	61 2f       	mov	r22, r17
    123c:	ce 01       	movw	r24, r28
    123e:	09 95       	icall
    1240:	e8 81       	ld	r30, Y
    1242:	f9 81       	ldd	r31, Y+1	; 0x01
    1244:	02 80       	ldd	r0, Z+2	; 0x02
    1246:	f3 81       	ldd	r31, Z+3	; 0x03
    1248:	e0 2d       	mov	r30, r0
    124a:	ce 01       	movw	r24, r28
    124c:	df 91       	pop	r29
    124e:	cf 91       	pop	r28
    1250:	1f 91       	pop	r17
    1252:	0f 91       	pop	r16
    1254:	ff 90       	pop	r15
    1256:	ef 90       	pop	r14
    1258:	09 94       	ijmp

0000125a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE15write_reg_multiEhhPhj>:
    125a:	cf 92       	push	r12
    125c:	df 92       	push	r13
    125e:	ef 92       	push	r14
    1260:	ff 92       	push	r15
    1262:	0f 93       	push	r16
    1264:	1f 93       	push	r17
    1266:	cf 93       	push	r28
    1268:	df 93       	push	r29
    126a:	ec 01       	movw	r28, r24
    126c:	e6 2e       	mov	r14, r22
    126e:	f4 2e       	mov	r15, r20
    1270:	69 01       	movw	r12, r18
    1272:	e8 81       	ld	r30, Y
    1274:	f9 81       	ldd	r31, Y+1	; 0x01
    1276:	01 90       	ld	r0, Z+
    1278:	f0 81       	ld	r31, Z
    127a:	e0 2d       	mov	r30, r0
    127c:	09 95       	icall
    127e:	e8 81       	ld	r30, Y
    1280:	f9 81       	ldd	r31, Y+1	; 0x01
    1282:	04 80       	ldd	r0, Z+4	; 0x04
    1284:	f5 81       	ldd	r31, Z+5	; 0x05
    1286:	e0 2d       	mov	r30, r0
    1288:	6e 2d       	mov	r22, r14
    128a:	ce 01       	movw	r24, r28
    128c:	09 95       	icall
    128e:	e8 81       	ld	r30, Y
    1290:	f9 81       	ldd	r31, Y+1	; 0x01
    1292:	04 80       	ldd	r0, Z+4	; 0x04
    1294:	f5 81       	ldd	r31, Z+5	; 0x05
    1296:	e0 2d       	mov	r30, r0
    1298:	6f 2d       	mov	r22, r15
    129a:	ce 01       	movw	r24, r28
    129c:	09 95       	icall
    129e:	76 01       	movw	r14, r12
    12a0:	0c 0d       	add	r16, r12
    12a2:	1d 1d       	adc	r17, r13
    12a4:	e8 81       	ld	r30, Y
    12a6:	f9 81       	ldd	r31, Y+1	; 0x01
    12a8:	e0 16       	cp	r14, r16
    12aa:	f1 06       	cpc	r15, r17
    12ac:	49 f0       	breq	.+18     	; 0x12c0 <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE15write_reg_multiEhhPhj+0x66>
    12ae:	d7 01       	movw	r26, r14
    12b0:	6d 91       	ld	r22, X+
    12b2:	7d 01       	movw	r14, r26
    12b4:	04 80       	ldd	r0, Z+4	; 0x04
    12b6:	f5 81       	ldd	r31, Z+5	; 0x05
    12b8:	e0 2d       	mov	r30, r0
    12ba:	ce 01       	movw	r24, r28
    12bc:	09 95       	icall
    12be:	f2 cf       	rjmp	.-28     	; 0x12a4 <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE15write_reg_multiEhhPhj+0x4a>
    12c0:	02 80       	ldd	r0, Z+2	; 0x02
    12c2:	f3 81       	ldd	r31, Z+3	; 0x03
    12c4:	e0 2d       	mov	r30, r0
    12c6:	ce 01       	movw	r24, r28
    12c8:	df 91       	pop	r29
    12ca:	cf 91       	pop	r28
    12cc:	1f 91       	pop	r17
    12ce:	0f 91       	pop	r16
    12d0:	ff 90       	pop	r15
    12d2:	ef 90       	pop	r14
    12d4:	df 90       	pop	r13
    12d6:	cf 90       	pop	r12
    12d8:	09 94       	ijmp

000012da <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE8read_regEhh>:
    12da:	0f 93       	push	r16
    12dc:	1f 93       	push	r17
    12de:	cf 93       	push	r28
    12e0:	df 93       	push	r29
    12e2:	ec 01       	movw	r28, r24
    12e4:	16 2f       	mov	r17, r22
    12e6:	04 2f       	mov	r16, r20
    12e8:	e8 81       	ld	r30, Y
    12ea:	f9 81       	ldd	r31, Y+1	; 0x01
    12ec:	01 90       	ld	r0, Z+
    12ee:	f0 81       	ld	r31, Z
    12f0:	e0 2d       	mov	r30, r0
    12f2:	09 95       	icall
    12f4:	e8 81       	ld	r30, Y
    12f6:	f9 81       	ldd	r31, Y+1	; 0x01
    12f8:	04 80       	ldd	r0, Z+4	; 0x04
    12fa:	f5 81       	ldd	r31, Z+5	; 0x05
    12fc:	e0 2d       	mov	r30, r0
    12fe:	61 2f       	mov	r22, r17
    1300:	ce 01       	movw	r24, r28
    1302:	09 95       	icall
    1304:	e8 81       	ld	r30, Y
    1306:	f9 81       	ldd	r31, Y+1	; 0x01
    1308:	04 80       	ldd	r0, Z+4	; 0x04
    130a:	f5 81       	ldd	r31, Z+5	; 0x05
    130c:	e0 2d       	mov	r30, r0
    130e:	60 2f       	mov	r22, r16
    1310:	ce 01       	movw	r24, r28
    1312:	09 95       	icall
    1314:	e8 81       	ld	r30, Y
    1316:	f9 81       	ldd	r31, Y+1	; 0x01
    1318:	01 90       	ld	r0, Z+
    131a:	f0 81       	ld	r31, Z
    131c:	e0 2d       	mov	r30, r0
    131e:	ce 01       	movw	r24, r28
    1320:	09 95       	icall
    1322:	61 2f       	mov	r22, r17
    1324:	61 60       	ori	r22, 0x01	; 1
    1326:	e8 81       	ld	r30, Y
    1328:	f9 81       	ldd	r31, Y+1	; 0x01
    132a:	04 80       	ldd	r0, Z+4	; 0x04
    132c:	f5 81       	ldd	r31, Z+5	; 0x05
    132e:	e0 2d       	mov	r30, r0
    1330:	ce 01       	movw	r24, r28
    1332:	09 95       	icall
    1334:	e8 81       	ld	r30, Y
    1336:	f9 81       	ldd	r31, Y+1	; 0x01
    1338:	06 80       	ldd	r0, Z+6	; 0x06
    133a:	f7 81       	ldd	r31, Z+7	; 0x07
    133c:	e0 2d       	mov	r30, r0
    133e:	60 e0       	ldi	r22, 0x00	; 0
    1340:	ce 01       	movw	r24, r28
    1342:	09 95       	icall
    1344:	18 2f       	mov	r17, r24
    1346:	e8 81       	ld	r30, Y
    1348:	f9 81       	ldd	r31, Y+1	; 0x01
    134a:	02 80       	ldd	r0, Z+2	; 0x02
    134c:	f3 81       	ldd	r31, Z+3	; 0x03
    134e:	e0 2d       	mov	r30, r0
    1350:	ce 01       	movw	r24, r28
    1352:	09 95       	icall
    1354:	81 2f       	mov	r24, r17
    1356:	df 91       	pop	r29
    1358:	cf 91       	pop	r28
    135a:	1f 91       	pop	r17
    135c:	0f 91       	pop	r16
    135e:	08 95       	ret

00001360 <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE14read_reg_16bitEhh>:
    1360:	0f 93       	push	r16
    1362:	1f 93       	push	r17
    1364:	cf 93       	push	r28
    1366:	df 93       	push	r29
    1368:	ec 01       	movw	r28, r24
    136a:	16 2f       	mov	r17, r22
    136c:	04 2f       	mov	r16, r20
    136e:	e8 81       	ld	r30, Y
    1370:	f9 81       	ldd	r31, Y+1	; 0x01
    1372:	01 90       	ld	r0, Z+
    1374:	f0 81       	ld	r31, Z
    1376:	e0 2d       	mov	r30, r0
    1378:	09 95       	icall
    137a:	e8 81       	ld	r30, Y
    137c:	f9 81       	ldd	r31, Y+1	; 0x01
    137e:	04 80       	ldd	r0, Z+4	; 0x04
    1380:	f5 81       	ldd	r31, Z+5	; 0x05
    1382:	e0 2d       	mov	r30, r0
    1384:	61 2f       	mov	r22, r17
    1386:	ce 01       	movw	r24, r28
    1388:	09 95       	icall
    138a:	e8 81       	ld	r30, Y
    138c:	f9 81       	ldd	r31, Y+1	; 0x01
    138e:	04 80       	ldd	r0, Z+4	; 0x04
    1390:	f5 81       	ldd	r31, Z+5	; 0x05
    1392:	e0 2d       	mov	r30, r0
    1394:	60 2f       	mov	r22, r16
    1396:	ce 01       	movw	r24, r28
    1398:	09 95       	icall
    139a:	e8 81       	ld	r30, Y
    139c:	f9 81       	ldd	r31, Y+1	; 0x01
    139e:	01 90       	ld	r0, Z+
    13a0:	f0 81       	ld	r31, Z
    13a2:	e0 2d       	mov	r30, r0
    13a4:	ce 01       	movw	r24, r28
    13a6:	09 95       	icall
    13a8:	61 2f       	mov	r22, r17
    13aa:	61 60       	ori	r22, 0x01	; 1
    13ac:	e8 81       	ld	r30, Y
    13ae:	f9 81       	ldd	r31, Y+1	; 0x01
    13b0:	04 80       	ldd	r0, Z+4	; 0x04
    13b2:	f5 81       	ldd	r31, Z+5	; 0x05
    13b4:	e0 2d       	mov	r30, r0
    13b6:	ce 01       	movw	r24, r28
    13b8:	09 95       	icall
    13ba:	e8 81       	ld	r30, Y
    13bc:	f9 81       	ldd	r31, Y+1	; 0x01
    13be:	06 80       	ldd	r0, Z+6	; 0x06
    13c0:	f7 81       	ldd	r31, Z+7	; 0x07
    13c2:	e0 2d       	mov	r30, r0
    13c4:	61 e0       	ldi	r22, 0x01	; 1
    13c6:	ce 01       	movw	r24, r28
    13c8:	09 95       	icall
    13ca:	08 2f       	mov	r16, r24
    13cc:	10 e0       	ldi	r17, 0x00	; 0
    13ce:	10 2f       	mov	r17, r16
    13d0:	00 27       	eor	r16, r16
    13d2:	e8 81       	ld	r30, Y
    13d4:	f9 81       	ldd	r31, Y+1	; 0x01
    13d6:	06 80       	ldd	r0, Z+6	; 0x06
    13d8:	f7 81       	ldd	r31, Z+7	; 0x07
    13da:	e0 2d       	mov	r30, r0
    13dc:	60 e0       	ldi	r22, 0x00	; 0
    13de:	ce 01       	movw	r24, r28
    13e0:	09 95       	icall
    13e2:	08 2b       	or	r16, r24
    13e4:	e8 81       	ld	r30, Y
    13e6:	f9 81       	ldd	r31, Y+1	; 0x01
    13e8:	02 80       	ldd	r0, Z+2	; 0x02
    13ea:	f3 81       	ldd	r31, Z+3	; 0x03
    13ec:	e0 2d       	mov	r30, r0
    13ee:	ce 01       	movw	r24, r28
    13f0:	09 95       	icall
    13f2:	c8 01       	movw	r24, r16
    13f4:	df 91       	pop	r29
    13f6:	cf 91       	pop	r28
    13f8:	1f 91       	pop	r17
    13fa:	0f 91       	pop	r16
    13fc:	08 95       	ret

000013fe <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE14read_reg_multiEhhPhj>:
    13fe:	cf 92       	push	r12
    1400:	df 92       	push	r13
    1402:	ef 92       	push	r14
    1404:	ff 92       	push	r15
    1406:	0f 93       	push	r16
    1408:	1f 93       	push	r17
    140a:	cf 93       	push	r28
    140c:	df 93       	push	r29
    140e:	ec 01       	movw	r28, r24
    1410:	f6 2e       	mov	r15, r22
    1412:	e4 2e       	mov	r14, r20
    1414:	69 01       	movw	r12, r18
    1416:	e8 81       	ld	r30, Y
    1418:	f9 81       	ldd	r31, Y+1	; 0x01
    141a:	01 90       	ld	r0, Z+
    141c:	f0 81       	ld	r31, Z
    141e:	e0 2d       	mov	r30, r0
    1420:	09 95       	icall
    1422:	e8 81       	ld	r30, Y
    1424:	f9 81       	ldd	r31, Y+1	; 0x01
    1426:	04 80       	ldd	r0, Z+4	; 0x04
    1428:	f5 81       	ldd	r31, Z+5	; 0x05
    142a:	e0 2d       	mov	r30, r0
    142c:	6f 2d       	mov	r22, r15
    142e:	ce 01       	movw	r24, r28
    1430:	09 95       	icall
    1432:	e8 81       	ld	r30, Y
    1434:	f9 81       	ldd	r31, Y+1	; 0x01
    1436:	04 80       	ldd	r0, Z+4	; 0x04
    1438:	f5 81       	ldd	r31, Z+5	; 0x05
    143a:	e0 2d       	mov	r30, r0
    143c:	6e 2d       	mov	r22, r14
    143e:	ce 01       	movw	r24, r28
    1440:	09 95       	icall
    1442:	e8 81       	ld	r30, Y
    1444:	f9 81       	ldd	r31, Y+1	; 0x01
    1446:	01 90       	ld	r0, Z+
    1448:	f0 81       	ld	r31, Z
    144a:	e0 2d       	mov	r30, r0
    144c:	ce 01       	movw	r24, r28
    144e:	09 95       	icall
    1450:	6f 2d       	mov	r22, r15
    1452:	61 60       	ori	r22, 0x01	; 1
    1454:	e8 81       	ld	r30, Y
    1456:	f9 81       	ldd	r31, Y+1	; 0x01
    1458:	04 80       	ldd	r0, Z+4	; 0x04
    145a:	f5 81       	ldd	r31, Z+5	; 0x05
    145c:	e0 2d       	mov	r30, r0
    145e:	ce 01       	movw	r24, r28
    1460:	09 95       	icall
    1462:	76 01       	movw	r14, r12
    1464:	0c 0d       	add	r16, r12
    1466:	1d 1d       	adc	r17, r13
    1468:	e8 81       	ld	r30, Y
    146a:	f9 81       	ldd	r31, Y+1	; 0x01
    146c:	e0 16       	cp	r14, r16
    146e:	f1 06       	cpc	r15, r17
    1470:	51 f0       	breq	.+20     	; 0x1486 <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE14read_reg_multiEhhPhj+0x88>
    1472:	06 80       	ldd	r0, Z+6	; 0x06
    1474:	f7 81       	ldd	r31, Z+7	; 0x07
    1476:	e0 2d       	mov	r30, r0
    1478:	61 e0       	ldi	r22, 0x01	; 1
    147a:	ce 01       	movw	r24, r28
    147c:	09 95       	icall
    147e:	f7 01       	movw	r30, r14
    1480:	81 93       	st	Z+, r24
    1482:	7f 01       	movw	r14, r30
    1484:	f1 cf       	rjmp	.-30     	; 0x1468 <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE14read_reg_multiEhhPhj+0x6a>
    1486:	02 80       	ldd	r0, Z+2	; 0x02
    1488:	f3 81       	ldd	r31, Z+3	; 0x03
    148a:	e0 2d       	mov	r30, r0
    148c:	ce 01       	movw	r24, r28
    148e:	df 91       	pop	r29
    1490:	cf 91       	pop	r28
    1492:	1f 91       	pop	r17
    1494:	0f 91       	pop	r16
    1496:	ff 90       	pop	r15
    1498:	ef 90       	pop	r14
    149a:	df 90       	pop	r13
    149c:	cf 90       	pop	r12
    149e:	09 94       	ijmp

000014a0 <_ZN14MagMeasurementD1Ev>:
    14a0:	0f 93       	push	r16
    14a2:	1f 93       	push	r17
    14a4:	cf 93       	push	r28
    14a6:	df 93       	push	r29
    14a8:	25 ea       	ldi	r18, 0xA5	; 165
    14aa:	31 e0       	ldi	r19, 0x01	; 1
    14ac:	fc 01       	movw	r30, r24
    14ae:	31 83       	std	Z+1, r19	; 0x01
    14b0:	20 83       	st	Z, r18
    14b2:	8c 01       	movw	r16, r24
    14b4:	0e 5e       	subi	r16, 0xEE	; 238
    14b6:	1f 4f       	sbci	r17, 0xFF	; 255
    14b8:	59 f0       	breq	.+22     	; 0x14d0 <_ZN14MagMeasurementD1Ev+0x30>
    14ba:	ec 01       	movw	r28, r24
    14bc:	ce 58       	subi	r28, 0x8E	; 142
    14be:	df 4f       	sbci	r29, 0xFF	; 255
    14c0:	0c 17       	cp	r16, r28
    14c2:	1d 07       	cpc	r17, r29
    14c4:	29 f0       	breq	.+10     	; 0x14d0 <_ZN14MagMeasurementD1Ev+0x30>
    14c6:	68 97       	sbiw	r28, 0x18	; 24
    14c8:	ce 01       	movw	r24, r28
    14ca:	0e 94 7d 00 	call	0xfa	; 0xfa <_ZN7Mag3110D1Ev>
    14ce:	f8 cf       	rjmp	.-16     	; 0x14c0 <_ZN14MagMeasurementD1Ev+0x20>
    14d0:	df 91       	pop	r29
    14d2:	cf 91       	pop	r28
    14d4:	1f 91       	pop	r17
    14d6:	0f 91       	pop	r16
    14d8:	08 95       	ret

000014da <_ZN14MagMeasurementD0Ev>:
    14da:	cf 93       	push	r28
    14dc:	df 93       	push	r29
    14de:	ec 01       	movw	r28, r24
    14e0:	0e 94 50 0a 	call	0x14a0	; 0x14a0 <_ZN14MagMeasurementD1Ev>
    14e4:	ce 01       	movw	r24, r28
    14e6:	df 91       	pop	r29
    14e8:	cf 91       	pop	r28
    14ea:	0c 94 fe 03 	jmp	0x7fc	; 0x7fc <_ZdlPv>

000014ee <_ZN14MagMeasurementclEv>:
    14ee:	9f 92       	push	r9
    14f0:	af 92       	push	r10
    14f2:	bf 92       	push	r11
    14f4:	cf 92       	push	r12
    14f6:	df 92       	push	r13
    14f8:	ef 92       	push	r14
    14fa:	ff 92       	push	r15
    14fc:	0f 93       	push	r16
    14fe:	1f 93       	push	r17
    1500:	cf 93       	push	r28
    1502:	df 93       	push	r29
    1504:	00 d0       	rcall	.+0      	; 0x1506 <_ZN14MagMeasurementclEv+0x18>
    1506:	00 d0       	rcall	.+0      	; 0x1508 <_ZN14MagMeasurementclEv+0x1a>
    1508:	00 d0       	rcall	.+0      	; 0x150a <_ZN14MagMeasurementclEv+0x1c>
    150a:	cd b7       	in	r28, 0x3d	; 61
    150c:	de b7       	in	r29, 0x3e	; 62
    150e:	8c 01       	movw	r16, r24
    1510:	6c 01       	movw	r12, r24
    1512:	82 e1       	ldi	r24, 0x12	; 18
    1514:	c8 0e       	add	r12, r24
    1516:	d1 1c       	adc	r13, r1
    1518:	f1 2c       	mov	r15, r1
    151a:	e1 2c       	mov	r14, r1
    151c:	b1 2c       	mov	r11, r1
    151e:	a1 2c       	mov	r10, r1
    1520:	91 2c       	mov	r9, r1
    1522:	c6 01       	movw	r24, r12
    1524:	0e 94 f3 00 	call	0x1e6	; 0x1e6 <_ZN7Mag31104readEv>
    1528:	29 83       	std	Y+1, r18	; 0x01
    152a:	3a 83       	std	Y+2, r19	; 0x02
    152c:	4b 83       	std	Y+3, r20	; 0x03
    152e:	5c 83       	std	Y+4, r21	; 0x04
    1530:	6d 83       	std	Y+5, r22	; 0x05
    1532:	7e 83       	std	Y+6, r23	; 0x06
    1534:	f6 01       	movw	r30, r12
    1536:	82 89       	ldd	r24, Z+18	; 0x12
    1538:	93 89       	ldd	r25, Z+19	; 0x13
    153a:	a4 89       	ldd	r26, Z+20	; 0x14
    153c:	b5 89       	ldd	r27, Z+21	; 0x15
    153e:	0b 97       	sbiw	r24, 0x0b	; 11
    1540:	a1 05       	cpc	r26, r1
    1542:	b1 05       	cpc	r27, r1
    1544:	1c f0       	brlt	.+6      	; 0x154c <_ZN14MagMeasurementclEv+0x5e>
    1546:	57 01       	movw	r10, r14
    1548:	99 24       	eor	r9, r9
    154a:	93 94       	inc	r9
    154c:	ff ef       	ldi	r31, 0xFF	; 255
    154e:	ef 1a       	sub	r14, r31
    1550:	ff 0a       	sbc	r15, r31
    1552:	88 e1       	ldi	r24, 0x18	; 24
    1554:	c8 0e       	add	r12, r24
    1556:	d1 1c       	adc	r13, r1
    1558:	e4 e0       	ldi	r30, 0x04	; 4
    155a:	ee 16       	cp	r14, r30
    155c:	f1 04       	cpc	r15, r1
    155e:	09 f7       	brne	.-62     	; 0x1522 <_ZN14MagMeasurementclEv+0x34>
    1560:	99 20       	and	r9, r9
    1562:	09 f4       	brne	.+2      	; 0x1566 <_ZN14MagMeasurementclEv+0x78>
    1564:	62 c0       	rjmp	.+196    	; 0x162a <_ZN14MagMeasurementclEv+0x13c>
    1566:	8c ea       	ldi	r24, 0xAC	; 172
    1568:	91 e0       	ldi	r25, 0x01	; 1
    156a:	0e 94 2e 02 	call	0x45c	; 0x45c <_ZN8CRTTimer8get_timeEv>
    156e:	0e 94 76 0f 	call	0x1eec	; 0x1eec <__floatunsisf>
    1572:	0e 58       	subi	r16, 0x8E	; 142
    1574:	1f 4f       	sbci	r17, 0xFF	; 255
    1576:	f8 01       	movw	r30, r16
    1578:	20 81       	ld	r18, Z
    157a:	31 81       	ldd	r19, Z+1	; 0x01
    157c:	42 81       	ldd	r20, Z+2	; 0x02
    157e:	53 81       	ldd	r21, Z+3	; 0x03
    1580:	0e 94 ce 0e 	call	0x1d9c	; 0x1d9c <__subsf3>
    1584:	20 e0       	ldi	r18, 0x00	; 0
    1586:	30 e0       	ldi	r19, 0x00	; 0
    1588:	4a ef       	ldi	r20, 0xFA	; 250
    158a:	54 e4       	ldi	r21, 0x44	; 68
    158c:	0e 94 28 10 	call	0x2050	; 0x2050 <__gesf2>
    1590:	18 16       	cp	r1, r24
    1592:	0c f0       	brlt	.+2      	; 0x1596 <_ZN14MagMeasurementclEv+0xa8>
    1594:	4a c0       	rjmp	.+148    	; 0x162a <_ZN14MagMeasurementclEv+0x13c>
    1596:	8c ea       	ldi	r24, 0xAC	; 172
    1598:	91 e0       	ldi	r25, 0x01	; 1
    159a:	0e 94 2e 02 	call	0x45c	; 0x45c <_ZN8CRTTimer8get_timeEv>
    159e:	0e 94 76 0f 	call	0x1eec	; 0x1eec <__floatunsisf>
    15a2:	ab 01       	movw	r20, r22
    15a4:	bc 01       	movw	r22, r24
    15a6:	f8 01       	movw	r30, r16
    15a8:	40 83       	st	Z, r20
    15aa:	51 83       	std	Z+1, r21	; 0x01
    15ac:	62 83       	std	Z+2, r22	; 0x02
    15ae:	73 83       	std	Z+3, r23	; 0x03
    15b0:	23 e0       	ldi	r18, 0x03	; 3
    15b2:	81 ef       	ldi	r24, 0xF1	; 241
    15b4:	91 e0       	ldi	r25, 0x01	; 1
    15b6:	0e 94 51 03 	call	0x6a2	; 0x6a2 <_ZN9CTerminal4putfEfh>
    15ba:	62 e2       	ldi	r22, 0x22	; 34
    15bc:	71 e0       	ldi	r23, 0x01	; 1
    15be:	81 ef       	ldi	r24, 0xF1	; 241
    15c0:	91 e0       	ldi	r25, 0x01	; 1
    15c2:	0e 94 d3 02 	call	0x5a6	; 0x5a6 <_ZN9CTerminal4putsEPKc>
    15c6:	10 e0       	ldi	r17, 0x00	; 0
    15c8:	00 e0       	ldi	r16, 0x00	; 0
    15ca:	41 e0       	ldi	r20, 0x01	; 1
    15cc:	50 e0       	ldi	r21, 0x00	; 0
    15ce:	60 e0       	ldi	r22, 0x00	; 0
    15d0:	70 e0       	ldi	r23, 0x00	; 0
    15d2:	a0 16       	cp	r10, r16
    15d4:	b1 06       	cpc	r11, r17
    15d6:	19 f0       	breq	.+6      	; 0x15de <_ZN14MagMeasurementclEv+0xf0>
    15d8:	40 e0       	ldi	r20, 0x00	; 0
    15da:	50 e0       	ldi	r21, 0x00	; 0
    15dc:	ba 01       	movw	r22, r20
    15de:	81 ef       	ldi	r24, 0xF1	; 241
    15e0:	91 e0       	ldi	r25, 0x01	; 1
    15e2:	0e 94 e5 02 	call	0x5ca	; 0x5ca <_ZN9CTerminal4putiEl>
    15e6:	62 e2       	ldi	r22, 0x22	; 34
    15e8:	71 e0       	ldi	r23, 0x01	; 1
    15ea:	81 ef       	ldi	r24, 0xF1	; 241
    15ec:	91 e0       	ldi	r25, 0x01	; 1
    15ee:	0e 94 d3 02 	call	0x5a6	; 0x5a6 <_ZN9CTerminal4putsEPKc>
    15f2:	0f 5f       	subi	r16, 0xFF	; 255
    15f4:	1f 4f       	sbci	r17, 0xFF	; 255
    15f6:	04 30       	cpi	r16, 0x04	; 4
    15f8:	11 05       	cpc	r17, r1
    15fa:	39 f7       	brne	.-50     	; 0x15ca <_ZN14MagMeasurementclEv+0xdc>
    15fc:	6f e3       	ldi	r22, 0x3F	; 63
    15fe:	71 e0       	ldi	r23, 0x01	; 1
    1600:	81 ef       	ldi	r24, 0xF1	; 241
    1602:	91 e0       	ldi	r25, 0x01	; 1
    1604:	26 96       	adiw	r28, 0x06	; 6
    1606:	0f b6       	in	r0, 0x3f	; 63
    1608:	f8 94       	cli
    160a:	de bf       	out	0x3e, r29	; 62
    160c:	0f be       	out	0x3f, r0	; 63
    160e:	cd bf       	out	0x3d, r28	; 61
    1610:	df 91       	pop	r29
    1612:	cf 91       	pop	r28
    1614:	1f 91       	pop	r17
    1616:	0f 91       	pop	r16
    1618:	ff 90       	pop	r15
    161a:	ef 90       	pop	r14
    161c:	df 90       	pop	r13
    161e:	cf 90       	pop	r12
    1620:	bf 90       	pop	r11
    1622:	af 90       	pop	r10
    1624:	9f 90       	pop	r9
    1626:	0c 94 d3 02 	jmp	0x5a6	; 0x5a6 <_ZN9CTerminal4putsEPKc>
    162a:	26 96       	adiw	r28, 0x06	; 6
    162c:	0f b6       	in	r0, 0x3f	; 63
    162e:	f8 94       	cli
    1630:	de bf       	out	0x3e, r29	; 62
    1632:	0f be       	out	0x3f, r0	; 63
    1634:	cd bf       	out	0x3d, r28	; 61
    1636:	df 91       	pop	r29
    1638:	cf 91       	pop	r28
    163a:	1f 91       	pop	r17
    163c:	0f 91       	pop	r16
    163e:	ff 90       	pop	r15
    1640:	ef 90       	pop	r14
    1642:	df 90       	pop	r13
    1644:	cf 90       	pop	r12
    1646:	bf 90       	pop	r11
    1648:	af 90       	pop	r10
    164a:	9f 90       	pop	r9
    164c:	08 95       	ret

0000164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>:
    164e:	88 23       	and	r24, r24
    1650:	11 f0       	breq	.+4      	; 0x1656 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2+0x8>
    1652:	3d 98       	cbi	0x07, 5	; 7
    1654:	08 95       	ret
    1656:	3d 9a       	sbi	0x07, 5	; 7
    1658:	08 95       	ret

0000165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>:
    165a:	84 e6       	ldi	r24, 0x64	; 100
    165c:	00 00       	nop
    165e:	81 50       	subi	r24, 0x01	; 1
    1660:	e9 f7       	brne	.-6      	; 0x165c <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18+0x2>
    1662:	08 95       	ret

00001664 <_ZN4TI2CILh2ELh3ELh5ELh100ELh2EE5startEv>:
    1664:	81 e0       	ldi	r24, 0x01	; 1
    1666:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    166a:	3b 98       	cbi	0x07, 3	; 7
    166c:	81 e0       	ldi	r24, 0x01	; 1
    166e:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1672:	3b 9a       	sbi	0x07, 3	; 7
    1674:	80 e0       	ldi	r24, 0x00	; 0
    1676:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    167a:	3b 98       	cbi	0x07, 3	; 7
    167c:	0c 94 2d 0b 	jmp	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>

00001680 <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE4stopEv>:
    1680:	80 e0       	ldi	r24, 0x00	; 0
    1682:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1686:	38 9a       	sbi	0x07, 0	; 7
    1688:	81 e0       	ldi	r24, 0x01	; 1
    168a:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    168e:	38 9a       	sbi	0x07, 0	; 7
    1690:	81 e0       	ldi	r24, 0x01	; 1
    1692:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1696:	38 98       	cbi	0x07, 0	; 7
    1698:	0c 94 2d 0b 	jmp	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>

0000169c <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5startEv>:
    169c:	81 e0       	ldi	r24, 0x01	; 1
    169e:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    16a2:	38 98       	cbi	0x07, 0	; 7
    16a4:	81 e0       	ldi	r24, 0x01	; 1
    16a6:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    16aa:	38 9a       	sbi	0x07, 0	; 7
    16ac:	80 e0       	ldi	r24, 0x00	; 0
    16ae:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    16b2:	38 98       	cbi	0x07, 0	; 7
    16b4:	0c 94 2d 0b 	jmp	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>

000016b8 <_ZN4TI2CILh2ELh3ELh5ELh100ELh2EE4stopEv>:
    16b8:	80 e0       	ldi	r24, 0x00	; 0
    16ba:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    16be:	3b 9a       	sbi	0x07, 3	; 7
    16c0:	81 e0       	ldi	r24, 0x01	; 1
    16c2:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    16c6:	3b 9a       	sbi	0x07, 3	; 7
    16c8:	81 e0       	ldi	r24, 0x01	; 1
    16ca:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    16ce:	3b 98       	cbi	0x07, 3	; 7
    16d0:	0c 94 2d 0b 	jmp	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>

000016d4 <_ZN4TI2CILh2ELh2ELh5ELh100ELh2EE5startEv>:
    16d4:	81 e0       	ldi	r24, 0x01	; 1
    16d6:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    16da:	3a 98       	cbi	0x07, 2	; 7
    16dc:	81 e0       	ldi	r24, 0x01	; 1
    16de:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    16e2:	3a 9a       	sbi	0x07, 2	; 7
    16e4:	80 e0       	ldi	r24, 0x00	; 0
    16e6:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    16ea:	3a 98       	cbi	0x07, 2	; 7
    16ec:	0c 94 2d 0b 	jmp	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>

000016f0 <_ZN4TI2CILh2ELh2ELh5ELh100ELh2EE4stopEv>:
    16f0:	80 e0       	ldi	r24, 0x00	; 0
    16f2:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    16f6:	3a 9a       	sbi	0x07, 2	; 7
    16f8:	81 e0       	ldi	r24, 0x01	; 1
    16fa:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    16fe:	3a 9a       	sbi	0x07, 2	; 7
    1700:	81 e0       	ldi	r24, 0x01	; 1
    1702:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1706:	3a 98       	cbi	0x07, 2	; 7
    1708:	0c 94 2d 0b 	jmp	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>

0000170c <_ZN4TI2CILh2ELh1ELh5ELh100ELh2EE5startEv>:
    170c:	81 e0       	ldi	r24, 0x01	; 1
    170e:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1712:	39 98       	cbi	0x07, 1	; 7
    1714:	81 e0       	ldi	r24, 0x01	; 1
    1716:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    171a:	39 9a       	sbi	0x07, 1	; 7
    171c:	80 e0       	ldi	r24, 0x00	; 0
    171e:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1722:	39 98       	cbi	0x07, 1	; 7
    1724:	0c 94 2d 0b 	jmp	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>

00001728 <_ZN4TI2CILh2ELh1ELh5ELh100ELh2EE4stopEv>:
    1728:	80 e0       	ldi	r24, 0x00	; 0
    172a:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    172e:	39 9a       	sbi	0x07, 1	; 7
    1730:	81 e0       	ldi	r24, 0x01	; 1
    1732:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1736:	39 9a       	sbi	0x07, 1	; 7
    1738:	81 e0       	ldi	r24, 0x01	; 1
    173a:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    173e:	39 98       	cbi	0x07, 1	; 7
    1740:	0c 94 2d 0b 	jmp	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>

00001744 <_ZN4TI2CILh2ELh2ELh5ELh100ELh2EE5writeEh>:
    1744:	cf 93       	push	r28
    1746:	df 93       	push	r29
    1748:	d6 2f       	mov	r29, r22
    174a:	c8 e0       	ldi	r28, 0x08	; 8
    174c:	80 e0       	ldi	r24, 0x00	; 0
    174e:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1752:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1756:	d7 ff       	sbrs	r29, 7
    1758:	26 c0       	rjmp	.+76     	; 0x17a6 <_ZN4TI2CILh2ELh2ELh5ELh100ELh2EE5writeEh+0x62>
    175a:	3a 98       	cbi	0x07, 2	; 7
    175c:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1760:	81 e0       	ldi	r24, 0x01	; 1
    1762:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1766:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    176a:	dd 0f       	add	r29, r29
    176c:	c1 50       	subi	r28, 0x01	; 1
    176e:	71 f7       	brne	.-36     	; 0x174c <_ZN4TI2CILh2ELh2ELh5ELh100ELh2EE5writeEh+0x8>
    1770:	80 e0       	ldi	r24, 0x00	; 0
    1772:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1776:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    177a:	3a 98       	cbi	0x07, 2	; 7
    177c:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1780:	81 e0       	ldi	r24, 0x01	; 1
    1782:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1786:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    178a:	c6 b1       	in	r28, 0x06	; 6
    178c:	80 e0       	ldi	r24, 0x00	; 0
    178e:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1792:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1796:	c2 fb       	bst	r28, 2
    1798:	cc 27       	eor	r28, r28
    179a:	c0 f9       	bld	r28, 0
    179c:	81 e0       	ldi	r24, 0x01	; 1
    179e:	8c 27       	eor	r24, r28
    17a0:	df 91       	pop	r29
    17a2:	cf 91       	pop	r28
    17a4:	08 95       	ret
    17a6:	3a 9a       	sbi	0x07, 2	; 7
    17a8:	d9 cf       	rjmp	.-78     	; 0x175c <_ZN4TI2CILh2ELh2ELh5ELh100ELh2EE5writeEh+0x18>

000017aa <_ZN4TI2CILh2ELh1ELh5ELh100ELh2EE5writeEh>:
    17aa:	cf 93       	push	r28
    17ac:	df 93       	push	r29
    17ae:	d6 2f       	mov	r29, r22
    17b0:	c8 e0       	ldi	r28, 0x08	; 8
    17b2:	80 e0       	ldi	r24, 0x00	; 0
    17b4:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    17b8:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    17bc:	d7 ff       	sbrs	r29, 7
    17be:	25 c0       	rjmp	.+74     	; 0x180a <_ZN4TI2CILh2ELh1ELh5ELh100ELh2EE5writeEh+0x60>
    17c0:	39 98       	cbi	0x07, 1	; 7
    17c2:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    17c6:	81 e0       	ldi	r24, 0x01	; 1
    17c8:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    17cc:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    17d0:	dd 0f       	add	r29, r29
    17d2:	c1 50       	subi	r28, 0x01	; 1
    17d4:	71 f7       	brne	.-36     	; 0x17b2 <_ZN4TI2CILh2ELh1ELh5ELh100ELh2EE5writeEh+0x8>
    17d6:	80 e0       	ldi	r24, 0x00	; 0
    17d8:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    17dc:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    17e0:	39 98       	cbi	0x07, 1	; 7
    17e2:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    17e6:	81 e0       	ldi	r24, 0x01	; 1
    17e8:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    17ec:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    17f0:	c6 b1       	in	r28, 0x06	; 6
    17f2:	80 e0       	ldi	r24, 0x00	; 0
    17f4:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    17f8:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    17fc:	c6 95       	lsr	r28
    17fe:	c1 70       	andi	r28, 0x01	; 1
    1800:	81 e0       	ldi	r24, 0x01	; 1
    1802:	8c 27       	eor	r24, r28
    1804:	df 91       	pop	r29
    1806:	cf 91       	pop	r28
    1808:	08 95       	ret
    180a:	39 9a       	sbi	0x07, 1	; 7
    180c:	da cf       	rjmp	.-76     	; 0x17c2 <_ZN4TI2CILh2ELh1ELh5ELh100ELh2EE5writeEh+0x18>

0000180e <_ZN4TI2CILh2ELh3ELh5ELh100ELh2EE5writeEh>:
    180e:	cf 93       	push	r28
    1810:	df 93       	push	r29
    1812:	d6 2f       	mov	r29, r22
    1814:	c8 e0       	ldi	r28, 0x08	; 8
    1816:	80 e0       	ldi	r24, 0x00	; 0
    1818:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    181c:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1820:	d7 ff       	sbrs	r29, 7
    1822:	26 c0       	rjmp	.+76     	; 0x1870 <_ZN4TI2CILh2ELh3ELh5ELh100ELh2EE5writeEh+0x62>
    1824:	3b 98       	cbi	0x07, 3	; 7
    1826:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    182a:	81 e0       	ldi	r24, 0x01	; 1
    182c:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1830:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1834:	dd 0f       	add	r29, r29
    1836:	c1 50       	subi	r28, 0x01	; 1
    1838:	71 f7       	brne	.-36     	; 0x1816 <_ZN4TI2CILh2ELh3ELh5ELh100ELh2EE5writeEh+0x8>
    183a:	80 e0       	ldi	r24, 0x00	; 0
    183c:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1840:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1844:	3b 98       	cbi	0x07, 3	; 7
    1846:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    184a:	81 e0       	ldi	r24, 0x01	; 1
    184c:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1850:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1854:	c6 b1       	in	r28, 0x06	; 6
    1856:	80 e0       	ldi	r24, 0x00	; 0
    1858:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    185c:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1860:	c3 fb       	bst	r28, 3
    1862:	cc 27       	eor	r28, r28
    1864:	c0 f9       	bld	r28, 0
    1866:	81 e0       	ldi	r24, 0x01	; 1
    1868:	8c 27       	eor	r24, r28
    186a:	df 91       	pop	r29
    186c:	cf 91       	pop	r28
    186e:	08 95       	ret
    1870:	3b 9a       	sbi	0x07, 3	; 7
    1872:	d9 cf       	rjmp	.-78     	; 0x1826 <_ZN4TI2CILh2ELh3ELh5ELh100ELh2EE5writeEh+0x18>

00001874 <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5writeEh>:
    1874:	cf 93       	push	r28
    1876:	df 93       	push	r29
    1878:	d6 2f       	mov	r29, r22
    187a:	c8 e0       	ldi	r28, 0x08	; 8
    187c:	80 e0       	ldi	r24, 0x00	; 0
    187e:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1882:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1886:	d7 ff       	sbrs	r29, 7
    1888:	24 c0       	rjmp	.+72     	; 0x18d2 <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5writeEh+0x5e>
    188a:	38 98       	cbi	0x07, 0	; 7
    188c:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1890:	81 e0       	ldi	r24, 0x01	; 1
    1892:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1896:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    189a:	dd 0f       	add	r29, r29
    189c:	c1 50       	subi	r28, 0x01	; 1
    189e:	71 f7       	brne	.-36     	; 0x187c <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5writeEh+0x8>
    18a0:	80 e0       	ldi	r24, 0x00	; 0
    18a2:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    18a6:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    18aa:	38 98       	cbi	0x07, 0	; 7
    18ac:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    18b0:	81 e0       	ldi	r24, 0x01	; 1
    18b2:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    18b6:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    18ba:	c6 b1       	in	r28, 0x06	; 6
    18bc:	80 e0       	ldi	r24, 0x00	; 0
    18be:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    18c2:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    18c6:	8c 2f       	mov	r24, r28
    18c8:	80 95       	com	r24
    18ca:	81 70       	andi	r24, 0x01	; 1
    18cc:	df 91       	pop	r29
    18ce:	cf 91       	pop	r28
    18d0:	08 95       	ret
    18d2:	38 9a       	sbi	0x07, 0	; 7
    18d4:	db cf       	rjmp	.-74     	; 0x188c <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5writeEh+0x18>

000018d6 <_ZN4TI2CILh2ELh2ELh5ELh100ELh2EE4readEh>:
    18d6:	1f 93       	push	r17
    18d8:	cf 93       	push	r28
    18da:	df 93       	push	r29
    18dc:	16 2f       	mov	r17, r22
    18de:	3a 98       	cbi	0x07, 2	; 7
    18e0:	80 e0       	ldi	r24, 0x00	; 0
    18e2:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    18e6:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    18ea:	d8 e0       	ldi	r29, 0x08	; 8
    18ec:	c0 e0       	ldi	r28, 0x00	; 0
    18ee:	cc 0f       	add	r28, r28
    18f0:	81 e0       	ldi	r24, 0x01	; 1
    18f2:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    18f6:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    18fa:	32 99       	sbic	0x06, 2	; 6
    18fc:	c1 60       	ori	r28, 0x01	; 1
    18fe:	80 e0       	ldi	r24, 0x00	; 0
    1900:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1904:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1908:	d1 50       	subi	r29, 0x01	; 1
    190a:	89 f7       	brne	.-30     	; 0x18ee <_ZN4TI2CILh2ELh2ELh5ELh100ELh2EE4readEh+0x18>
    190c:	11 23       	and	r17, r17
    190e:	a9 f0       	breq	.+42     	; 0x193a <_ZN4TI2CILh2ELh2ELh5ELh100ELh2EE4readEh+0x64>
    1910:	3a 9a       	sbi	0x07, 2	; 7
    1912:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1916:	81 e0       	ldi	r24, 0x01	; 1
    1918:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    191c:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1920:	80 e0       	ldi	r24, 0x00	; 0
    1922:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1926:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    192a:	3a 98       	cbi	0x07, 2	; 7
    192c:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1930:	8c 2f       	mov	r24, r28
    1932:	df 91       	pop	r29
    1934:	cf 91       	pop	r28
    1936:	1f 91       	pop	r17
    1938:	08 95       	ret
    193a:	3a 98       	cbi	0x07, 2	; 7
    193c:	ea cf       	rjmp	.-44     	; 0x1912 <_ZN4TI2CILh2ELh2ELh5ELh100ELh2EE4readEh+0x3c>

0000193e <_ZN4TI2CILh2ELh3ELh5ELh100ELh2EE4readEh>:
    193e:	1f 93       	push	r17
    1940:	cf 93       	push	r28
    1942:	df 93       	push	r29
    1944:	16 2f       	mov	r17, r22
    1946:	3b 98       	cbi	0x07, 3	; 7
    1948:	80 e0       	ldi	r24, 0x00	; 0
    194a:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    194e:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1952:	d8 e0       	ldi	r29, 0x08	; 8
    1954:	c0 e0       	ldi	r28, 0x00	; 0
    1956:	cc 0f       	add	r28, r28
    1958:	81 e0       	ldi	r24, 0x01	; 1
    195a:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    195e:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1962:	33 99       	sbic	0x06, 3	; 6
    1964:	c1 60       	ori	r28, 0x01	; 1
    1966:	80 e0       	ldi	r24, 0x00	; 0
    1968:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    196c:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1970:	d1 50       	subi	r29, 0x01	; 1
    1972:	89 f7       	brne	.-30     	; 0x1956 <_ZN4TI2CILh2ELh3ELh5ELh100ELh2EE4readEh+0x18>
    1974:	11 23       	and	r17, r17
    1976:	a9 f0       	breq	.+42     	; 0x19a2 <_ZN4TI2CILh2ELh3ELh5ELh100ELh2EE4readEh+0x64>
    1978:	3b 9a       	sbi	0x07, 3	; 7
    197a:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    197e:	81 e0       	ldi	r24, 0x01	; 1
    1980:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1984:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1988:	80 e0       	ldi	r24, 0x00	; 0
    198a:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    198e:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1992:	3b 98       	cbi	0x07, 3	; 7
    1994:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1998:	8c 2f       	mov	r24, r28
    199a:	df 91       	pop	r29
    199c:	cf 91       	pop	r28
    199e:	1f 91       	pop	r17
    19a0:	08 95       	ret
    19a2:	3b 98       	cbi	0x07, 3	; 7
    19a4:	ea cf       	rjmp	.-44     	; 0x197a <_ZN4TI2CILh2ELh3ELh5ELh100ELh2EE4readEh+0x3c>

000019a6 <_ZN4TI2CILh2ELh1ELh5ELh100ELh2EE4readEh>:
    19a6:	1f 93       	push	r17
    19a8:	cf 93       	push	r28
    19aa:	df 93       	push	r29
    19ac:	16 2f       	mov	r17, r22
    19ae:	39 98       	cbi	0x07, 1	; 7
    19b0:	80 e0       	ldi	r24, 0x00	; 0
    19b2:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    19b6:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    19ba:	d8 e0       	ldi	r29, 0x08	; 8
    19bc:	c0 e0       	ldi	r28, 0x00	; 0
    19be:	cc 0f       	add	r28, r28
    19c0:	81 e0       	ldi	r24, 0x01	; 1
    19c2:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    19c6:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    19ca:	31 99       	sbic	0x06, 1	; 6
    19cc:	c1 60       	ori	r28, 0x01	; 1
    19ce:	80 e0       	ldi	r24, 0x00	; 0
    19d0:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    19d4:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    19d8:	d1 50       	subi	r29, 0x01	; 1
    19da:	89 f7       	brne	.-30     	; 0x19be <_ZN4TI2CILh2ELh1ELh5ELh100ELh2EE4readEh+0x18>
    19dc:	11 23       	and	r17, r17
    19de:	a9 f0       	breq	.+42     	; 0x1a0a <_ZN4TI2CILh2ELh1ELh5ELh100ELh2EE4readEh+0x64>
    19e0:	39 9a       	sbi	0x07, 1	; 7
    19e2:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    19e6:	81 e0       	ldi	r24, 0x01	; 1
    19e8:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    19ec:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    19f0:	80 e0       	ldi	r24, 0x00	; 0
    19f2:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    19f6:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    19fa:	39 98       	cbi	0x07, 1	; 7
    19fc:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1a00:	8c 2f       	mov	r24, r28
    1a02:	df 91       	pop	r29
    1a04:	cf 91       	pop	r28
    1a06:	1f 91       	pop	r17
    1a08:	08 95       	ret
    1a0a:	39 98       	cbi	0x07, 1	; 7
    1a0c:	ea cf       	rjmp	.-44     	; 0x19e2 <_ZN4TI2CILh2ELh1ELh5ELh100ELh2EE4readEh+0x3c>

00001a0e <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE4readEh>:
    1a0e:	1f 93       	push	r17
    1a10:	cf 93       	push	r28
    1a12:	df 93       	push	r29
    1a14:	16 2f       	mov	r17, r22
    1a16:	38 98       	cbi	0x07, 0	; 7
    1a18:	80 e0       	ldi	r24, 0x00	; 0
    1a1a:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1a1e:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1a22:	d8 e0       	ldi	r29, 0x08	; 8
    1a24:	c0 e0       	ldi	r28, 0x00	; 0
    1a26:	cc 0f       	add	r28, r28
    1a28:	81 e0       	ldi	r24, 0x01	; 1
    1a2a:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1a2e:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1a32:	30 99       	sbic	0x06, 0	; 6
    1a34:	c1 60       	ori	r28, 0x01	; 1
    1a36:	80 e0       	ldi	r24, 0x00	; 0
    1a38:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1a3c:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1a40:	d1 50       	subi	r29, 0x01	; 1
    1a42:	89 f7       	brne	.-30     	; 0x1a26 <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE4readEh+0x18>
    1a44:	11 23       	and	r17, r17
    1a46:	a9 f0       	breq	.+42     	; 0x1a72 <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE4readEh+0x64>
    1a48:	38 9a       	sbi	0x07, 0	; 7
    1a4a:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1a4e:	81 e0       	ldi	r24, 0x01	; 1
    1a50:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1a54:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1a58:	80 e0       	ldi	r24, 0x00	; 0
    1a5a:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1a5e:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1a62:	38 98       	cbi	0x07, 0	; 7
    1a64:	0e 94 2d 0b 	call	0x165a	; 0x165a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE5delayEv.isra.18>
    1a68:	8c 2f       	mov	r24, r28
    1a6a:	df 91       	pop	r29
    1a6c:	cf 91       	pop	r28
    1a6e:	1f 91       	pop	r17
    1a70:	08 95       	ret
    1a72:	38 98       	cbi	0x07, 0	; 7
    1a74:	ea cf       	rjmp	.-44     	; 0x1a4a <_ZN4TI2CILh2ELh0ELh5ELh100ELh2EE4readEh+0x3c>

00001a76 <_ZN14MagMeasurementC1Ev>:
    1a76:	4f 92       	push	r4
    1a78:	5f 92       	push	r5
    1a7a:	6f 92       	push	r6
    1a7c:	7f 92       	push	r7
    1a7e:	8f 92       	push	r8
    1a80:	9f 92       	push	r9
    1a82:	af 92       	push	r10
    1a84:	bf 92       	push	r11
    1a86:	cf 92       	push	r12
    1a88:	df 92       	push	r13
    1a8a:	ef 92       	push	r14
    1a8c:	ff 92       	push	r15
    1a8e:	0f 93       	push	r16
    1a90:	1f 93       	push	r17
    1a92:	cf 93       	push	r28
    1a94:	df 93       	push	r29
    1a96:	ec 01       	movw	r28, r24
    1a98:	85 ea       	ldi	r24, 0xA5	; 165
    1a9a:	91 e0       	ldi	r25, 0x01	; 1
    1a9c:	fe 01       	movw	r30, r28
    1a9e:	81 93       	st	Z+, r24
    1aa0:	91 93       	st	Z+, r25
    1aa2:	7f 01       	movw	r14, r30
    1aa4:	85 e4       	ldi	r24, 0x45	; 69
    1aa6:	91 e0       	ldi	r25, 0x01	; 1
    1aa8:	9b 83       	std	Y+3, r25	; 0x03
    1aaa:	8a 83       	std	Y+2, r24	; 0x02
    1aac:	38 98       	cbi	0x07, 0	; 7
    1aae:	81 e0       	ldi	r24, 0x01	; 1
    1ab0:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1ab4:	40 98       	cbi	0x08, 0	; 8
    1ab6:	45 98       	cbi	0x08, 5	; 8
    1ab8:	5e 01       	movw	r10, r28
    1aba:	f6 e0       	ldi	r31, 0x06	; 6
    1abc:	af 0e       	add	r10, r31
    1abe:	b1 1c       	adc	r11, r1
    1ac0:	8d e5       	ldi	r24, 0x5D	; 93
    1ac2:	91 e0       	ldi	r25, 0x01	; 1
    1ac4:	9f 83       	std	Y+7, r25	; 0x07
    1ac6:	8e 83       	std	Y+6, r24	; 0x06
    1ac8:	39 98       	cbi	0x07, 1	; 7
    1aca:	81 e0       	ldi	r24, 0x01	; 1
    1acc:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1ad0:	41 98       	cbi	0x08, 1	; 8
    1ad2:	45 98       	cbi	0x08, 5	; 8
    1ad4:	3e 01       	movw	r6, r28
    1ad6:	8a e0       	ldi	r24, 0x0A	; 10
    1ad8:	68 0e       	add	r6, r24
    1ada:	71 1c       	adc	r7, r1
    1adc:	85 e7       	ldi	r24, 0x75	; 117
    1ade:	91 e0       	ldi	r25, 0x01	; 1
    1ae0:	9b 87       	std	Y+11, r25	; 0x0b
    1ae2:	8a 87       	std	Y+10, r24	; 0x0a
    1ae4:	3a 98       	cbi	0x07, 2	; 7
    1ae6:	81 e0       	ldi	r24, 0x01	; 1
    1ae8:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1aec:	42 98       	cbi	0x08, 2	; 8
    1aee:	45 98       	cbi	0x08, 5	; 8
    1af0:	2e 01       	movw	r4, r28
    1af2:	ee e0       	ldi	r30, 0x0E	; 14
    1af4:	4e 0e       	add	r4, r30
    1af6:	51 1c       	adc	r5, r1
    1af8:	8d e8       	ldi	r24, 0x8D	; 141
    1afa:	91 e0       	ldi	r25, 0x01	; 1
    1afc:	9f 87       	std	Y+15, r25	; 0x0f
    1afe:	8e 87       	std	Y+14, r24	; 0x0e
    1b00:	3b 98       	cbi	0x07, 3	; 7
    1b02:	81 e0       	ldi	r24, 0x01	; 1
    1b04:	0e 94 27 0b 	call	0x164e	; 0x164e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
    1b08:	43 98       	cbi	0x08, 3	; 8
    1b0a:	45 98       	cbi	0x08, 5	; 8
    1b0c:	6e 01       	movw	r12, r28
    1b0e:	f2 e1       	ldi	r31, 0x12	; 18
    1b10:	cf 0e       	add	r12, r31
    1b12:	d1 1c       	adc	r13, r1
    1b14:	86 01       	movw	r16, r12
    1b16:	4e 01       	movw	r8, r28
    1b18:	82 e7       	ldi	r24, 0x72	; 114
    1b1a:	88 0e       	add	r8, r24
    1b1c:	91 1c       	adc	r9, r1
    1b1e:	c8 01       	movw	r24, r16
    1b20:	0e 94 61 00 	call	0xc2	; 0xc2 <_ZN7Mag3110C1Ev>
    1b24:	08 5e       	subi	r16, 0xE8	; 232
    1b26:	1f 4f       	sbci	r17, 0xFF	; 255
    1b28:	80 16       	cp	r8, r16
    1b2a:	91 06       	cpc	r9, r17
    1b2c:	c1 f7       	brne	.-16     	; 0x1b1e <_ZN14MagMeasurementC1Ev+0xa8>
    1b2e:	f4 01       	movw	r30, r8
    1b30:	10 82       	st	Z, r1
    1b32:	11 82       	std	Z+1, r1	; 0x01
    1b34:	12 82       	std	Z+2, r1	; 0x02
    1b36:	13 82       	std	Z+3, r1	; 0x03
    1b38:	66 e0       	ldi	r22, 0x06	; 6
    1b3a:	71 e0       	ldi	r23, 0x01	; 1
    1b3c:	81 ef       	ldi	r24, 0xF1	; 241
    1b3e:	91 e0       	ldi	r25, 0x01	; 1
    1b40:	0e 94 d3 02 	call	0x5a6	; 0x5a6 <_ZN9CTerminal4putsEPKc>
    1b44:	b7 01       	movw	r22, r14
    1b46:	c6 01       	movw	r24, r12
    1b48:	0e 94 7e 00 	call	0xfc	; 0xfc <_ZN7Mag31104initEP14CI2C_Interface>
    1b4c:	8c 01       	movw	r16, r24
    1b4e:	60 e1       	ldi	r22, 0x10	; 16
    1b50:	71 e0       	ldi	r23, 0x01	; 1
    1b52:	81 ef       	ldi	r24, 0xF1	; 241
    1b54:	91 e0       	ldi	r25, 0x01	; 1
    1b56:	0e 94 d3 02 	call	0x5a6	; 0x5a6 <_ZN9CTerminal4putsEPKc>
    1b5a:	a8 01       	movw	r20, r16
    1b5c:	11 0f       	add	r17, r17
    1b5e:	66 0b       	sbc	r22, r22
    1b60:	77 0b       	sbc	r23, r23
    1b62:	81 ef       	ldi	r24, 0xF1	; 241
    1b64:	91 e0       	ldi	r25, 0x01	; 1
    1b66:	0e 94 e5 02 	call	0x5ca	; 0x5ca <_ZN9CTerminal4putiEl>
    1b6a:	6f e3       	ldi	r22, 0x3F	; 63
    1b6c:	71 e0       	ldi	r23, 0x01	; 1
    1b6e:	81 ef       	ldi	r24, 0xF1	; 241
    1b70:	91 e0       	ldi	r25, 0x01	; 1
    1b72:	0e 94 d3 02 	call	0x5a6	; 0x5a6 <_ZN9CTerminal4putsEPKc>
    1b76:	b5 01       	movw	r22, r10
    1b78:	ce 01       	movw	r24, r28
    1b7a:	8a 96       	adiw	r24, 0x2a	; 42
    1b7c:	0e 94 7e 00 	call	0xfc	; 0xfc <_ZN7Mag31104initEP14CI2C_Interface>
    1b80:	8c 01       	movw	r16, r24
    1b82:	60 e1       	ldi	r22, 0x10	; 16
    1b84:	71 e0       	ldi	r23, 0x01	; 1
    1b86:	81 ef       	ldi	r24, 0xF1	; 241
    1b88:	91 e0       	ldi	r25, 0x01	; 1
    1b8a:	0e 94 d3 02 	call	0x5a6	; 0x5a6 <_ZN9CTerminal4putsEPKc>
    1b8e:	a8 01       	movw	r20, r16
    1b90:	11 0f       	add	r17, r17
    1b92:	66 0b       	sbc	r22, r22
    1b94:	77 0b       	sbc	r23, r23
    1b96:	81 ef       	ldi	r24, 0xF1	; 241
    1b98:	91 e0       	ldi	r25, 0x01	; 1
    1b9a:	0e 94 e5 02 	call	0x5ca	; 0x5ca <_ZN9CTerminal4putiEl>
    1b9e:	6f e3       	ldi	r22, 0x3F	; 63
    1ba0:	71 e0       	ldi	r23, 0x01	; 1
    1ba2:	81 ef       	ldi	r24, 0xF1	; 241
    1ba4:	91 e0       	ldi	r25, 0x01	; 1
    1ba6:	0e 94 d3 02 	call	0x5a6	; 0x5a6 <_ZN9CTerminal4putsEPKc>
    1baa:	b3 01       	movw	r22, r6
    1bac:	ce 01       	movw	r24, r28
    1bae:	8e 5b       	subi	r24, 0xBE	; 190
    1bb0:	9f 4f       	sbci	r25, 0xFF	; 255
    1bb2:	0e 94 7e 00 	call	0xfc	; 0xfc <_ZN7Mag31104initEP14CI2C_Interface>
    1bb6:	8c 01       	movw	r16, r24
    1bb8:	60 e1       	ldi	r22, 0x10	; 16
    1bba:	71 e0       	ldi	r23, 0x01	; 1
    1bbc:	81 ef       	ldi	r24, 0xF1	; 241
    1bbe:	91 e0       	ldi	r25, 0x01	; 1
    1bc0:	0e 94 d3 02 	call	0x5a6	; 0x5a6 <_ZN9CTerminal4putsEPKc>
    1bc4:	a8 01       	movw	r20, r16
    1bc6:	11 0f       	add	r17, r17
    1bc8:	66 0b       	sbc	r22, r22
    1bca:	77 0b       	sbc	r23, r23
    1bcc:	81 ef       	ldi	r24, 0xF1	; 241
    1bce:	91 e0       	ldi	r25, 0x01	; 1
    1bd0:	0e 94 e5 02 	call	0x5ca	; 0x5ca <_ZN9CTerminal4putiEl>
    1bd4:	6f e3       	ldi	r22, 0x3F	; 63
    1bd6:	71 e0       	ldi	r23, 0x01	; 1
    1bd8:	81 ef       	ldi	r24, 0xF1	; 241
    1bda:	91 e0       	ldi	r25, 0x01	; 1
    1bdc:	0e 94 d3 02 	call	0x5a6	; 0x5a6 <_ZN9CTerminal4putsEPKc>
    1be0:	b2 01       	movw	r22, r4
    1be2:	ce 01       	movw	r24, r28
    1be4:	86 5a       	subi	r24, 0xA6	; 166
    1be6:	9f 4f       	sbci	r25, 0xFF	; 255
    1be8:	0e 94 7e 00 	call	0xfc	; 0xfc <_ZN7Mag31104initEP14CI2C_Interface>
    1bec:	ec 01       	movw	r28, r24
    1bee:	60 e1       	ldi	r22, 0x10	; 16
    1bf0:	71 e0       	ldi	r23, 0x01	; 1
    1bf2:	81 ef       	ldi	r24, 0xF1	; 241
    1bf4:	91 e0       	ldi	r25, 0x01	; 1
    1bf6:	0e 94 d3 02 	call	0x5a6	; 0x5a6 <_ZN9CTerminal4putsEPKc>
    1bfa:	ae 01       	movw	r20, r28
    1bfc:	dd 0f       	add	r29, r29
    1bfe:	66 0b       	sbc	r22, r22
    1c00:	77 0b       	sbc	r23, r23
    1c02:	81 ef       	ldi	r24, 0xF1	; 241
    1c04:	91 e0       	ldi	r25, 0x01	; 1
    1c06:	0e 94 e5 02 	call	0x5ca	; 0x5ca <_ZN9CTerminal4putiEl>
    1c0a:	6f e3       	ldi	r22, 0x3F	; 63
    1c0c:	71 e0       	ldi	r23, 0x01	; 1
    1c0e:	81 ef       	ldi	r24, 0xF1	; 241
    1c10:	91 e0       	ldi	r25, 0x01	; 1
    1c12:	0e 94 d3 02 	call	0x5a6	; 0x5a6 <_ZN9CTerminal4putsEPKc>
    1c16:	64 e2       	ldi	r22, 0x24	; 36
    1c18:	71 e0       	ldi	r23, 0x01	; 1
    1c1a:	81 ef       	ldi	r24, 0xF1	; 241
    1c1c:	91 e0       	ldi	r25, 0x01	; 1
    1c1e:	df 91       	pop	r29
    1c20:	cf 91       	pop	r28
    1c22:	1f 91       	pop	r17
    1c24:	0f 91       	pop	r16
    1c26:	ff 90       	pop	r15
    1c28:	ef 90       	pop	r14
    1c2a:	df 90       	pop	r13
    1c2c:	cf 90       	pop	r12
    1c2e:	bf 90       	pop	r11
    1c30:	af 90       	pop	r10
    1c32:	9f 90       	pop	r9
    1c34:	8f 90       	pop	r8
    1c36:	7f 90       	pop	r7
    1c38:	6f 90       	pop	r6
    1c3a:	5f 90       	pop	r5
    1c3c:	4f 90       	pop	r4
    1c3e:	0c 94 d3 02 	jmp	0x5a6	; 0x5a6 <_ZN9CTerminal4putsEPKc>

00001c42 <main>:
    1c42:	cf 93       	push	r28
    1c44:	df 93       	push	r29
    1c46:	cd b7       	in	r28, 0x3d	; 61
    1c48:	de b7       	in	r29, 0x3e	; 62
    1c4a:	c6 57       	subi	r28, 0x76	; 118
    1c4c:	d1 09       	sbc	r29, r1
    1c4e:	0f b6       	in	r0, 0x3f	; 63
    1c50:	f8 94       	cli
    1c52:	de bf       	out	0x3e, r29	; 62
    1c54:	0f be       	out	0x3f, r0	; 63
    1c56:	cd bf       	out	0x3d, r28	; 61
    1c58:	6f e2       	ldi	r22, 0x2F	; 47
    1c5a:	71 e0       	ldi	r23, 0x01	; 1
    1c5c:	81 ef       	ldi	r24, 0xF1	; 241
    1c5e:	91 e0       	ldi	r25, 0x01	; 1
    1c60:	0e 94 d3 02 	call	0x5a6	; 0x5a6 <_ZN9CTerminal4putsEPKc>
    1c64:	ce 01       	movw	r24, r28
    1c66:	01 96       	adiw	r24, 0x01	; 1
    1c68:	0e 94 3b 0d 	call	0x1a76	; 0x1a76 <_ZN14MagMeasurementC1Ev>
    1c6c:	6f e2       	ldi	r22, 0x2F	; 47
    1c6e:	71 e0       	ldi	r23, 0x01	; 1
    1c70:	81 ef       	ldi	r24, 0xF1	; 241
    1c72:	91 e0       	ldi	r25, 0x01	; 1
    1c74:	0e 94 d3 02 	call	0x5a6	; 0x5a6 <_ZN9CTerminal4putsEPKc>
    1c78:	ce 01       	movw	r24, r28
    1c7a:	01 96       	adiw	r24, 0x01	; 1
    1c7c:	0e 94 77 0a 	call	0x14ee	; 0x14ee <_ZN14MagMeasurementclEv>
    1c80:	fb cf       	rjmp	.-10     	; 0x1c78 <main+0x36>

00001c82 <__divmodhi4>:
    1c82:	97 fb       	bst	r25, 7
    1c84:	07 2e       	mov	r0, r23
    1c86:	16 f4       	brtc	.+4      	; 0x1c8c <__divmodhi4+0xa>
    1c88:	00 94       	com	r0
    1c8a:	07 d0       	rcall	.+14     	; 0x1c9a <__divmodhi4_neg1>
    1c8c:	77 fd       	sbrc	r23, 7
    1c8e:	09 d0       	rcall	.+18     	; 0x1ca2 <__divmodhi4_neg2>
    1c90:	0e 94 b4 0e 	call	0x1d68	; 0x1d68 <__udivmodhi4>
    1c94:	07 fc       	sbrc	r0, 7
    1c96:	05 d0       	rcall	.+10     	; 0x1ca2 <__divmodhi4_neg2>
    1c98:	3e f4       	brtc	.+14     	; 0x1ca8 <__divmodhi4_exit>

00001c9a <__divmodhi4_neg1>:
    1c9a:	90 95       	com	r25
    1c9c:	81 95       	neg	r24
    1c9e:	9f 4f       	sbci	r25, 0xFF	; 255
    1ca0:	08 95       	ret

00001ca2 <__divmodhi4_neg2>:
    1ca2:	70 95       	com	r23
    1ca4:	61 95       	neg	r22
    1ca6:	7f 4f       	sbci	r23, 0xFF	; 255

00001ca8 <__divmodhi4_exit>:
    1ca8:	08 95       	ret

00001caa <__udivmodsi4>:
    1caa:	a1 e2       	ldi	r26, 0x21	; 33
    1cac:	1a 2e       	mov	r1, r26
    1cae:	aa 1b       	sub	r26, r26
    1cb0:	bb 1b       	sub	r27, r27
    1cb2:	fd 01       	movw	r30, r26
    1cb4:	0d c0       	rjmp	.+26     	; 0x1cd0 <__udivmodsi4_ep>

00001cb6 <__udivmodsi4_loop>:
    1cb6:	aa 1f       	adc	r26, r26
    1cb8:	bb 1f       	adc	r27, r27
    1cba:	ee 1f       	adc	r30, r30
    1cbc:	ff 1f       	adc	r31, r31
    1cbe:	a2 17       	cp	r26, r18
    1cc0:	b3 07       	cpc	r27, r19
    1cc2:	e4 07       	cpc	r30, r20
    1cc4:	f5 07       	cpc	r31, r21
    1cc6:	20 f0       	brcs	.+8      	; 0x1cd0 <__udivmodsi4_ep>
    1cc8:	a2 1b       	sub	r26, r18
    1cca:	b3 0b       	sbc	r27, r19
    1ccc:	e4 0b       	sbc	r30, r20
    1cce:	f5 0b       	sbc	r31, r21

00001cd0 <__udivmodsi4_ep>:
    1cd0:	66 1f       	adc	r22, r22
    1cd2:	77 1f       	adc	r23, r23
    1cd4:	88 1f       	adc	r24, r24
    1cd6:	99 1f       	adc	r25, r25
    1cd8:	1a 94       	dec	r1
    1cda:	69 f7       	brne	.-38     	; 0x1cb6 <__udivmodsi4_loop>
    1cdc:	60 95       	com	r22
    1cde:	70 95       	com	r23
    1ce0:	80 95       	com	r24
    1ce2:	90 95       	com	r25
    1ce4:	9b 01       	movw	r18, r22
    1ce6:	ac 01       	movw	r20, r24
    1ce8:	bd 01       	movw	r22, r26
    1cea:	cf 01       	movw	r24, r30
    1cec:	08 95       	ret

00001cee <__divmodsi4>:
    1cee:	05 2e       	mov	r0, r21
    1cf0:	97 fb       	bst	r25, 7
    1cf2:	1e f4       	brtc	.+6      	; 0x1cfa <__divmodsi4+0xc>
    1cf4:	00 94       	com	r0
    1cf6:	0e 94 8e 0e 	call	0x1d1c	; 0x1d1c <__negsi2>
    1cfa:	57 fd       	sbrc	r21, 7
    1cfc:	07 d0       	rcall	.+14     	; 0x1d0c <__divmodsi4_neg2>
    1cfe:	0e 94 55 0e 	call	0x1caa	; 0x1caa <__udivmodsi4>
    1d02:	07 fc       	sbrc	r0, 7
    1d04:	03 d0       	rcall	.+6      	; 0x1d0c <__divmodsi4_neg2>
    1d06:	4e f4       	brtc	.+18     	; 0x1d1a <__divmodsi4_exit>
    1d08:	0c 94 8e 0e 	jmp	0x1d1c	; 0x1d1c <__negsi2>

00001d0c <__divmodsi4_neg2>:
    1d0c:	50 95       	com	r21
    1d0e:	40 95       	com	r20
    1d10:	30 95       	com	r19
    1d12:	21 95       	neg	r18
    1d14:	3f 4f       	sbci	r19, 0xFF	; 255
    1d16:	4f 4f       	sbci	r20, 0xFF	; 255
    1d18:	5f 4f       	sbci	r21, 0xFF	; 255

00001d1a <__divmodsi4_exit>:
    1d1a:	08 95       	ret

00001d1c <__negsi2>:
    1d1c:	90 95       	com	r25
    1d1e:	80 95       	com	r24
    1d20:	70 95       	com	r23
    1d22:	61 95       	neg	r22
    1d24:	7f 4f       	sbci	r23, 0xFF	; 255
    1d26:	8f 4f       	sbci	r24, 0xFF	; 255
    1d28:	9f 4f       	sbci	r25, 0xFF	; 255
    1d2a:	08 95       	ret

00001d2c <__mulhisi3>:
    1d2c:	0e 94 9e 0e 	call	0x1d3c	; 0x1d3c <__umulhisi3>
    1d30:	33 23       	and	r19, r19
    1d32:	12 f4       	brpl	.+4      	; 0x1d38 <__mulhisi3+0xc>
    1d34:	8a 1b       	sub	r24, r26
    1d36:	9b 0b       	sbc	r25, r27
    1d38:	0c 94 af 0e 	jmp	0x1d5e	; 0x1d5e <__usmulhisi3_tail>

00001d3c <__umulhisi3>:
    1d3c:	a2 9f       	mul	r26, r18
    1d3e:	b0 01       	movw	r22, r0
    1d40:	b3 9f       	mul	r27, r19
    1d42:	c0 01       	movw	r24, r0
    1d44:	a3 9f       	mul	r26, r19
    1d46:	70 0d       	add	r23, r0
    1d48:	81 1d       	adc	r24, r1
    1d4a:	11 24       	eor	r1, r1
    1d4c:	91 1d       	adc	r25, r1
    1d4e:	b2 9f       	mul	r27, r18
    1d50:	70 0d       	add	r23, r0
    1d52:	81 1d       	adc	r24, r1
    1d54:	11 24       	eor	r1, r1
    1d56:	91 1d       	adc	r25, r1
    1d58:	08 95       	ret

00001d5a <__usmulhisi3>:
    1d5a:	0e 94 9e 0e 	call	0x1d3c	; 0x1d3c <__umulhisi3>

00001d5e <__usmulhisi3_tail>:
    1d5e:	b7 ff       	sbrs	r27, 7
    1d60:	08 95       	ret
    1d62:	82 1b       	sub	r24, r18
    1d64:	93 0b       	sbc	r25, r19
    1d66:	08 95       	ret

00001d68 <__udivmodhi4>:
    1d68:	aa 1b       	sub	r26, r26
    1d6a:	bb 1b       	sub	r27, r27
    1d6c:	51 e1       	ldi	r21, 0x11	; 17
    1d6e:	07 c0       	rjmp	.+14     	; 0x1d7e <__udivmodhi4_ep>

00001d70 <__udivmodhi4_loop>:
    1d70:	aa 1f       	adc	r26, r26
    1d72:	bb 1f       	adc	r27, r27
    1d74:	a6 17       	cp	r26, r22
    1d76:	b7 07       	cpc	r27, r23
    1d78:	10 f0       	brcs	.+4      	; 0x1d7e <__udivmodhi4_ep>
    1d7a:	a6 1b       	sub	r26, r22
    1d7c:	b7 0b       	sbc	r27, r23

00001d7e <__udivmodhi4_ep>:
    1d7e:	88 1f       	adc	r24, r24
    1d80:	99 1f       	adc	r25, r25
    1d82:	5a 95       	dec	r21
    1d84:	a9 f7       	brne	.-22     	; 0x1d70 <__udivmodhi4_loop>
    1d86:	80 95       	com	r24
    1d88:	90 95       	com	r25
    1d8a:	bc 01       	movw	r22, r24
    1d8c:	cd 01       	movw	r24, r26
    1d8e:	08 95       	ret

00001d90 <__tablejump2__>:
    1d90:	ee 0f       	add	r30, r30
    1d92:	ff 1f       	adc	r31, r31
    1d94:	05 90       	lpm	r0, Z+
    1d96:	f4 91       	lpm	r31, Z
    1d98:	e0 2d       	mov	r30, r0
    1d9a:	09 94       	ijmp

00001d9c <__subsf3>:
    1d9c:	50 58       	subi	r21, 0x80	; 128

00001d9e <__addsf3>:
    1d9e:	bb 27       	eor	r27, r27
    1da0:	aa 27       	eor	r26, r26
    1da2:	0e 94 e6 0e 	call	0x1dcc	; 0x1dcc <__addsf3x>
    1da6:	0c 94 ee 0f 	jmp	0x1fdc	; 0x1fdc <__fp_round>
    1daa:	0e 94 e0 0f 	call	0x1fc0	; 0x1fc0 <__fp_pscA>
    1dae:	38 f0       	brcs	.+14     	; 0x1dbe <__addsf3+0x20>
    1db0:	0e 94 e7 0f 	call	0x1fce	; 0x1fce <__fp_pscB>
    1db4:	20 f0       	brcs	.+8      	; 0x1dbe <__addsf3+0x20>
    1db6:	39 f4       	brne	.+14     	; 0x1dc6 <__addsf3+0x28>
    1db8:	9f 3f       	cpi	r25, 0xFF	; 255
    1dba:	19 f4       	brne	.+6      	; 0x1dc2 <__addsf3+0x24>
    1dbc:	26 f4       	brtc	.+8      	; 0x1dc6 <__addsf3+0x28>
    1dbe:	0c 94 dd 0f 	jmp	0x1fba	; 0x1fba <__fp_nan>
    1dc2:	0e f4       	brtc	.+2      	; 0x1dc6 <__addsf3+0x28>
    1dc4:	e0 95       	com	r30
    1dc6:	e7 fb       	bst	r30, 7
    1dc8:	0c 94 d7 0f 	jmp	0x1fae	; 0x1fae <__fp_inf>

00001dcc <__addsf3x>:
    1dcc:	e9 2f       	mov	r30, r25
    1dce:	0e 94 ff 0f 	call	0x1ffe	; 0x1ffe <__fp_split3>
    1dd2:	58 f3       	brcs	.-42     	; 0x1daa <__addsf3+0xc>
    1dd4:	ba 17       	cp	r27, r26
    1dd6:	62 07       	cpc	r22, r18
    1dd8:	73 07       	cpc	r23, r19
    1dda:	84 07       	cpc	r24, r20
    1ddc:	95 07       	cpc	r25, r21
    1dde:	20 f0       	brcs	.+8      	; 0x1de8 <__addsf3x+0x1c>
    1de0:	79 f4       	brne	.+30     	; 0x1e00 <__addsf3x+0x34>
    1de2:	a6 f5       	brtc	.+104    	; 0x1e4c <__addsf3x+0x80>
    1de4:	0c 94 21 10 	jmp	0x2042	; 0x2042 <__fp_zero>
    1de8:	0e f4       	brtc	.+2      	; 0x1dec <__addsf3x+0x20>
    1dea:	e0 95       	com	r30
    1dec:	0b 2e       	mov	r0, r27
    1dee:	ba 2f       	mov	r27, r26
    1df0:	a0 2d       	mov	r26, r0
    1df2:	0b 01       	movw	r0, r22
    1df4:	b9 01       	movw	r22, r18
    1df6:	90 01       	movw	r18, r0
    1df8:	0c 01       	movw	r0, r24
    1dfa:	ca 01       	movw	r24, r20
    1dfc:	a0 01       	movw	r20, r0
    1dfe:	11 24       	eor	r1, r1
    1e00:	ff 27       	eor	r31, r31
    1e02:	59 1b       	sub	r21, r25
    1e04:	99 f0       	breq	.+38     	; 0x1e2c <__addsf3x+0x60>
    1e06:	59 3f       	cpi	r21, 0xF9	; 249
    1e08:	50 f4       	brcc	.+20     	; 0x1e1e <__addsf3x+0x52>
    1e0a:	50 3e       	cpi	r21, 0xE0	; 224
    1e0c:	68 f1       	brcs	.+90     	; 0x1e68 <__addsf3x+0x9c>
    1e0e:	1a 16       	cp	r1, r26
    1e10:	f0 40       	sbci	r31, 0x00	; 0
    1e12:	a2 2f       	mov	r26, r18
    1e14:	23 2f       	mov	r18, r19
    1e16:	34 2f       	mov	r19, r20
    1e18:	44 27       	eor	r20, r20
    1e1a:	58 5f       	subi	r21, 0xF8	; 248
    1e1c:	f3 cf       	rjmp	.-26     	; 0x1e04 <__addsf3x+0x38>
    1e1e:	46 95       	lsr	r20
    1e20:	37 95       	ror	r19
    1e22:	27 95       	ror	r18
    1e24:	a7 95       	ror	r26
    1e26:	f0 40       	sbci	r31, 0x00	; 0
    1e28:	53 95       	inc	r21
    1e2a:	c9 f7       	brne	.-14     	; 0x1e1e <__addsf3x+0x52>
    1e2c:	7e f4       	brtc	.+30     	; 0x1e4c <__addsf3x+0x80>
    1e2e:	1f 16       	cp	r1, r31
    1e30:	ba 0b       	sbc	r27, r26
    1e32:	62 0b       	sbc	r22, r18
    1e34:	73 0b       	sbc	r23, r19
    1e36:	84 0b       	sbc	r24, r20
    1e38:	ba f0       	brmi	.+46     	; 0x1e68 <__addsf3x+0x9c>
    1e3a:	91 50       	subi	r25, 0x01	; 1
    1e3c:	a1 f0       	breq	.+40     	; 0x1e66 <__addsf3x+0x9a>
    1e3e:	ff 0f       	add	r31, r31
    1e40:	bb 1f       	adc	r27, r27
    1e42:	66 1f       	adc	r22, r22
    1e44:	77 1f       	adc	r23, r23
    1e46:	88 1f       	adc	r24, r24
    1e48:	c2 f7       	brpl	.-16     	; 0x1e3a <__addsf3x+0x6e>
    1e4a:	0e c0       	rjmp	.+28     	; 0x1e68 <__addsf3x+0x9c>
    1e4c:	ba 0f       	add	r27, r26
    1e4e:	62 1f       	adc	r22, r18
    1e50:	73 1f       	adc	r23, r19
    1e52:	84 1f       	adc	r24, r20
    1e54:	48 f4       	brcc	.+18     	; 0x1e68 <__addsf3x+0x9c>
    1e56:	87 95       	ror	r24
    1e58:	77 95       	ror	r23
    1e5a:	67 95       	ror	r22
    1e5c:	b7 95       	ror	r27
    1e5e:	f7 95       	ror	r31
    1e60:	9e 3f       	cpi	r25, 0xFE	; 254
    1e62:	08 f0       	brcs	.+2      	; 0x1e66 <__addsf3x+0x9a>
    1e64:	b0 cf       	rjmp	.-160    	; 0x1dc6 <__addsf3+0x28>
    1e66:	93 95       	inc	r25
    1e68:	88 0f       	add	r24, r24
    1e6a:	08 f0       	brcs	.+2      	; 0x1e6e <__addsf3x+0xa2>
    1e6c:	99 27       	eor	r25, r25
    1e6e:	ee 0f       	add	r30, r30
    1e70:	97 95       	ror	r25
    1e72:	87 95       	ror	r24
    1e74:	08 95       	ret

00001e76 <__cmpsf2>:
    1e76:	0e 94 b3 0f 	call	0x1f66	; 0x1f66 <__fp_cmp>
    1e7a:	08 f4       	brcc	.+2      	; 0x1e7e <__cmpsf2+0x8>
    1e7c:	81 e0       	ldi	r24, 0x01	; 1
    1e7e:	08 95       	ret

00001e80 <__fixsfsi>:
    1e80:	0e 94 47 0f 	call	0x1e8e	; 0x1e8e <__fixunssfsi>
    1e84:	68 94       	set
    1e86:	b1 11       	cpse	r27, r1
    1e88:	0c 94 22 10 	jmp	0x2044	; 0x2044 <__fp_szero>
    1e8c:	08 95       	ret

00001e8e <__fixunssfsi>:
    1e8e:	0e 94 07 10 	call	0x200e	; 0x200e <__fp_splitA>
    1e92:	88 f0       	brcs	.+34     	; 0x1eb6 <__fixunssfsi+0x28>
    1e94:	9f 57       	subi	r25, 0x7F	; 127
    1e96:	98 f0       	brcs	.+38     	; 0x1ebe <__fixunssfsi+0x30>
    1e98:	b9 2f       	mov	r27, r25
    1e9a:	99 27       	eor	r25, r25
    1e9c:	b7 51       	subi	r27, 0x17	; 23
    1e9e:	b0 f0       	brcs	.+44     	; 0x1ecc <__fixunssfsi+0x3e>
    1ea0:	e1 f0       	breq	.+56     	; 0x1eda <__fixunssfsi+0x4c>
    1ea2:	66 0f       	add	r22, r22
    1ea4:	77 1f       	adc	r23, r23
    1ea6:	88 1f       	adc	r24, r24
    1ea8:	99 1f       	adc	r25, r25
    1eaa:	1a f0       	brmi	.+6      	; 0x1eb2 <__fixunssfsi+0x24>
    1eac:	ba 95       	dec	r27
    1eae:	c9 f7       	brne	.-14     	; 0x1ea2 <__fixunssfsi+0x14>
    1eb0:	14 c0       	rjmp	.+40     	; 0x1eda <__fixunssfsi+0x4c>
    1eb2:	b1 30       	cpi	r27, 0x01	; 1
    1eb4:	91 f0       	breq	.+36     	; 0x1eda <__fixunssfsi+0x4c>
    1eb6:	0e 94 21 10 	call	0x2042	; 0x2042 <__fp_zero>
    1eba:	b1 e0       	ldi	r27, 0x01	; 1
    1ebc:	08 95       	ret
    1ebe:	0c 94 21 10 	jmp	0x2042	; 0x2042 <__fp_zero>
    1ec2:	67 2f       	mov	r22, r23
    1ec4:	78 2f       	mov	r23, r24
    1ec6:	88 27       	eor	r24, r24
    1ec8:	b8 5f       	subi	r27, 0xF8	; 248
    1eca:	39 f0       	breq	.+14     	; 0x1eda <__fixunssfsi+0x4c>
    1ecc:	b9 3f       	cpi	r27, 0xF9	; 249
    1ece:	cc f3       	brlt	.-14     	; 0x1ec2 <__fixunssfsi+0x34>
    1ed0:	86 95       	lsr	r24
    1ed2:	77 95       	ror	r23
    1ed4:	67 95       	ror	r22
    1ed6:	b3 95       	inc	r27
    1ed8:	d9 f7       	brne	.-10     	; 0x1ed0 <__fixunssfsi+0x42>
    1eda:	3e f4       	brtc	.+14     	; 0x1eea <__fixunssfsi+0x5c>
    1edc:	90 95       	com	r25
    1ede:	80 95       	com	r24
    1ee0:	70 95       	com	r23
    1ee2:	61 95       	neg	r22
    1ee4:	7f 4f       	sbci	r23, 0xFF	; 255
    1ee6:	8f 4f       	sbci	r24, 0xFF	; 255
    1ee8:	9f 4f       	sbci	r25, 0xFF	; 255
    1eea:	08 95       	ret

00001eec <__floatunsisf>:
    1eec:	e8 94       	clt
    1eee:	09 c0       	rjmp	.+18     	; 0x1f02 <__floatsisf+0x12>

00001ef0 <__floatsisf>:
    1ef0:	97 fb       	bst	r25, 7
    1ef2:	3e f4       	brtc	.+14     	; 0x1f02 <__floatsisf+0x12>
    1ef4:	90 95       	com	r25
    1ef6:	80 95       	com	r24
    1ef8:	70 95       	com	r23
    1efa:	61 95       	neg	r22
    1efc:	7f 4f       	sbci	r23, 0xFF	; 255
    1efe:	8f 4f       	sbci	r24, 0xFF	; 255
    1f00:	9f 4f       	sbci	r25, 0xFF	; 255
    1f02:	99 23       	and	r25, r25
    1f04:	a9 f0       	breq	.+42     	; 0x1f30 <__floatsisf+0x40>
    1f06:	f9 2f       	mov	r31, r25
    1f08:	96 e9       	ldi	r25, 0x96	; 150
    1f0a:	bb 27       	eor	r27, r27
    1f0c:	93 95       	inc	r25
    1f0e:	f6 95       	lsr	r31
    1f10:	87 95       	ror	r24
    1f12:	77 95       	ror	r23
    1f14:	67 95       	ror	r22
    1f16:	b7 95       	ror	r27
    1f18:	f1 11       	cpse	r31, r1
    1f1a:	f8 cf       	rjmp	.-16     	; 0x1f0c <__floatsisf+0x1c>
    1f1c:	fa f4       	brpl	.+62     	; 0x1f5c <__floatsisf+0x6c>
    1f1e:	bb 0f       	add	r27, r27
    1f20:	11 f4       	brne	.+4      	; 0x1f26 <__floatsisf+0x36>
    1f22:	60 ff       	sbrs	r22, 0
    1f24:	1b c0       	rjmp	.+54     	; 0x1f5c <__floatsisf+0x6c>
    1f26:	6f 5f       	subi	r22, 0xFF	; 255
    1f28:	7f 4f       	sbci	r23, 0xFF	; 255
    1f2a:	8f 4f       	sbci	r24, 0xFF	; 255
    1f2c:	9f 4f       	sbci	r25, 0xFF	; 255
    1f2e:	16 c0       	rjmp	.+44     	; 0x1f5c <__floatsisf+0x6c>
    1f30:	88 23       	and	r24, r24
    1f32:	11 f0       	breq	.+4      	; 0x1f38 <__floatsisf+0x48>
    1f34:	96 e9       	ldi	r25, 0x96	; 150
    1f36:	11 c0       	rjmp	.+34     	; 0x1f5a <__floatsisf+0x6a>
    1f38:	77 23       	and	r23, r23
    1f3a:	21 f0       	breq	.+8      	; 0x1f44 <__floatsisf+0x54>
    1f3c:	9e e8       	ldi	r25, 0x8E	; 142
    1f3e:	87 2f       	mov	r24, r23
    1f40:	76 2f       	mov	r23, r22
    1f42:	05 c0       	rjmp	.+10     	; 0x1f4e <__floatsisf+0x5e>
    1f44:	66 23       	and	r22, r22
    1f46:	71 f0       	breq	.+28     	; 0x1f64 <__floatsisf+0x74>
    1f48:	96 e8       	ldi	r25, 0x86	; 134
    1f4a:	86 2f       	mov	r24, r22
    1f4c:	70 e0       	ldi	r23, 0x00	; 0
    1f4e:	60 e0       	ldi	r22, 0x00	; 0
    1f50:	2a f0       	brmi	.+10     	; 0x1f5c <__floatsisf+0x6c>
    1f52:	9a 95       	dec	r25
    1f54:	66 0f       	add	r22, r22
    1f56:	77 1f       	adc	r23, r23
    1f58:	88 1f       	adc	r24, r24
    1f5a:	da f7       	brpl	.-10     	; 0x1f52 <__floatsisf+0x62>
    1f5c:	88 0f       	add	r24, r24
    1f5e:	96 95       	lsr	r25
    1f60:	87 95       	ror	r24
    1f62:	97 f9       	bld	r25, 7
    1f64:	08 95       	ret

00001f66 <__fp_cmp>:
    1f66:	99 0f       	add	r25, r25
    1f68:	00 08       	sbc	r0, r0
    1f6a:	55 0f       	add	r21, r21
    1f6c:	aa 0b       	sbc	r26, r26
    1f6e:	e0 e8       	ldi	r30, 0x80	; 128
    1f70:	fe ef       	ldi	r31, 0xFE	; 254
    1f72:	16 16       	cp	r1, r22
    1f74:	17 06       	cpc	r1, r23
    1f76:	e8 07       	cpc	r30, r24
    1f78:	f9 07       	cpc	r31, r25
    1f7a:	c0 f0       	brcs	.+48     	; 0x1fac <__fp_cmp+0x46>
    1f7c:	12 16       	cp	r1, r18
    1f7e:	13 06       	cpc	r1, r19
    1f80:	e4 07       	cpc	r30, r20
    1f82:	f5 07       	cpc	r31, r21
    1f84:	98 f0       	brcs	.+38     	; 0x1fac <__fp_cmp+0x46>
    1f86:	62 1b       	sub	r22, r18
    1f88:	73 0b       	sbc	r23, r19
    1f8a:	84 0b       	sbc	r24, r20
    1f8c:	95 0b       	sbc	r25, r21
    1f8e:	39 f4       	brne	.+14     	; 0x1f9e <__fp_cmp+0x38>
    1f90:	0a 26       	eor	r0, r26
    1f92:	61 f0       	breq	.+24     	; 0x1fac <__fp_cmp+0x46>
    1f94:	23 2b       	or	r18, r19
    1f96:	24 2b       	or	r18, r20
    1f98:	25 2b       	or	r18, r21
    1f9a:	21 f4       	brne	.+8      	; 0x1fa4 <__fp_cmp+0x3e>
    1f9c:	08 95       	ret
    1f9e:	0a 26       	eor	r0, r26
    1fa0:	09 f4       	brne	.+2      	; 0x1fa4 <__fp_cmp+0x3e>
    1fa2:	a1 40       	sbci	r26, 0x01	; 1
    1fa4:	a6 95       	lsr	r26
    1fa6:	8f ef       	ldi	r24, 0xFF	; 255
    1fa8:	81 1d       	adc	r24, r1
    1faa:	81 1d       	adc	r24, r1
    1fac:	08 95       	ret

00001fae <__fp_inf>:
    1fae:	97 f9       	bld	r25, 7
    1fb0:	9f 67       	ori	r25, 0x7F	; 127
    1fb2:	80 e8       	ldi	r24, 0x80	; 128
    1fb4:	70 e0       	ldi	r23, 0x00	; 0
    1fb6:	60 e0       	ldi	r22, 0x00	; 0
    1fb8:	08 95       	ret

00001fba <__fp_nan>:
    1fba:	9f ef       	ldi	r25, 0xFF	; 255
    1fbc:	80 ec       	ldi	r24, 0xC0	; 192
    1fbe:	08 95       	ret

00001fc0 <__fp_pscA>:
    1fc0:	00 24       	eor	r0, r0
    1fc2:	0a 94       	dec	r0
    1fc4:	16 16       	cp	r1, r22
    1fc6:	17 06       	cpc	r1, r23
    1fc8:	18 06       	cpc	r1, r24
    1fca:	09 06       	cpc	r0, r25
    1fcc:	08 95       	ret

00001fce <__fp_pscB>:
    1fce:	00 24       	eor	r0, r0
    1fd0:	0a 94       	dec	r0
    1fd2:	12 16       	cp	r1, r18
    1fd4:	13 06       	cpc	r1, r19
    1fd6:	14 06       	cpc	r1, r20
    1fd8:	05 06       	cpc	r0, r21
    1fda:	08 95       	ret

00001fdc <__fp_round>:
    1fdc:	09 2e       	mov	r0, r25
    1fde:	03 94       	inc	r0
    1fe0:	00 0c       	add	r0, r0
    1fe2:	11 f4       	brne	.+4      	; 0x1fe8 <__fp_round+0xc>
    1fe4:	88 23       	and	r24, r24
    1fe6:	52 f0       	brmi	.+20     	; 0x1ffc <__fp_round+0x20>
    1fe8:	bb 0f       	add	r27, r27
    1fea:	40 f4       	brcc	.+16     	; 0x1ffc <__fp_round+0x20>
    1fec:	bf 2b       	or	r27, r31
    1fee:	11 f4       	brne	.+4      	; 0x1ff4 <__fp_round+0x18>
    1ff0:	60 ff       	sbrs	r22, 0
    1ff2:	04 c0       	rjmp	.+8      	; 0x1ffc <__fp_round+0x20>
    1ff4:	6f 5f       	subi	r22, 0xFF	; 255
    1ff6:	7f 4f       	sbci	r23, 0xFF	; 255
    1ff8:	8f 4f       	sbci	r24, 0xFF	; 255
    1ffa:	9f 4f       	sbci	r25, 0xFF	; 255
    1ffc:	08 95       	ret

00001ffe <__fp_split3>:
    1ffe:	57 fd       	sbrc	r21, 7
    2000:	90 58       	subi	r25, 0x80	; 128
    2002:	44 0f       	add	r20, r20
    2004:	55 1f       	adc	r21, r21
    2006:	59 f0       	breq	.+22     	; 0x201e <__fp_splitA+0x10>
    2008:	5f 3f       	cpi	r21, 0xFF	; 255
    200a:	71 f0       	breq	.+28     	; 0x2028 <__fp_splitA+0x1a>
    200c:	47 95       	ror	r20

0000200e <__fp_splitA>:
    200e:	88 0f       	add	r24, r24
    2010:	97 fb       	bst	r25, 7
    2012:	99 1f       	adc	r25, r25
    2014:	61 f0       	breq	.+24     	; 0x202e <__fp_splitA+0x20>
    2016:	9f 3f       	cpi	r25, 0xFF	; 255
    2018:	79 f0       	breq	.+30     	; 0x2038 <__fp_splitA+0x2a>
    201a:	87 95       	ror	r24
    201c:	08 95       	ret
    201e:	12 16       	cp	r1, r18
    2020:	13 06       	cpc	r1, r19
    2022:	14 06       	cpc	r1, r20
    2024:	55 1f       	adc	r21, r21
    2026:	f2 cf       	rjmp	.-28     	; 0x200c <__fp_split3+0xe>
    2028:	46 95       	lsr	r20
    202a:	f1 df       	rcall	.-30     	; 0x200e <__fp_splitA>
    202c:	08 c0       	rjmp	.+16     	; 0x203e <__fp_splitA+0x30>
    202e:	16 16       	cp	r1, r22
    2030:	17 06       	cpc	r1, r23
    2032:	18 06       	cpc	r1, r24
    2034:	99 1f       	adc	r25, r25
    2036:	f1 cf       	rjmp	.-30     	; 0x201a <__fp_splitA+0xc>
    2038:	86 95       	lsr	r24
    203a:	71 05       	cpc	r23, r1
    203c:	61 05       	cpc	r22, r1
    203e:	08 94       	sec
    2040:	08 95       	ret

00002042 <__fp_zero>:
    2042:	e8 94       	clt

00002044 <__fp_szero>:
    2044:	bb 27       	eor	r27, r27
    2046:	66 27       	eor	r22, r22
    2048:	77 27       	eor	r23, r23
    204a:	cb 01       	movw	r24, r22
    204c:	97 f9       	bld	r25, 7
    204e:	08 95       	ret

00002050 <__gesf2>:
    2050:	0e 94 b3 0f 	call	0x1f66	; 0x1f66 <__fp_cmp>
    2054:	08 f4       	brcc	.+2      	; 0x2058 <__gesf2+0x8>
    2056:	8f ef       	ldi	r24, 0xFF	; 255
    2058:	08 95       	ret

0000205a <__mulsf3>:
    205a:	0e 94 40 10 	call	0x2080	; 0x2080 <__mulsf3x>
    205e:	0c 94 ee 0f 	jmp	0x1fdc	; 0x1fdc <__fp_round>
    2062:	0e 94 e0 0f 	call	0x1fc0	; 0x1fc0 <__fp_pscA>
    2066:	38 f0       	brcs	.+14     	; 0x2076 <__mulsf3+0x1c>
    2068:	0e 94 e7 0f 	call	0x1fce	; 0x1fce <__fp_pscB>
    206c:	20 f0       	brcs	.+8      	; 0x2076 <__mulsf3+0x1c>
    206e:	95 23       	and	r25, r21
    2070:	11 f0       	breq	.+4      	; 0x2076 <__mulsf3+0x1c>
    2072:	0c 94 d7 0f 	jmp	0x1fae	; 0x1fae <__fp_inf>
    2076:	0c 94 dd 0f 	jmp	0x1fba	; 0x1fba <__fp_nan>
    207a:	11 24       	eor	r1, r1
    207c:	0c 94 22 10 	jmp	0x2044	; 0x2044 <__fp_szero>

00002080 <__mulsf3x>:
    2080:	0e 94 ff 0f 	call	0x1ffe	; 0x1ffe <__fp_split3>
    2084:	70 f3       	brcs	.-36     	; 0x2062 <__mulsf3+0x8>

00002086 <__mulsf3_pse>:
    2086:	95 9f       	mul	r25, r21
    2088:	c1 f3       	breq	.-16     	; 0x207a <__mulsf3+0x20>
    208a:	95 0f       	add	r25, r21
    208c:	50 e0       	ldi	r21, 0x00	; 0
    208e:	55 1f       	adc	r21, r21
    2090:	62 9f       	mul	r22, r18
    2092:	f0 01       	movw	r30, r0
    2094:	72 9f       	mul	r23, r18
    2096:	bb 27       	eor	r27, r27
    2098:	f0 0d       	add	r31, r0
    209a:	b1 1d       	adc	r27, r1
    209c:	63 9f       	mul	r22, r19
    209e:	aa 27       	eor	r26, r26
    20a0:	f0 0d       	add	r31, r0
    20a2:	b1 1d       	adc	r27, r1
    20a4:	aa 1f       	adc	r26, r26
    20a6:	64 9f       	mul	r22, r20
    20a8:	66 27       	eor	r22, r22
    20aa:	b0 0d       	add	r27, r0
    20ac:	a1 1d       	adc	r26, r1
    20ae:	66 1f       	adc	r22, r22
    20b0:	82 9f       	mul	r24, r18
    20b2:	22 27       	eor	r18, r18
    20b4:	b0 0d       	add	r27, r0
    20b6:	a1 1d       	adc	r26, r1
    20b8:	62 1f       	adc	r22, r18
    20ba:	73 9f       	mul	r23, r19
    20bc:	b0 0d       	add	r27, r0
    20be:	a1 1d       	adc	r26, r1
    20c0:	62 1f       	adc	r22, r18
    20c2:	83 9f       	mul	r24, r19
    20c4:	a0 0d       	add	r26, r0
    20c6:	61 1d       	adc	r22, r1
    20c8:	22 1f       	adc	r18, r18
    20ca:	74 9f       	mul	r23, r20
    20cc:	33 27       	eor	r19, r19
    20ce:	a0 0d       	add	r26, r0
    20d0:	61 1d       	adc	r22, r1
    20d2:	23 1f       	adc	r18, r19
    20d4:	84 9f       	mul	r24, r20
    20d6:	60 0d       	add	r22, r0
    20d8:	21 1d       	adc	r18, r1
    20da:	82 2f       	mov	r24, r18
    20dc:	76 2f       	mov	r23, r22
    20de:	6a 2f       	mov	r22, r26
    20e0:	11 24       	eor	r1, r1
    20e2:	9f 57       	subi	r25, 0x7F	; 127
    20e4:	50 40       	sbci	r21, 0x00	; 0
    20e6:	9a f0       	brmi	.+38     	; 0x210e <__mulsf3_pse+0x88>
    20e8:	f1 f0       	breq	.+60     	; 0x2126 <__mulsf3_pse+0xa0>
    20ea:	88 23       	and	r24, r24
    20ec:	4a f0       	brmi	.+18     	; 0x2100 <__mulsf3_pse+0x7a>
    20ee:	ee 0f       	add	r30, r30
    20f0:	ff 1f       	adc	r31, r31
    20f2:	bb 1f       	adc	r27, r27
    20f4:	66 1f       	adc	r22, r22
    20f6:	77 1f       	adc	r23, r23
    20f8:	88 1f       	adc	r24, r24
    20fa:	91 50       	subi	r25, 0x01	; 1
    20fc:	50 40       	sbci	r21, 0x00	; 0
    20fe:	a9 f7       	brne	.-22     	; 0x20ea <__mulsf3_pse+0x64>
    2100:	9e 3f       	cpi	r25, 0xFE	; 254
    2102:	51 05       	cpc	r21, r1
    2104:	80 f0       	brcs	.+32     	; 0x2126 <__mulsf3_pse+0xa0>
    2106:	0c 94 d7 0f 	jmp	0x1fae	; 0x1fae <__fp_inf>
    210a:	0c 94 22 10 	jmp	0x2044	; 0x2044 <__fp_szero>
    210e:	5f 3f       	cpi	r21, 0xFF	; 255
    2110:	e4 f3       	brlt	.-8      	; 0x210a <__mulsf3_pse+0x84>
    2112:	98 3e       	cpi	r25, 0xE8	; 232
    2114:	d4 f3       	brlt	.-12     	; 0x210a <__mulsf3_pse+0x84>
    2116:	86 95       	lsr	r24
    2118:	77 95       	ror	r23
    211a:	67 95       	ror	r22
    211c:	b7 95       	ror	r27
    211e:	f7 95       	ror	r31
    2120:	e7 95       	ror	r30
    2122:	9f 5f       	subi	r25, 0xFF	; 255
    2124:	c1 f7       	brne	.-16     	; 0x2116 <__mulsf3_pse+0x90>
    2126:	fe 2b       	or	r31, r30
    2128:	88 0f       	add	r24, r24
    212a:	91 1d       	adc	r25, r1
    212c:	96 95       	lsr	r25
    212e:	87 95       	ror	r24
    2130:	97 f9       	bld	r25, 7
    2132:	08 95       	ret

00002134 <malloc>:
    2134:	0f 93       	push	r16
    2136:	1f 93       	push	r17
    2138:	cf 93       	push	r28
    213a:	df 93       	push	r29
    213c:	82 30       	cpi	r24, 0x02	; 2
    213e:	91 05       	cpc	r25, r1
    2140:	10 f4       	brcc	.+4      	; 0x2146 <malloc+0x12>
    2142:	82 e0       	ldi	r24, 0x02	; 2
    2144:	90 e0       	ldi	r25, 0x00	; 0
    2146:	e0 91 f4 01 	lds	r30, 0x01F4	; 0x8001f4 <__flp>
    214a:	f0 91 f5 01 	lds	r31, 0x01F5	; 0x8001f5 <__flp+0x1>
    214e:	30 e0       	ldi	r19, 0x00	; 0
    2150:	20 e0       	ldi	r18, 0x00	; 0
    2152:	b0 e0       	ldi	r27, 0x00	; 0
    2154:	a0 e0       	ldi	r26, 0x00	; 0
    2156:	30 97       	sbiw	r30, 0x00	; 0
    2158:	99 f4       	brne	.+38     	; 0x2180 <malloc+0x4c>
    215a:	21 15       	cp	r18, r1
    215c:	31 05       	cpc	r19, r1
    215e:	09 f4       	brne	.+2      	; 0x2162 <malloc+0x2e>
    2160:	4a c0       	rjmp	.+148    	; 0x21f6 <malloc+0xc2>
    2162:	28 1b       	sub	r18, r24
    2164:	39 0b       	sbc	r19, r25
    2166:	24 30       	cpi	r18, 0x04	; 4
    2168:	31 05       	cpc	r19, r1
    216a:	d8 f5       	brcc	.+118    	; 0x21e2 <malloc+0xae>
    216c:	8a 81       	ldd	r24, Y+2	; 0x02
    216e:	9b 81       	ldd	r25, Y+3	; 0x03
    2170:	61 15       	cp	r22, r1
    2172:	71 05       	cpc	r23, r1
    2174:	89 f1       	breq	.+98     	; 0x21d8 <malloc+0xa4>
    2176:	fb 01       	movw	r30, r22
    2178:	93 83       	std	Z+3, r25	; 0x03
    217a:	82 83       	std	Z+2, r24	; 0x02
    217c:	fe 01       	movw	r30, r28
    217e:	11 c0       	rjmp	.+34     	; 0x21a2 <malloc+0x6e>
    2180:	40 81       	ld	r20, Z
    2182:	51 81       	ldd	r21, Z+1	; 0x01
    2184:	02 81       	ldd	r16, Z+2	; 0x02
    2186:	13 81       	ldd	r17, Z+3	; 0x03
    2188:	48 17       	cp	r20, r24
    218a:	59 07       	cpc	r21, r25
    218c:	e0 f0       	brcs	.+56     	; 0x21c6 <malloc+0x92>
    218e:	48 17       	cp	r20, r24
    2190:	59 07       	cpc	r21, r25
    2192:	99 f4       	brne	.+38     	; 0x21ba <malloc+0x86>
    2194:	10 97       	sbiw	r26, 0x00	; 0
    2196:	61 f0       	breq	.+24     	; 0x21b0 <malloc+0x7c>
    2198:	12 96       	adiw	r26, 0x02	; 2
    219a:	0c 93       	st	X, r16
    219c:	12 97       	sbiw	r26, 0x02	; 2
    219e:	13 96       	adiw	r26, 0x03	; 3
    21a0:	1c 93       	st	X, r17
    21a2:	32 96       	adiw	r30, 0x02	; 2
    21a4:	cf 01       	movw	r24, r30
    21a6:	df 91       	pop	r29
    21a8:	cf 91       	pop	r28
    21aa:	1f 91       	pop	r17
    21ac:	0f 91       	pop	r16
    21ae:	08 95       	ret
    21b0:	00 93 f4 01 	sts	0x01F4, r16	; 0x8001f4 <__flp>
    21b4:	10 93 f5 01 	sts	0x01F5, r17	; 0x8001f5 <__flp+0x1>
    21b8:	f4 cf       	rjmp	.-24     	; 0x21a2 <malloc+0x6e>
    21ba:	21 15       	cp	r18, r1
    21bc:	31 05       	cpc	r19, r1
    21be:	51 f0       	breq	.+20     	; 0x21d4 <malloc+0xa0>
    21c0:	42 17       	cp	r20, r18
    21c2:	53 07       	cpc	r21, r19
    21c4:	38 f0       	brcs	.+14     	; 0x21d4 <malloc+0xa0>
    21c6:	a9 01       	movw	r20, r18
    21c8:	db 01       	movw	r26, r22
    21ca:	9a 01       	movw	r18, r20
    21cc:	bd 01       	movw	r22, r26
    21ce:	df 01       	movw	r26, r30
    21d0:	f8 01       	movw	r30, r16
    21d2:	c1 cf       	rjmp	.-126    	; 0x2156 <malloc+0x22>
    21d4:	ef 01       	movw	r28, r30
    21d6:	f9 cf       	rjmp	.-14     	; 0x21ca <malloc+0x96>
    21d8:	90 93 f5 01 	sts	0x01F5, r25	; 0x8001f5 <__flp+0x1>
    21dc:	80 93 f4 01 	sts	0x01F4, r24	; 0x8001f4 <__flp>
    21e0:	cd cf       	rjmp	.-102    	; 0x217c <malloc+0x48>
    21e2:	fe 01       	movw	r30, r28
    21e4:	e2 0f       	add	r30, r18
    21e6:	f3 1f       	adc	r31, r19
    21e8:	81 93       	st	Z+, r24
    21ea:	91 93       	st	Z+, r25
    21ec:	22 50       	subi	r18, 0x02	; 2
    21ee:	31 09       	sbc	r19, r1
    21f0:	39 83       	std	Y+1, r19	; 0x01
    21f2:	28 83       	st	Y, r18
    21f4:	d7 cf       	rjmp	.-82     	; 0x21a4 <malloc+0x70>
    21f6:	20 91 f2 01 	lds	r18, 0x01F2	; 0x8001f2 <__brkval>
    21fa:	30 91 f3 01 	lds	r19, 0x01F3	; 0x8001f3 <__brkval+0x1>
    21fe:	23 2b       	or	r18, r19
    2200:	41 f4       	brne	.+16     	; 0x2212 <malloc+0xde>
    2202:	20 91 02 01 	lds	r18, 0x0102	; 0x800102 <__malloc_heap_start>
    2206:	30 91 03 01 	lds	r19, 0x0103	; 0x800103 <__malloc_heap_start+0x1>
    220a:	30 93 f3 01 	sts	0x01F3, r19	; 0x8001f3 <__brkval+0x1>
    220e:	20 93 f2 01 	sts	0x01F2, r18	; 0x8001f2 <__brkval>
    2212:	20 91 00 01 	lds	r18, 0x0100	; 0x800100 <__malloc_heap_end>
    2216:	30 91 01 01 	lds	r19, 0x0101	; 0x800101 <__malloc_heap_end+0x1>
    221a:	21 15       	cp	r18, r1
    221c:	31 05       	cpc	r19, r1
    221e:	41 f4       	brne	.+16     	; 0x2230 <malloc+0xfc>
    2220:	2d b7       	in	r18, 0x3d	; 61
    2222:	3e b7       	in	r19, 0x3e	; 62
    2224:	40 91 04 01 	lds	r20, 0x0104	; 0x800104 <__malloc_margin>
    2228:	50 91 05 01 	lds	r21, 0x0105	; 0x800105 <__malloc_margin+0x1>
    222c:	24 1b       	sub	r18, r20
    222e:	35 0b       	sbc	r19, r21
    2230:	e0 91 f2 01 	lds	r30, 0x01F2	; 0x8001f2 <__brkval>
    2234:	f0 91 f3 01 	lds	r31, 0x01F3	; 0x8001f3 <__brkval+0x1>
    2238:	e2 17       	cp	r30, r18
    223a:	f3 07       	cpc	r31, r19
    223c:	a0 f4       	brcc	.+40     	; 0x2266 <malloc+0x132>
    223e:	2e 1b       	sub	r18, r30
    2240:	3f 0b       	sbc	r19, r31
    2242:	28 17       	cp	r18, r24
    2244:	39 07       	cpc	r19, r25
    2246:	78 f0       	brcs	.+30     	; 0x2266 <malloc+0x132>
    2248:	ac 01       	movw	r20, r24
    224a:	4e 5f       	subi	r20, 0xFE	; 254
    224c:	5f 4f       	sbci	r21, 0xFF	; 255
    224e:	24 17       	cp	r18, r20
    2250:	35 07       	cpc	r19, r21
    2252:	48 f0       	brcs	.+18     	; 0x2266 <malloc+0x132>
    2254:	4e 0f       	add	r20, r30
    2256:	5f 1f       	adc	r21, r31
    2258:	50 93 f3 01 	sts	0x01F3, r21	; 0x8001f3 <__brkval+0x1>
    225c:	40 93 f2 01 	sts	0x01F2, r20	; 0x8001f2 <__brkval>
    2260:	81 93       	st	Z+, r24
    2262:	91 93       	st	Z+, r25
    2264:	9f cf       	rjmp	.-194    	; 0x21a4 <malloc+0x70>
    2266:	f0 e0       	ldi	r31, 0x00	; 0
    2268:	e0 e0       	ldi	r30, 0x00	; 0
    226a:	9c cf       	rjmp	.-200    	; 0x21a4 <malloc+0x70>

0000226c <free>:
    226c:	cf 93       	push	r28
    226e:	df 93       	push	r29
    2270:	00 97       	sbiw	r24, 0x00	; 0
    2272:	e9 f0       	breq	.+58     	; 0x22ae <free+0x42>
    2274:	fc 01       	movw	r30, r24
    2276:	32 97       	sbiw	r30, 0x02	; 2
    2278:	13 82       	std	Z+3, r1	; 0x03
    227a:	12 82       	std	Z+2, r1	; 0x02
    227c:	a0 91 f4 01 	lds	r26, 0x01F4	; 0x8001f4 <__flp>
    2280:	b0 91 f5 01 	lds	r27, 0x01F5	; 0x8001f5 <__flp+0x1>
    2284:	ed 01       	movw	r28, r26
    2286:	30 e0       	ldi	r19, 0x00	; 0
    2288:	20 e0       	ldi	r18, 0x00	; 0
    228a:	10 97       	sbiw	r26, 0x00	; 0
    228c:	a1 f4       	brne	.+40     	; 0x22b6 <free+0x4a>
    228e:	20 81       	ld	r18, Z
    2290:	31 81       	ldd	r19, Z+1	; 0x01
    2292:	82 0f       	add	r24, r18
    2294:	93 1f       	adc	r25, r19
    2296:	20 91 f2 01 	lds	r18, 0x01F2	; 0x8001f2 <__brkval>
    229a:	30 91 f3 01 	lds	r19, 0x01F3	; 0x8001f3 <__brkval+0x1>
    229e:	28 17       	cp	r18, r24
    22a0:	39 07       	cpc	r19, r25
    22a2:	09 f0       	breq	.+2      	; 0x22a6 <free+0x3a>
    22a4:	61 c0       	rjmp	.+194    	; 0x2368 <free+0xfc>
    22a6:	f0 93 f3 01 	sts	0x01F3, r31	; 0x8001f3 <__brkval+0x1>
    22aa:	e0 93 f2 01 	sts	0x01F2, r30	; 0x8001f2 <__brkval>
    22ae:	df 91       	pop	r29
    22b0:	cf 91       	pop	r28
    22b2:	08 95       	ret
    22b4:	ea 01       	movw	r28, r20
    22b6:	ce 17       	cp	r28, r30
    22b8:	df 07       	cpc	r29, r31
    22ba:	e8 f5       	brcc	.+122    	; 0x2336 <free+0xca>
    22bc:	4a 81       	ldd	r20, Y+2	; 0x02
    22be:	5b 81       	ldd	r21, Y+3	; 0x03
    22c0:	9e 01       	movw	r18, r28
    22c2:	41 15       	cp	r20, r1
    22c4:	51 05       	cpc	r21, r1
    22c6:	b1 f7       	brne	.-20     	; 0x22b4 <free+0x48>
    22c8:	e9 01       	movw	r28, r18
    22ca:	fb 83       	std	Y+3, r31	; 0x03
    22cc:	ea 83       	std	Y+2, r30	; 0x02
    22ce:	49 91       	ld	r20, Y+
    22d0:	59 91       	ld	r21, Y+
    22d2:	c4 0f       	add	r28, r20
    22d4:	d5 1f       	adc	r29, r21
    22d6:	ec 17       	cp	r30, r28
    22d8:	fd 07       	cpc	r31, r29
    22da:	61 f4       	brne	.+24     	; 0x22f4 <free+0x88>
    22dc:	80 81       	ld	r24, Z
    22de:	91 81       	ldd	r25, Z+1	; 0x01
    22e0:	02 96       	adiw	r24, 0x02	; 2
    22e2:	84 0f       	add	r24, r20
    22e4:	95 1f       	adc	r25, r21
    22e6:	e9 01       	movw	r28, r18
    22e8:	99 83       	std	Y+1, r25	; 0x01
    22ea:	88 83       	st	Y, r24
    22ec:	82 81       	ldd	r24, Z+2	; 0x02
    22ee:	93 81       	ldd	r25, Z+3	; 0x03
    22f0:	9b 83       	std	Y+3, r25	; 0x03
    22f2:	8a 83       	std	Y+2, r24	; 0x02
    22f4:	f0 e0       	ldi	r31, 0x00	; 0
    22f6:	e0 e0       	ldi	r30, 0x00	; 0
    22f8:	12 96       	adiw	r26, 0x02	; 2
    22fa:	8d 91       	ld	r24, X+
    22fc:	9c 91       	ld	r25, X
    22fe:	13 97       	sbiw	r26, 0x03	; 3
    2300:	00 97       	sbiw	r24, 0x00	; 0
    2302:	b9 f5       	brne	.+110    	; 0x2372 <free+0x106>
    2304:	2d 91       	ld	r18, X+
    2306:	3c 91       	ld	r19, X
    2308:	11 97       	sbiw	r26, 0x01	; 1
    230a:	cd 01       	movw	r24, r26
    230c:	02 96       	adiw	r24, 0x02	; 2
    230e:	82 0f       	add	r24, r18
    2310:	93 1f       	adc	r25, r19
    2312:	20 91 f2 01 	lds	r18, 0x01F2	; 0x8001f2 <__brkval>
    2316:	30 91 f3 01 	lds	r19, 0x01F3	; 0x8001f3 <__brkval+0x1>
    231a:	28 17       	cp	r18, r24
    231c:	39 07       	cpc	r19, r25
    231e:	39 f6       	brne	.-114    	; 0x22ae <free+0x42>
    2320:	30 97       	sbiw	r30, 0x00	; 0
    2322:	51 f5       	brne	.+84     	; 0x2378 <free+0x10c>
    2324:	10 92 f5 01 	sts	0x01F5, r1	; 0x8001f5 <__flp+0x1>
    2328:	10 92 f4 01 	sts	0x01F4, r1	; 0x8001f4 <__flp>
    232c:	b0 93 f3 01 	sts	0x01F3, r27	; 0x8001f3 <__brkval+0x1>
    2330:	a0 93 f2 01 	sts	0x01F2, r26	; 0x8001f2 <__brkval>
    2334:	bc cf       	rjmp	.-136    	; 0x22ae <free+0x42>
    2336:	d3 83       	std	Z+3, r29	; 0x03
    2338:	c2 83       	std	Z+2, r28	; 0x02
    233a:	40 81       	ld	r20, Z
    233c:	51 81       	ldd	r21, Z+1	; 0x01
    233e:	84 0f       	add	r24, r20
    2340:	95 1f       	adc	r25, r21
    2342:	c8 17       	cp	r28, r24
    2344:	d9 07       	cpc	r29, r25
    2346:	61 f4       	brne	.+24     	; 0x2360 <free+0xf4>
    2348:	4e 5f       	subi	r20, 0xFE	; 254
    234a:	5f 4f       	sbci	r21, 0xFF	; 255
    234c:	88 81       	ld	r24, Y
    234e:	99 81       	ldd	r25, Y+1	; 0x01
    2350:	48 0f       	add	r20, r24
    2352:	59 1f       	adc	r21, r25
    2354:	51 83       	std	Z+1, r21	; 0x01
    2356:	40 83       	st	Z, r20
    2358:	8a 81       	ldd	r24, Y+2	; 0x02
    235a:	9b 81       	ldd	r25, Y+3	; 0x03
    235c:	93 83       	std	Z+3, r25	; 0x03
    235e:	82 83       	std	Z+2, r24	; 0x02
    2360:	21 15       	cp	r18, r1
    2362:	31 05       	cpc	r19, r1
    2364:	09 f0       	breq	.+2      	; 0x2368 <free+0xfc>
    2366:	b0 cf       	rjmp	.-160    	; 0x22c8 <free+0x5c>
    2368:	f0 93 f5 01 	sts	0x01F5, r31	; 0x8001f5 <__flp+0x1>
    236c:	e0 93 f4 01 	sts	0x01F4, r30	; 0x8001f4 <__flp>
    2370:	9e cf       	rjmp	.-196    	; 0x22ae <free+0x42>
    2372:	fd 01       	movw	r30, r26
    2374:	dc 01       	movw	r26, r24
    2376:	c0 cf       	rjmp	.-128    	; 0x22f8 <free+0x8c>
    2378:	13 82       	std	Z+3, r1	; 0x03
    237a:	12 82       	std	Z+2, r1	; 0x02
    237c:	d7 cf       	rjmp	.-82     	; 0x232c <free+0xc0>

0000237e <__do_global_dtors>:
    237e:	10 e0       	ldi	r17, 0x00	; 0
    2380:	c6 e3       	ldi	r28, 0x36	; 54
    2382:	d0 e0       	ldi	r29, 0x00	; 0
    2384:	04 c0       	rjmp	.+8      	; 0x238e <__do_global_dtors+0x10>
    2386:	fe 01       	movw	r30, r28
    2388:	0e 94 c8 0e 	call	0x1d90	; 0x1d90 <__tablejump2__>
    238c:	21 96       	adiw	r28, 0x01	; 1
    238e:	c7 33       	cpi	r28, 0x37	; 55
    2390:	d1 07       	cpc	r29, r17
    2392:	c9 f7       	brne	.-14     	; 0x2386 <__do_global_dtors+0x8>
    2394:	f8 94       	cli

00002396 <__stop_program>:
    2396:	ff cf       	rjmp	.-2      	; 0x2396 <__stop_program>
