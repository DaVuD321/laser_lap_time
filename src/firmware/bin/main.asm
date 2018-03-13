
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
      38:	0c 94 0e 04 	jmp	0x81c	; 0x81c <__vector_14>
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
      68:	6b 04       	cpc	r6, r11
      6a:	5e 05       	cpc	r21, r14

0000006c <__ctors_end>:
      6c:	62 05       	cpc	r22, r2

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
      80:	e4 e1       	ldi	r30, 0x14	; 20
      82:	f2 e2       	ldi	r31, 0x22	; 34
      84:	02 c0       	rjmp	.+4      	; 0x8a <__do_copy_data+0x10>
      86:	05 90       	lpm	r0, Z+
      88:	0d 92       	st	X+, r0
      8a:	a0 39       	cpi	r26, 0x90	; 144
      8c:	b1 07       	cpc	r27, r17
      8e:	d9 f7       	brne	.-10     	; 0x86 <__do_copy_data+0xc>

00000090 <__do_clear_bss>:
      90:	21 e0       	ldi	r18, 0x01	; 1
      92:	a0 e9       	ldi	r26, 0x90	; 144
      94:	b1 e0       	ldi	r27, 0x01	; 1
      96:	01 c0       	rjmp	.+2      	; 0x9a <.do_clear_bss_start>

00000098 <.do_clear_bss_loop>:
      98:	1d 92       	st	X+, r1

0000009a <.do_clear_bss_start>:
      9a:	aa 3d       	cpi	r26, 0xDA	; 218
      9c:	b2 07       	cpc	r27, r18
      9e:	e1 f7       	brne	.-8      	; 0x98 <.do_clear_bss_loop>

000000a0 <__do_global_ctors>:
      a0:	10 e0       	ldi	r17, 0x00	; 0
      a2:	c6 e3       	ldi	r28, 0x36	; 54
      a4:	d0 e0       	ldi	r29, 0x00	; 0
      a6:	04 c0       	rjmp	.+8      	; 0xb0 <__do_global_ctors+0x10>
      a8:	21 97       	sbiw	r28, 0x01	; 1
      aa:	fe 01       	movw	r30, r28
      ac:	0e 94 d2 0f 	call	0x1fa4	; 0x1fa4 <__tablejump2__>
      b0:	c4 33       	cpi	r28, 0x34	; 52
      b2:	d1 07       	cpc	r29, r17
      b4:	c9 f7       	brne	.-14     	; 0xa8 <__do_global_ctors+0x8>
      b6:	0e 94 6d 0f 	call	0x1eda	; 0x1eda <main>
      ba:	0c 94 fd 10 	jmp	0x21fa	; 0x21fa <__do_global_dtors>

000000be <__bad_interrupt>:
      be:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000c2 <_ZN8CVL53L0XC1Ev>:
      c2:	08 95       	ret

000000c4 <_ZN8CVL53L0XD1Ev>:
      c4:	08 95       	ret

000000c6 <_ZN8CVL53L0X4readEv>:
      c6:	0f 93       	push	r16
      c8:	1f 93       	push	r17
      ca:	cf 93       	push	r28
      cc:	df 93       	push	r29
      ce:	ec 01       	movw	r28, r24
      d0:	89 89       	ldd	r24, Y+17	; 0x11
      d2:	9a 89       	ldd	r25, Y+18	; 0x12
      d4:	dc 01       	movw	r26, r24
      d6:	ed 91       	ld	r30, X+
      d8:	fc 91       	ld	r31, X
      da:	00 84       	ldd	r0, Z+8	; 0x08
      dc:	f1 85       	ldd	r31, Z+9	; 0x09
      de:	e0 2d       	mov	r30, r0
      e0:	21 e0       	ldi	r18, 0x01	; 1
      e2:	4b e0       	ldi	r20, 0x0B	; 11
      e4:	62 e5       	ldi	r22, 0x52	; 82
      e6:	09 95       	icall
      e8:	89 89       	ldd	r24, Y+17	; 0x11
      ea:	9a 89       	ldd	r25, Y+18	; 0x12
      ec:	9e 01       	movw	r18, r28
      ee:	2d 5f       	subi	r18, 0xFD	; 253
      f0:	3f 4f       	sbci	r19, 0xFF	; 255
      f2:	dc 01       	movw	r26, r24
      f4:	ed 91       	ld	r30, X+
      f6:	fc 91       	ld	r31, X
      f8:	02 88       	ldd	r0, Z+18	; 0x12
      fa:	f3 89       	ldd	r31, Z+19	; 0x13
      fc:	e0 2d       	mov	r30, r0
      fe:	0e e0       	ldi	r16, 0x0E	; 14
     100:	10 e0       	ldi	r17, 0x00	; 0
     102:	44 e1       	ldi	r20, 0x14	; 20
     104:	62 e5       	ldi	r22, 0x52	; 82
     106:	09 95       	icall
     108:	8d 85       	ldd	r24, Y+13	; 0x0d
     10a:	9e 85       	ldd	r25, Y+14	; 0x0e
     10c:	98 27       	eor	r25, r24
     10e:	89 27       	eor	r24, r25
     110:	98 27       	eor	r25, r24
     112:	1a 82       	std	Y+2, r1	; 0x02
     114:	9c 01       	movw	r18, r24
     116:	24 51       	subi	r18, 0x14	; 20
     118:	31 09       	sbc	r19, r1
     11a:	21 3e       	cpi	r18, 0xE1	; 225
     11c:	31 40       	sbci	r19, 0x01	; 1
     11e:	20 f4       	brcc	.+8      	; 0x128 <_ZN8CVL53L0X4readEv+0x62>
     120:	99 83       	std	Y+1, r25	; 0x01
     122:	88 83       	st	Y, r24
     124:	81 e0       	ldi	r24, 0x01	; 1
     126:	8a 83       	std	Y+2, r24	; 0x02
     128:	88 81       	ld	r24, Y
     12a:	99 81       	ldd	r25, Y+1	; 0x01
     12c:	df 91       	pop	r29
     12e:	cf 91       	pop	r28
     130:	1f 91       	pop	r17
     132:	0f 91       	pop	r16
     134:	08 95       	ret

00000136 <_ZN8CVL53L0X12get_distanceEv>:
     136:	fc 01       	movw	r30, r24
     138:	80 81       	ld	r24, Z
     13a:	91 81       	ldd	r25, Z+1	; 0x01
     13c:	08 95       	ret

0000013e <_ZN8CVL53L0X11getSPADinfoEPhPb>:
     13e:	af 92       	push	r10
     140:	bf 92       	push	r11
     142:	cf 92       	push	r12
     144:	df 92       	push	r13
     146:	ef 92       	push	r14
     148:	ff 92       	push	r15
     14a:	0f 93       	push	r16
     14c:	1f 93       	push	r17
     14e:	cf 93       	push	r28
     150:	df 93       	push	r29
     152:	ec 01       	movw	r28, r24
     154:	5b 01       	movw	r10, r22
     156:	8a 01       	movw	r16, r20
     158:	db 01       	movw	r26, r22
     15a:	1c 92       	st	X, r1
     15c:	89 89       	ldd	r24, Y+17	; 0x11
     15e:	9a 89       	ldd	r25, Y+18	; 0x12
     160:	dc 01       	movw	r26, r24
     162:	ed 91       	ld	r30, X+
     164:	fc 91       	ld	r31, X
     166:	00 84       	ldd	r0, Z+8	; 0x08
     168:	f1 85       	ldd	r31, Z+9	; 0x09
     16a:	e0 2d       	mov	r30, r0
     16c:	21 e0       	ldi	r18, 0x01	; 1
     16e:	40 e8       	ldi	r20, 0x80	; 128
     170:	62 e5       	ldi	r22, 0x52	; 82
     172:	09 95       	icall
     174:	89 89       	ldd	r24, Y+17	; 0x11
     176:	9a 89       	ldd	r25, Y+18	; 0x12
     178:	dc 01       	movw	r26, r24
     17a:	ed 91       	ld	r30, X+
     17c:	fc 91       	ld	r31, X
     17e:	00 84       	ldd	r0, Z+8	; 0x08
     180:	f1 85       	ldd	r31, Z+9	; 0x09
     182:	e0 2d       	mov	r30, r0
     184:	21 e0       	ldi	r18, 0x01	; 1
     186:	4f ef       	ldi	r20, 0xFF	; 255
     188:	62 e5       	ldi	r22, 0x52	; 82
     18a:	09 95       	icall
     18c:	89 89       	ldd	r24, Y+17	; 0x11
     18e:	9a 89       	ldd	r25, Y+18	; 0x12
     190:	dc 01       	movw	r26, r24
     192:	ed 91       	ld	r30, X+
     194:	fc 91       	ld	r31, X
     196:	00 84       	ldd	r0, Z+8	; 0x08
     198:	f1 85       	ldd	r31, Z+9	; 0x09
     19a:	e0 2d       	mov	r30, r0
     19c:	20 e0       	ldi	r18, 0x00	; 0
     19e:	40 e0       	ldi	r20, 0x00	; 0
     1a0:	62 e5       	ldi	r22, 0x52	; 82
     1a2:	09 95       	icall
     1a4:	89 89       	ldd	r24, Y+17	; 0x11
     1a6:	9a 89       	ldd	r25, Y+18	; 0x12
     1a8:	dc 01       	movw	r26, r24
     1aa:	ed 91       	ld	r30, X+
     1ac:	fc 91       	ld	r31, X
     1ae:	00 84       	ldd	r0, Z+8	; 0x08
     1b0:	f1 85       	ldd	r31, Z+9	; 0x09
     1b2:	e0 2d       	mov	r30, r0
     1b4:	26 e0       	ldi	r18, 0x06	; 6
     1b6:	4f ef       	ldi	r20, 0xFF	; 255
     1b8:	62 e5       	ldi	r22, 0x52	; 82
     1ba:	09 95       	icall
     1bc:	e9 88       	ldd	r14, Y+17	; 0x11
     1be:	fa 88       	ldd	r15, Y+18	; 0x12
     1c0:	d7 01       	movw	r26, r14
     1c2:	ed 91       	ld	r30, X+
     1c4:	fc 91       	ld	r31, X
     1c6:	c0 84       	ldd	r12, Z+8	; 0x08
     1c8:	d1 84       	ldd	r13, Z+9	; 0x09
     1ca:	06 84       	ldd	r0, Z+14	; 0x0e
     1cc:	f7 85       	ldd	r31, Z+15	; 0x0f
     1ce:	e0 2d       	mov	r30, r0
     1d0:	43 e8       	ldi	r20, 0x83	; 131
     1d2:	62 e5       	ldi	r22, 0x52	; 82
     1d4:	c7 01       	movw	r24, r14
     1d6:	09 95       	icall
     1d8:	28 2f       	mov	r18, r24
     1da:	24 60       	ori	r18, 0x04	; 4
     1dc:	43 e8       	ldi	r20, 0x83	; 131
     1de:	62 e5       	ldi	r22, 0x52	; 82
     1e0:	c7 01       	movw	r24, r14
     1e2:	f6 01       	movw	r30, r12
     1e4:	09 95       	icall
     1e6:	89 89       	ldd	r24, Y+17	; 0x11
     1e8:	9a 89       	ldd	r25, Y+18	; 0x12
     1ea:	dc 01       	movw	r26, r24
     1ec:	ed 91       	ld	r30, X+
     1ee:	fc 91       	ld	r31, X
     1f0:	00 84       	ldd	r0, Z+8	; 0x08
     1f2:	f1 85       	ldd	r31, Z+9	; 0x09
     1f4:	e0 2d       	mov	r30, r0
     1f6:	27 e0       	ldi	r18, 0x07	; 7
     1f8:	4f ef       	ldi	r20, 0xFF	; 255
     1fa:	62 e5       	ldi	r22, 0x52	; 82
     1fc:	09 95       	icall
     1fe:	89 89       	ldd	r24, Y+17	; 0x11
     200:	9a 89       	ldd	r25, Y+18	; 0x12
     202:	dc 01       	movw	r26, r24
     204:	ed 91       	ld	r30, X+
     206:	fc 91       	ld	r31, X
     208:	00 84       	ldd	r0, Z+8	; 0x08
     20a:	f1 85       	ldd	r31, Z+9	; 0x09
     20c:	e0 2d       	mov	r30, r0
     20e:	21 e0       	ldi	r18, 0x01	; 1
     210:	41 e8       	ldi	r20, 0x81	; 129
     212:	62 e5       	ldi	r22, 0x52	; 82
     214:	09 95       	icall
     216:	89 89       	ldd	r24, Y+17	; 0x11
     218:	9a 89       	ldd	r25, Y+18	; 0x12
     21a:	dc 01       	movw	r26, r24
     21c:	ed 91       	ld	r30, X+
     21e:	fc 91       	ld	r31, X
     220:	00 84       	ldd	r0, Z+8	; 0x08
     222:	f1 85       	ldd	r31, Z+9	; 0x09
     224:	e0 2d       	mov	r30, r0
     226:	21 e0       	ldi	r18, 0x01	; 1
     228:	40 e8       	ldi	r20, 0x80	; 128
     22a:	62 e5       	ldi	r22, 0x52	; 82
     22c:	09 95       	icall
     22e:	89 89       	ldd	r24, Y+17	; 0x11
     230:	9a 89       	ldd	r25, Y+18	; 0x12
     232:	dc 01       	movw	r26, r24
     234:	ed 91       	ld	r30, X+
     236:	fc 91       	ld	r31, X
     238:	00 84       	ldd	r0, Z+8	; 0x08
     23a:	f1 85       	ldd	r31, Z+9	; 0x09
     23c:	e0 2d       	mov	r30, r0
     23e:	2b e6       	ldi	r18, 0x6B	; 107
     240:	44 e9       	ldi	r20, 0x94	; 148
     242:	62 e5       	ldi	r22, 0x52	; 82
     244:	09 95       	icall
     246:	89 89       	ldd	r24, Y+17	; 0x11
     248:	9a 89       	ldd	r25, Y+18	; 0x12
     24a:	dc 01       	movw	r26, r24
     24c:	ed 91       	ld	r30, X+
     24e:	fc 91       	ld	r31, X
     250:	00 84       	ldd	r0, Z+8	; 0x08
     252:	f1 85       	ldd	r31, Z+9	; 0x09
     254:	e0 2d       	mov	r30, r0
     256:	20 e0       	ldi	r18, 0x00	; 0
     258:	43 e8       	ldi	r20, 0x83	; 131
     25a:	62 e5       	ldi	r22, 0x52	; 82
     25c:	09 95       	icall
     25e:	81 e4       	ldi	r24, 0x41	; 65
     260:	c8 2e       	mov	r12, r24
     262:	82 e4       	ldi	r24, 0x42	; 66
     264:	d8 2e       	mov	r13, r24
     266:	8f e0       	ldi	r24, 0x0F	; 15
     268:	e8 2e       	mov	r14, r24
     26a:	f1 2c       	mov	r15, r1
     26c:	89 89       	ldd	r24, Y+17	; 0x11
     26e:	9a 89       	ldd	r25, Y+18	; 0x12
     270:	dc 01       	movw	r26, r24
     272:	ed 91       	ld	r30, X+
     274:	fc 91       	ld	r31, X
     276:	06 84       	ldd	r0, Z+14	; 0x0e
     278:	f7 85       	ldd	r31, Z+15	; 0x0f
     27a:	e0 2d       	mov	r30, r0
     27c:	43 e8       	ldi	r20, 0x83	; 131
     27e:	62 e5       	ldi	r22, 0x52	; 82
     280:	09 95       	icall
     282:	81 11       	cpse	r24, r1
     284:	08 c0       	rjmp	.+16     	; 0x296 <_ZN8CVL53L0X11getSPADinfoEPhPb+0x158>
     286:	b1 e0       	ldi	r27, 0x01	; 1
     288:	cb 1a       	sub	r12, r27
     28a:	d1 08       	sbc	r13, r1
     28c:	e1 08       	sbc	r14, r1
     28e:	f1 08       	sbc	r15, r1
     290:	69 f7       	brne	.-38     	; 0x26c <_ZN8CVL53L0X11getSPADinfoEPhPb+0x12e>
     292:	80 e0       	ldi	r24, 0x00	; 0
     294:	7d c0       	rjmp	.+250    	; 0x390 <_ZN8CVL53L0X11getSPADinfoEPhPb+0x252>
     296:	89 89       	ldd	r24, Y+17	; 0x11
     298:	9a 89       	ldd	r25, Y+18	; 0x12
     29a:	dc 01       	movw	r26, r24
     29c:	ed 91       	ld	r30, X+
     29e:	fc 91       	ld	r31, X
     2a0:	00 84       	ldd	r0, Z+8	; 0x08
     2a2:	f1 85       	ldd	r31, Z+9	; 0x09
     2a4:	e0 2d       	mov	r30, r0
     2a6:	21 e0       	ldi	r18, 0x01	; 1
     2a8:	43 e8       	ldi	r20, 0x83	; 131
     2aa:	62 e5       	ldi	r22, 0x52	; 82
     2ac:	09 95       	icall
     2ae:	89 89       	ldd	r24, Y+17	; 0x11
     2b0:	9a 89       	ldd	r25, Y+18	; 0x12
     2b2:	dc 01       	movw	r26, r24
     2b4:	ed 91       	ld	r30, X+
     2b6:	fc 91       	ld	r31, X
     2b8:	06 84       	ldd	r0, Z+14	; 0x0e
     2ba:	f7 85       	ldd	r31, Z+15	; 0x0f
     2bc:	e0 2d       	mov	r30, r0
     2be:	42 e9       	ldi	r20, 0x92	; 146
     2c0:	62 e5       	ldi	r22, 0x52	; 82
     2c2:	09 95       	icall
     2c4:	98 2f       	mov	r25, r24
     2c6:	9f 77       	andi	r25, 0x7F	; 127
     2c8:	f5 01       	movw	r30, r10
     2ca:	90 83       	st	Z, r25
     2cc:	88 1f       	adc	r24, r24
     2ce:	88 27       	eor	r24, r24
     2d0:	88 1f       	adc	r24, r24
     2d2:	d8 01       	movw	r26, r16
     2d4:	8c 93       	st	X, r24
     2d6:	89 89       	ldd	r24, Y+17	; 0x11
     2d8:	9a 89       	ldd	r25, Y+18	; 0x12
     2da:	dc 01       	movw	r26, r24
     2dc:	ed 91       	ld	r30, X+
     2de:	fc 91       	ld	r31, X
     2e0:	00 84       	ldd	r0, Z+8	; 0x08
     2e2:	f1 85       	ldd	r31, Z+9	; 0x09
     2e4:	e0 2d       	mov	r30, r0
     2e6:	20 e0       	ldi	r18, 0x00	; 0
     2e8:	41 e8       	ldi	r20, 0x81	; 129
     2ea:	62 e5       	ldi	r22, 0x52	; 82
     2ec:	09 95       	icall
     2ee:	89 89       	ldd	r24, Y+17	; 0x11
     2f0:	9a 89       	ldd	r25, Y+18	; 0x12
     2f2:	dc 01       	movw	r26, r24
     2f4:	ed 91       	ld	r30, X+
     2f6:	fc 91       	ld	r31, X
     2f8:	00 84       	ldd	r0, Z+8	; 0x08
     2fa:	f1 85       	ldd	r31, Z+9	; 0x09
     2fc:	e0 2d       	mov	r30, r0
     2fe:	26 e0       	ldi	r18, 0x06	; 6
     300:	4f ef       	ldi	r20, 0xFF	; 255
     302:	62 e5       	ldi	r22, 0x52	; 82
     304:	09 95       	icall
     306:	09 89       	ldd	r16, Y+17	; 0x11
     308:	1a 89       	ldd	r17, Y+18	; 0x12
     30a:	d8 01       	movw	r26, r16
     30c:	ed 91       	ld	r30, X+
     30e:	fc 91       	ld	r31, X
     310:	e0 84       	ldd	r14, Z+8	; 0x08
     312:	f1 84       	ldd	r15, Z+9	; 0x09
     314:	06 84       	ldd	r0, Z+14	; 0x0e
     316:	f7 85       	ldd	r31, Z+15	; 0x0f
     318:	e0 2d       	mov	r30, r0
     31a:	43 e8       	ldi	r20, 0x83	; 131
     31c:	62 e5       	ldi	r22, 0x52	; 82
     31e:	c8 01       	movw	r24, r16
     320:	09 95       	icall
     322:	28 2f       	mov	r18, r24
     324:	43 e8       	ldi	r20, 0x83	; 131
     326:	62 e5       	ldi	r22, 0x52	; 82
     328:	c8 01       	movw	r24, r16
     32a:	f7 01       	movw	r30, r14
     32c:	09 95       	icall
     32e:	89 89       	ldd	r24, Y+17	; 0x11
     330:	9a 89       	ldd	r25, Y+18	; 0x12
     332:	dc 01       	movw	r26, r24
     334:	ed 91       	ld	r30, X+
     336:	fc 91       	ld	r31, X
     338:	00 84       	ldd	r0, Z+8	; 0x08
     33a:	f1 85       	ldd	r31, Z+9	; 0x09
     33c:	e0 2d       	mov	r30, r0
     33e:	21 e0       	ldi	r18, 0x01	; 1
     340:	4f ef       	ldi	r20, 0xFF	; 255
     342:	62 e5       	ldi	r22, 0x52	; 82
     344:	09 95       	icall
     346:	89 89       	ldd	r24, Y+17	; 0x11
     348:	9a 89       	ldd	r25, Y+18	; 0x12
     34a:	dc 01       	movw	r26, r24
     34c:	ed 91       	ld	r30, X+
     34e:	fc 91       	ld	r31, X
     350:	00 84       	ldd	r0, Z+8	; 0x08
     352:	f1 85       	ldd	r31, Z+9	; 0x09
     354:	e0 2d       	mov	r30, r0
     356:	21 e0       	ldi	r18, 0x01	; 1
     358:	40 e0       	ldi	r20, 0x00	; 0
     35a:	62 e5       	ldi	r22, 0x52	; 82
     35c:	09 95       	icall
     35e:	89 89       	ldd	r24, Y+17	; 0x11
     360:	9a 89       	ldd	r25, Y+18	; 0x12
     362:	dc 01       	movw	r26, r24
     364:	ed 91       	ld	r30, X+
     366:	fc 91       	ld	r31, X
     368:	00 84       	ldd	r0, Z+8	; 0x08
     36a:	f1 85       	ldd	r31, Z+9	; 0x09
     36c:	e0 2d       	mov	r30, r0
     36e:	20 e0       	ldi	r18, 0x00	; 0
     370:	4f ef       	ldi	r20, 0xFF	; 255
     372:	62 e5       	ldi	r22, 0x52	; 82
     374:	09 95       	icall
     376:	89 89       	ldd	r24, Y+17	; 0x11
     378:	9a 89       	ldd	r25, Y+18	; 0x12
     37a:	dc 01       	movw	r26, r24
     37c:	ed 91       	ld	r30, X+
     37e:	fc 91       	ld	r31, X
     380:	00 84       	ldd	r0, Z+8	; 0x08
     382:	f1 85       	ldd	r31, Z+9	; 0x09
     384:	e0 2d       	mov	r30, r0
     386:	20 e0       	ldi	r18, 0x00	; 0
     388:	40 e8       	ldi	r20, 0x80	; 128
     38a:	62 e5       	ldi	r22, 0x52	; 82
     38c:	09 95       	icall
     38e:	81 e0       	ldi	r24, 0x01	; 1
     390:	df 91       	pop	r29
     392:	cf 91       	pop	r28
     394:	1f 91       	pop	r17
     396:	0f 91       	pop	r16
     398:	ff 90       	pop	r15
     39a:	ef 90       	pop	r14
     39c:	df 90       	pop	r13
     39e:	cf 90       	pop	r12
     3a0:	bf 90       	pop	r11
     3a2:	af 90       	pop	r10
     3a4:	08 95       	ret

000003a6 <_ZN8CVL53L0X4initEP14CI2C_Interface>:
     3a6:	cf 92       	push	r12
     3a8:	df 92       	push	r13
     3aa:	ef 92       	push	r14
     3ac:	ff 92       	push	r15
     3ae:	0f 93       	push	r16
     3b0:	1f 93       	push	r17
     3b2:	cf 93       	push	r28
     3b4:	df 93       	push	r29
     3b6:	cd b7       	in	r28, 0x3d	; 61
     3b8:	de b7       	in	r29, 0x3e	; 62
     3ba:	28 97       	sbiw	r28, 0x08	; 8
     3bc:	0f b6       	in	r0, 0x3f	; 63
     3be:	f8 94       	cli
     3c0:	de bf       	out	0x3e, r29	; 62
     3c2:	0f be       	out	0x3f, r0	; 63
     3c4:	cd bf       	out	0x3d, r28	; 61
     3c6:	7c 01       	movw	r14, r24
     3c8:	8b 01       	movw	r16, r22
     3ca:	dc 01       	movw	r26, r24
     3cc:	52 96       	adiw	r26, 0x12	; 18
     3ce:	7c 93       	st	X, r23
     3d0:	6e 93       	st	-X, r22
     3d2:	51 97       	sbiw	r26, 0x11	; 17
     3d4:	80 e0       	ldi	r24, 0x00	; 0
     3d6:	90 e2       	ldi	r25, 0x20	; 32
     3d8:	11 96       	adiw	r26, 0x01	; 1
     3da:	9c 93       	st	X, r25
     3dc:	8e 93       	st	-X, r24
     3de:	12 96       	adiw	r26, 0x02	; 2
     3e0:	1c 92       	st	X, r1
     3e2:	db 01       	movw	r26, r22
     3e4:	ed 91       	ld	r30, X+
     3e6:	fc 91       	ld	r31, X
     3e8:	c0 84       	ldd	r12, Z+8	; 0x08
     3ea:	d1 84       	ldd	r13, Z+9	; 0x09
     3ec:	06 84       	ldd	r0, Z+14	; 0x0e
     3ee:	f7 85       	ldd	r31, Z+15	; 0x0f
     3f0:	e0 2d       	mov	r30, r0
     3f2:	49 e8       	ldi	r20, 0x89	; 137
     3f4:	62 e5       	ldi	r22, 0x52	; 82
     3f6:	c8 01       	movw	r24, r16
     3f8:	09 95       	icall
     3fa:	28 2f       	mov	r18, r24
     3fc:	21 60       	ori	r18, 0x01	; 1
     3fe:	49 e8       	ldi	r20, 0x89	; 137
     400:	62 e5       	ldi	r22, 0x52	; 82
     402:	c8 01       	movw	r24, r16
     404:	f6 01       	movw	r30, r12
     406:	09 95       	icall
     408:	d7 01       	movw	r26, r14
     40a:	51 96       	adiw	r26, 0x11	; 17
     40c:	8d 91       	ld	r24, X+
     40e:	9c 91       	ld	r25, X
     410:	dc 01       	movw	r26, r24
     412:	ed 91       	ld	r30, X+
     414:	fc 91       	ld	r31, X
     416:	06 84       	ldd	r0, Z+14	; 0x0e
     418:	f7 85       	ldd	r31, Z+15	; 0x0f
     41a:	e0 2d       	mov	r30, r0
     41c:	40 ec       	ldi	r20, 0xC0	; 192
     41e:	62 e5       	ldi	r22, 0x52	; 82
     420:	09 95       	icall
     422:	8e 3e       	cpi	r24, 0xEE	; 238
     424:	09 f0       	breq	.+2      	; 0x428 <__FUSE_REGION_LENGTH__+0x28>
     426:	7a c1       	rjmp	.+756    	; 0x71c <__FUSE_REGION_LENGTH__+0x31c>
     428:	f7 01       	movw	r30, r14
     42a:	81 89       	ldd	r24, Z+17	; 0x11
     42c:	92 89       	ldd	r25, Z+18	; 0x12
     42e:	dc 01       	movw	r26, r24
     430:	ed 91       	ld	r30, X+
     432:	fc 91       	ld	r31, X
     434:	00 84       	ldd	r0, Z+8	; 0x08
     436:	f1 85       	ldd	r31, Z+9	; 0x09
     438:	e0 2d       	mov	r30, r0
     43a:	21 e0       	ldi	r18, 0x01	; 1
     43c:	4f eb       	ldi	r20, 0xBF	; 191
     43e:	62 e5       	ldi	r22, 0x52	; 82
     440:	09 95       	icall
     442:	81 ea       	ldi	r24, 0xA1	; 161
     444:	96 e8       	ldi	r25, 0x86	; 134
     446:	a1 e0       	ldi	r26, 0x01	; 1
     448:	b0 e0       	ldi	r27, 0x00	; 0
     44a:	01 97       	sbiw	r24, 0x01	; 1
     44c:	a1 09       	sbc	r26, r1
     44e:	b1 09       	sbc	r27, r1
     450:	11 f0       	breq	.+4      	; 0x456 <__FUSE_REGION_LENGTH__+0x56>
     452:	00 00       	nop
     454:	fa cf       	rjmp	.-12     	; 0x44a <__FUSE_REGION_LENGTH__+0x4a>
     456:	f7 01       	movw	r30, r14
     458:	81 89       	ldd	r24, Z+17	; 0x11
     45a:	92 89       	ldd	r25, Z+18	; 0x12
     45c:	dc 01       	movw	r26, r24
     45e:	ed 91       	ld	r30, X+
     460:	fc 91       	ld	r31, X
     462:	00 84       	ldd	r0, Z+8	; 0x08
     464:	f1 85       	ldd	r31, Z+9	; 0x09
     466:	e0 2d       	mov	r30, r0
     468:	20 e0       	ldi	r18, 0x00	; 0
     46a:	48 e8       	ldi	r20, 0x88	; 136
     46c:	62 e5       	ldi	r22, 0x52	; 82
     46e:	09 95       	icall
     470:	f7 01       	movw	r30, r14
     472:	81 89       	ldd	r24, Z+17	; 0x11
     474:	92 89       	ldd	r25, Z+18	; 0x12
     476:	dc 01       	movw	r26, r24
     478:	ed 91       	ld	r30, X+
     47a:	fc 91       	ld	r31, X
     47c:	00 84       	ldd	r0, Z+8	; 0x08
     47e:	f1 85       	ldd	r31, Z+9	; 0x09
     480:	e0 2d       	mov	r30, r0
     482:	21 e0       	ldi	r18, 0x01	; 1
     484:	40 e8       	ldi	r20, 0x80	; 128
     486:	62 e5       	ldi	r22, 0x52	; 82
     488:	09 95       	icall
     48a:	f7 01       	movw	r30, r14
     48c:	81 89       	ldd	r24, Z+17	; 0x11
     48e:	92 89       	ldd	r25, Z+18	; 0x12
     490:	dc 01       	movw	r26, r24
     492:	ed 91       	ld	r30, X+
     494:	fc 91       	ld	r31, X
     496:	00 84       	ldd	r0, Z+8	; 0x08
     498:	f1 85       	ldd	r31, Z+9	; 0x09
     49a:	e0 2d       	mov	r30, r0
     49c:	21 e0       	ldi	r18, 0x01	; 1
     49e:	4f ef       	ldi	r20, 0xFF	; 255
     4a0:	62 e5       	ldi	r22, 0x52	; 82
     4a2:	09 95       	icall
     4a4:	f7 01       	movw	r30, r14
     4a6:	81 89       	ldd	r24, Z+17	; 0x11
     4a8:	92 89       	ldd	r25, Z+18	; 0x12
     4aa:	dc 01       	movw	r26, r24
     4ac:	ed 91       	ld	r30, X+
     4ae:	fc 91       	ld	r31, X
     4b0:	00 84       	ldd	r0, Z+8	; 0x08
     4b2:	f1 85       	ldd	r31, Z+9	; 0x09
     4b4:	e0 2d       	mov	r30, r0
     4b6:	20 e0       	ldi	r18, 0x00	; 0
     4b8:	40 e0       	ldi	r20, 0x00	; 0
     4ba:	62 e5       	ldi	r22, 0x52	; 82
     4bc:	09 95       	icall
     4be:	f7 01       	movw	r30, r14
     4c0:	81 89       	ldd	r24, Z+17	; 0x11
     4c2:	92 89       	ldd	r25, Z+18	; 0x12
     4c4:	dc 01       	movw	r26, r24
     4c6:	ed 91       	ld	r30, X+
     4c8:	fc 91       	ld	r31, X
     4ca:	06 84       	ldd	r0, Z+14	; 0x0e
     4cc:	f7 85       	ldd	r31, Z+15	; 0x0f
     4ce:	e0 2d       	mov	r30, r0
     4d0:	41 e9       	ldi	r20, 0x91	; 145
     4d2:	62 e5       	ldi	r22, 0x52	; 82
     4d4:	09 95       	icall
     4d6:	f7 01       	movw	r30, r14
     4d8:	81 89       	ldd	r24, Z+17	; 0x11
     4da:	92 89       	ldd	r25, Z+18	; 0x12
     4dc:	dc 01       	movw	r26, r24
     4de:	ed 91       	ld	r30, X+
     4e0:	fc 91       	ld	r31, X
     4e2:	00 84       	ldd	r0, Z+8	; 0x08
     4e4:	f1 85       	ldd	r31, Z+9	; 0x09
     4e6:	e0 2d       	mov	r30, r0
     4e8:	21 e0       	ldi	r18, 0x01	; 1
     4ea:	40 e0       	ldi	r20, 0x00	; 0
     4ec:	62 e5       	ldi	r22, 0x52	; 82
     4ee:	09 95       	icall
     4f0:	f7 01       	movw	r30, r14
     4f2:	81 89       	ldd	r24, Z+17	; 0x11
     4f4:	92 89       	ldd	r25, Z+18	; 0x12
     4f6:	dc 01       	movw	r26, r24
     4f8:	ed 91       	ld	r30, X+
     4fa:	fc 91       	ld	r31, X
     4fc:	00 84       	ldd	r0, Z+8	; 0x08
     4fe:	f1 85       	ldd	r31, Z+9	; 0x09
     500:	e0 2d       	mov	r30, r0
     502:	20 e0       	ldi	r18, 0x00	; 0
     504:	4f ef       	ldi	r20, 0xFF	; 255
     506:	62 e5       	ldi	r22, 0x52	; 82
     508:	09 95       	icall
     50a:	f7 01       	movw	r30, r14
     50c:	81 89       	ldd	r24, Z+17	; 0x11
     50e:	92 89       	ldd	r25, Z+18	; 0x12
     510:	dc 01       	movw	r26, r24
     512:	ed 91       	ld	r30, X+
     514:	fc 91       	ld	r31, X
     516:	00 84       	ldd	r0, Z+8	; 0x08
     518:	f1 85       	ldd	r31, Z+9	; 0x09
     51a:	e0 2d       	mov	r30, r0
     51c:	20 e0       	ldi	r18, 0x00	; 0
     51e:	40 e8       	ldi	r20, 0x80	; 128
     520:	62 e5       	ldi	r22, 0x52	; 82
     522:	09 95       	icall
     524:	18 86       	std	Y+8, r1	; 0x08
     526:	ae 01       	movw	r20, r28
     528:	49 5f       	subi	r20, 0xF9	; 249
     52a:	5f 4f       	sbci	r21, 0xFF	; 255
     52c:	be 01       	movw	r22, r28
     52e:	68 5f       	subi	r22, 0xF8	; 248
     530:	7f 4f       	sbci	r23, 0xFF	; 255
     532:	c7 01       	movw	r24, r14
     534:	0e 94 9f 00 	call	0x13e	; 0x13e <_ZN8CVL53L0X11getSPADinfoEPhPb>
     538:	f7 01       	movw	r30, r14
     53a:	81 89       	ldd	r24, Z+17	; 0x11
     53c:	92 89       	ldd	r25, Z+18	; 0x12
     53e:	dc 01       	movw	r26, r24
     540:	ed 91       	ld	r30, X+
     542:	fc 91       	ld	r31, X
     544:	02 88       	ldd	r0, Z+18	; 0x12
     546:	f3 89       	ldd	r31, Z+19	; 0x13
     548:	e0 2d       	mov	r30, r0
     54a:	06 e0       	ldi	r16, 0x06	; 6
     54c:	10 e0       	ldi	r17, 0x00	; 0
     54e:	9e 01       	movw	r18, r28
     550:	2f 5f       	subi	r18, 0xFF	; 255
     552:	3f 4f       	sbci	r19, 0xFF	; 255
     554:	40 eb       	ldi	r20, 0xB0	; 176
     556:	62 e5       	ldi	r22, 0x52	; 82
     558:	09 95       	icall
     55a:	f7 01       	movw	r30, r14
     55c:	81 89       	ldd	r24, Z+17	; 0x11
     55e:	92 89       	ldd	r25, Z+18	; 0x12
     560:	dc 01       	movw	r26, r24
     562:	ed 91       	ld	r30, X+
     564:	fc 91       	ld	r31, X
     566:	00 84       	ldd	r0, Z+8	; 0x08
     568:	f1 85       	ldd	r31, Z+9	; 0x09
     56a:	e0 2d       	mov	r30, r0
     56c:	21 e0       	ldi	r18, 0x01	; 1
     56e:	4f ef       	ldi	r20, 0xFF	; 255
     570:	62 e5       	ldi	r22, 0x52	; 82
     572:	09 95       	icall
     574:	f7 01       	movw	r30, r14
     576:	81 89       	ldd	r24, Z+17	; 0x11
     578:	92 89       	ldd	r25, Z+18	; 0x12
     57a:	dc 01       	movw	r26, r24
     57c:	ed 91       	ld	r30, X+
     57e:	fc 91       	ld	r31, X
     580:	00 84       	ldd	r0, Z+8	; 0x08
     582:	f1 85       	ldd	r31, Z+9	; 0x09
     584:	e0 2d       	mov	r30, r0
     586:	20 e0       	ldi	r18, 0x00	; 0
     588:	4f e4       	ldi	r20, 0x4F	; 79
     58a:	62 e5       	ldi	r22, 0x52	; 82
     58c:	09 95       	icall
     58e:	f7 01       	movw	r30, r14
     590:	81 89       	ldd	r24, Z+17	; 0x11
     592:	92 89       	ldd	r25, Z+18	; 0x12
     594:	dc 01       	movw	r26, r24
     596:	ed 91       	ld	r30, X+
     598:	fc 91       	ld	r31, X
     59a:	00 84       	ldd	r0, Z+8	; 0x08
     59c:	f1 85       	ldd	r31, Z+9	; 0x09
     59e:	e0 2d       	mov	r30, r0
     5a0:	2c e2       	ldi	r18, 0x2C	; 44
     5a2:	4e e4       	ldi	r20, 0x4E	; 78
     5a4:	62 e5       	ldi	r22, 0x52	; 82
     5a6:	09 95       	icall
     5a8:	f7 01       	movw	r30, r14
     5aa:	81 89       	ldd	r24, Z+17	; 0x11
     5ac:	92 89       	ldd	r25, Z+18	; 0x12
     5ae:	dc 01       	movw	r26, r24
     5b0:	ed 91       	ld	r30, X+
     5b2:	fc 91       	ld	r31, X
     5b4:	00 84       	ldd	r0, Z+8	; 0x08
     5b6:	f1 85       	ldd	r31, Z+9	; 0x09
     5b8:	e0 2d       	mov	r30, r0
     5ba:	20 e0       	ldi	r18, 0x00	; 0
     5bc:	4f ef       	ldi	r20, 0xFF	; 255
     5be:	62 e5       	ldi	r22, 0x52	; 82
     5c0:	09 95       	icall
     5c2:	f7 01       	movw	r30, r14
     5c4:	81 89       	ldd	r24, Z+17	; 0x11
     5c6:	92 89       	ldd	r25, Z+18	; 0x12
     5c8:	dc 01       	movw	r26, r24
     5ca:	ed 91       	ld	r30, X+
     5cc:	fc 91       	ld	r31, X
     5ce:	00 84       	ldd	r0, Z+8	; 0x08
     5d0:	f1 85       	ldd	r31, Z+9	; 0x09
     5d2:	e0 2d       	mov	r30, r0
     5d4:	24 eb       	ldi	r18, 0xB4	; 180
     5d6:	46 eb       	ldi	r20, 0xB6	; 182
     5d8:	62 e5       	ldi	r22, 0x52	; 82
     5da:	09 95       	icall
     5dc:	8f 81       	ldd	r24, Y+7	; 0x07
     5de:	ac e0       	ldi	r26, 0x0C	; 12
     5e0:	81 11       	cpse	r24, r1
     5e2:	01 c0       	rjmp	.+2      	; 0x5e6 <__FUSE_REGION_LENGTH__+0x1e6>
     5e4:	a0 e0       	ldi	r26, 0x00	; 0
     5e6:	b8 85       	ldd	r27, Y+8	; 0x08
     5e8:	80 e0       	ldi	r24, 0x00	; 0
     5ea:	90 e0       	ldi	r25, 0x00	; 0
     5ec:	01 e0       	ldi	r16, 0x01	; 1
     5ee:	10 e0       	ldi	r17, 0x00	; 0
     5f0:	48 2f       	mov	r20, r24
     5f2:	46 95       	lsr	r20
     5f4:	46 95       	lsr	r20
     5f6:	46 95       	lsr	r20
     5f8:	50 e0       	ldi	r21, 0x00	; 0
     5fa:	21 e0       	ldi	r18, 0x01	; 1
     5fc:	30 e0       	ldi	r19, 0x00	; 0
     5fe:	2c 0f       	add	r18, r28
     600:	3d 1f       	adc	r19, r29
     602:	24 0f       	add	r18, r20
     604:	35 1f       	adc	r19, r21
     606:	f9 01       	movw	r30, r18
     608:	20 81       	ld	r18, Z
     60a:	68 2f       	mov	r22, r24
     60c:	67 70       	andi	r22, 0x07	; 7
     60e:	8a 17       	cp	r24, r26
     610:	10 f0       	brcs	.+4      	; 0x616 <__FUSE_REGION_LENGTH__+0x216>
     612:	b9 13       	cpse	r27, r25
     614:	79 c0       	rjmp	.+242    	; 0x708 <__FUSE_REGION_LENGTH__+0x308>
     616:	e1 e0       	ldi	r30, 0x01	; 1
     618:	f0 e0       	ldi	r31, 0x00	; 0
     61a:	ec 0f       	add	r30, r28
     61c:	fd 1f       	adc	r31, r29
     61e:	4e 0f       	add	r20, r30
     620:	5f 1f       	adc	r21, r31
     622:	f8 01       	movw	r30, r16
     624:	02 c0       	rjmp	.+4      	; 0x62a <__FUSE_REGION_LENGTH__+0x22a>
     626:	ee 0f       	add	r30, r30
     628:	ff 1f       	adc	r31, r31
     62a:	6a 95       	dec	r22
     62c:	e2 f7       	brpl	.-8      	; 0x626 <__FUSE_REGION_LENGTH__+0x226>
     62e:	bf 01       	movw	r22, r30
     630:	60 95       	com	r22
     632:	26 23       	and	r18, r22
     634:	fa 01       	movw	r30, r20
     636:	20 83       	st	Z, r18
     638:	8f 5f       	subi	r24, 0xFF	; 255
     63a:	80 33       	cpi	r24, 0x30	; 48
     63c:	c9 f6       	brne	.-78     	; 0x5f0 <__FUSE_REGION_LENGTH__+0x1f0>
     63e:	d7 01       	movw	r26, r14
     640:	51 96       	adiw	r26, 0x11	; 17
     642:	8d 91       	ld	r24, X+
     644:	9c 91       	ld	r25, X
     646:	dc 01       	movw	r26, r24
     648:	ed 91       	ld	r30, X+
     64a:	fc 91       	ld	r31, X
     64c:	04 84       	ldd	r0, Z+12	; 0x0c
     64e:	f5 85       	ldd	r31, Z+13	; 0x0d
     650:	e0 2d       	mov	r30, r0
     652:	06 e0       	ldi	r16, 0x06	; 6
     654:	10 e0       	ldi	r17, 0x00	; 0
     656:	9e 01       	movw	r18, r28
     658:	2f 5f       	subi	r18, 0xFF	; 255
     65a:	3f 4f       	sbci	r19, 0xFF	; 255
     65c:	40 eb       	ldi	r20, 0xB0	; 176
     65e:	62 e5       	ldi	r22, 0x52	; 82
     660:	09 95       	icall
     662:	f7 01       	movw	r30, r14
     664:	81 89       	ldd	r24, Z+17	; 0x11
     666:	92 89       	ldd	r25, Z+18	; 0x12
     668:	dc 01       	movw	r26, r24
     66a:	ed 91       	ld	r30, X+
     66c:	fc 91       	ld	r31, X
     66e:	06 84       	ldd	r0, Z+14	; 0x0e
     670:	f7 85       	ldd	r31, Z+15	; 0x0f
     672:	e0 2d       	mov	r30, r0
     674:	44 e8       	ldi	r20, 0x84	; 132
     676:	62 e5       	ldi	r22, 0x52	; 82
     678:	09 95       	icall
     67a:	18 2f       	mov	r17, r24
     67c:	f7 01       	movw	r30, r14
     67e:	81 89       	ldd	r24, Z+17	; 0x11
     680:	92 89       	ldd	r25, Z+18	; 0x12
     682:	dc 01       	movw	r26, r24
     684:	ed 91       	ld	r30, X+
     686:	fc 91       	ld	r31, X
     688:	00 84       	ldd	r0, Z+8	; 0x08
     68a:	f1 85       	ldd	r31, Z+9	; 0x09
     68c:	e0 2d       	mov	r30, r0
     68e:	24 e0       	ldi	r18, 0x04	; 4
     690:	4a e0       	ldi	r20, 0x0A	; 10
     692:	62 e5       	ldi	r22, 0x52	; 82
     694:	09 95       	icall
     696:	f7 01       	movw	r30, r14
     698:	81 89       	ldd	r24, Z+17	; 0x11
     69a:	92 89       	ldd	r25, Z+18	; 0x12
     69c:	21 2f       	mov	r18, r17
     69e:	2f 7e       	andi	r18, 0xEF	; 239
     6a0:	dc 01       	movw	r26, r24
     6a2:	ed 91       	ld	r30, X+
     6a4:	fc 91       	ld	r31, X
     6a6:	00 84       	ldd	r0, Z+8	; 0x08
     6a8:	f1 85       	ldd	r31, Z+9	; 0x09
     6aa:	e0 2d       	mov	r30, r0
     6ac:	44 e8       	ldi	r20, 0x84	; 132
     6ae:	62 e5       	ldi	r22, 0x52	; 82
     6b0:	09 95       	icall
     6b2:	f7 01       	movw	r30, r14
     6b4:	81 89       	ldd	r24, Z+17	; 0x11
     6b6:	92 89       	ldd	r25, Z+18	; 0x12
     6b8:	dc 01       	movw	r26, r24
     6ba:	ed 91       	ld	r30, X+
     6bc:	fc 91       	ld	r31, X
     6be:	00 84       	ldd	r0, Z+8	; 0x08
     6c0:	f1 85       	ldd	r31, Z+9	; 0x09
     6c2:	e0 2d       	mov	r30, r0
     6c4:	21 e0       	ldi	r18, 0x01	; 1
     6c6:	4b e0       	ldi	r20, 0x0B	; 11
     6c8:	62 e5       	ldi	r22, 0x52	; 82
     6ca:	09 95       	icall
     6cc:	f7 01       	movw	r30, r14
     6ce:	81 89       	ldd	r24, Z+17	; 0x11
     6d0:	92 89       	ldd	r25, Z+18	; 0x12
     6d2:	dc 01       	movw	r26, r24
     6d4:	ed 91       	ld	r30, X+
     6d6:	fc 91       	ld	r31, X
     6d8:	00 84       	ldd	r0, Z+8	; 0x08
     6da:	f1 85       	ldd	r31, Z+9	; 0x09
     6dc:	e0 2d       	mov	r30, r0
     6de:	22 e0       	ldi	r18, 0x02	; 2
     6e0:	40 e0       	ldi	r20, 0x00	; 0
     6e2:	62 e5       	ldi	r22, 0x52	; 82
     6e4:	09 95       	icall
     6e6:	90 e0       	ldi	r25, 0x00	; 0
     6e8:	80 e0       	ldi	r24, 0x00	; 0
     6ea:	28 96       	adiw	r28, 0x08	; 8
     6ec:	0f b6       	in	r0, 0x3f	; 63
     6ee:	f8 94       	cli
     6f0:	de bf       	out	0x3e, r29	; 62
     6f2:	0f be       	out	0x3f, r0	; 63
     6f4:	cd bf       	out	0x3d, r28	; 61
     6f6:	df 91       	pop	r29
     6f8:	cf 91       	pop	r28
     6fa:	1f 91       	pop	r17
     6fc:	0f 91       	pop	r16
     6fe:	ff 90       	pop	r15
     700:	ef 90       	pop	r14
     702:	df 90       	pop	r13
     704:	cf 90       	pop	r12
     706:	08 95       	ret
     708:	30 e0       	ldi	r19, 0x00	; 0
     70a:	02 c0       	rjmp	.+4      	; 0x710 <__FUSE_REGION_LENGTH__+0x310>
     70c:	35 95       	asr	r19
     70e:	27 95       	ror	r18
     710:	6a 95       	dec	r22
     712:	e2 f7       	brpl	.-8      	; 0x70c <__FUSE_REGION_LENGTH__+0x30c>
     714:	20 ff       	sbrs	r18, 0
     716:	90 cf       	rjmp	.-224    	; 0x638 <__FUSE_REGION_LENGTH__+0x238>
     718:	9f 5f       	subi	r25, 0xFF	; 255
     71a:	8e cf       	rjmp	.-228    	; 0x638 <__FUSE_REGION_LENGTH__+0x238>
     71c:	8e ef       	ldi	r24, 0xFE	; 254
     71e:	9f ef       	ldi	r25, 0xFF	; 255
     720:	e4 cf       	rjmp	.-56     	; 0x6ea <__FUSE_REGION_LENGTH__+0x2ea>

00000722 <_ZN8CRTTimerC1Ev>:
     722:	e1 e9       	ldi	r30, 0x91	; 145
     724:	f1 e0       	ldi	r31, 0x01	; 1
     726:	11 82       	std	Z+1, r1	; 0x01
     728:	10 82       	st	Z, r1
     72a:	13 82       	std	Z+3, r1	; 0x03
     72c:	12 82       	std	Z+2, r1	; 0x02
     72e:	15 82       	std	Z+5, r1	; 0x05
     730:	14 82       	std	Z+4, r1	; 0x04
     732:	16 82       	std	Z+6, r1	; 0x06
     734:	17 82       	std	Z+7, r1	; 0x07
     736:	38 96       	adiw	r30, 0x08	; 8
     738:	81 e0       	ldi	r24, 0x01	; 1
     73a:	e1 3d       	cpi	r30, 0xD1	; 209
     73c:	f8 07       	cpc	r31, r24
     73e:	99 f7       	brne	.-26     	; 0x726 <_ZN8CRTTimerC1Ev+0x4>
     740:	84 b5       	in	r24, 0x24	; 36
     742:	82 60       	ori	r24, 0x02	; 2
     744:	84 bd       	out	0x24, r24	; 36
     746:	89 ef       	ldi	r24, 0xF9	; 249
     748:	87 bd       	out	0x27, r24	; 39
     74a:	83 e0       	ldi	r24, 0x03	; 3
     74c:	85 bd       	out	0x25, r24	; 37
     74e:	80 91 6e 00 	lds	r24, 0x006E	; 0x80006e <__TEXT_REGION_LENGTH__+0x7e006e>
     752:	82 60       	ori	r24, 0x02	; 2
     754:	80 93 6e 00 	sts	0x006E, r24	; 0x80006e <__TEXT_REGION_LENGTH__+0x7e006e>
     758:	78 94       	sei
     75a:	08 95       	ret

0000075c <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb>:
     75c:	f8 94       	cli
     75e:	e1 e9       	ldi	r30, 0x91	; 145
     760:	f1 e0       	ldi	r31, 0x01	; 1
     762:	90 e0       	ldi	r25, 0x00	; 0
     764:	80 e0       	ldi	r24, 0x00	; 0
     766:	a0 81       	ld	r26, Z
     768:	b1 81       	ldd	r27, Z+1	; 0x01
     76a:	ab 2b       	or	r26, r27
     76c:	91 f4       	brne	.+36     	; 0x792 <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb+0x36>
     76e:	fc 01       	movw	r30, r24
     770:	33 e0       	ldi	r19, 0x03	; 3
     772:	ee 0f       	add	r30, r30
     774:	ff 1f       	adc	r31, r31
     776:	3a 95       	dec	r19
     778:	e1 f7       	brne	.-8      	; 0x772 <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb+0x16>
     77a:	ef 56       	subi	r30, 0x6F	; 111
     77c:	fe 4f       	sbci	r31, 0xFE	; 254
     77e:	71 83       	std	Z+1, r23	; 0x01
     780:	60 83       	st	Z, r22
     782:	53 83       	std	Z+3, r21	; 0x03
     784:	42 83       	std	Z+2, r20	; 0x02
     786:	55 83       	std	Z+5, r21	; 0x05
     788:	44 83       	std	Z+4, r20	; 0x04
     78a:	16 82       	std	Z+6, r1	; 0x06
     78c:	27 83       	std	Z+7, r18	; 0x07
     78e:	78 94       	sei
     790:	08 95       	ret
     792:	01 96       	adiw	r24, 0x01	; 1
     794:	38 96       	adiw	r30, 0x08	; 8
     796:	88 30       	cpi	r24, 0x08	; 8
     798:	91 05       	cpc	r25, r1
     79a:	29 f7       	brne	.-54     	; 0x766 <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb+0xa>
     79c:	8f ef       	ldi	r24, 0xFF	; 255
     79e:	9f ef       	ldi	r25, 0xFF	; 255
     7a0:	f6 cf       	rjmp	.-20     	; 0x78e <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb+0x32>

000007a2 <_ZN8CRTTimer4mainEv>:
     7a2:	cf 93       	push	r28
     7a4:	df 93       	push	r29
     7a6:	c1 e9       	ldi	r28, 0x91	; 145
     7a8:	d1 e0       	ldi	r29, 0x01	; 1
     7aa:	88 81       	ld	r24, Y
     7ac:	99 81       	ldd	r25, Y+1	; 0x01
     7ae:	00 97       	sbiw	r24, 0x00	; 0
     7b0:	71 f0       	breq	.+28     	; 0x7ce <_ZN8CRTTimer4mainEv+0x2c>
     7b2:	2e 81       	ldd	r18, Y+6	; 0x06
     7b4:	22 23       	and	r18, r18
     7b6:	59 f0       	breq	.+22     	; 0x7ce <_ZN8CRTTimer4mainEv+0x2c>
     7b8:	1e 82       	std	Y+6, r1	; 0x06
     7ba:	2f 81       	ldd	r18, Y+7	; 0x07
     7bc:	21 11       	cpse	r18, r1
     7be:	07 c0       	rjmp	.+14     	; 0x7ce <_ZN8CRTTimer4mainEv+0x2c>
     7c0:	dc 01       	movw	r26, r24
     7c2:	ed 91       	ld	r30, X+
     7c4:	fc 91       	ld	r31, X
     7c6:	04 80       	ldd	r0, Z+4	; 0x04
     7c8:	f5 81       	ldd	r31, Z+5	; 0x05
     7ca:	e0 2d       	mov	r30, r0
     7cc:	09 95       	icall
     7ce:	28 96       	adiw	r28, 0x08	; 8
     7d0:	b1 e0       	ldi	r27, 0x01	; 1
     7d2:	c1 3d       	cpi	r28, 0xD1	; 209
     7d4:	db 07       	cpc	r29, r27
     7d6:	49 f7       	brne	.-46     	; 0x7aa <_ZN8CRTTimer4mainEv+0x8>
     7d8:	df 91       	pop	r29
     7da:	cf 91       	pop	r28
     7dc:	08 95       	ret

000007de <_ZN8CRTTimer8get_timeEv>:
     7de:	cf 93       	push	r28
     7e0:	df 93       	push	r29
     7e2:	00 d0       	rcall	.+0      	; 0x7e4 <_ZN8CRTTimer8get_timeEv+0x6>
     7e4:	00 d0       	rcall	.+0      	; 0x7e6 <_ZN8CRTTimer8get_timeEv+0x8>
     7e6:	cd b7       	in	r28, 0x3d	; 61
     7e8:	de b7       	in	r29, 0x3e	; 62
     7ea:	f8 94       	cli
     7ec:	80 91 d1 01 	lds	r24, 0x01D1	; 0x8001d1 <g_rt_time>
     7f0:	90 91 d2 01 	lds	r25, 0x01D2	; 0x8001d2 <g_rt_time+0x1>
     7f4:	a0 91 d3 01 	lds	r26, 0x01D3	; 0x8001d3 <g_rt_time+0x2>
     7f8:	b0 91 d4 01 	lds	r27, 0x01D4	; 0x8001d4 <g_rt_time+0x3>
     7fc:	89 83       	std	Y+1, r24	; 0x01
     7fe:	9a 83       	std	Y+2, r25	; 0x02
     800:	ab 83       	std	Y+3, r26	; 0x03
     802:	bc 83       	std	Y+4, r27	; 0x04
     804:	78 94       	sei
     806:	69 81       	ldd	r22, Y+1	; 0x01
     808:	7a 81       	ldd	r23, Y+2	; 0x02
     80a:	8b 81       	ldd	r24, Y+3	; 0x03
     80c:	9c 81       	ldd	r25, Y+4	; 0x04
     80e:	0f 90       	pop	r0
     810:	0f 90       	pop	r0
     812:	0f 90       	pop	r0
     814:	0f 90       	pop	r0
     816:	df 91       	pop	r29
     818:	cf 91       	pop	r28
     81a:	08 95       	ret

0000081c <__vector_14>:
     81c:	1f 92       	push	r1
     81e:	0f 92       	push	r0
     820:	0f b6       	in	r0, 0x3f	; 63
     822:	0f 92       	push	r0
     824:	11 24       	eor	r1, r1
     826:	2f 93       	push	r18
     828:	3f 93       	push	r19
     82a:	4f 93       	push	r20
     82c:	5f 93       	push	r21
     82e:	6f 93       	push	r22
     830:	7f 93       	push	r23
     832:	8f 93       	push	r24
     834:	9f 93       	push	r25
     836:	af 93       	push	r26
     838:	bf 93       	push	r27
     83a:	cf 93       	push	r28
     83c:	df 93       	push	r29
     83e:	ef 93       	push	r30
     840:	ff 93       	push	r31
     842:	c1 e9       	ldi	r28, 0x91	; 145
     844:	d1 e0       	ldi	r29, 0x01	; 1
     846:	8c 81       	ldd	r24, Y+4	; 0x04
     848:	9d 81       	ldd	r25, Y+5	; 0x05
     84a:	00 97       	sbiw	r24, 0x00	; 0
     84c:	71 f1       	breq	.+92     	; 0x8aa <__vector_14+0x8e>
     84e:	01 97       	sbiw	r24, 0x01	; 1
     850:	9d 83       	std	Y+5, r25	; 0x05
     852:	8c 83       	std	Y+4, r24	; 0x04
     854:	28 96       	adiw	r28, 0x08	; 8
     856:	b1 e0       	ldi	r27, 0x01	; 1
     858:	c1 3d       	cpi	r28, 0xD1	; 209
     85a:	db 07       	cpc	r29, r27
     85c:	a1 f7       	brne	.-24     	; 0x846 <__vector_14+0x2a>
     85e:	80 91 d1 01 	lds	r24, 0x01D1	; 0x8001d1 <g_rt_time>
     862:	90 91 d2 01 	lds	r25, 0x01D2	; 0x8001d2 <g_rt_time+0x1>
     866:	a0 91 d3 01 	lds	r26, 0x01D3	; 0x8001d3 <g_rt_time+0x2>
     86a:	b0 91 d4 01 	lds	r27, 0x01D4	; 0x8001d4 <g_rt_time+0x3>
     86e:	01 96       	adiw	r24, 0x01	; 1
     870:	a1 1d       	adc	r26, r1
     872:	b1 1d       	adc	r27, r1
     874:	80 93 d1 01 	sts	0x01D1, r24	; 0x8001d1 <g_rt_time>
     878:	90 93 d2 01 	sts	0x01D2, r25	; 0x8001d2 <g_rt_time+0x1>
     87c:	a0 93 d3 01 	sts	0x01D3, r26	; 0x8001d3 <g_rt_time+0x2>
     880:	b0 93 d4 01 	sts	0x01D4, r27	; 0x8001d4 <g_rt_time+0x3>
     884:	ff 91       	pop	r31
     886:	ef 91       	pop	r30
     888:	df 91       	pop	r29
     88a:	cf 91       	pop	r28
     88c:	bf 91       	pop	r27
     88e:	af 91       	pop	r26
     890:	9f 91       	pop	r25
     892:	8f 91       	pop	r24
     894:	7f 91       	pop	r23
     896:	6f 91       	pop	r22
     898:	5f 91       	pop	r21
     89a:	4f 91       	pop	r20
     89c:	3f 91       	pop	r19
     89e:	2f 91       	pop	r18
     8a0:	0f 90       	pop	r0
     8a2:	0f be       	out	0x3f, r0	; 63
     8a4:	0f 90       	pop	r0
     8a6:	1f 90       	pop	r1
     8a8:	18 95       	reti
     8aa:	8a 81       	ldd	r24, Y+2	; 0x02
     8ac:	9b 81       	ldd	r25, Y+3	; 0x03
     8ae:	9d 83       	std	Y+5, r25	; 0x05
     8b0:	8c 83       	std	Y+4, r24	; 0x04
     8b2:	8e 81       	ldd	r24, Y+6	; 0x06
     8b4:	8f 3f       	cpi	r24, 0xFF	; 255
     8b6:	11 f0       	breq	.+4      	; 0x8bc <__vector_14+0xa0>
     8b8:	8f 5f       	subi	r24, 0xFF	; 255
     8ba:	8e 83       	std	Y+6, r24	; 0x06
     8bc:	8f 81       	ldd	r24, Y+7	; 0x07
     8be:	88 23       	and	r24, r24
     8c0:	49 f2       	breq	.-110    	; 0x854 <__vector_14+0x38>
     8c2:	88 81       	ld	r24, Y
     8c4:	99 81       	ldd	r25, Y+1	; 0x01
     8c6:	dc 01       	movw	r26, r24
     8c8:	ed 91       	ld	r30, X+
     8ca:	fc 91       	ld	r31, X
     8cc:	04 80       	ldd	r0, Z+4	; 0x04
     8ce:	f5 81       	ldd	r31, Z+5	; 0x05
     8d0:	e0 2d       	mov	r30, r0
     8d2:	09 95       	icall
     8d4:	bf cf       	rjmp	.-130    	; 0x854 <__vector_14+0x38>

000008d6 <_GLOBAL__sub_I_g_rt_time>:
     8d6:	80 e9       	ldi	r24, 0x90	; 144
     8d8:	91 e0       	ldi	r25, 0x01	; 1
     8da:	0c 94 91 03 	jmp	0x722	; 0x722 <_ZN8CRTTimerC1Ev>

000008de <_ZN6CUSARTC1Ev>:
     8de:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
     8e2:	87 e6       	ldi	r24, 0x67	; 103
     8e4:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
     8e8:	e2 ec       	ldi	r30, 0xC2	; 194
     8ea:	f0 e0       	ldi	r31, 0x00	; 0
     8ec:	80 81       	ld	r24, Z
     8ee:	86 60       	ori	r24, 0x06	; 6
     8f0:	80 83       	st	Z, r24
     8f2:	e1 ec       	ldi	r30, 0xC1	; 193
     8f4:	f0 e0       	ldi	r31, 0x00	; 0
     8f6:	80 81       	ld	r24, Z
     8f8:	88 61       	ori	r24, 0x18	; 24
     8fa:	80 83       	st	Z, r24
     8fc:	08 95       	ret

000008fe <_ZN6CUSARTD1Ev>:
     8fe:	08 95       	ret

00000900 <_ZN6CUSART8put_charEc>:
     900:	6a 30       	cpi	r22, 0x0A	; 10
     902:	49 f4       	brne	.+18     	; 0x916 <_ZN6CUSART8put_charEc+0x16>
     904:	8d e0       	ldi	r24, 0x0D	; 13
     906:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     90a:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     90e:	85 fd       	sbrc	r24, 5
     910:	02 c0       	rjmp	.+4      	; 0x916 <_ZN6CUSART8put_charEc+0x16>
     912:	00 00       	nop
     914:	fa cf       	rjmp	.-12     	; 0x90a <_ZN6CUSART8put_charEc+0xa>
     916:	60 93 c6 00 	sts	0x00C6, r22	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     91a:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     91e:	85 fd       	sbrc	r24, 5
     920:	02 c0       	rjmp	.+4      	; 0x926 <_ZN6CUSART8put_charEc+0x26>
     922:	00 00       	nop
     924:	fa cf       	rjmp	.-12     	; 0x91a <_ZN6CUSART8put_charEc+0x1a>
     926:	08 95       	ret

00000928 <_ZN9CTerminal4putsEPKc>:
     928:	0f 93       	push	r16
     92a:	1f 93       	push	r17
     92c:	cf 93       	push	r28
     92e:	df 93       	push	r29
     930:	8c 01       	movw	r16, r24
     932:	eb 01       	movw	r28, r22
     934:	69 91       	ld	r22, Y+
     936:	66 23       	and	r22, r22
     938:	21 f0       	breq	.+8      	; 0x942 <_ZN9CTerminal4putsEPKc+0x1a>
     93a:	c8 01       	movw	r24, r16
     93c:	0e 94 80 04 	call	0x900	; 0x900 <_ZN6CUSART8put_charEc>
     940:	f9 cf       	rjmp	.-14     	; 0x934 <_ZN9CTerminal4putsEPKc+0xc>
     942:	df 91       	pop	r29
     944:	cf 91       	pop	r28
     946:	1f 91       	pop	r17
     948:	0f 91       	pop	r16
     94a:	08 95       	ret

0000094c <_ZN9CTerminal4putiEl>:
     94c:	8f 92       	push	r8
     94e:	9f 92       	push	r9
     950:	af 92       	push	r10
     952:	bf 92       	push	r11
     954:	cf 92       	push	r12
     956:	df 92       	push	r13
     958:	ef 92       	push	r14
     95a:	ff 92       	push	r15
     95c:	0f 93       	push	r16
     95e:	1f 93       	push	r17
     960:	cf 93       	push	r28
     962:	df 93       	push	r29
     964:	cd b7       	in	r28, 0x3d	; 61
     966:	de b7       	in	r29, 0x3e	; 62
     968:	2c 97       	sbiw	r28, 0x0c	; 12
     96a:	0f b6       	in	r0, 0x3f	; 63
     96c:	f8 94       	cli
     96e:	de bf       	out	0x3e, r29	; 62
     970:	0f be       	out	0x3f, r0	; 63
     972:	cd bf       	out	0x3d, r28	; 61
     974:	7c 01       	movw	r14, r24
     976:	00 e0       	ldi	r16, 0x00	; 0
     978:	77 ff       	sbrs	r23, 7
     97a:	08 c0       	rjmp	.+16     	; 0x98c <_ZN9CTerminal4putiEl+0x40>
     97c:	70 95       	com	r23
     97e:	60 95       	com	r22
     980:	50 95       	com	r21
     982:	41 95       	neg	r20
     984:	5f 4f       	sbci	r21, 0xFF	; 255
     986:	6f 4f       	sbci	r22, 0xFF	; 255
     988:	7f 4f       	sbci	r23, 0xFF	; 255
     98a:	01 e0       	ldi	r16, 0x01	; 1
     98c:	1c 86       	std	Y+12, r1	; 0x0c
     98e:	1a e0       	ldi	r17, 0x0A	; 10
     990:	9a e0       	ldi	r25, 0x0A	; 10
     992:	89 2e       	mov	r8, r25
     994:	91 2c       	mov	r9, r1
     996:	a1 2c       	mov	r10, r1
     998:	b1 2c       	mov	r11, r1
     99a:	cc 24       	eor	r12, r12
     99c:	c3 94       	inc	r12
     99e:	d1 2c       	mov	r13, r1
     9a0:	cc 0e       	add	r12, r28
     9a2:	dd 1e       	adc	r13, r29
     9a4:	c1 0e       	add	r12, r17
     9a6:	d1 1c       	adc	r13, r1
     9a8:	cb 01       	movw	r24, r22
     9aa:	ba 01       	movw	r22, r20
     9ac:	a5 01       	movw	r20, r10
     9ae:	94 01       	movw	r18, r8
     9b0:	0e 94 b3 0f 	call	0x1f66	; 0x1f66 <__divmodsi4>
     9b4:	94 2f       	mov	r25, r20
     9b6:	85 2f       	mov	r24, r21
     9b8:	60 5d       	subi	r22, 0xD0	; 208
     9ba:	f6 01       	movw	r30, r12
     9bc:	60 83       	st	Z, r22
     9be:	a9 01       	movw	r20, r18
     9c0:	69 2f       	mov	r22, r25
     9c2:	78 2f       	mov	r23, r24
     9c4:	8f ef       	ldi	r24, 0xFF	; 255
     9c6:	81 0f       	add	r24, r17
     9c8:	41 15       	cp	r20, r1
     9ca:	51 05       	cpc	r21, r1
     9cc:	61 05       	cpc	r22, r1
     9ce:	71 05       	cpc	r23, r1
     9d0:	39 f5       	brne	.+78     	; 0xa20 <_ZN9CTerminal4putiEl+0xd4>
     9d2:	00 23       	and	r16, r16
     9d4:	49 f0       	breq	.+18     	; 0x9e8 <_ZN9CTerminal4putiEl+0x9c>
     9d6:	e1 e0       	ldi	r30, 0x01	; 1
     9d8:	f0 e0       	ldi	r31, 0x00	; 0
     9da:	ec 0f       	add	r30, r28
     9dc:	fd 1f       	adc	r31, r29
     9de:	e8 0f       	add	r30, r24
     9e0:	f1 1d       	adc	r31, r1
     9e2:	9d e2       	ldi	r25, 0x2D	; 45
     9e4:	90 83       	st	Z, r25
     9e6:	18 2f       	mov	r17, r24
     9e8:	61 e0       	ldi	r22, 0x01	; 1
     9ea:	70 e0       	ldi	r23, 0x00	; 0
     9ec:	6c 0f       	add	r22, r28
     9ee:	7d 1f       	adc	r23, r29
     9f0:	61 0f       	add	r22, r17
     9f2:	71 1d       	adc	r23, r1
     9f4:	c7 01       	movw	r24, r14
     9f6:	0e 94 94 04 	call	0x928	; 0x928 <_ZN9CTerminal4putsEPKc>
     9fa:	2c 96       	adiw	r28, 0x0c	; 12
     9fc:	0f b6       	in	r0, 0x3f	; 63
     9fe:	f8 94       	cli
     a00:	de bf       	out	0x3e, r29	; 62
     a02:	0f be       	out	0x3f, r0	; 63
     a04:	cd bf       	out	0x3d, r28	; 61
     a06:	df 91       	pop	r29
     a08:	cf 91       	pop	r28
     a0a:	1f 91       	pop	r17
     a0c:	0f 91       	pop	r16
     a0e:	ff 90       	pop	r15
     a10:	ef 90       	pop	r14
     a12:	df 90       	pop	r13
     a14:	cf 90       	pop	r12
     a16:	bf 90       	pop	r11
     a18:	af 90       	pop	r10
     a1a:	9f 90       	pop	r9
     a1c:	8f 90       	pop	r8
     a1e:	08 95       	ret
     a20:	18 2f       	mov	r17, r24
     a22:	bb cf       	rjmp	.-138    	; 0x99a <_ZN9CTerminal4putiEl+0x4e>

00000a24 <_ZN9CTerminal5putuiEm>:
     a24:	8f 92       	push	r8
     a26:	9f 92       	push	r9
     a28:	af 92       	push	r10
     a2a:	bf 92       	push	r11
     a2c:	cf 92       	push	r12
     a2e:	df 92       	push	r13
     a30:	ef 92       	push	r14
     a32:	ff 92       	push	r15
     a34:	1f 93       	push	r17
     a36:	cf 93       	push	r28
     a38:	df 93       	push	r29
     a3a:	cd b7       	in	r28, 0x3d	; 61
     a3c:	de b7       	in	r29, 0x3e	; 62
     a3e:	2c 97       	sbiw	r28, 0x0c	; 12
     a40:	0f b6       	in	r0, 0x3f	; 63
     a42:	f8 94       	cli
     a44:	de bf       	out	0x3e, r29	; 62
     a46:	0f be       	out	0x3f, r0	; 63
     a48:	cd bf       	out	0x3d, r28	; 61
     a4a:	6c 01       	movw	r12, r24
     a4c:	1c 86       	std	Y+12, r1	; 0x0c
     a4e:	1a e0       	ldi	r17, 0x0A	; 10
     a50:	9a e0       	ldi	r25, 0x0A	; 10
     a52:	89 2e       	mov	r8, r25
     a54:	91 2c       	mov	r9, r1
     a56:	a1 2c       	mov	r10, r1
     a58:	b1 2c       	mov	r11, r1
     a5a:	ee 24       	eor	r14, r14
     a5c:	e3 94       	inc	r14
     a5e:	f1 2c       	mov	r15, r1
     a60:	ec 0e       	add	r14, r28
     a62:	fd 1e       	adc	r15, r29
     a64:	e1 0e       	add	r14, r17
     a66:	f1 1c       	adc	r15, r1
     a68:	cb 01       	movw	r24, r22
     a6a:	ba 01       	movw	r22, r20
     a6c:	a5 01       	movw	r20, r10
     a6e:	94 01       	movw	r18, r8
     a70:	0e 94 91 0f 	call	0x1f22	; 0x1f22 <__udivmodsi4>
     a74:	94 2f       	mov	r25, r20
     a76:	85 2f       	mov	r24, r21
     a78:	60 5d       	subi	r22, 0xD0	; 208
     a7a:	f7 01       	movw	r30, r14
     a7c:	60 83       	st	Z, r22
     a7e:	a9 01       	movw	r20, r18
     a80:	69 2f       	mov	r22, r25
     a82:	78 2f       	mov	r23, r24
     a84:	11 50       	subi	r17, 0x01	; 1
     a86:	41 15       	cp	r20, r1
     a88:	51 05       	cpc	r21, r1
     a8a:	61 05       	cpc	r22, r1
     a8c:	71 05       	cpc	r23, r1
     a8e:	29 f7       	brne	.-54     	; 0xa5a <_ZN9CTerminal5putuiEm+0x36>
     a90:	b7 01       	movw	r22, r14
     a92:	c6 01       	movw	r24, r12
     a94:	0e 94 94 04 	call	0x928	; 0x928 <_ZN9CTerminal4putsEPKc>
     a98:	2c 96       	adiw	r28, 0x0c	; 12
     a9a:	0f b6       	in	r0, 0x3f	; 63
     a9c:	f8 94       	cli
     a9e:	de bf       	out	0x3e, r29	; 62
     aa0:	0f be       	out	0x3f, r0	; 63
     aa2:	cd bf       	out	0x3d, r28	; 61
     aa4:	df 91       	pop	r29
     aa6:	cf 91       	pop	r28
     aa8:	1f 91       	pop	r17
     aaa:	ff 90       	pop	r15
     aac:	ef 90       	pop	r14
     aae:	df 90       	pop	r13
     ab0:	cf 90       	pop	r12
     ab2:	bf 90       	pop	r11
     ab4:	af 90       	pop	r10
     ab6:	9f 90       	pop	r9
     ab8:	8f 90       	pop	r8
     aba:	08 95       	ret

00000abc <_GLOBAL__sub_I_terminal>:
     abc:	85 ed       	ldi	r24, 0xD5	; 213
     abe:	91 e0       	ldi	r25, 0x01	; 1
     ac0:	0c 94 6f 04 	jmp	0x8de	; 0x8de <_ZN6CUSARTC1Ev>

00000ac4 <_GLOBAL__sub_D_terminal>:
     ac4:	85 ed       	ldi	r24, 0xD5	; 213
     ac6:	91 e0       	ldi	r25, 0x01	; 1
     ac8:	0c 94 7f 04 	jmp	0x8fe	; 0x8fe <_ZN6CUSARTD1Ev>

00000acc <_ZdlPv>:
     acc:	0c 94 74 10 	jmp	0x20e8	; 0x20e8 <free>

00000ad0 <_ZN16CObjectDetectionC1Ev>:
     ad0:	0c 94 61 00 	jmp	0xc2	; 0xc2 <_ZN8CVL53L0XC1Ev>

00000ad4 <_ZN16CObjectDetectionD1Ev>:
     ad4:	0c 94 62 00 	jmp	0xc4	; 0xc4 <_ZN8CVL53L0XD1Ev>

00000ad8 <_ZN16CObjectDetection4initEP14CI2C_Interface>:
     ad8:	fc 01       	movw	r30, r24
     ada:	16 8a       	std	Z+22, r1	; 0x16
     adc:	15 8a       	std	Z+21, r1	; 0x15
     ade:	10 8e       	std	Z+24, r1	; 0x18
     ae0:	17 8a       	std	Z+23, r1	; 0x17
     ae2:	12 8e       	std	Z+26, r1	; 0x1a
     ae4:	11 8e       	std	Z+25, r1	; 0x19
     ae6:	13 8e       	std	Z+27, r1	; 0x1b
     ae8:	14 8a       	std	Z+20, r1	; 0x14
     aea:	13 8a       	std	Z+19, r1	; 0x13
     aec:	0c 94 d3 01 	jmp	0x3a6	; 0x3a6 <_ZN8CVL53L0X4initEP14CI2C_Interface>

00000af0 <_ZN16CObjectDetection7processEv>:
     af0:	cf 93       	push	r28
     af2:	df 93       	push	r29
     af4:	ec 01       	movw	r28, r24
     af6:	0e 94 63 00 	call	0xc6	; 0xc6 <_ZN8CVL53L0X4readEv>
     afa:	ce 01       	movw	r24, r28
     afc:	0e 94 9b 00 	call	0x136	; 0x136 <_ZN8CVL53L0X12get_distanceEv>
     b00:	9e 8b       	std	Y+22, r25	; 0x16
     b02:	8d 8b       	std	Y+21, r24	; 0x15
     b04:	4f 89       	ldd	r20, Y+23	; 0x17
     b06:	58 8d       	ldd	r21, Y+24	; 0x18
     b08:	6f e1       	ldi	r22, 0x1F	; 31
     b0a:	64 9f       	mul	r22, r20
     b0c:	90 01       	movw	r18, r0
     b0e:	65 9f       	mul	r22, r21
     b10:	30 0d       	add	r19, r0
     b12:	11 24       	eor	r1, r1
     b14:	28 0f       	add	r18, r24
     b16:	39 1f       	adc	r19, r25
     b18:	37 ff       	sbrs	r19, 7
     b1a:	02 c0       	rjmp	.+4      	; 0xb20 <_ZN16CObjectDetection7processEv+0x30>
     b1c:	21 5e       	subi	r18, 0xE1	; 225
     b1e:	3f 4f       	sbci	r19, 0xFF	; 255
     b20:	45 e0       	ldi	r20, 0x05	; 5
     b22:	35 95       	asr	r19
     b24:	27 95       	ror	r18
     b26:	4a 95       	dec	r20
     b28:	e1 f7       	brne	.-8      	; 0xb22 <_ZN16CObjectDetection7processEv+0x32>
     b2a:	38 8f       	std	Y+24, r19	; 0x18
     b2c:	2f 8b       	std	Y+23, r18	; 0x17
     b2e:	82 1b       	sub	r24, r18
     b30:	93 0b       	sbc	r25, r19
     b32:	9a 8f       	std	Y+26, r25	; 0x1a
     b34:	89 8f       	std	Y+25, r24	; 0x19
     b36:	86 3f       	cpi	r24, 0xF6	; 246
     b38:	9f 4f       	sbci	r25, 0xFF	; 255
     b3a:	a4 f4       	brge	.+40     	; 0xb64 <_ZN16CObjectDetection7processEv+0x74>
     b3c:	8b 89       	ldd	r24, Y+19	; 0x13
     b3e:	9c 89       	ldd	r25, Y+20	; 0x14
     b40:	89 2b       	or	r24, r25
     b42:	81 f4       	brne	.+32     	; 0xb64 <_ZN16CObjectDetection7processEv+0x74>
     b44:	81 e0       	ldi	r24, 0x01	; 1
     b46:	8b 8f       	std	Y+27, r24	; 0x1b
     b48:	84 e1       	ldi	r24, 0x14	; 20
     b4a:	90 e0       	ldi	r25, 0x00	; 0
     b4c:	9c 8b       	std	Y+20, r25	; 0x14
     b4e:	8b 8b       	std	Y+19, r24	; 0x13
     b50:	8b 89       	ldd	r24, Y+19	; 0x13
     b52:	9c 89       	ldd	r25, Y+20	; 0x14
     b54:	00 97       	sbiw	r24, 0x00	; 0
     b56:	19 f0       	breq	.+6      	; 0xb5e <_ZN16CObjectDetection7processEv+0x6e>
     b58:	01 97       	sbiw	r24, 0x01	; 1
     b5a:	9c 8b       	std	Y+20, r25	; 0x14
     b5c:	8b 8b       	std	Y+19, r24	; 0x13
     b5e:	df 91       	pop	r29
     b60:	cf 91       	pop	r28
     b62:	08 95       	ret
     b64:	1b 8e       	std	Y+27, r1	; 0x1b
     b66:	f4 cf       	rjmp	.-24     	; 0xb50 <_ZN16CObjectDetection7processEv+0x60>

00000b68 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE9write_regEhhh>:
     b68:	ff 92       	push	r15
     b6a:	0f 93       	push	r16
     b6c:	1f 93       	push	r17
     b6e:	cf 93       	push	r28
     b70:	df 93       	push	r29
     b72:	ec 01       	movw	r28, r24
     b74:	f6 2e       	mov	r15, r22
     b76:	04 2f       	mov	r16, r20
     b78:	12 2f       	mov	r17, r18
     b7a:	e8 81       	ld	r30, Y
     b7c:	f9 81       	ldd	r31, Y+1	; 0x01
     b7e:	01 90       	ld	r0, Z+
     b80:	f0 81       	ld	r31, Z
     b82:	e0 2d       	mov	r30, r0
     b84:	09 95       	icall
     b86:	e8 81       	ld	r30, Y
     b88:	f9 81       	ldd	r31, Y+1	; 0x01
     b8a:	04 80       	ldd	r0, Z+4	; 0x04
     b8c:	f5 81       	ldd	r31, Z+5	; 0x05
     b8e:	e0 2d       	mov	r30, r0
     b90:	6f 2d       	mov	r22, r15
     b92:	ce 01       	movw	r24, r28
     b94:	09 95       	icall
     b96:	e8 81       	ld	r30, Y
     b98:	f9 81       	ldd	r31, Y+1	; 0x01
     b9a:	04 80       	ldd	r0, Z+4	; 0x04
     b9c:	f5 81       	ldd	r31, Z+5	; 0x05
     b9e:	e0 2d       	mov	r30, r0
     ba0:	60 2f       	mov	r22, r16
     ba2:	ce 01       	movw	r24, r28
     ba4:	09 95       	icall
     ba6:	e8 81       	ld	r30, Y
     ba8:	f9 81       	ldd	r31, Y+1	; 0x01
     baa:	04 80       	ldd	r0, Z+4	; 0x04
     bac:	f5 81       	ldd	r31, Z+5	; 0x05
     bae:	e0 2d       	mov	r30, r0
     bb0:	61 2f       	mov	r22, r17
     bb2:	ce 01       	movw	r24, r28
     bb4:	09 95       	icall
     bb6:	e8 81       	ld	r30, Y
     bb8:	f9 81       	ldd	r31, Y+1	; 0x01
     bba:	02 80       	ldd	r0, Z+2	; 0x02
     bbc:	f3 81       	ldd	r31, Z+3	; 0x03
     bbe:	e0 2d       	mov	r30, r0
     bc0:	ce 01       	movw	r24, r28
     bc2:	df 91       	pop	r29
     bc4:	cf 91       	pop	r28
     bc6:	1f 91       	pop	r17
     bc8:	0f 91       	pop	r16
     bca:	ff 90       	pop	r15
     bcc:	09 94       	ijmp

00000bce <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE15write_reg_16bitEhhj>:
     bce:	ef 92       	push	r14
     bd0:	ff 92       	push	r15
     bd2:	0f 93       	push	r16
     bd4:	1f 93       	push	r17
     bd6:	cf 93       	push	r28
     bd8:	df 93       	push	r29
     bda:	ec 01       	movw	r28, r24
     bdc:	e6 2e       	mov	r14, r22
     bde:	f4 2e       	mov	r15, r20
     be0:	12 2f       	mov	r17, r18
     be2:	03 2f       	mov	r16, r19
     be4:	e8 81       	ld	r30, Y
     be6:	f9 81       	ldd	r31, Y+1	; 0x01
     be8:	01 90       	ld	r0, Z+
     bea:	f0 81       	ld	r31, Z
     bec:	e0 2d       	mov	r30, r0
     bee:	09 95       	icall
     bf0:	e8 81       	ld	r30, Y
     bf2:	f9 81       	ldd	r31, Y+1	; 0x01
     bf4:	04 80       	ldd	r0, Z+4	; 0x04
     bf6:	f5 81       	ldd	r31, Z+5	; 0x05
     bf8:	e0 2d       	mov	r30, r0
     bfa:	6e 2d       	mov	r22, r14
     bfc:	ce 01       	movw	r24, r28
     bfe:	09 95       	icall
     c00:	e8 81       	ld	r30, Y
     c02:	f9 81       	ldd	r31, Y+1	; 0x01
     c04:	04 80       	ldd	r0, Z+4	; 0x04
     c06:	f5 81       	ldd	r31, Z+5	; 0x05
     c08:	e0 2d       	mov	r30, r0
     c0a:	6f 2d       	mov	r22, r15
     c0c:	ce 01       	movw	r24, r28
     c0e:	09 95       	icall
     c10:	e8 81       	ld	r30, Y
     c12:	f9 81       	ldd	r31, Y+1	; 0x01
     c14:	04 80       	ldd	r0, Z+4	; 0x04
     c16:	f5 81       	ldd	r31, Z+5	; 0x05
     c18:	e0 2d       	mov	r30, r0
     c1a:	60 2f       	mov	r22, r16
     c1c:	ce 01       	movw	r24, r28
     c1e:	09 95       	icall
     c20:	e8 81       	ld	r30, Y
     c22:	f9 81       	ldd	r31, Y+1	; 0x01
     c24:	04 80       	ldd	r0, Z+4	; 0x04
     c26:	f5 81       	ldd	r31, Z+5	; 0x05
     c28:	e0 2d       	mov	r30, r0
     c2a:	61 2f       	mov	r22, r17
     c2c:	ce 01       	movw	r24, r28
     c2e:	09 95       	icall
     c30:	e8 81       	ld	r30, Y
     c32:	f9 81       	ldd	r31, Y+1	; 0x01
     c34:	02 80       	ldd	r0, Z+2	; 0x02
     c36:	f3 81       	ldd	r31, Z+3	; 0x03
     c38:	e0 2d       	mov	r30, r0
     c3a:	ce 01       	movw	r24, r28
     c3c:	df 91       	pop	r29
     c3e:	cf 91       	pop	r28
     c40:	1f 91       	pop	r17
     c42:	0f 91       	pop	r16
     c44:	ff 90       	pop	r15
     c46:	ef 90       	pop	r14
     c48:	09 94       	ijmp

00000c4a <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE15write_reg_multiEhhPhj>:
     c4a:	cf 92       	push	r12
     c4c:	df 92       	push	r13
     c4e:	ef 92       	push	r14
     c50:	ff 92       	push	r15
     c52:	0f 93       	push	r16
     c54:	1f 93       	push	r17
     c56:	cf 93       	push	r28
     c58:	df 93       	push	r29
     c5a:	ec 01       	movw	r28, r24
     c5c:	e6 2e       	mov	r14, r22
     c5e:	f4 2e       	mov	r15, r20
     c60:	69 01       	movw	r12, r18
     c62:	e8 81       	ld	r30, Y
     c64:	f9 81       	ldd	r31, Y+1	; 0x01
     c66:	01 90       	ld	r0, Z+
     c68:	f0 81       	ld	r31, Z
     c6a:	e0 2d       	mov	r30, r0
     c6c:	09 95       	icall
     c6e:	e8 81       	ld	r30, Y
     c70:	f9 81       	ldd	r31, Y+1	; 0x01
     c72:	04 80       	ldd	r0, Z+4	; 0x04
     c74:	f5 81       	ldd	r31, Z+5	; 0x05
     c76:	e0 2d       	mov	r30, r0
     c78:	6e 2d       	mov	r22, r14
     c7a:	ce 01       	movw	r24, r28
     c7c:	09 95       	icall
     c7e:	e8 81       	ld	r30, Y
     c80:	f9 81       	ldd	r31, Y+1	; 0x01
     c82:	04 80       	ldd	r0, Z+4	; 0x04
     c84:	f5 81       	ldd	r31, Z+5	; 0x05
     c86:	e0 2d       	mov	r30, r0
     c88:	6f 2d       	mov	r22, r15
     c8a:	ce 01       	movw	r24, r28
     c8c:	09 95       	icall
     c8e:	76 01       	movw	r14, r12
     c90:	0c 0d       	add	r16, r12
     c92:	1d 1d       	adc	r17, r13
     c94:	e8 81       	ld	r30, Y
     c96:	f9 81       	ldd	r31, Y+1	; 0x01
     c98:	e0 16       	cp	r14, r16
     c9a:	f1 06       	cpc	r15, r17
     c9c:	49 f0       	breq	.+18     	; 0xcb0 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x66>
     c9e:	d7 01       	movw	r26, r14
     ca0:	6d 91       	ld	r22, X+
     ca2:	7d 01       	movw	r14, r26
     ca4:	04 80       	ldd	r0, Z+4	; 0x04
     ca6:	f5 81       	ldd	r31, Z+5	; 0x05
     ca8:	e0 2d       	mov	r30, r0
     caa:	ce 01       	movw	r24, r28
     cac:	09 95       	icall
     cae:	f2 cf       	rjmp	.-28     	; 0xc94 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x4a>
     cb0:	02 80       	ldd	r0, Z+2	; 0x02
     cb2:	f3 81       	ldd	r31, Z+3	; 0x03
     cb4:	e0 2d       	mov	r30, r0
     cb6:	ce 01       	movw	r24, r28
     cb8:	df 91       	pop	r29
     cba:	cf 91       	pop	r28
     cbc:	1f 91       	pop	r17
     cbe:	0f 91       	pop	r16
     cc0:	ff 90       	pop	r15
     cc2:	ef 90       	pop	r14
     cc4:	df 90       	pop	r13
     cc6:	cf 90       	pop	r12
     cc8:	09 94       	ijmp

00000cca <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE8read_regEhh>:
     cca:	0f 93       	push	r16
     ccc:	1f 93       	push	r17
     cce:	cf 93       	push	r28
     cd0:	df 93       	push	r29
     cd2:	ec 01       	movw	r28, r24
     cd4:	16 2f       	mov	r17, r22
     cd6:	04 2f       	mov	r16, r20
     cd8:	e8 81       	ld	r30, Y
     cda:	f9 81       	ldd	r31, Y+1	; 0x01
     cdc:	01 90       	ld	r0, Z+
     cde:	f0 81       	ld	r31, Z
     ce0:	e0 2d       	mov	r30, r0
     ce2:	09 95       	icall
     ce4:	e8 81       	ld	r30, Y
     ce6:	f9 81       	ldd	r31, Y+1	; 0x01
     ce8:	04 80       	ldd	r0, Z+4	; 0x04
     cea:	f5 81       	ldd	r31, Z+5	; 0x05
     cec:	e0 2d       	mov	r30, r0
     cee:	61 2f       	mov	r22, r17
     cf0:	ce 01       	movw	r24, r28
     cf2:	09 95       	icall
     cf4:	e8 81       	ld	r30, Y
     cf6:	f9 81       	ldd	r31, Y+1	; 0x01
     cf8:	04 80       	ldd	r0, Z+4	; 0x04
     cfa:	f5 81       	ldd	r31, Z+5	; 0x05
     cfc:	e0 2d       	mov	r30, r0
     cfe:	60 2f       	mov	r22, r16
     d00:	ce 01       	movw	r24, r28
     d02:	09 95       	icall
     d04:	e8 81       	ld	r30, Y
     d06:	f9 81       	ldd	r31, Y+1	; 0x01
     d08:	01 90       	ld	r0, Z+
     d0a:	f0 81       	ld	r31, Z
     d0c:	e0 2d       	mov	r30, r0
     d0e:	ce 01       	movw	r24, r28
     d10:	09 95       	icall
     d12:	61 2f       	mov	r22, r17
     d14:	61 60       	ori	r22, 0x01	; 1
     d16:	e8 81       	ld	r30, Y
     d18:	f9 81       	ldd	r31, Y+1	; 0x01
     d1a:	04 80       	ldd	r0, Z+4	; 0x04
     d1c:	f5 81       	ldd	r31, Z+5	; 0x05
     d1e:	e0 2d       	mov	r30, r0
     d20:	ce 01       	movw	r24, r28
     d22:	09 95       	icall
     d24:	e8 81       	ld	r30, Y
     d26:	f9 81       	ldd	r31, Y+1	; 0x01
     d28:	06 80       	ldd	r0, Z+6	; 0x06
     d2a:	f7 81       	ldd	r31, Z+7	; 0x07
     d2c:	e0 2d       	mov	r30, r0
     d2e:	60 e0       	ldi	r22, 0x00	; 0
     d30:	ce 01       	movw	r24, r28
     d32:	09 95       	icall
     d34:	18 2f       	mov	r17, r24
     d36:	e8 81       	ld	r30, Y
     d38:	f9 81       	ldd	r31, Y+1	; 0x01
     d3a:	02 80       	ldd	r0, Z+2	; 0x02
     d3c:	f3 81       	ldd	r31, Z+3	; 0x03
     d3e:	e0 2d       	mov	r30, r0
     d40:	ce 01       	movw	r24, r28
     d42:	09 95       	icall
     d44:	81 2f       	mov	r24, r17
     d46:	df 91       	pop	r29
     d48:	cf 91       	pop	r28
     d4a:	1f 91       	pop	r17
     d4c:	0f 91       	pop	r16
     d4e:	08 95       	ret

00000d50 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE14read_reg_16bitEhh>:
     d50:	0f 93       	push	r16
     d52:	1f 93       	push	r17
     d54:	cf 93       	push	r28
     d56:	df 93       	push	r29
     d58:	ec 01       	movw	r28, r24
     d5a:	16 2f       	mov	r17, r22
     d5c:	04 2f       	mov	r16, r20
     d5e:	e8 81       	ld	r30, Y
     d60:	f9 81       	ldd	r31, Y+1	; 0x01
     d62:	01 90       	ld	r0, Z+
     d64:	f0 81       	ld	r31, Z
     d66:	e0 2d       	mov	r30, r0
     d68:	09 95       	icall
     d6a:	e8 81       	ld	r30, Y
     d6c:	f9 81       	ldd	r31, Y+1	; 0x01
     d6e:	04 80       	ldd	r0, Z+4	; 0x04
     d70:	f5 81       	ldd	r31, Z+5	; 0x05
     d72:	e0 2d       	mov	r30, r0
     d74:	61 2f       	mov	r22, r17
     d76:	ce 01       	movw	r24, r28
     d78:	09 95       	icall
     d7a:	e8 81       	ld	r30, Y
     d7c:	f9 81       	ldd	r31, Y+1	; 0x01
     d7e:	04 80       	ldd	r0, Z+4	; 0x04
     d80:	f5 81       	ldd	r31, Z+5	; 0x05
     d82:	e0 2d       	mov	r30, r0
     d84:	60 2f       	mov	r22, r16
     d86:	ce 01       	movw	r24, r28
     d88:	09 95       	icall
     d8a:	e8 81       	ld	r30, Y
     d8c:	f9 81       	ldd	r31, Y+1	; 0x01
     d8e:	01 90       	ld	r0, Z+
     d90:	f0 81       	ld	r31, Z
     d92:	e0 2d       	mov	r30, r0
     d94:	ce 01       	movw	r24, r28
     d96:	09 95       	icall
     d98:	61 2f       	mov	r22, r17
     d9a:	61 60       	ori	r22, 0x01	; 1
     d9c:	e8 81       	ld	r30, Y
     d9e:	f9 81       	ldd	r31, Y+1	; 0x01
     da0:	04 80       	ldd	r0, Z+4	; 0x04
     da2:	f5 81       	ldd	r31, Z+5	; 0x05
     da4:	e0 2d       	mov	r30, r0
     da6:	ce 01       	movw	r24, r28
     da8:	09 95       	icall
     daa:	e8 81       	ld	r30, Y
     dac:	f9 81       	ldd	r31, Y+1	; 0x01
     dae:	06 80       	ldd	r0, Z+6	; 0x06
     db0:	f7 81       	ldd	r31, Z+7	; 0x07
     db2:	e0 2d       	mov	r30, r0
     db4:	61 e0       	ldi	r22, 0x01	; 1
     db6:	ce 01       	movw	r24, r28
     db8:	09 95       	icall
     dba:	08 2f       	mov	r16, r24
     dbc:	10 e0       	ldi	r17, 0x00	; 0
     dbe:	10 2f       	mov	r17, r16
     dc0:	00 27       	eor	r16, r16
     dc2:	e8 81       	ld	r30, Y
     dc4:	f9 81       	ldd	r31, Y+1	; 0x01
     dc6:	06 80       	ldd	r0, Z+6	; 0x06
     dc8:	f7 81       	ldd	r31, Z+7	; 0x07
     dca:	e0 2d       	mov	r30, r0
     dcc:	60 e0       	ldi	r22, 0x00	; 0
     dce:	ce 01       	movw	r24, r28
     dd0:	09 95       	icall
     dd2:	08 2b       	or	r16, r24
     dd4:	e8 81       	ld	r30, Y
     dd6:	f9 81       	ldd	r31, Y+1	; 0x01
     dd8:	02 80       	ldd	r0, Z+2	; 0x02
     dda:	f3 81       	ldd	r31, Z+3	; 0x03
     ddc:	e0 2d       	mov	r30, r0
     dde:	ce 01       	movw	r24, r28
     de0:	09 95       	icall
     de2:	c8 01       	movw	r24, r16
     de4:	df 91       	pop	r29
     de6:	cf 91       	pop	r28
     de8:	1f 91       	pop	r17
     dea:	0f 91       	pop	r16
     dec:	08 95       	ret

00000dee <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE14read_reg_multiEhhPhj>:
     dee:	cf 92       	push	r12
     df0:	df 92       	push	r13
     df2:	ef 92       	push	r14
     df4:	ff 92       	push	r15
     df6:	0f 93       	push	r16
     df8:	1f 93       	push	r17
     dfa:	cf 93       	push	r28
     dfc:	df 93       	push	r29
     dfe:	ec 01       	movw	r28, r24
     e00:	f6 2e       	mov	r15, r22
     e02:	e4 2e       	mov	r14, r20
     e04:	69 01       	movw	r12, r18
     e06:	e8 81       	ld	r30, Y
     e08:	f9 81       	ldd	r31, Y+1	; 0x01
     e0a:	01 90       	ld	r0, Z+
     e0c:	f0 81       	ld	r31, Z
     e0e:	e0 2d       	mov	r30, r0
     e10:	09 95       	icall
     e12:	e8 81       	ld	r30, Y
     e14:	f9 81       	ldd	r31, Y+1	; 0x01
     e16:	04 80       	ldd	r0, Z+4	; 0x04
     e18:	f5 81       	ldd	r31, Z+5	; 0x05
     e1a:	e0 2d       	mov	r30, r0
     e1c:	6f 2d       	mov	r22, r15
     e1e:	ce 01       	movw	r24, r28
     e20:	09 95       	icall
     e22:	e8 81       	ld	r30, Y
     e24:	f9 81       	ldd	r31, Y+1	; 0x01
     e26:	04 80       	ldd	r0, Z+4	; 0x04
     e28:	f5 81       	ldd	r31, Z+5	; 0x05
     e2a:	e0 2d       	mov	r30, r0
     e2c:	6e 2d       	mov	r22, r14
     e2e:	ce 01       	movw	r24, r28
     e30:	09 95       	icall
     e32:	e8 81       	ld	r30, Y
     e34:	f9 81       	ldd	r31, Y+1	; 0x01
     e36:	01 90       	ld	r0, Z+
     e38:	f0 81       	ld	r31, Z
     e3a:	e0 2d       	mov	r30, r0
     e3c:	ce 01       	movw	r24, r28
     e3e:	09 95       	icall
     e40:	6f 2d       	mov	r22, r15
     e42:	61 60       	ori	r22, 0x01	; 1
     e44:	e8 81       	ld	r30, Y
     e46:	f9 81       	ldd	r31, Y+1	; 0x01
     e48:	04 80       	ldd	r0, Z+4	; 0x04
     e4a:	f5 81       	ldd	r31, Z+5	; 0x05
     e4c:	e0 2d       	mov	r30, r0
     e4e:	ce 01       	movw	r24, r28
     e50:	09 95       	icall
     e52:	76 01       	movw	r14, r12
     e54:	0c 0d       	add	r16, r12
     e56:	1d 1d       	adc	r17, r13
     e58:	e8 81       	ld	r30, Y
     e5a:	f9 81       	ldd	r31, Y+1	; 0x01
     e5c:	e0 16       	cp	r14, r16
     e5e:	f1 06       	cpc	r15, r17
     e60:	51 f0       	breq	.+20     	; 0xe76 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x88>
     e62:	06 80       	ldd	r0, Z+6	; 0x06
     e64:	f7 81       	ldd	r31, Z+7	; 0x07
     e66:	e0 2d       	mov	r30, r0
     e68:	61 e0       	ldi	r22, 0x01	; 1
     e6a:	ce 01       	movw	r24, r28
     e6c:	09 95       	icall
     e6e:	f7 01       	movw	r30, r14
     e70:	81 93       	st	Z+, r24
     e72:	7f 01       	movw	r14, r30
     e74:	f1 cf       	rjmp	.-30     	; 0xe58 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x6a>
     e76:	02 80       	ldd	r0, Z+2	; 0x02
     e78:	f3 81       	ldd	r31, Z+3	; 0x03
     e7a:	e0 2d       	mov	r30, r0
     e7c:	ce 01       	movw	r24, r28
     e7e:	df 91       	pop	r29
     e80:	cf 91       	pop	r28
     e82:	1f 91       	pop	r17
     e84:	0f 91       	pop	r16
     e86:	ff 90       	pop	r15
     e88:	ef 90       	pop	r14
     e8a:	df 90       	pop	r13
     e8c:	cf 90       	pop	r12
     e8e:	09 94       	ijmp

00000e90 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE9write_regEhhh>:
     e90:	ff 92       	push	r15
     e92:	0f 93       	push	r16
     e94:	1f 93       	push	r17
     e96:	cf 93       	push	r28
     e98:	df 93       	push	r29
     e9a:	ec 01       	movw	r28, r24
     e9c:	f6 2e       	mov	r15, r22
     e9e:	04 2f       	mov	r16, r20
     ea0:	12 2f       	mov	r17, r18
     ea2:	e8 81       	ld	r30, Y
     ea4:	f9 81       	ldd	r31, Y+1	; 0x01
     ea6:	01 90       	ld	r0, Z+
     ea8:	f0 81       	ld	r31, Z
     eaa:	e0 2d       	mov	r30, r0
     eac:	09 95       	icall
     eae:	e8 81       	ld	r30, Y
     eb0:	f9 81       	ldd	r31, Y+1	; 0x01
     eb2:	04 80       	ldd	r0, Z+4	; 0x04
     eb4:	f5 81       	ldd	r31, Z+5	; 0x05
     eb6:	e0 2d       	mov	r30, r0
     eb8:	6f 2d       	mov	r22, r15
     eba:	ce 01       	movw	r24, r28
     ebc:	09 95       	icall
     ebe:	e8 81       	ld	r30, Y
     ec0:	f9 81       	ldd	r31, Y+1	; 0x01
     ec2:	04 80       	ldd	r0, Z+4	; 0x04
     ec4:	f5 81       	ldd	r31, Z+5	; 0x05
     ec6:	e0 2d       	mov	r30, r0
     ec8:	60 2f       	mov	r22, r16
     eca:	ce 01       	movw	r24, r28
     ecc:	09 95       	icall
     ece:	e8 81       	ld	r30, Y
     ed0:	f9 81       	ldd	r31, Y+1	; 0x01
     ed2:	04 80       	ldd	r0, Z+4	; 0x04
     ed4:	f5 81       	ldd	r31, Z+5	; 0x05
     ed6:	e0 2d       	mov	r30, r0
     ed8:	61 2f       	mov	r22, r17
     eda:	ce 01       	movw	r24, r28
     edc:	09 95       	icall
     ede:	e8 81       	ld	r30, Y
     ee0:	f9 81       	ldd	r31, Y+1	; 0x01
     ee2:	02 80       	ldd	r0, Z+2	; 0x02
     ee4:	f3 81       	ldd	r31, Z+3	; 0x03
     ee6:	e0 2d       	mov	r30, r0
     ee8:	ce 01       	movw	r24, r28
     eea:	df 91       	pop	r29
     eec:	cf 91       	pop	r28
     eee:	1f 91       	pop	r17
     ef0:	0f 91       	pop	r16
     ef2:	ff 90       	pop	r15
     ef4:	09 94       	ijmp

00000ef6 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE15write_reg_16bitEhhj>:
     ef6:	ef 92       	push	r14
     ef8:	ff 92       	push	r15
     efa:	0f 93       	push	r16
     efc:	1f 93       	push	r17
     efe:	cf 93       	push	r28
     f00:	df 93       	push	r29
     f02:	ec 01       	movw	r28, r24
     f04:	e6 2e       	mov	r14, r22
     f06:	f4 2e       	mov	r15, r20
     f08:	12 2f       	mov	r17, r18
     f0a:	03 2f       	mov	r16, r19
     f0c:	e8 81       	ld	r30, Y
     f0e:	f9 81       	ldd	r31, Y+1	; 0x01
     f10:	01 90       	ld	r0, Z+
     f12:	f0 81       	ld	r31, Z
     f14:	e0 2d       	mov	r30, r0
     f16:	09 95       	icall
     f18:	e8 81       	ld	r30, Y
     f1a:	f9 81       	ldd	r31, Y+1	; 0x01
     f1c:	04 80       	ldd	r0, Z+4	; 0x04
     f1e:	f5 81       	ldd	r31, Z+5	; 0x05
     f20:	e0 2d       	mov	r30, r0
     f22:	6e 2d       	mov	r22, r14
     f24:	ce 01       	movw	r24, r28
     f26:	09 95       	icall
     f28:	e8 81       	ld	r30, Y
     f2a:	f9 81       	ldd	r31, Y+1	; 0x01
     f2c:	04 80       	ldd	r0, Z+4	; 0x04
     f2e:	f5 81       	ldd	r31, Z+5	; 0x05
     f30:	e0 2d       	mov	r30, r0
     f32:	6f 2d       	mov	r22, r15
     f34:	ce 01       	movw	r24, r28
     f36:	09 95       	icall
     f38:	e8 81       	ld	r30, Y
     f3a:	f9 81       	ldd	r31, Y+1	; 0x01
     f3c:	04 80       	ldd	r0, Z+4	; 0x04
     f3e:	f5 81       	ldd	r31, Z+5	; 0x05
     f40:	e0 2d       	mov	r30, r0
     f42:	60 2f       	mov	r22, r16
     f44:	ce 01       	movw	r24, r28
     f46:	09 95       	icall
     f48:	e8 81       	ld	r30, Y
     f4a:	f9 81       	ldd	r31, Y+1	; 0x01
     f4c:	04 80       	ldd	r0, Z+4	; 0x04
     f4e:	f5 81       	ldd	r31, Z+5	; 0x05
     f50:	e0 2d       	mov	r30, r0
     f52:	61 2f       	mov	r22, r17
     f54:	ce 01       	movw	r24, r28
     f56:	09 95       	icall
     f58:	e8 81       	ld	r30, Y
     f5a:	f9 81       	ldd	r31, Y+1	; 0x01
     f5c:	02 80       	ldd	r0, Z+2	; 0x02
     f5e:	f3 81       	ldd	r31, Z+3	; 0x03
     f60:	e0 2d       	mov	r30, r0
     f62:	ce 01       	movw	r24, r28
     f64:	df 91       	pop	r29
     f66:	cf 91       	pop	r28
     f68:	1f 91       	pop	r17
     f6a:	0f 91       	pop	r16
     f6c:	ff 90       	pop	r15
     f6e:	ef 90       	pop	r14
     f70:	09 94       	ijmp

00000f72 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE15write_reg_multiEhhPhj>:
     f72:	cf 92       	push	r12
     f74:	df 92       	push	r13
     f76:	ef 92       	push	r14
     f78:	ff 92       	push	r15
     f7a:	0f 93       	push	r16
     f7c:	1f 93       	push	r17
     f7e:	cf 93       	push	r28
     f80:	df 93       	push	r29
     f82:	ec 01       	movw	r28, r24
     f84:	e6 2e       	mov	r14, r22
     f86:	f4 2e       	mov	r15, r20
     f88:	69 01       	movw	r12, r18
     f8a:	e8 81       	ld	r30, Y
     f8c:	f9 81       	ldd	r31, Y+1	; 0x01
     f8e:	01 90       	ld	r0, Z+
     f90:	f0 81       	ld	r31, Z
     f92:	e0 2d       	mov	r30, r0
     f94:	09 95       	icall
     f96:	e8 81       	ld	r30, Y
     f98:	f9 81       	ldd	r31, Y+1	; 0x01
     f9a:	04 80       	ldd	r0, Z+4	; 0x04
     f9c:	f5 81       	ldd	r31, Z+5	; 0x05
     f9e:	e0 2d       	mov	r30, r0
     fa0:	6e 2d       	mov	r22, r14
     fa2:	ce 01       	movw	r24, r28
     fa4:	09 95       	icall
     fa6:	e8 81       	ld	r30, Y
     fa8:	f9 81       	ldd	r31, Y+1	; 0x01
     faa:	04 80       	ldd	r0, Z+4	; 0x04
     fac:	f5 81       	ldd	r31, Z+5	; 0x05
     fae:	e0 2d       	mov	r30, r0
     fb0:	6f 2d       	mov	r22, r15
     fb2:	ce 01       	movw	r24, r28
     fb4:	09 95       	icall
     fb6:	76 01       	movw	r14, r12
     fb8:	0c 0d       	add	r16, r12
     fba:	1d 1d       	adc	r17, r13
     fbc:	e8 81       	ld	r30, Y
     fbe:	f9 81       	ldd	r31, Y+1	; 0x01
     fc0:	e0 16       	cp	r14, r16
     fc2:	f1 06       	cpc	r15, r17
     fc4:	49 f0       	breq	.+18     	; 0xfd8 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x66>
     fc6:	d7 01       	movw	r26, r14
     fc8:	6d 91       	ld	r22, X+
     fca:	7d 01       	movw	r14, r26
     fcc:	04 80       	ldd	r0, Z+4	; 0x04
     fce:	f5 81       	ldd	r31, Z+5	; 0x05
     fd0:	e0 2d       	mov	r30, r0
     fd2:	ce 01       	movw	r24, r28
     fd4:	09 95       	icall
     fd6:	f2 cf       	rjmp	.-28     	; 0xfbc <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x4a>
     fd8:	02 80       	ldd	r0, Z+2	; 0x02
     fda:	f3 81       	ldd	r31, Z+3	; 0x03
     fdc:	e0 2d       	mov	r30, r0
     fde:	ce 01       	movw	r24, r28
     fe0:	df 91       	pop	r29
     fe2:	cf 91       	pop	r28
     fe4:	1f 91       	pop	r17
     fe6:	0f 91       	pop	r16
     fe8:	ff 90       	pop	r15
     fea:	ef 90       	pop	r14
     fec:	df 90       	pop	r13
     fee:	cf 90       	pop	r12
     ff0:	09 94       	ijmp

00000ff2 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE8read_regEhh>:
     ff2:	0f 93       	push	r16
     ff4:	1f 93       	push	r17
     ff6:	cf 93       	push	r28
     ff8:	df 93       	push	r29
     ffa:	ec 01       	movw	r28, r24
     ffc:	16 2f       	mov	r17, r22
     ffe:	04 2f       	mov	r16, r20
    1000:	e8 81       	ld	r30, Y
    1002:	f9 81       	ldd	r31, Y+1	; 0x01
    1004:	01 90       	ld	r0, Z+
    1006:	f0 81       	ld	r31, Z
    1008:	e0 2d       	mov	r30, r0
    100a:	09 95       	icall
    100c:	e8 81       	ld	r30, Y
    100e:	f9 81       	ldd	r31, Y+1	; 0x01
    1010:	04 80       	ldd	r0, Z+4	; 0x04
    1012:	f5 81       	ldd	r31, Z+5	; 0x05
    1014:	e0 2d       	mov	r30, r0
    1016:	61 2f       	mov	r22, r17
    1018:	ce 01       	movw	r24, r28
    101a:	09 95       	icall
    101c:	e8 81       	ld	r30, Y
    101e:	f9 81       	ldd	r31, Y+1	; 0x01
    1020:	04 80       	ldd	r0, Z+4	; 0x04
    1022:	f5 81       	ldd	r31, Z+5	; 0x05
    1024:	e0 2d       	mov	r30, r0
    1026:	60 2f       	mov	r22, r16
    1028:	ce 01       	movw	r24, r28
    102a:	09 95       	icall
    102c:	e8 81       	ld	r30, Y
    102e:	f9 81       	ldd	r31, Y+1	; 0x01
    1030:	01 90       	ld	r0, Z+
    1032:	f0 81       	ld	r31, Z
    1034:	e0 2d       	mov	r30, r0
    1036:	ce 01       	movw	r24, r28
    1038:	09 95       	icall
    103a:	61 2f       	mov	r22, r17
    103c:	61 60       	ori	r22, 0x01	; 1
    103e:	e8 81       	ld	r30, Y
    1040:	f9 81       	ldd	r31, Y+1	; 0x01
    1042:	04 80       	ldd	r0, Z+4	; 0x04
    1044:	f5 81       	ldd	r31, Z+5	; 0x05
    1046:	e0 2d       	mov	r30, r0
    1048:	ce 01       	movw	r24, r28
    104a:	09 95       	icall
    104c:	e8 81       	ld	r30, Y
    104e:	f9 81       	ldd	r31, Y+1	; 0x01
    1050:	06 80       	ldd	r0, Z+6	; 0x06
    1052:	f7 81       	ldd	r31, Z+7	; 0x07
    1054:	e0 2d       	mov	r30, r0
    1056:	60 e0       	ldi	r22, 0x00	; 0
    1058:	ce 01       	movw	r24, r28
    105a:	09 95       	icall
    105c:	18 2f       	mov	r17, r24
    105e:	e8 81       	ld	r30, Y
    1060:	f9 81       	ldd	r31, Y+1	; 0x01
    1062:	02 80       	ldd	r0, Z+2	; 0x02
    1064:	f3 81       	ldd	r31, Z+3	; 0x03
    1066:	e0 2d       	mov	r30, r0
    1068:	ce 01       	movw	r24, r28
    106a:	09 95       	icall
    106c:	81 2f       	mov	r24, r17
    106e:	df 91       	pop	r29
    1070:	cf 91       	pop	r28
    1072:	1f 91       	pop	r17
    1074:	0f 91       	pop	r16
    1076:	08 95       	ret

00001078 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE14read_reg_16bitEhh>:
    1078:	0f 93       	push	r16
    107a:	1f 93       	push	r17
    107c:	cf 93       	push	r28
    107e:	df 93       	push	r29
    1080:	ec 01       	movw	r28, r24
    1082:	16 2f       	mov	r17, r22
    1084:	04 2f       	mov	r16, r20
    1086:	e8 81       	ld	r30, Y
    1088:	f9 81       	ldd	r31, Y+1	; 0x01
    108a:	01 90       	ld	r0, Z+
    108c:	f0 81       	ld	r31, Z
    108e:	e0 2d       	mov	r30, r0
    1090:	09 95       	icall
    1092:	e8 81       	ld	r30, Y
    1094:	f9 81       	ldd	r31, Y+1	; 0x01
    1096:	04 80       	ldd	r0, Z+4	; 0x04
    1098:	f5 81       	ldd	r31, Z+5	; 0x05
    109a:	e0 2d       	mov	r30, r0
    109c:	61 2f       	mov	r22, r17
    109e:	ce 01       	movw	r24, r28
    10a0:	09 95       	icall
    10a2:	e8 81       	ld	r30, Y
    10a4:	f9 81       	ldd	r31, Y+1	; 0x01
    10a6:	04 80       	ldd	r0, Z+4	; 0x04
    10a8:	f5 81       	ldd	r31, Z+5	; 0x05
    10aa:	e0 2d       	mov	r30, r0
    10ac:	60 2f       	mov	r22, r16
    10ae:	ce 01       	movw	r24, r28
    10b0:	09 95       	icall
    10b2:	e8 81       	ld	r30, Y
    10b4:	f9 81       	ldd	r31, Y+1	; 0x01
    10b6:	01 90       	ld	r0, Z+
    10b8:	f0 81       	ld	r31, Z
    10ba:	e0 2d       	mov	r30, r0
    10bc:	ce 01       	movw	r24, r28
    10be:	09 95       	icall
    10c0:	61 2f       	mov	r22, r17
    10c2:	61 60       	ori	r22, 0x01	; 1
    10c4:	e8 81       	ld	r30, Y
    10c6:	f9 81       	ldd	r31, Y+1	; 0x01
    10c8:	04 80       	ldd	r0, Z+4	; 0x04
    10ca:	f5 81       	ldd	r31, Z+5	; 0x05
    10cc:	e0 2d       	mov	r30, r0
    10ce:	ce 01       	movw	r24, r28
    10d0:	09 95       	icall
    10d2:	e8 81       	ld	r30, Y
    10d4:	f9 81       	ldd	r31, Y+1	; 0x01
    10d6:	06 80       	ldd	r0, Z+6	; 0x06
    10d8:	f7 81       	ldd	r31, Z+7	; 0x07
    10da:	e0 2d       	mov	r30, r0
    10dc:	61 e0       	ldi	r22, 0x01	; 1
    10de:	ce 01       	movw	r24, r28
    10e0:	09 95       	icall
    10e2:	08 2f       	mov	r16, r24
    10e4:	10 e0       	ldi	r17, 0x00	; 0
    10e6:	10 2f       	mov	r17, r16
    10e8:	00 27       	eor	r16, r16
    10ea:	e8 81       	ld	r30, Y
    10ec:	f9 81       	ldd	r31, Y+1	; 0x01
    10ee:	06 80       	ldd	r0, Z+6	; 0x06
    10f0:	f7 81       	ldd	r31, Z+7	; 0x07
    10f2:	e0 2d       	mov	r30, r0
    10f4:	60 e0       	ldi	r22, 0x00	; 0
    10f6:	ce 01       	movw	r24, r28
    10f8:	09 95       	icall
    10fa:	08 2b       	or	r16, r24
    10fc:	e8 81       	ld	r30, Y
    10fe:	f9 81       	ldd	r31, Y+1	; 0x01
    1100:	02 80       	ldd	r0, Z+2	; 0x02
    1102:	f3 81       	ldd	r31, Z+3	; 0x03
    1104:	e0 2d       	mov	r30, r0
    1106:	ce 01       	movw	r24, r28
    1108:	09 95       	icall
    110a:	c8 01       	movw	r24, r16
    110c:	df 91       	pop	r29
    110e:	cf 91       	pop	r28
    1110:	1f 91       	pop	r17
    1112:	0f 91       	pop	r16
    1114:	08 95       	ret

00001116 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE14read_reg_multiEhhPhj>:
    1116:	cf 92       	push	r12
    1118:	df 92       	push	r13
    111a:	ef 92       	push	r14
    111c:	ff 92       	push	r15
    111e:	0f 93       	push	r16
    1120:	1f 93       	push	r17
    1122:	cf 93       	push	r28
    1124:	df 93       	push	r29
    1126:	ec 01       	movw	r28, r24
    1128:	f6 2e       	mov	r15, r22
    112a:	e4 2e       	mov	r14, r20
    112c:	69 01       	movw	r12, r18
    112e:	e8 81       	ld	r30, Y
    1130:	f9 81       	ldd	r31, Y+1	; 0x01
    1132:	01 90       	ld	r0, Z+
    1134:	f0 81       	ld	r31, Z
    1136:	e0 2d       	mov	r30, r0
    1138:	09 95       	icall
    113a:	e8 81       	ld	r30, Y
    113c:	f9 81       	ldd	r31, Y+1	; 0x01
    113e:	04 80       	ldd	r0, Z+4	; 0x04
    1140:	f5 81       	ldd	r31, Z+5	; 0x05
    1142:	e0 2d       	mov	r30, r0
    1144:	6f 2d       	mov	r22, r15
    1146:	ce 01       	movw	r24, r28
    1148:	09 95       	icall
    114a:	e8 81       	ld	r30, Y
    114c:	f9 81       	ldd	r31, Y+1	; 0x01
    114e:	04 80       	ldd	r0, Z+4	; 0x04
    1150:	f5 81       	ldd	r31, Z+5	; 0x05
    1152:	e0 2d       	mov	r30, r0
    1154:	6e 2d       	mov	r22, r14
    1156:	ce 01       	movw	r24, r28
    1158:	09 95       	icall
    115a:	e8 81       	ld	r30, Y
    115c:	f9 81       	ldd	r31, Y+1	; 0x01
    115e:	01 90       	ld	r0, Z+
    1160:	f0 81       	ld	r31, Z
    1162:	e0 2d       	mov	r30, r0
    1164:	ce 01       	movw	r24, r28
    1166:	09 95       	icall
    1168:	6f 2d       	mov	r22, r15
    116a:	61 60       	ori	r22, 0x01	; 1
    116c:	e8 81       	ld	r30, Y
    116e:	f9 81       	ldd	r31, Y+1	; 0x01
    1170:	04 80       	ldd	r0, Z+4	; 0x04
    1172:	f5 81       	ldd	r31, Z+5	; 0x05
    1174:	e0 2d       	mov	r30, r0
    1176:	ce 01       	movw	r24, r28
    1178:	09 95       	icall
    117a:	76 01       	movw	r14, r12
    117c:	0c 0d       	add	r16, r12
    117e:	1d 1d       	adc	r17, r13
    1180:	e8 81       	ld	r30, Y
    1182:	f9 81       	ldd	r31, Y+1	; 0x01
    1184:	e0 16       	cp	r14, r16
    1186:	f1 06       	cpc	r15, r17
    1188:	51 f0       	breq	.+20     	; 0x119e <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x88>
    118a:	06 80       	ldd	r0, Z+6	; 0x06
    118c:	f7 81       	ldd	r31, Z+7	; 0x07
    118e:	e0 2d       	mov	r30, r0
    1190:	61 e0       	ldi	r22, 0x01	; 1
    1192:	ce 01       	movw	r24, r28
    1194:	09 95       	icall
    1196:	f7 01       	movw	r30, r14
    1198:	81 93       	st	Z+, r24
    119a:	7f 01       	movw	r14, r30
    119c:	f1 cf       	rjmp	.-30     	; 0x1180 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x6a>
    119e:	02 80       	ldd	r0, Z+2	; 0x02
    11a0:	f3 81       	ldd	r31, Z+3	; 0x03
    11a2:	e0 2d       	mov	r30, r0
    11a4:	ce 01       	movw	r24, r28
    11a6:	df 91       	pop	r29
    11a8:	cf 91       	pop	r28
    11aa:	1f 91       	pop	r17
    11ac:	0f 91       	pop	r16
    11ae:	ff 90       	pop	r15
    11b0:	ef 90       	pop	r14
    11b2:	df 90       	pop	r13
    11b4:	cf 90       	pop	r12
    11b6:	09 94       	ijmp

000011b8 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE9write_regEhhh>:
    11b8:	ff 92       	push	r15
    11ba:	0f 93       	push	r16
    11bc:	1f 93       	push	r17
    11be:	cf 93       	push	r28
    11c0:	df 93       	push	r29
    11c2:	ec 01       	movw	r28, r24
    11c4:	f6 2e       	mov	r15, r22
    11c6:	04 2f       	mov	r16, r20
    11c8:	12 2f       	mov	r17, r18
    11ca:	e8 81       	ld	r30, Y
    11cc:	f9 81       	ldd	r31, Y+1	; 0x01
    11ce:	01 90       	ld	r0, Z+
    11d0:	f0 81       	ld	r31, Z
    11d2:	e0 2d       	mov	r30, r0
    11d4:	09 95       	icall
    11d6:	e8 81       	ld	r30, Y
    11d8:	f9 81       	ldd	r31, Y+1	; 0x01
    11da:	04 80       	ldd	r0, Z+4	; 0x04
    11dc:	f5 81       	ldd	r31, Z+5	; 0x05
    11de:	e0 2d       	mov	r30, r0
    11e0:	6f 2d       	mov	r22, r15
    11e2:	ce 01       	movw	r24, r28
    11e4:	09 95       	icall
    11e6:	e8 81       	ld	r30, Y
    11e8:	f9 81       	ldd	r31, Y+1	; 0x01
    11ea:	04 80       	ldd	r0, Z+4	; 0x04
    11ec:	f5 81       	ldd	r31, Z+5	; 0x05
    11ee:	e0 2d       	mov	r30, r0
    11f0:	60 2f       	mov	r22, r16
    11f2:	ce 01       	movw	r24, r28
    11f4:	09 95       	icall
    11f6:	e8 81       	ld	r30, Y
    11f8:	f9 81       	ldd	r31, Y+1	; 0x01
    11fa:	04 80       	ldd	r0, Z+4	; 0x04
    11fc:	f5 81       	ldd	r31, Z+5	; 0x05
    11fe:	e0 2d       	mov	r30, r0
    1200:	61 2f       	mov	r22, r17
    1202:	ce 01       	movw	r24, r28
    1204:	09 95       	icall
    1206:	e8 81       	ld	r30, Y
    1208:	f9 81       	ldd	r31, Y+1	; 0x01
    120a:	02 80       	ldd	r0, Z+2	; 0x02
    120c:	f3 81       	ldd	r31, Z+3	; 0x03
    120e:	e0 2d       	mov	r30, r0
    1210:	ce 01       	movw	r24, r28
    1212:	df 91       	pop	r29
    1214:	cf 91       	pop	r28
    1216:	1f 91       	pop	r17
    1218:	0f 91       	pop	r16
    121a:	ff 90       	pop	r15
    121c:	09 94       	ijmp

0000121e <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE15write_reg_16bitEhhj>:
    121e:	ef 92       	push	r14
    1220:	ff 92       	push	r15
    1222:	0f 93       	push	r16
    1224:	1f 93       	push	r17
    1226:	cf 93       	push	r28
    1228:	df 93       	push	r29
    122a:	ec 01       	movw	r28, r24
    122c:	e6 2e       	mov	r14, r22
    122e:	f4 2e       	mov	r15, r20
    1230:	12 2f       	mov	r17, r18
    1232:	03 2f       	mov	r16, r19
    1234:	e8 81       	ld	r30, Y
    1236:	f9 81       	ldd	r31, Y+1	; 0x01
    1238:	01 90       	ld	r0, Z+
    123a:	f0 81       	ld	r31, Z
    123c:	e0 2d       	mov	r30, r0
    123e:	09 95       	icall
    1240:	e8 81       	ld	r30, Y
    1242:	f9 81       	ldd	r31, Y+1	; 0x01
    1244:	04 80       	ldd	r0, Z+4	; 0x04
    1246:	f5 81       	ldd	r31, Z+5	; 0x05
    1248:	e0 2d       	mov	r30, r0
    124a:	6e 2d       	mov	r22, r14
    124c:	ce 01       	movw	r24, r28
    124e:	09 95       	icall
    1250:	e8 81       	ld	r30, Y
    1252:	f9 81       	ldd	r31, Y+1	; 0x01
    1254:	04 80       	ldd	r0, Z+4	; 0x04
    1256:	f5 81       	ldd	r31, Z+5	; 0x05
    1258:	e0 2d       	mov	r30, r0
    125a:	6f 2d       	mov	r22, r15
    125c:	ce 01       	movw	r24, r28
    125e:	09 95       	icall
    1260:	e8 81       	ld	r30, Y
    1262:	f9 81       	ldd	r31, Y+1	; 0x01
    1264:	04 80       	ldd	r0, Z+4	; 0x04
    1266:	f5 81       	ldd	r31, Z+5	; 0x05
    1268:	e0 2d       	mov	r30, r0
    126a:	60 2f       	mov	r22, r16
    126c:	ce 01       	movw	r24, r28
    126e:	09 95       	icall
    1270:	e8 81       	ld	r30, Y
    1272:	f9 81       	ldd	r31, Y+1	; 0x01
    1274:	04 80       	ldd	r0, Z+4	; 0x04
    1276:	f5 81       	ldd	r31, Z+5	; 0x05
    1278:	e0 2d       	mov	r30, r0
    127a:	61 2f       	mov	r22, r17
    127c:	ce 01       	movw	r24, r28
    127e:	09 95       	icall
    1280:	e8 81       	ld	r30, Y
    1282:	f9 81       	ldd	r31, Y+1	; 0x01
    1284:	02 80       	ldd	r0, Z+2	; 0x02
    1286:	f3 81       	ldd	r31, Z+3	; 0x03
    1288:	e0 2d       	mov	r30, r0
    128a:	ce 01       	movw	r24, r28
    128c:	df 91       	pop	r29
    128e:	cf 91       	pop	r28
    1290:	1f 91       	pop	r17
    1292:	0f 91       	pop	r16
    1294:	ff 90       	pop	r15
    1296:	ef 90       	pop	r14
    1298:	09 94       	ijmp

0000129a <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE15write_reg_multiEhhPhj>:
    129a:	cf 92       	push	r12
    129c:	df 92       	push	r13
    129e:	ef 92       	push	r14
    12a0:	ff 92       	push	r15
    12a2:	0f 93       	push	r16
    12a4:	1f 93       	push	r17
    12a6:	cf 93       	push	r28
    12a8:	df 93       	push	r29
    12aa:	ec 01       	movw	r28, r24
    12ac:	e6 2e       	mov	r14, r22
    12ae:	f4 2e       	mov	r15, r20
    12b0:	69 01       	movw	r12, r18
    12b2:	e8 81       	ld	r30, Y
    12b4:	f9 81       	ldd	r31, Y+1	; 0x01
    12b6:	01 90       	ld	r0, Z+
    12b8:	f0 81       	ld	r31, Z
    12ba:	e0 2d       	mov	r30, r0
    12bc:	09 95       	icall
    12be:	e8 81       	ld	r30, Y
    12c0:	f9 81       	ldd	r31, Y+1	; 0x01
    12c2:	04 80       	ldd	r0, Z+4	; 0x04
    12c4:	f5 81       	ldd	r31, Z+5	; 0x05
    12c6:	e0 2d       	mov	r30, r0
    12c8:	6e 2d       	mov	r22, r14
    12ca:	ce 01       	movw	r24, r28
    12cc:	09 95       	icall
    12ce:	e8 81       	ld	r30, Y
    12d0:	f9 81       	ldd	r31, Y+1	; 0x01
    12d2:	04 80       	ldd	r0, Z+4	; 0x04
    12d4:	f5 81       	ldd	r31, Z+5	; 0x05
    12d6:	e0 2d       	mov	r30, r0
    12d8:	6f 2d       	mov	r22, r15
    12da:	ce 01       	movw	r24, r28
    12dc:	09 95       	icall
    12de:	76 01       	movw	r14, r12
    12e0:	0c 0d       	add	r16, r12
    12e2:	1d 1d       	adc	r17, r13
    12e4:	e8 81       	ld	r30, Y
    12e6:	f9 81       	ldd	r31, Y+1	; 0x01
    12e8:	e0 16       	cp	r14, r16
    12ea:	f1 06       	cpc	r15, r17
    12ec:	49 f0       	breq	.+18     	; 0x1300 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x66>
    12ee:	d7 01       	movw	r26, r14
    12f0:	6d 91       	ld	r22, X+
    12f2:	7d 01       	movw	r14, r26
    12f4:	04 80       	ldd	r0, Z+4	; 0x04
    12f6:	f5 81       	ldd	r31, Z+5	; 0x05
    12f8:	e0 2d       	mov	r30, r0
    12fa:	ce 01       	movw	r24, r28
    12fc:	09 95       	icall
    12fe:	f2 cf       	rjmp	.-28     	; 0x12e4 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x4a>
    1300:	02 80       	ldd	r0, Z+2	; 0x02
    1302:	f3 81       	ldd	r31, Z+3	; 0x03
    1304:	e0 2d       	mov	r30, r0
    1306:	ce 01       	movw	r24, r28
    1308:	df 91       	pop	r29
    130a:	cf 91       	pop	r28
    130c:	1f 91       	pop	r17
    130e:	0f 91       	pop	r16
    1310:	ff 90       	pop	r15
    1312:	ef 90       	pop	r14
    1314:	df 90       	pop	r13
    1316:	cf 90       	pop	r12
    1318:	09 94       	ijmp

0000131a <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE8read_regEhh>:
    131a:	0f 93       	push	r16
    131c:	1f 93       	push	r17
    131e:	cf 93       	push	r28
    1320:	df 93       	push	r29
    1322:	ec 01       	movw	r28, r24
    1324:	16 2f       	mov	r17, r22
    1326:	04 2f       	mov	r16, r20
    1328:	e8 81       	ld	r30, Y
    132a:	f9 81       	ldd	r31, Y+1	; 0x01
    132c:	01 90       	ld	r0, Z+
    132e:	f0 81       	ld	r31, Z
    1330:	e0 2d       	mov	r30, r0
    1332:	09 95       	icall
    1334:	e8 81       	ld	r30, Y
    1336:	f9 81       	ldd	r31, Y+1	; 0x01
    1338:	04 80       	ldd	r0, Z+4	; 0x04
    133a:	f5 81       	ldd	r31, Z+5	; 0x05
    133c:	e0 2d       	mov	r30, r0
    133e:	61 2f       	mov	r22, r17
    1340:	ce 01       	movw	r24, r28
    1342:	09 95       	icall
    1344:	e8 81       	ld	r30, Y
    1346:	f9 81       	ldd	r31, Y+1	; 0x01
    1348:	04 80       	ldd	r0, Z+4	; 0x04
    134a:	f5 81       	ldd	r31, Z+5	; 0x05
    134c:	e0 2d       	mov	r30, r0
    134e:	60 2f       	mov	r22, r16
    1350:	ce 01       	movw	r24, r28
    1352:	09 95       	icall
    1354:	e8 81       	ld	r30, Y
    1356:	f9 81       	ldd	r31, Y+1	; 0x01
    1358:	01 90       	ld	r0, Z+
    135a:	f0 81       	ld	r31, Z
    135c:	e0 2d       	mov	r30, r0
    135e:	ce 01       	movw	r24, r28
    1360:	09 95       	icall
    1362:	61 2f       	mov	r22, r17
    1364:	61 60       	ori	r22, 0x01	; 1
    1366:	e8 81       	ld	r30, Y
    1368:	f9 81       	ldd	r31, Y+1	; 0x01
    136a:	04 80       	ldd	r0, Z+4	; 0x04
    136c:	f5 81       	ldd	r31, Z+5	; 0x05
    136e:	e0 2d       	mov	r30, r0
    1370:	ce 01       	movw	r24, r28
    1372:	09 95       	icall
    1374:	e8 81       	ld	r30, Y
    1376:	f9 81       	ldd	r31, Y+1	; 0x01
    1378:	06 80       	ldd	r0, Z+6	; 0x06
    137a:	f7 81       	ldd	r31, Z+7	; 0x07
    137c:	e0 2d       	mov	r30, r0
    137e:	60 e0       	ldi	r22, 0x00	; 0
    1380:	ce 01       	movw	r24, r28
    1382:	09 95       	icall
    1384:	18 2f       	mov	r17, r24
    1386:	e8 81       	ld	r30, Y
    1388:	f9 81       	ldd	r31, Y+1	; 0x01
    138a:	02 80       	ldd	r0, Z+2	; 0x02
    138c:	f3 81       	ldd	r31, Z+3	; 0x03
    138e:	e0 2d       	mov	r30, r0
    1390:	ce 01       	movw	r24, r28
    1392:	09 95       	icall
    1394:	81 2f       	mov	r24, r17
    1396:	df 91       	pop	r29
    1398:	cf 91       	pop	r28
    139a:	1f 91       	pop	r17
    139c:	0f 91       	pop	r16
    139e:	08 95       	ret

000013a0 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE14read_reg_16bitEhh>:
    13a0:	0f 93       	push	r16
    13a2:	1f 93       	push	r17
    13a4:	cf 93       	push	r28
    13a6:	df 93       	push	r29
    13a8:	ec 01       	movw	r28, r24
    13aa:	16 2f       	mov	r17, r22
    13ac:	04 2f       	mov	r16, r20
    13ae:	e8 81       	ld	r30, Y
    13b0:	f9 81       	ldd	r31, Y+1	; 0x01
    13b2:	01 90       	ld	r0, Z+
    13b4:	f0 81       	ld	r31, Z
    13b6:	e0 2d       	mov	r30, r0
    13b8:	09 95       	icall
    13ba:	e8 81       	ld	r30, Y
    13bc:	f9 81       	ldd	r31, Y+1	; 0x01
    13be:	04 80       	ldd	r0, Z+4	; 0x04
    13c0:	f5 81       	ldd	r31, Z+5	; 0x05
    13c2:	e0 2d       	mov	r30, r0
    13c4:	61 2f       	mov	r22, r17
    13c6:	ce 01       	movw	r24, r28
    13c8:	09 95       	icall
    13ca:	e8 81       	ld	r30, Y
    13cc:	f9 81       	ldd	r31, Y+1	; 0x01
    13ce:	04 80       	ldd	r0, Z+4	; 0x04
    13d0:	f5 81       	ldd	r31, Z+5	; 0x05
    13d2:	e0 2d       	mov	r30, r0
    13d4:	60 2f       	mov	r22, r16
    13d6:	ce 01       	movw	r24, r28
    13d8:	09 95       	icall
    13da:	e8 81       	ld	r30, Y
    13dc:	f9 81       	ldd	r31, Y+1	; 0x01
    13de:	01 90       	ld	r0, Z+
    13e0:	f0 81       	ld	r31, Z
    13e2:	e0 2d       	mov	r30, r0
    13e4:	ce 01       	movw	r24, r28
    13e6:	09 95       	icall
    13e8:	61 2f       	mov	r22, r17
    13ea:	61 60       	ori	r22, 0x01	; 1
    13ec:	e8 81       	ld	r30, Y
    13ee:	f9 81       	ldd	r31, Y+1	; 0x01
    13f0:	04 80       	ldd	r0, Z+4	; 0x04
    13f2:	f5 81       	ldd	r31, Z+5	; 0x05
    13f4:	e0 2d       	mov	r30, r0
    13f6:	ce 01       	movw	r24, r28
    13f8:	09 95       	icall
    13fa:	e8 81       	ld	r30, Y
    13fc:	f9 81       	ldd	r31, Y+1	; 0x01
    13fe:	06 80       	ldd	r0, Z+6	; 0x06
    1400:	f7 81       	ldd	r31, Z+7	; 0x07
    1402:	e0 2d       	mov	r30, r0
    1404:	61 e0       	ldi	r22, 0x01	; 1
    1406:	ce 01       	movw	r24, r28
    1408:	09 95       	icall
    140a:	08 2f       	mov	r16, r24
    140c:	10 e0       	ldi	r17, 0x00	; 0
    140e:	10 2f       	mov	r17, r16
    1410:	00 27       	eor	r16, r16
    1412:	e8 81       	ld	r30, Y
    1414:	f9 81       	ldd	r31, Y+1	; 0x01
    1416:	06 80       	ldd	r0, Z+6	; 0x06
    1418:	f7 81       	ldd	r31, Z+7	; 0x07
    141a:	e0 2d       	mov	r30, r0
    141c:	60 e0       	ldi	r22, 0x00	; 0
    141e:	ce 01       	movw	r24, r28
    1420:	09 95       	icall
    1422:	08 2b       	or	r16, r24
    1424:	e8 81       	ld	r30, Y
    1426:	f9 81       	ldd	r31, Y+1	; 0x01
    1428:	02 80       	ldd	r0, Z+2	; 0x02
    142a:	f3 81       	ldd	r31, Z+3	; 0x03
    142c:	e0 2d       	mov	r30, r0
    142e:	ce 01       	movw	r24, r28
    1430:	09 95       	icall
    1432:	c8 01       	movw	r24, r16
    1434:	df 91       	pop	r29
    1436:	cf 91       	pop	r28
    1438:	1f 91       	pop	r17
    143a:	0f 91       	pop	r16
    143c:	08 95       	ret

0000143e <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE14read_reg_multiEhhPhj>:
    143e:	cf 92       	push	r12
    1440:	df 92       	push	r13
    1442:	ef 92       	push	r14
    1444:	ff 92       	push	r15
    1446:	0f 93       	push	r16
    1448:	1f 93       	push	r17
    144a:	cf 93       	push	r28
    144c:	df 93       	push	r29
    144e:	ec 01       	movw	r28, r24
    1450:	f6 2e       	mov	r15, r22
    1452:	e4 2e       	mov	r14, r20
    1454:	69 01       	movw	r12, r18
    1456:	e8 81       	ld	r30, Y
    1458:	f9 81       	ldd	r31, Y+1	; 0x01
    145a:	01 90       	ld	r0, Z+
    145c:	f0 81       	ld	r31, Z
    145e:	e0 2d       	mov	r30, r0
    1460:	09 95       	icall
    1462:	e8 81       	ld	r30, Y
    1464:	f9 81       	ldd	r31, Y+1	; 0x01
    1466:	04 80       	ldd	r0, Z+4	; 0x04
    1468:	f5 81       	ldd	r31, Z+5	; 0x05
    146a:	e0 2d       	mov	r30, r0
    146c:	6f 2d       	mov	r22, r15
    146e:	ce 01       	movw	r24, r28
    1470:	09 95       	icall
    1472:	e8 81       	ld	r30, Y
    1474:	f9 81       	ldd	r31, Y+1	; 0x01
    1476:	04 80       	ldd	r0, Z+4	; 0x04
    1478:	f5 81       	ldd	r31, Z+5	; 0x05
    147a:	e0 2d       	mov	r30, r0
    147c:	6e 2d       	mov	r22, r14
    147e:	ce 01       	movw	r24, r28
    1480:	09 95       	icall
    1482:	e8 81       	ld	r30, Y
    1484:	f9 81       	ldd	r31, Y+1	; 0x01
    1486:	01 90       	ld	r0, Z+
    1488:	f0 81       	ld	r31, Z
    148a:	e0 2d       	mov	r30, r0
    148c:	ce 01       	movw	r24, r28
    148e:	09 95       	icall
    1490:	6f 2d       	mov	r22, r15
    1492:	61 60       	ori	r22, 0x01	; 1
    1494:	e8 81       	ld	r30, Y
    1496:	f9 81       	ldd	r31, Y+1	; 0x01
    1498:	04 80       	ldd	r0, Z+4	; 0x04
    149a:	f5 81       	ldd	r31, Z+5	; 0x05
    149c:	e0 2d       	mov	r30, r0
    149e:	ce 01       	movw	r24, r28
    14a0:	09 95       	icall
    14a2:	76 01       	movw	r14, r12
    14a4:	0c 0d       	add	r16, r12
    14a6:	1d 1d       	adc	r17, r13
    14a8:	e8 81       	ld	r30, Y
    14aa:	f9 81       	ldd	r31, Y+1	; 0x01
    14ac:	e0 16       	cp	r14, r16
    14ae:	f1 06       	cpc	r15, r17
    14b0:	51 f0       	breq	.+20     	; 0x14c6 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x88>
    14b2:	06 80       	ldd	r0, Z+6	; 0x06
    14b4:	f7 81       	ldd	r31, Z+7	; 0x07
    14b6:	e0 2d       	mov	r30, r0
    14b8:	61 e0       	ldi	r22, 0x01	; 1
    14ba:	ce 01       	movw	r24, r28
    14bc:	09 95       	icall
    14be:	f7 01       	movw	r30, r14
    14c0:	81 93       	st	Z+, r24
    14c2:	7f 01       	movw	r14, r30
    14c4:	f1 cf       	rjmp	.-30     	; 0x14a8 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x6a>
    14c6:	02 80       	ldd	r0, Z+2	; 0x02
    14c8:	f3 81       	ldd	r31, Z+3	; 0x03
    14ca:	e0 2d       	mov	r30, r0
    14cc:	ce 01       	movw	r24, r28
    14ce:	df 91       	pop	r29
    14d0:	cf 91       	pop	r28
    14d2:	1f 91       	pop	r17
    14d4:	0f 91       	pop	r16
    14d6:	ff 90       	pop	r15
    14d8:	ef 90       	pop	r14
    14da:	df 90       	pop	r13
    14dc:	cf 90       	pop	r12
    14de:	09 94       	ijmp

000014e0 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE9write_regEhhh>:
    14e0:	ff 92       	push	r15
    14e2:	0f 93       	push	r16
    14e4:	1f 93       	push	r17
    14e6:	cf 93       	push	r28
    14e8:	df 93       	push	r29
    14ea:	ec 01       	movw	r28, r24
    14ec:	f6 2e       	mov	r15, r22
    14ee:	04 2f       	mov	r16, r20
    14f0:	12 2f       	mov	r17, r18
    14f2:	e8 81       	ld	r30, Y
    14f4:	f9 81       	ldd	r31, Y+1	; 0x01
    14f6:	01 90       	ld	r0, Z+
    14f8:	f0 81       	ld	r31, Z
    14fa:	e0 2d       	mov	r30, r0
    14fc:	09 95       	icall
    14fe:	e8 81       	ld	r30, Y
    1500:	f9 81       	ldd	r31, Y+1	; 0x01
    1502:	04 80       	ldd	r0, Z+4	; 0x04
    1504:	f5 81       	ldd	r31, Z+5	; 0x05
    1506:	e0 2d       	mov	r30, r0
    1508:	6f 2d       	mov	r22, r15
    150a:	ce 01       	movw	r24, r28
    150c:	09 95       	icall
    150e:	e8 81       	ld	r30, Y
    1510:	f9 81       	ldd	r31, Y+1	; 0x01
    1512:	04 80       	ldd	r0, Z+4	; 0x04
    1514:	f5 81       	ldd	r31, Z+5	; 0x05
    1516:	e0 2d       	mov	r30, r0
    1518:	60 2f       	mov	r22, r16
    151a:	ce 01       	movw	r24, r28
    151c:	09 95       	icall
    151e:	e8 81       	ld	r30, Y
    1520:	f9 81       	ldd	r31, Y+1	; 0x01
    1522:	04 80       	ldd	r0, Z+4	; 0x04
    1524:	f5 81       	ldd	r31, Z+5	; 0x05
    1526:	e0 2d       	mov	r30, r0
    1528:	61 2f       	mov	r22, r17
    152a:	ce 01       	movw	r24, r28
    152c:	09 95       	icall
    152e:	e8 81       	ld	r30, Y
    1530:	f9 81       	ldd	r31, Y+1	; 0x01
    1532:	02 80       	ldd	r0, Z+2	; 0x02
    1534:	f3 81       	ldd	r31, Z+3	; 0x03
    1536:	e0 2d       	mov	r30, r0
    1538:	ce 01       	movw	r24, r28
    153a:	df 91       	pop	r29
    153c:	cf 91       	pop	r28
    153e:	1f 91       	pop	r17
    1540:	0f 91       	pop	r16
    1542:	ff 90       	pop	r15
    1544:	09 94       	ijmp

00001546 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE15write_reg_16bitEhhj>:
    1546:	ef 92       	push	r14
    1548:	ff 92       	push	r15
    154a:	0f 93       	push	r16
    154c:	1f 93       	push	r17
    154e:	cf 93       	push	r28
    1550:	df 93       	push	r29
    1552:	ec 01       	movw	r28, r24
    1554:	e6 2e       	mov	r14, r22
    1556:	f4 2e       	mov	r15, r20
    1558:	12 2f       	mov	r17, r18
    155a:	03 2f       	mov	r16, r19
    155c:	e8 81       	ld	r30, Y
    155e:	f9 81       	ldd	r31, Y+1	; 0x01
    1560:	01 90       	ld	r0, Z+
    1562:	f0 81       	ld	r31, Z
    1564:	e0 2d       	mov	r30, r0
    1566:	09 95       	icall
    1568:	e8 81       	ld	r30, Y
    156a:	f9 81       	ldd	r31, Y+1	; 0x01
    156c:	04 80       	ldd	r0, Z+4	; 0x04
    156e:	f5 81       	ldd	r31, Z+5	; 0x05
    1570:	e0 2d       	mov	r30, r0
    1572:	6e 2d       	mov	r22, r14
    1574:	ce 01       	movw	r24, r28
    1576:	09 95       	icall
    1578:	e8 81       	ld	r30, Y
    157a:	f9 81       	ldd	r31, Y+1	; 0x01
    157c:	04 80       	ldd	r0, Z+4	; 0x04
    157e:	f5 81       	ldd	r31, Z+5	; 0x05
    1580:	e0 2d       	mov	r30, r0
    1582:	6f 2d       	mov	r22, r15
    1584:	ce 01       	movw	r24, r28
    1586:	09 95       	icall
    1588:	e8 81       	ld	r30, Y
    158a:	f9 81       	ldd	r31, Y+1	; 0x01
    158c:	04 80       	ldd	r0, Z+4	; 0x04
    158e:	f5 81       	ldd	r31, Z+5	; 0x05
    1590:	e0 2d       	mov	r30, r0
    1592:	60 2f       	mov	r22, r16
    1594:	ce 01       	movw	r24, r28
    1596:	09 95       	icall
    1598:	e8 81       	ld	r30, Y
    159a:	f9 81       	ldd	r31, Y+1	; 0x01
    159c:	04 80       	ldd	r0, Z+4	; 0x04
    159e:	f5 81       	ldd	r31, Z+5	; 0x05
    15a0:	e0 2d       	mov	r30, r0
    15a2:	61 2f       	mov	r22, r17
    15a4:	ce 01       	movw	r24, r28
    15a6:	09 95       	icall
    15a8:	e8 81       	ld	r30, Y
    15aa:	f9 81       	ldd	r31, Y+1	; 0x01
    15ac:	02 80       	ldd	r0, Z+2	; 0x02
    15ae:	f3 81       	ldd	r31, Z+3	; 0x03
    15b0:	e0 2d       	mov	r30, r0
    15b2:	ce 01       	movw	r24, r28
    15b4:	df 91       	pop	r29
    15b6:	cf 91       	pop	r28
    15b8:	1f 91       	pop	r17
    15ba:	0f 91       	pop	r16
    15bc:	ff 90       	pop	r15
    15be:	ef 90       	pop	r14
    15c0:	09 94       	ijmp

000015c2 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE15write_reg_multiEhhPhj>:
    15c2:	cf 92       	push	r12
    15c4:	df 92       	push	r13
    15c6:	ef 92       	push	r14
    15c8:	ff 92       	push	r15
    15ca:	0f 93       	push	r16
    15cc:	1f 93       	push	r17
    15ce:	cf 93       	push	r28
    15d0:	df 93       	push	r29
    15d2:	ec 01       	movw	r28, r24
    15d4:	e6 2e       	mov	r14, r22
    15d6:	f4 2e       	mov	r15, r20
    15d8:	69 01       	movw	r12, r18
    15da:	e8 81       	ld	r30, Y
    15dc:	f9 81       	ldd	r31, Y+1	; 0x01
    15de:	01 90       	ld	r0, Z+
    15e0:	f0 81       	ld	r31, Z
    15e2:	e0 2d       	mov	r30, r0
    15e4:	09 95       	icall
    15e6:	e8 81       	ld	r30, Y
    15e8:	f9 81       	ldd	r31, Y+1	; 0x01
    15ea:	04 80       	ldd	r0, Z+4	; 0x04
    15ec:	f5 81       	ldd	r31, Z+5	; 0x05
    15ee:	e0 2d       	mov	r30, r0
    15f0:	6e 2d       	mov	r22, r14
    15f2:	ce 01       	movw	r24, r28
    15f4:	09 95       	icall
    15f6:	e8 81       	ld	r30, Y
    15f8:	f9 81       	ldd	r31, Y+1	; 0x01
    15fa:	04 80       	ldd	r0, Z+4	; 0x04
    15fc:	f5 81       	ldd	r31, Z+5	; 0x05
    15fe:	e0 2d       	mov	r30, r0
    1600:	6f 2d       	mov	r22, r15
    1602:	ce 01       	movw	r24, r28
    1604:	09 95       	icall
    1606:	76 01       	movw	r14, r12
    1608:	0c 0d       	add	r16, r12
    160a:	1d 1d       	adc	r17, r13
    160c:	e8 81       	ld	r30, Y
    160e:	f9 81       	ldd	r31, Y+1	; 0x01
    1610:	e0 16       	cp	r14, r16
    1612:	f1 06       	cpc	r15, r17
    1614:	49 f0       	breq	.+18     	; 0x1628 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x66>
    1616:	d7 01       	movw	r26, r14
    1618:	6d 91       	ld	r22, X+
    161a:	7d 01       	movw	r14, r26
    161c:	04 80       	ldd	r0, Z+4	; 0x04
    161e:	f5 81       	ldd	r31, Z+5	; 0x05
    1620:	e0 2d       	mov	r30, r0
    1622:	ce 01       	movw	r24, r28
    1624:	09 95       	icall
    1626:	f2 cf       	rjmp	.-28     	; 0x160c <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x4a>
    1628:	02 80       	ldd	r0, Z+2	; 0x02
    162a:	f3 81       	ldd	r31, Z+3	; 0x03
    162c:	e0 2d       	mov	r30, r0
    162e:	ce 01       	movw	r24, r28
    1630:	df 91       	pop	r29
    1632:	cf 91       	pop	r28
    1634:	1f 91       	pop	r17
    1636:	0f 91       	pop	r16
    1638:	ff 90       	pop	r15
    163a:	ef 90       	pop	r14
    163c:	df 90       	pop	r13
    163e:	cf 90       	pop	r12
    1640:	09 94       	ijmp

00001642 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE8read_regEhh>:
    1642:	0f 93       	push	r16
    1644:	1f 93       	push	r17
    1646:	cf 93       	push	r28
    1648:	df 93       	push	r29
    164a:	ec 01       	movw	r28, r24
    164c:	16 2f       	mov	r17, r22
    164e:	04 2f       	mov	r16, r20
    1650:	e8 81       	ld	r30, Y
    1652:	f9 81       	ldd	r31, Y+1	; 0x01
    1654:	01 90       	ld	r0, Z+
    1656:	f0 81       	ld	r31, Z
    1658:	e0 2d       	mov	r30, r0
    165a:	09 95       	icall
    165c:	e8 81       	ld	r30, Y
    165e:	f9 81       	ldd	r31, Y+1	; 0x01
    1660:	04 80       	ldd	r0, Z+4	; 0x04
    1662:	f5 81       	ldd	r31, Z+5	; 0x05
    1664:	e0 2d       	mov	r30, r0
    1666:	61 2f       	mov	r22, r17
    1668:	ce 01       	movw	r24, r28
    166a:	09 95       	icall
    166c:	e8 81       	ld	r30, Y
    166e:	f9 81       	ldd	r31, Y+1	; 0x01
    1670:	04 80       	ldd	r0, Z+4	; 0x04
    1672:	f5 81       	ldd	r31, Z+5	; 0x05
    1674:	e0 2d       	mov	r30, r0
    1676:	60 2f       	mov	r22, r16
    1678:	ce 01       	movw	r24, r28
    167a:	09 95       	icall
    167c:	e8 81       	ld	r30, Y
    167e:	f9 81       	ldd	r31, Y+1	; 0x01
    1680:	01 90       	ld	r0, Z+
    1682:	f0 81       	ld	r31, Z
    1684:	e0 2d       	mov	r30, r0
    1686:	ce 01       	movw	r24, r28
    1688:	09 95       	icall
    168a:	61 2f       	mov	r22, r17
    168c:	61 60       	ori	r22, 0x01	; 1
    168e:	e8 81       	ld	r30, Y
    1690:	f9 81       	ldd	r31, Y+1	; 0x01
    1692:	04 80       	ldd	r0, Z+4	; 0x04
    1694:	f5 81       	ldd	r31, Z+5	; 0x05
    1696:	e0 2d       	mov	r30, r0
    1698:	ce 01       	movw	r24, r28
    169a:	09 95       	icall
    169c:	e8 81       	ld	r30, Y
    169e:	f9 81       	ldd	r31, Y+1	; 0x01
    16a0:	06 80       	ldd	r0, Z+6	; 0x06
    16a2:	f7 81       	ldd	r31, Z+7	; 0x07
    16a4:	e0 2d       	mov	r30, r0
    16a6:	60 e0       	ldi	r22, 0x00	; 0
    16a8:	ce 01       	movw	r24, r28
    16aa:	09 95       	icall
    16ac:	18 2f       	mov	r17, r24
    16ae:	e8 81       	ld	r30, Y
    16b0:	f9 81       	ldd	r31, Y+1	; 0x01
    16b2:	02 80       	ldd	r0, Z+2	; 0x02
    16b4:	f3 81       	ldd	r31, Z+3	; 0x03
    16b6:	e0 2d       	mov	r30, r0
    16b8:	ce 01       	movw	r24, r28
    16ba:	09 95       	icall
    16bc:	81 2f       	mov	r24, r17
    16be:	df 91       	pop	r29
    16c0:	cf 91       	pop	r28
    16c2:	1f 91       	pop	r17
    16c4:	0f 91       	pop	r16
    16c6:	08 95       	ret

000016c8 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE14read_reg_16bitEhh>:
    16c8:	0f 93       	push	r16
    16ca:	1f 93       	push	r17
    16cc:	cf 93       	push	r28
    16ce:	df 93       	push	r29
    16d0:	ec 01       	movw	r28, r24
    16d2:	16 2f       	mov	r17, r22
    16d4:	04 2f       	mov	r16, r20
    16d6:	e8 81       	ld	r30, Y
    16d8:	f9 81       	ldd	r31, Y+1	; 0x01
    16da:	01 90       	ld	r0, Z+
    16dc:	f0 81       	ld	r31, Z
    16de:	e0 2d       	mov	r30, r0
    16e0:	09 95       	icall
    16e2:	e8 81       	ld	r30, Y
    16e4:	f9 81       	ldd	r31, Y+1	; 0x01
    16e6:	04 80       	ldd	r0, Z+4	; 0x04
    16e8:	f5 81       	ldd	r31, Z+5	; 0x05
    16ea:	e0 2d       	mov	r30, r0
    16ec:	61 2f       	mov	r22, r17
    16ee:	ce 01       	movw	r24, r28
    16f0:	09 95       	icall
    16f2:	e8 81       	ld	r30, Y
    16f4:	f9 81       	ldd	r31, Y+1	; 0x01
    16f6:	04 80       	ldd	r0, Z+4	; 0x04
    16f8:	f5 81       	ldd	r31, Z+5	; 0x05
    16fa:	e0 2d       	mov	r30, r0
    16fc:	60 2f       	mov	r22, r16
    16fe:	ce 01       	movw	r24, r28
    1700:	09 95       	icall
    1702:	e8 81       	ld	r30, Y
    1704:	f9 81       	ldd	r31, Y+1	; 0x01
    1706:	01 90       	ld	r0, Z+
    1708:	f0 81       	ld	r31, Z
    170a:	e0 2d       	mov	r30, r0
    170c:	ce 01       	movw	r24, r28
    170e:	09 95       	icall
    1710:	61 2f       	mov	r22, r17
    1712:	61 60       	ori	r22, 0x01	; 1
    1714:	e8 81       	ld	r30, Y
    1716:	f9 81       	ldd	r31, Y+1	; 0x01
    1718:	04 80       	ldd	r0, Z+4	; 0x04
    171a:	f5 81       	ldd	r31, Z+5	; 0x05
    171c:	e0 2d       	mov	r30, r0
    171e:	ce 01       	movw	r24, r28
    1720:	09 95       	icall
    1722:	e8 81       	ld	r30, Y
    1724:	f9 81       	ldd	r31, Y+1	; 0x01
    1726:	06 80       	ldd	r0, Z+6	; 0x06
    1728:	f7 81       	ldd	r31, Z+7	; 0x07
    172a:	e0 2d       	mov	r30, r0
    172c:	61 e0       	ldi	r22, 0x01	; 1
    172e:	ce 01       	movw	r24, r28
    1730:	09 95       	icall
    1732:	08 2f       	mov	r16, r24
    1734:	10 e0       	ldi	r17, 0x00	; 0
    1736:	10 2f       	mov	r17, r16
    1738:	00 27       	eor	r16, r16
    173a:	e8 81       	ld	r30, Y
    173c:	f9 81       	ldd	r31, Y+1	; 0x01
    173e:	06 80       	ldd	r0, Z+6	; 0x06
    1740:	f7 81       	ldd	r31, Z+7	; 0x07
    1742:	e0 2d       	mov	r30, r0
    1744:	60 e0       	ldi	r22, 0x00	; 0
    1746:	ce 01       	movw	r24, r28
    1748:	09 95       	icall
    174a:	08 2b       	or	r16, r24
    174c:	e8 81       	ld	r30, Y
    174e:	f9 81       	ldd	r31, Y+1	; 0x01
    1750:	02 80       	ldd	r0, Z+2	; 0x02
    1752:	f3 81       	ldd	r31, Z+3	; 0x03
    1754:	e0 2d       	mov	r30, r0
    1756:	ce 01       	movw	r24, r28
    1758:	09 95       	icall
    175a:	c8 01       	movw	r24, r16
    175c:	df 91       	pop	r29
    175e:	cf 91       	pop	r28
    1760:	1f 91       	pop	r17
    1762:	0f 91       	pop	r16
    1764:	08 95       	ret

00001766 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE14read_reg_multiEhhPhj>:
    1766:	cf 92       	push	r12
    1768:	df 92       	push	r13
    176a:	ef 92       	push	r14
    176c:	ff 92       	push	r15
    176e:	0f 93       	push	r16
    1770:	1f 93       	push	r17
    1772:	cf 93       	push	r28
    1774:	df 93       	push	r29
    1776:	ec 01       	movw	r28, r24
    1778:	f6 2e       	mov	r15, r22
    177a:	e4 2e       	mov	r14, r20
    177c:	69 01       	movw	r12, r18
    177e:	e8 81       	ld	r30, Y
    1780:	f9 81       	ldd	r31, Y+1	; 0x01
    1782:	01 90       	ld	r0, Z+
    1784:	f0 81       	ld	r31, Z
    1786:	e0 2d       	mov	r30, r0
    1788:	09 95       	icall
    178a:	e8 81       	ld	r30, Y
    178c:	f9 81       	ldd	r31, Y+1	; 0x01
    178e:	04 80       	ldd	r0, Z+4	; 0x04
    1790:	f5 81       	ldd	r31, Z+5	; 0x05
    1792:	e0 2d       	mov	r30, r0
    1794:	6f 2d       	mov	r22, r15
    1796:	ce 01       	movw	r24, r28
    1798:	09 95       	icall
    179a:	e8 81       	ld	r30, Y
    179c:	f9 81       	ldd	r31, Y+1	; 0x01
    179e:	04 80       	ldd	r0, Z+4	; 0x04
    17a0:	f5 81       	ldd	r31, Z+5	; 0x05
    17a2:	e0 2d       	mov	r30, r0
    17a4:	6e 2d       	mov	r22, r14
    17a6:	ce 01       	movw	r24, r28
    17a8:	09 95       	icall
    17aa:	e8 81       	ld	r30, Y
    17ac:	f9 81       	ldd	r31, Y+1	; 0x01
    17ae:	01 90       	ld	r0, Z+
    17b0:	f0 81       	ld	r31, Z
    17b2:	e0 2d       	mov	r30, r0
    17b4:	ce 01       	movw	r24, r28
    17b6:	09 95       	icall
    17b8:	6f 2d       	mov	r22, r15
    17ba:	61 60       	ori	r22, 0x01	; 1
    17bc:	e8 81       	ld	r30, Y
    17be:	f9 81       	ldd	r31, Y+1	; 0x01
    17c0:	04 80       	ldd	r0, Z+4	; 0x04
    17c2:	f5 81       	ldd	r31, Z+5	; 0x05
    17c4:	e0 2d       	mov	r30, r0
    17c6:	ce 01       	movw	r24, r28
    17c8:	09 95       	icall
    17ca:	76 01       	movw	r14, r12
    17cc:	0c 0d       	add	r16, r12
    17ce:	1d 1d       	adc	r17, r13
    17d0:	e8 81       	ld	r30, Y
    17d2:	f9 81       	ldd	r31, Y+1	; 0x01
    17d4:	e0 16       	cp	r14, r16
    17d6:	f1 06       	cpc	r15, r17
    17d8:	51 f0       	breq	.+20     	; 0x17ee <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x88>
    17da:	06 80       	ldd	r0, Z+6	; 0x06
    17dc:	f7 81       	ldd	r31, Z+7	; 0x07
    17de:	e0 2d       	mov	r30, r0
    17e0:	61 e0       	ldi	r22, 0x01	; 1
    17e2:	ce 01       	movw	r24, r28
    17e4:	09 95       	icall
    17e6:	f7 01       	movw	r30, r14
    17e8:	81 93       	st	Z+, r24
    17ea:	7f 01       	movw	r14, r30
    17ec:	f1 cf       	rjmp	.-30     	; 0x17d0 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x6a>
    17ee:	02 80       	ldd	r0, Z+2	; 0x02
    17f0:	f3 81       	ldd	r31, Z+3	; 0x03
    17f2:	e0 2d       	mov	r30, r0
    17f4:	ce 01       	movw	r24, r28
    17f6:	df 91       	pop	r29
    17f8:	cf 91       	pop	r28
    17fa:	1f 91       	pop	r17
    17fc:	0f 91       	pop	r16
    17fe:	ff 90       	pop	r15
    1800:	ef 90       	pop	r14
    1802:	df 90       	pop	r13
    1804:	cf 90       	pop	r12
    1806:	09 94       	ijmp

00001808 <_ZN16CMeasurementTaskD1Ev>:
    1808:	0f 93       	push	r16
    180a:	1f 93       	push	r17
    180c:	cf 93       	push	r28
    180e:	df 93       	push	r29
    1810:	29 e8       	ldi	r18, 0x89	; 137
    1812:	31 e0       	ldi	r19, 0x01	; 1
    1814:	fc 01       	movw	r30, r24
    1816:	31 83       	std	Z+1, r19	; 0x01
    1818:	20 83       	st	Z, r18
    181a:	8c 01       	movw	r16, r24
    181c:	0e 5e       	subi	r16, 0xEE	; 238
    181e:	1f 4f       	sbci	r17, 0xFF	; 255
    1820:	59 f0       	breq	.+22     	; 0x1838 <_ZN16CMeasurementTaskD1Ev+0x30>
    1822:	ec 01       	movw	r28, r24
    1824:	ce 57       	subi	r28, 0x7E	; 126
    1826:	df 4f       	sbci	r29, 0xFF	; 255
    1828:	0c 17       	cp	r16, r28
    182a:	1d 07       	cpc	r17, r29
    182c:	29 f0       	breq	.+10     	; 0x1838 <_ZN16CMeasurementTaskD1Ev+0x30>
    182e:	6c 97       	sbiw	r28, 0x1c	; 28
    1830:	ce 01       	movw	r24, r28
    1832:	0e 94 6a 05 	call	0xad4	; 0xad4 <_ZN16CObjectDetectionD1Ev>
    1836:	f8 cf       	rjmp	.-16     	; 0x1828 <_ZN16CMeasurementTaskD1Ev+0x20>
    1838:	df 91       	pop	r29
    183a:	cf 91       	pop	r28
    183c:	1f 91       	pop	r17
    183e:	0f 91       	pop	r16
    1840:	08 95       	ret

00001842 <_ZN16CMeasurementTaskD0Ev>:
    1842:	cf 93       	push	r28
    1844:	df 93       	push	r29
    1846:	ec 01       	movw	r28, r24
    1848:	0e 94 04 0c 	call	0x1808	; 0x1808 <_ZN16CMeasurementTaskD1Ev>
    184c:	ce 01       	movw	r24, r28
    184e:	df 91       	pop	r29
    1850:	cf 91       	pop	r28
    1852:	0c 94 66 05 	jmp	0xacc	; 0xacc <_ZdlPv>

00001856 <_ZN16CMeasurementTaskclEv>:
    1856:	0f 93       	push	r16
    1858:	1f 93       	push	r17
    185a:	cf 93       	push	r28
    185c:	df 93       	push	r29
    185e:	ec 01       	movw	r28, r24
    1860:	42 96       	adiw	r24, 0x12	; 18
    1862:	0e 94 78 05 	call	0xaf0	; 0xaf0 <_ZN16CObjectDetection7processEv>
    1866:	ce 01       	movw	r24, r28
    1868:	8e 96       	adiw	r24, 0x2e	; 46
    186a:	0e 94 78 05 	call	0xaf0	; 0xaf0 <_ZN16CObjectDetection7processEv>
    186e:	ce 01       	movw	r24, r28
    1870:	86 5b       	subi	r24, 0xB6	; 182
    1872:	9f 4f       	sbci	r25, 0xFF	; 255
    1874:	0e 94 78 05 	call	0xaf0	; 0xaf0 <_ZN16CObjectDetection7processEv>
    1878:	ce 01       	movw	r24, r28
    187a:	8a 59       	subi	r24, 0x9A	; 154
    187c:	9f 4f       	sbci	r25, 0xFF	; 255
    187e:	0e 94 78 05 	call	0xaf0	; 0xaf0 <_ZN16CObjectDetection7processEv>
    1882:	9e 01       	movw	r18, r28
    1884:	20 59       	subi	r18, 0x90	; 144
    1886:	3f 4f       	sbci	r19, 0xFF	; 255
    1888:	8e 01       	movw	r16, r28
    188a:	80 e0       	ldi	r24, 0x00	; 0
    188c:	f8 01       	movw	r30, r16
    188e:	95 a5       	ldd	r25, Z+45	; 0x2d
    1890:	91 11       	cpse	r25, r1
    1892:	89 2f       	mov	r24, r25
    1894:	04 5e       	subi	r16, 0xE4	; 228
    1896:	1f 4f       	sbci	r17, 0xFF	; 255
    1898:	20 17       	cp	r18, r16
    189a:	31 07       	cpc	r19, r17
    189c:	b9 f7       	brne	.-18     	; 0x188c <_ZN16CMeasurementTaskclEv+0x36>
    189e:	88 23       	and	r24, r24
    18a0:	69 f1       	breq	.+90     	; 0x18fc <_ZN16CMeasurementTaskclEv+0xa6>
    18a2:	80 e9       	ldi	r24, 0x90	; 144
    18a4:	91 e0       	ldi	r25, 0x01	; 1
    18a6:	0e 94 ef 03 	call	0x7de	; 0x7de <_ZN8CRTTimer8get_timeEv>
    18aa:	ab 01       	movw	r20, r22
    18ac:	bc 01       	movw	r22, r24
    18ae:	85 ed       	ldi	r24, 0xD5	; 213
    18b0:	91 e0       	ldi	r25, 0x01	; 1
    18b2:	0e 94 12 05 	call	0xa24	; 0xa24 <_ZN9CTerminal5putuiEm>
    18b6:	61 e1       	ldi	r22, 0x11	; 17
    18b8:	71 e0       	ldi	r23, 0x01	; 1
    18ba:	85 ed       	ldi	r24, 0xD5	; 213
    18bc:	91 e0       	ldi	r25, 0x01	; 1
    18be:	0e 94 94 04 	call	0x928	; 0x928 <_ZN9CTerminal4putsEPKc>
    18c2:	8d a5       	ldd	r24, Y+45	; 0x2d
    18c4:	61 e3       	ldi	r22, 0x31	; 49
    18c6:	81 11       	cpse	r24, r1
    18c8:	01 c0       	rjmp	.+2      	; 0x18cc <_ZN16CMeasurementTaskclEv+0x76>
    18ca:	60 e3       	ldi	r22, 0x30	; 48
    18cc:	85 ed       	ldi	r24, 0xD5	; 213
    18ce:	91 e0       	ldi	r25, 0x01	; 1
    18d0:	0e 94 80 04 	call	0x900	; 0x900 <_ZN6CUSART8put_charEc>
    18d4:	61 e1       	ldi	r22, 0x11	; 17
    18d6:	71 e0       	ldi	r23, 0x01	; 1
    18d8:	85 ed       	ldi	r24, 0xD5	; 213
    18da:	91 e0       	ldi	r25, 0x01	; 1
    18dc:	0e 94 94 04 	call	0x928	; 0x928 <_ZN9CTerminal4putsEPKc>
    18e0:	6c 96       	adiw	r28, 0x1c	; 28
    18e2:	c0 17       	cp	r28, r16
    18e4:	d1 07       	cpc	r29, r17
    18e6:	69 f7       	brne	.-38     	; 0x18c2 <_ZN16CMeasurementTaskclEv+0x6c>
    18e8:	63 e2       	ldi	r22, 0x23	; 35
    18ea:	71 e0       	ldi	r23, 0x01	; 1
    18ec:	85 ed       	ldi	r24, 0xD5	; 213
    18ee:	91 e0       	ldi	r25, 0x01	; 1
    18f0:	df 91       	pop	r29
    18f2:	cf 91       	pop	r28
    18f4:	1f 91       	pop	r17
    18f6:	0f 91       	pop	r16
    18f8:	0c 94 94 04 	jmp	0x928	; 0x928 <_ZN9CTerminal4putsEPKc>
    18fc:	df 91       	pop	r29
    18fe:	cf 91       	pop	r28
    1900:	1f 91       	pop	r17
    1902:	0f 91       	pop	r16
    1904:	08 95       	ret

00001906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>:
    1906:	88 23       	and	r24, r24
    1908:	11 f0       	breq	.+4      	; 0x190e <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3+0x8>
    190a:	3d 98       	cbi	0x07, 5	; 7
    190c:	08 95       	ret
    190e:	3d 9a       	sbi	0x07, 5	; 7
    1910:	08 95       	ret

00001912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>:
	...
    191a:	00 00       	nop
    191c:	08 95       	ret

0000191e <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE5startEv>:
    191e:	81 e0       	ldi	r24, 0x01	; 1
    1920:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1924:	3b 98       	cbi	0x07, 3	; 7
    1926:	81 e0       	ldi	r24, 0x01	; 1
    1928:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    192c:	3b 9a       	sbi	0x07, 3	; 7
    192e:	80 e0       	ldi	r24, 0x00	; 0
    1930:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1934:	3b 98       	cbi	0x07, 3	; 7
    1936:	0c 94 89 0c 	jmp	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

0000193a <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE4stopEv>:
    193a:	80 e0       	ldi	r24, 0x00	; 0
    193c:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1940:	3b 9a       	sbi	0x07, 3	; 7
    1942:	81 e0       	ldi	r24, 0x01	; 1
    1944:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1948:	3b 9a       	sbi	0x07, 3	; 7
    194a:	81 e0       	ldi	r24, 0x01	; 1
    194c:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1950:	3b 98       	cbi	0x07, 3	; 7
    1952:	0c 94 89 0c 	jmp	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

00001956 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE5startEv>:
    1956:	81 e0       	ldi	r24, 0x01	; 1
    1958:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    195c:	3a 98       	cbi	0x07, 2	; 7
    195e:	81 e0       	ldi	r24, 0x01	; 1
    1960:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1964:	3a 9a       	sbi	0x07, 2	; 7
    1966:	80 e0       	ldi	r24, 0x00	; 0
    1968:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    196c:	3a 98       	cbi	0x07, 2	; 7
    196e:	0c 94 89 0c 	jmp	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

00001972 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE4stopEv>:
    1972:	80 e0       	ldi	r24, 0x00	; 0
    1974:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1978:	3a 9a       	sbi	0x07, 2	; 7
    197a:	81 e0       	ldi	r24, 0x01	; 1
    197c:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1980:	3a 9a       	sbi	0x07, 2	; 7
    1982:	81 e0       	ldi	r24, 0x01	; 1
    1984:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1988:	3a 98       	cbi	0x07, 2	; 7
    198a:	0c 94 89 0c 	jmp	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

0000198e <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4stopEv>:
    198e:	80 e0       	ldi	r24, 0x00	; 0
    1990:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1994:	38 9a       	sbi	0x07, 0	; 7
    1996:	81 e0       	ldi	r24, 0x01	; 1
    1998:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    199c:	38 9a       	sbi	0x07, 0	; 7
    199e:	81 e0       	ldi	r24, 0x01	; 1
    19a0:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    19a4:	38 98       	cbi	0x07, 0	; 7
    19a6:	0c 94 89 0c 	jmp	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

000019aa <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5startEv>:
    19aa:	81 e0       	ldi	r24, 0x01	; 1
    19ac:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    19b0:	38 98       	cbi	0x07, 0	; 7
    19b2:	81 e0       	ldi	r24, 0x01	; 1
    19b4:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    19b8:	38 9a       	sbi	0x07, 0	; 7
    19ba:	80 e0       	ldi	r24, 0x00	; 0
    19bc:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    19c0:	38 98       	cbi	0x07, 0	; 7
    19c2:	0c 94 89 0c 	jmp	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

000019c6 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE5startEv>:
    19c6:	81 e0       	ldi	r24, 0x01	; 1
    19c8:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    19cc:	39 98       	cbi	0x07, 1	; 7
    19ce:	81 e0       	ldi	r24, 0x01	; 1
    19d0:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    19d4:	39 9a       	sbi	0x07, 1	; 7
    19d6:	80 e0       	ldi	r24, 0x00	; 0
    19d8:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    19dc:	39 98       	cbi	0x07, 1	; 7
    19de:	0c 94 89 0c 	jmp	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

000019e2 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE4stopEv>:
    19e2:	80 e0       	ldi	r24, 0x00	; 0
    19e4:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    19e8:	39 9a       	sbi	0x07, 1	; 7
    19ea:	81 e0       	ldi	r24, 0x01	; 1
    19ec:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    19f0:	39 9a       	sbi	0x07, 1	; 7
    19f2:	81 e0       	ldi	r24, 0x01	; 1
    19f4:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    19f8:	39 98       	cbi	0x07, 1	; 7
    19fa:	0c 94 89 0c 	jmp	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

000019fe <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5writeEh>:
    19fe:	cf 93       	push	r28
    1a00:	df 93       	push	r29
    1a02:	d6 2f       	mov	r29, r22
    1a04:	c8 e0       	ldi	r28, 0x08	; 8
    1a06:	80 e0       	ldi	r24, 0x00	; 0
    1a08:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1a0c:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a10:	d7 ff       	sbrs	r29, 7
    1a12:	24 c0       	rjmp	.+72     	; 0x1a5c <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5writeEh+0x5e>
    1a14:	38 98       	cbi	0x07, 0	; 7
    1a16:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a1a:	81 e0       	ldi	r24, 0x01	; 1
    1a1c:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1a20:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a24:	dd 0f       	add	r29, r29
    1a26:	c1 50       	subi	r28, 0x01	; 1
    1a28:	71 f7       	brne	.-36     	; 0x1a06 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5writeEh+0x8>
    1a2a:	80 e0       	ldi	r24, 0x00	; 0
    1a2c:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1a30:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a34:	38 98       	cbi	0x07, 0	; 7
    1a36:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a3a:	81 e0       	ldi	r24, 0x01	; 1
    1a3c:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1a40:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a44:	c6 b1       	in	r28, 0x06	; 6
    1a46:	80 e0       	ldi	r24, 0x00	; 0
    1a48:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1a4c:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a50:	8c 2f       	mov	r24, r28
    1a52:	80 95       	com	r24
    1a54:	81 70       	andi	r24, 0x01	; 1
    1a56:	df 91       	pop	r29
    1a58:	cf 91       	pop	r28
    1a5a:	08 95       	ret
    1a5c:	38 9a       	sbi	0x07, 0	; 7
    1a5e:	db cf       	rjmp	.-74     	; 0x1a16 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5writeEh+0x18>

00001a60 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE5writeEh>:
    1a60:	cf 93       	push	r28
    1a62:	df 93       	push	r29
    1a64:	d6 2f       	mov	r29, r22
    1a66:	c8 e0       	ldi	r28, 0x08	; 8
    1a68:	80 e0       	ldi	r24, 0x00	; 0
    1a6a:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1a6e:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a72:	d7 ff       	sbrs	r29, 7
    1a74:	26 c0       	rjmp	.+76     	; 0x1ac2 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE5writeEh+0x62>
    1a76:	3a 98       	cbi	0x07, 2	; 7
    1a78:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a7c:	81 e0       	ldi	r24, 0x01	; 1
    1a7e:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1a82:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a86:	dd 0f       	add	r29, r29
    1a88:	c1 50       	subi	r28, 0x01	; 1
    1a8a:	71 f7       	brne	.-36     	; 0x1a68 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE5writeEh+0x8>
    1a8c:	80 e0       	ldi	r24, 0x00	; 0
    1a8e:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1a92:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a96:	3a 98       	cbi	0x07, 2	; 7
    1a98:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a9c:	81 e0       	ldi	r24, 0x01	; 1
    1a9e:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1aa2:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1aa6:	c6 b1       	in	r28, 0x06	; 6
    1aa8:	80 e0       	ldi	r24, 0x00	; 0
    1aaa:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1aae:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1ab2:	c2 fb       	bst	r28, 2
    1ab4:	cc 27       	eor	r28, r28
    1ab6:	c0 f9       	bld	r28, 0
    1ab8:	81 e0       	ldi	r24, 0x01	; 1
    1aba:	8c 27       	eor	r24, r28
    1abc:	df 91       	pop	r29
    1abe:	cf 91       	pop	r28
    1ac0:	08 95       	ret
    1ac2:	3a 9a       	sbi	0x07, 2	; 7
    1ac4:	d9 cf       	rjmp	.-78     	; 0x1a78 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE5writeEh+0x18>

00001ac6 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE5writeEh>:
    1ac6:	cf 93       	push	r28
    1ac8:	df 93       	push	r29
    1aca:	d6 2f       	mov	r29, r22
    1acc:	c8 e0       	ldi	r28, 0x08	; 8
    1ace:	80 e0       	ldi	r24, 0x00	; 0
    1ad0:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1ad4:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1ad8:	d7 ff       	sbrs	r29, 7
    1ada:	26 c0       	rjmp	.+76     	; 0x1b28 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE5writeEh+0x62>
    1adc:	3b 98       	cbi	0x07, 3	; 7
    1ade:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1ae2:	81 e0       	ldi	r24, 0x01	; 1
    1ae4:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1ae8:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1aec:	dd 0f       	add	r29, r29
    1aee:	c1 50       	subi	r28, 0x01	; 1
    1af0:	71 f7       	brne	.-36     	; 0x1ace <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE5writeEh+0x8>
    1af2:	80 e0       	ldi	r24, 0x00	; 0
    1af4:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1af8:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1afc:	3b 98       	cbi	0x07, 3	; 7
    1afe:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1b02:	81 e0       	ldi	r24, 0x01	; 1
    1b04:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1b08:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1b0c:	c6 b1       	in	r28, 0x06	; 6
    1b0e:	80 e0       	ldi	r24, 0x00	; 0
    1b10:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1b14:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1b18:	c3 fb       	bst	r28, 3
    1b1a:	cc 27       	eor	r28, r28
    1b1c:	c0 f9       	bld	r28, 0
    1b1e:	81 e0       	ldi	r24, 0x01	; 1
    1b20:	8c 27       	eor	r24, r28
    1b22:	df 91       	pop	r29
    1b24:	cf 91       	pop	r28
    1b26:	08 95       	ret
    1b28:	3b 9a       	sbi	0x07, 3	; 7
    1b2a:	d9 cf       	rjmp	.-78     	; 0x1ade <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE5writeEh+0x18>

00001b2c <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE5writeEh>:
    1b2c:	cf 93       	push	r28
    1b2e:	df 93       	push	r29
    1b30:	d6 2f       	mov	r29, r22
    1b32:	c8 e0       	ldi	r28, 0x08	; 8
    1b34:	80 e0       	ldi	r24, 0x00	; 0
    1b36:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1b3a:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1b3e:	d7 ff       	sbrs	r29, 7
    1b40:	25 c0       	rjmp	.+74     	; 0x1b8c <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE5writeEh+0x60>
    1b42:	39 98       	cbi	0x07, 1	; 7
    1b44:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1b48:	81 e0       	ldi	r24, 0x01	; 1
    1b4a:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1b4e:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1b52:	dd 0f       	add	r29, r29
    1b54:	c1 50       	subi	r28, 0x01	; 1
    1b56:	71 f7       	brne	.-36     	; 0x1b34 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE5writeEh+0x8>
    1b58:	80 e0       	ldi	r24, 0x00	; 0
    1b5a:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1b5e:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1b62:	39 98       	cbi	0x07, 1	; 7
    1b64:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1b68:	81 e0       	ldi	r24, 0x01	; 1
    1b6a:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1b6e:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1b72:	c6 b1       	in	r28, 0x06	; 6
    1b74:	80 e0       	ldi	r24, 0x00	; 0
    1b76:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1b7a:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1b7e:	c6 95       	lsr	r28
    1b80:	c1 70       	andi	r28, 0x01	; 1
    1b82:	81 e0       	ldi	r24, 0x01	; 1
    1b84:	8c 27       	eor	r24, r28
    1b86:	df 91       	pop	r29
    1b88:	cf 91       	pop	r28
    1b8a:	08 95       	ret
    1b8c:	39 9a       	sbi	0x07, 1	; 7
    1b8e:	da cf       	rjmp	.-76     	; 0x1b44 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE5writeEh+0x18>

00001b90 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE4readEh>:
    1b90:	1f 93       	push	r17
    1b92:	cf 93       	push	r28
    1b94:	df 93       	push	r29
    1b96:	16 2f       	mov	r17, r22
    1b98:	3b 98       	cbi	0x07, 3	; 7
    1b9a:	80 e0       	ldi	r24, 0x00	; 0
    1b9c:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1ba0:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1ba4:	d8 e0       	ldi	r29, 0x08	; 8
    1ba6:	c0 e0       	ldi	r28, 0x00	; 0
    1ba8:	cc 0f       	add	r28, r28
    1baa:	81 e0       	ldi	r24, 0x01	; 1
    1bac:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1bb0:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1bb4:	33 99       	sbic	0x06, 3	; 6
    1bb6:	c1 60       	ori	r28, 0x01	; 1
    1bb8:	80 e0       	ldi	r24, 0x00	; 0
    1bba:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1bbe:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1bc2:	d1 50       	subi	r29, 0x01	; 1
    1bc4:	89 f7       	brne	.-30     	; 0x1ba8 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE4readEh+0x18>
    1bc6:	11 23       	and	r17, r17
    1bc8:	a9 f0       	breq	.+42     	; 0x1bf4 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE4readEh+0x64>
    1bca:	3b 9a       	sbi	0x07, 3	; 7
    1bcc:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1bd0:	81 e0       	ldi	r24, 0x01	; 1
    1bd2:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1bd6:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1bda:	80 e0       	ldi	r24, 0x00	; 0
    1bdc:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1be0:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1be4:	3b 98       	cbi	0x07, 3	; 7
    1be6:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1bea:	8c 2f       	mov	r24, r28
    1bec:	df 91       	pop	r29
    1bee:	cf 91       	pop	r28
    1bf0:	1f 91       	pop	r17
    1bf2:	08 95       	ret
    1bf4:	3b 98       	cbi	0x07, 3	; 7
    1bf6:	ea cf       	rjmp	.-44     	; 0x1bcc <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE4readEh+0x3c>

00001bf8 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE4readEh>:
    1bf8:	1f 93       	push	r17
    1bfa:	cf 93       	push	r28
    1bfc:	df 93       	push	r29
    1bfe:	16 2f       	mov	r17, r22
    1c00:	3a 98       	cbi	0x07, 2	; 7
    1c02:	80 e0       	ldi	r24, 0x00	; 0
    1c04:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1c08:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1c0c:	d8 e0       	ldi	r29, 0x08	; 8
    1c0e:	c0 e0       	ldi	r28, 0x00	; 0
    1c10:	cc 0f       	add	r28, r28
    1c12:	81 e0       	ldi	r24, 0x01	; 1
    1c14:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1c18:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1c1c:	32 99       	sbic	0x06, 2	; 6
    1c1e:	c1 60       	ori	r28, 0x01	; 1
    1c20:	80 e0       	ldi	r24, 0x00	; 0
    1c22:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1c26:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1c2a:	d1 50       	subi	r29, 0x01	; 1
    1c2c:	89 f7       	brne	.-30     	; 0x1c10 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE4readEh+0x18>
    1c2e:	11 23       	and	r17, r17
    1c30:	a9 f0       	breq	.+42     	; 0x1c5c <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE4readEh+0x64>
    1c32:	3a 9a       	sbi	0x07, 2	; 7
    1c34:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1c38:	81 e0       	ldi	r24, 0x01	; 1
    1c3a:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1c3e:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1c42:	80 e0       	ldi	r24, 0x00	; 0
    1c44:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1c48:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1c4c:	3a 98       	cbi	0x07, 2	; 7
    1c4e:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1c52:	8c 2f       	mov	r24, r28
    1c54:	df 91       	pop	r29
    1c56:	cf 91       	pop	r28
    1c58:	1f 91       	pop	r17
    1c5a:	08 95       	ret
    1c5c:	3a 98       	cbi	0x07, 2	; 7
    1c5e:	ea cf       	rjmp	.-44     	; 0x1c34 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE4readEh+0x3c>

00001c60 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4readEh>:
    1c60:	1f 93       	push	r17
    1c62:	cf 93       	push	r28
    1c64:	df 93       	push	r29
    1c66:	16 2f       	mov	r17, r22
    1c68:	38 98       	cbi	0x07, 0	; 7
    1c6a:	80 e0       	ldi	r24, 0x00	; 0
    1c6c:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1c70:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1c74:	d8 e0       	ldi	r29, 0x08	; 8
    1c76:	c0 e0       	ldi	r28, 0x00	; 0
    1c78:	cc 0f       	add	r28, r28
    1c7a:	81 e0       	ldi	r24, 0x01	; 1
    1c7c:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1c80:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1c84:	30 99       	sbic	0x06, 0	; 6
    1c86:	c1 60       	ori	r28, 0x01	; 1
    1c88:	80 e0       	ldi	r24, 0x00	; 0
    1c8a:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1c8e:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1c92:	d1 50       	subi	r29, 0x01	; 1
    1c94:	89 f7       	brne	.-30     	; 0x1c78 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4readEh+0x18>
    1c96:	11 23       	and	r17, r17
    1c98:	a9 f0       	breq	.+42     	; 0x1cc4 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4readEh+0x64>
    1c9a:	38 9a       	sbi	0x07, 0	; 7
    1c9c:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1ca0:	81 e0       	ldi	r24, 0x01	; 1
    1ca2:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1ca6:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1caa:	80 e0       	ldi	r24, 0x00	; 0
    1cac:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1cb0:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1cb4:	38 98       	cbi	0x07, 0	; 7
    1cb6:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1cba:	8c 2f       	mov	r24, r28
    1cbc:	df 91       	pop	r29
    1cbe:	cf 91       	pop	r28
    1cc0:	1f 91       	pop	r17
    1cc2:	08 95       	ret
    1cc4:	38 98       	cbi	0x07, 0	; 7
    1cc6:	ea cf       	rjmp	.-44     	; 0x1c9c <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4readEh+0x3c>

00001cc8 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE4readEh>:
    1cc8:	1f 93       	push	r17
    1cca:	cf 93       	push	r28
    1ccc:	df 93       	push	r29
    1cce:	16 2f       	mov	r17, r22
    1cd0:	39 98       	cbi	0x07, 1	; 7
    1cd2:	80 e0       	ldi	r24, 0x00	; 0
    1cd4:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1cd8:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1cdc:	d8 e0       	ldi	r29, 0x08	; 8
    1cde:	c0 e0       	ldi	r28, 0x00	; 0
    1ce0:	cc 0f       	add	r28, r28
    1ce2:	81 e0       	ldi	r24, 0x01	; 1
    1ce4:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1ce8:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1cec:	31 99       	sbic	0x06, 1	; 6
    1cee:	c1 60       	ori	r28, 0x01	; 1
    1cf0:	80 e0       	ldi	r24, 0x00	; 0
    1cf2:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1cf6:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1cfa:	d1 50       	subi	r29, 0x01	; 1
    1cfc:	89 f7       	brne	.-30     	; 0x1ce0 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE4readEh+0x18>
    1cfe:	11 23       	and	r17, r17
    1d00:	a9 f0       	breq	.+42     	; 0x1d2c <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE4readEh+0x64>
    1d02:	39 9a       	sbi	0x07, 1	; 7
    1d04:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1d08:	81 e0       	ldi	r24, 0x01	; 1
    1d0a:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1d0e:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1d12:	80 e0       	ldi	r24, 0x00	; 0
    1d14:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1d18:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1d1c:	39 98       	cbi	0x07, 1	; 7
    1d1e:	0e 94 89 0c 	call	0x1912	; 0x1912 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1d22:	8c 2f       	mov	r24, r28
    1d24:	df 91       	pop	r29
    1d26:	cf 91       	pop	r28
    1d28:	1f 91       	pop	r17
    1d2a:	08 95       	ret
    1d2c:	39 98       	cbi	0x07, 1	; 7
    1d2e:	ea cf       	rjmp	.-44     	; 0x1d04 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE4readEh+0x3c>

00001d30 <_ZN16CMeasurementTaskC1Ev>:
    1d30:	4f 92       	push	r4
    1d32:	5f 92       	push	r5
    1d34:	6f 92       	push	r6
    1d36:	7f 92       	push	r7
    1d38:	8f 92       	push	r8
    1d3a:	9f 92       	push	r9
    1d3c:	af 92       	push	r10
    1d3e:	bf 92       	push	r11
    1d40:	cf 92       	push	r12
    1d42:	df 92       	push	r13
    1d44:	ef 92       	push	r14
    1d46:	ff 92       	push	r15
    1d48:	0f 93       	push	r16
    1d4a:	1f 93       	push	r17
    1d4c:	cf 93       	push	r28
    1d4e:	df 93       	push	r29
    1d50:	ec 01       	movw	r28, r24
    1d52:	89 e8       	ldi	r24, 0x89	; 137
    1d54:	91 e0       	ldi	r25, 0x01	; 1
    1d56:	fe 01       	movw	r30, r28
    1d58:	81 93       	st	Z+, r24
    1d5a:	91 93       	st	Z+, r25
    1d5c:	7f 01       	movw	r14, r30
    1d5e:	89 e2       	ldi	r24, 0x29	; 41
    1d60:	91 e0       	ldi	r25, 0x01	; 1
    1d62:	9b 83       	std	Y+3, r25	; 0x03
    1d64:	8a 83       	std	Y+2, r24	; 0x02
    1d66:	38 98       	cbi	0x07, 0	; 7
    1d68:	81 e0       	ldi	r24, 0x01	; 1
    1d6a:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1d6e:	40 98       	cbi	0x08, 0	; 8
    1d70:	45 98       	cbi	0x08, 5	; 8
    1d72:	6e 01       	movw	r12, r28
    1d74:	f6 e0       	ldi	r31, 0x06	; 6
    1d76:	cf 0e       	add	r12, r31
    1d78:	d1 1c       	adc	r13, r1
    1d7a:	81 e4       	ldi	r24, 0x41	; 65
    1d7c:	91 e0       	ldi	r25, 0x01	; 1
    1d7e:	9f 83       	std	Y+7, r25	; 0x07
    1d80:	8e 83       	std	Y+6, r24	; 0x06
    1d82:	39 98       	cbi	0x07, 1	; 7
    1d84:	81 e0       	ldi	r24, 0x01	; 1
    1d86:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1d8a:	41 98       	cbi	0x08, 1	; 8
    1d8c:	45 98       	cbi	0x08, 5	; 8
    1d8e:	3e 01       	movw	r6, r28
    1d90:	8a e0       	ldi	r24, 0x0A	; 10
    1d92:	68 0e       	add	r6, r24
    1d94:	71 1c       	adc	r7, r1
    1d96:	89 e5       	ldi	r24, 0x59	; 89
    1d98:	91 e0       	ldi	r25, 0x01	; 1
    1d9a:	9b 87       	std	Y+11, r25	; 0x0b
    1d9c:	8a 87       	std	Y+10, r24	; 0x0a
    1d9e:	3a 98       	cbi	0x07, 2	; 7
    1da0:	81 e0       	ldi	r24, 0x01	; 1
    1da2:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1da6:	42 98       	cbi	0x08, 2	; 8
    1da8:	45 98       	cbi	0x08, 5	; 8
    1daa:	2e 01       	movw	r4, r28
    1dac:	ee e0       	ldi	r30, 0x0E	; 14
    1dae:	4e 0e       	add	r4, r30
    1db0:	51 1c       	adc	r5, r1
    1db2:	81 e7       	ldi	r24, 0x71	; 113
    1db4:	91 e0       	ldi	r25, 0x01	; 1
    1db6:	9f 87       	std	Y+15, r25	; 0x0f
    1db8:	8e 87       	std	Y+14, r24	; 0x0e
    1dba:	3b 98       	cbi	0x07, 3	; 7
    1dbc:	81 e0       	ldi	r24, 0x01	; 1
    1dbe:	0e 94 83 0c 	call	0x1906	; 0x1906 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1dc2:	43 98       	cbi	0x08, 3	; 8
    1dc4:	45 98       	cbi	0x08, 5	; 8
    1dc6:	4e 01       	movw	r8, r28
    1dc8:	f2 e1       	ldi	r31, 0x12	; 18
    1dca:	8f 0e       	add	r8, r31
    1dcc:	91 1c       	adc	r9, r1
    1dce:	84 01       	movw	r16, r8
    1dd0:	5e 01       	movw	r10, r28
    1dd2:	82 e8       	ldi	r24, 0x82	; 130
    1dd4:	a8 0e       	add	r10, r24
    1dd6:	b1 1c       	adc	r11, r1
    1dd8:	c8 01       	movw	r24, r16
    1dda:	0e 94 68 05 	call	0xad0	; 0xad0 <_ZN16CObjectDetectionC1Ev>
    1dde:	04 5e       	subi	r16, 0xE4	; 228
    1de0:	1f 4f       	sbci	r17, 0xFF	; 255
    1de2:	a0 16       	cp	r10, r16
    1de4:	b1 06       	cpc	r11, r17
    1de6:	c1 f7       	brne	.-16     	; 0x1dd8 <_ZN16CMeasurementTaskC1Ev+0xa8>
    1de8:	b7 01       	movw	r22, r14
    1dea:	c4 01       	movw	r24, r8
    1dec:	0e 94 6c 05 	call	0xad8	; 0xad8 <_ZN16CObjectDetection4initEP14CI2C_Interface>
    1df0:	8c 01       	movw	r16, r24
    1df2:	66 e0       	ldi	r22, 0x06	; 6
    1df4:	71 e0       	ldi	r23, 0x01	; 1
    1df6:	85 ed       	ldi	r24, 0xD5	; 213
    1df8:	91 e0       	ldi	r25, 0x01	; 1
    1dfa:	0e 94 94 04 	call	0x928	; 0x928 <_ZN9CTerminal4putsEPKc>
    1dfe:	a8 01       	movw	r20, r16
    1e00:	11 0f       	add	r17, r17
    1e02:	66 0b       	sbc	r22, r22
    1e04:	77 0b       	sbc	r23, r23
    1e06:	85 ed       	ldi	r24, 0xD5	; 213
    1e08:	91 e0       	ldi	r25, 0x01	; 1
    1e0a:	0e 94 a6 04 	call	0x94c	; 0x94c <_ZN9CTerminal4putiEl>
    1e0e:	63 e2       	ldi	r22, 0x23	; 35
    1e10:	71 e0       	ldi	r23, 0x01	; 1
    1e12:	85 ed       	ldi	r24, 0xD5	; 213
    1e14:	91 e0       	ldi	r25, 0x01	; 1
    1e16:	0e 94 94 04 	call	0x928	; 0x928 <_ZN9CTerminal4putsEPKc>
    1e1a:	b6 01       	movw	r22, r12
    1e1c:	ce 01       	movw	r24, r28
    1e1e:	8e 96       	adiw	r24, 0x2e	; 46
    1e20:	0e 94 6c 05 	call	0xad8	; 0xad8 <_ZN16CObjectDetection4initEP14CI2C_Interface>
    1e24:	8c 01       	movw	r16, r24
    1e26:	66 e0       	ldi	r22, 0x06	; 6
    1e28:	71 e0       	ldi	r23, 0x01	; 1
    1e2a:	85 ed       	ldi	r24, 0xD5	; 213
    1e2c:	91 e0       	ldi	r25, 0x01	; 1
    1e2e:	0e 94 94 04 	call	0x928	; 0x928 <_ZN9CTerminal4putsEPKc>
    1e32:	a8 01       	movw	r20, r16
    1e34:	11 0f       	add	r17, r17
    1e36:	66 0b       	sbc	r22, r22
    1e38:	77 0b       	sbc	r23, r23
    1e3a:	85 ed       	ldi	r24, 0xD5	; 213
    1e3c:	91 e0       	ldi	r25, 0x01	; 1
    1e3e:	0e 94 a6 04 	call	0x94c	; 0x94c <_ZN9CTerminal4putiEl>
    1e42:	63 e2       	ldi	r22, 0x23	; 35
    1e44:	71 e0       	ldi	r23, 0x01	; 1
    1e46:	85 ed       	ldi	r24, 0xD5	; 213
    1e48:	91 e0       	ldi	r25, 0x01	; 1
    1e4a:	0e 94 94 04 	call	0x928	; 0x928 <_ZN9CTerminal4putsEPKc>
    1e4e:	b3 01       	movw	r22, r6
    1e50:	ce 01       	movw	r24, r28
    1e52:	86 5b       	subi	r24, 0xB6	; 182
    1e54:	9f 4f       	sbci	r25, 0xFF	; 255
    1e56:	0e 94 6c 05 	call	0xad8	; 0xad8 <_ZN16CObjectDetection4initEP14CI2C_Interface>
    1e5a:	8c 01       	movw	r16, r24
    1e5c:	66 e0       	ldi	r22, 0x06	; 6
    1e5e:	71 e0       	ldi	r23, 0x01	; 1
    1e60:	85 ed       	ldi	r24, 0xD5	; 213
    1e62:	91 e0       	ldi	r25, 0x01	; 1
    1e64:	0e 94 94 04 	call	0x928	; 0x928 <_ZN9CTerminal4putsEPKc>
    1e68:	a8 01       	movw	r20, r16
    1e6a:	11 0f       	add	r17, r17
    1e6c:	66 0b       	sbc	r22, r22
    1e6e:	77 0b       	sbc	r23, r23
    1e70:	85 ed       	ldi	r24, 0xD5	; 213
    1e72:	91 e0       	ldi	r25, 0x01	; 1
    1e74:	0e 94 a6 04 	call	0x94c	; 0x94c <_ZN9CTerminal4putiEl>
    1e78:	63 e2       	ldi	r22, 0x23	; 35
    1e7a:	71 e0       	ldi	r23, 0x01	; 1
    1e7c:	85 ed       	ldi	r24, 0xD5	; 213
    1e7e:	91 e0       	ldi	r25, 0x01	; 1
    1e80:	0e 94 94 04 	call	0x928	; 0x928 <_ZN9CTerminal4putsEPKc>
    1e84:	b2 01       	movw	r22, r4
    1e86:	ce 01       	movw	r24, r28
    1e88:	8a 59       	subi	r24, 0x9A	; 154
    1e8a:	9f 4f       	sbci	r25, 0xFF	; 255
    1e8c:	0e 94 6c 05 	call	0xad8	; 0xad8 <_ZN16CObjectDetection4initEP14CI2C_Interface>
    1e90:	ec 01       	movw	r28, r24
    1e92:	66 e0       	ldi	r22, 0x06	; 6
    1e94:	71 e0       	ldi	r23, 0x01	; 1
    1e96:	85 ed       	ldi	r24, 0xD5	; 213
    1e98:	91 e0       	ldi	r25, 0x01	; 1
    1e9a:	0e 94 94 04 	call	0x928	; 0x928 <_ZN9CTerminal4putsEPKc>
    1e9e:	ae 01       	movw	r20, r28
    1ea0:	dd 0f       	add	r29, r29
    1ea2:	66 0b       	sbc	r22, r22
    1ea4:	77 0b       	sbc	r23, r23
    1ea6:	85 ed       	ldi	r24, 0xD5	; 213
    1ea8:	91 e0       	ldi	r25, 0x01	; 1
    1eaa:	0e 94 a6 04 	call	0x94c	; 0x94c <_ZN9CTerminal4putiEl>
    1eae:	63 e2       	ldi	r22, 0x23	; 35
    1eb0:	71 e0       	ldi	r23, 0x01	; 1
    1eb2:	85 ed       	ldi	r24, 0xD5	; 213
    1eb4:	91 e0       	ldi	r25, 0x01	; 1
    1eb6:	df 91       	pop	r29
    1eb8:	cf 91       	pop	r28
    1eba:	1f 91       	pop	r17
    1ebc:	0f 91       	pop	r16
    1ebe:	ff 90       	pop	r15
    1ec0:	ef 90       	pop	r14
    1ec2:	df 90       	pop	r13
    1ec4:	cf 90       	pop	r12
    1ec6:	bf 90       	pop	r11
    1ec8:	af 90       	pop	r10
    1eca:	9f 90       	pop	r9
    1ecc:	8f 90       	pop	r8
    1ece:	7f 90       	pop	r7
    1ed0:	6f 90       	pop	r6
    1ed2:	5f 90       	pop	r5
    1ed4:	4f 90       	pop	r4
    1ed6:	0c 94 94 04 	jmp	0x928	; 0x928 <_ZN9CTerminal4putsEPKc>

00001eda <main>:
    1eda:	cf 93       	push	r28
    1edc:	df 93       	push	r29
    1ede:	cd b7       	in	r28, 0x3d	; 61
    1ee0:	de b7       	in	r29, 0x3e	; 62
    1ee2:	c2 58       	subi	r28, 0x82	; 130
    1ee4:	d1 09       	sbc	r29, r1
    1ee6:	0f b6       	in	r0, 0x3f	; 63
    1ee8:	f8 94       	cli
    1eea:	de bf       	out	0x3e, r29	; 62
    1eec:	0f be       	out	0x3f, r0	; 63
    1eee:	cd bf       	out	0x3d, r28	; 61
    1ef0:	ce 01       	movw	r24, r28
    1ef2:	01 96       	adiw	r24, 0x01	; 1
    1ef4:	0e 94 98 0e 	call	0x1d30	; 0x1d30 <_ZN16CMeasurementTaskC1Ev>
    1ef8:	20 e0       	ldi	r18, 0x00	; 0
    1efa:	44 e6       	ldi	r20, 0x64	; 100
    1efc:	50 e0       	ldi	r21, 0x00	; 0
    1efe:	be 01       	movw	r22, r28
    1f00:	6f 5f       	subi	r22, 0xFF	; 255
    1f02:	7f 4f       	sbci	r23, 0xFF	; 255
    1f04:	80 e9       	ldi	r24, 0x90	; 144
    1f06:	91 e0       	ldi	r25, 0x01	; 1
    1f08:	0e 94 ae 03 	call	0x75c	; 0x75c <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb>
    1f0c:	63 e1       	ldi	r22, 0x13	; 19
    1f0e:	71 e0       	ldi	r23, 0x01	; 1
    1f10:	85 ed       	ldi	r24, 0xD5	; 213
    1f12:	91 e0       	ldi	r25, 0x01	; 1
    1f14:	0e 94 94 04 	call	0x928	; 0x928 <_ZN9CTerminal4putsEPKc>
    1f18:	80 e9       	ldi	r24, 0x90	; 144
    1f1a:	91 e0       	ldi	r25, 0x01	; 1
    1f1c:	0e 94 d1 03 	call	0x7a2	; 0x7a2 <_ZN8CRTTimer4mainEv>
    1f20:	fb cf       	rjmp	.-10     	; 0x1f18 <main+0x3e>

00001f22 <__udivmodsi4>:
    1f22:	a1 e2       	ldi	r26, 0x21	; 33
    1f24:	1a 2e       	mov	r1, r26
    1f26:	aa 1b       	sub	r26, r26
    1f28:	bb 1b       	sub	r27, r27
    1f2a:	fd 01       	movw	r30, r26
    1f2c:	0d c0       	rjmp	.+26     	; 0x1f48 <__udivmodsi4_ep>

00001f2e <__udivmodsi4_loop>:
    1f2e:	aa 1f       	adc	r26, r26
    1f30:	bb 1f       	adc	r27, r27
    1f32:	ee 1f       	adc	r30, r30
    1f34:	ff 1f       	adc	r31, r31
    1f36:	a2 17       	cp	r26, r18
    1f38:	b3 07       	cpc	r27, r19
    1f3a:	e4 07       	cpc	r30, r20
    1f3c:	f5 07       	cpc	r31, r21
    1f3e:	20 f0       	brcs	.+8      	; 0x1f48 <__udivmodsi4_ep>
    1f40:	a2 1b       	sub	r26, r18
    1f42:	b3 0b       	sbc	r27, r19
    1f44:	e4 0b       	sbc	r30, r20
    1f46:	f5 0b       	sbc	r31, r21

00001f48 <__udivmodsi4_ep>:
    1f48:	66 1f       	adc	r22, r22
    1f4a:	77 1f       	adc	r23, r23
    1f4c:	88 1f       	adc	r24, r24
    1f4e:	99 1f       	adc	r25, r25
    1f50:	1a 94       	dec	r1
    1f52:	69 f7       	brne	.-38     	; 0x1f2e <__udivmodsi4_loop>
    1f54:	60 95       	com	r22
    1f56:	70 95       	com	r23
    1f58:	80 95       	com	r24
    1f5a:	90 95       	com	r25
    1f5c:	9b 01       	movw	r18, r22
    1f5e:	ac 01       	movw	r20, r24
    1f60:	bd 01       	movw	r22, r26
    1f62:	cf 01       	movw	r24, r30
    1f64:	08 95       	ret

00001f66 <__divmodsi4>:
    1f66:	05 2e       	mov	r0, r21
    1f68:	97 fb       	bst	r25, 7
    1f6a:	1e f4       	brtc	.+6      	; 0x1f72 <__divmodsi4+0xc>
    1f6c:	00 94       	com	r0
    1f6e:	0e 94 ca 0f 	call	0x1f94	; 0x1f94 <__negsi2>
    1f72:	57 fd       	sbrc	r21, 7
    1f74:	07 d0       	rcall	.+14     	; 0x1f84 <__divmodsi4_neg2>
    1f76:	0e 94 91 0f 	call	0x1f22	; 0x1f22 <__udivmodsi4>
    1f7a:	07 fc       	sbrc	r0, 7
    1f7c:	03 d0       	rcall	.+6      	; 0x1f84 <__divmodsi4_neg2>
    1f7e:	4e f4       	brtc	.+18     	; 0x1f92 <__divmodsi4_exit>
    1f80:	0c 94 ca 0f 	jmp	0x1f94	; 0x1f94 <__negsi2>

00001f84 <__divmodsi4_neg2>:
    1f84:	50 95       	com	r21
    1f86:	40 95       	com	r20
    1f88:	30 95       	com	r19
    1f8a:	21 95       	neg	r18
    1f8c:	3f 4f       	sbci	r19, 0xFF	; 255
    1f8e:	4f 4f       	sbci	r20, 0xFF	; 255
    1f90:	5f 4f       	sbci	r21, 0xFF	; 255

00001f92 <__divmodsi4_exit>:
    1f92:	08 95       	ret

00001f94 <__negsi2>:
    1f94:	90 95       	com	r25
    1f96:	80 95       	com	r24
    1f98:	70 95       	com	r23
    1f9a:	61 95       	neg	r22
    1f9c:	7f 4f       	sbci	r23, 0xFF	; 255
    1f9e:	8f 4f       	sbci	r24, 0xFF	; 255
    1fa0:	9f 4f       	sbci	r25, 0xFF	; 255
    1fa2:	08 95       	ret

00001fa4 <__tablejump2__>:
    1fa4:	ee 0f       	add	r30, r30
    1fa6:	ff 1f       	adc	r31, r31
    1fa8:	05 90       	lpm	r0, Z+
    1faa:	f4 91       	lpm	r31, Z
    1fac:	e0 2d       	mov	r30, r0
    1fae:	09 94       	ijmp

00001fb0 <malloc>:
    1fb0:	0f 93       	push	r16
    1fb2:	1f 93       	push	r17
    1fb4:	cf 93       	push	r28
    1fb6:	df 93       	push	r29
    1fb8:	82 30       	cpi	r24, 0x02	; 2
    1fba:	91 05       	cpc	r25, r1
    1fbc:	10 f4       	brcc	.+4      	; 0x1fc2 <malloc+0x12>
    1fbe:	82 e0       	ldi	r24, 0x02	; 2
    1fc0:	90 e0       	ldi	r25, 0x00	; 0
    1fc2:	e0 91 d8 01 	lds	r30, 0x01D8	; 0x8001d8 <__flp>
    1fc6:	f0 91 d9 01 	lds	r31, 0x01D9	; 0x8001d9 <__flp+0x1>
    1fca:	30 e0       	ldi	r19, 0x00	; 0
    1fcc:	20 e0       	ldi	r18, 0x00	; 0
    1fce:	b0 e0       	ldi	r27, 0x00	; 0
    1fd0:	a0 e0       	ldi	r26, 0x00	; 0
    1fd2:	30 97       	sbiw	r30, 0x00	; 0
    1fd4:	99 f4       	brne	.+38     	; 0x1ffc <malloc+0x4c>
    1fd6:	21 15       	cp	r18, r1
    1fd8:	31 05       	cpc	r19, r1
    1fda:	09 f4       	brne	.+2      	; 0x1fde <malloc+0x2e>
    1fdc:	4a c0       	rjmp	.+148    	; 0x2072 <malloc+0xc2>
    1fde:	28 1b       	sub	r18, r24
    1fe0:	39 0b       	sbc	r19, r25
    1fe2:	24 30       	cpi	r18, 0x04	; 4
    1fe4:	31 05       	cpc	r19, r1
    1fe6:	d8 f5       	brcc	.+118    	; 0x205e <malloc+0xae>
    1fe8:	8a 81       	ldd	r24, Y+2	; 0x02
    1fea:	9b 81       	ldd	r25, Y+3	; 0x03
    1fec:	61 15       	cp	r22, r1
    1fee:	71 05       	cpc	r23, r1
    1ff0:	89 f1       	breq	.+98     	; 0x2054 <malloc+0xa4>
    1ff2:	fb 01       	movw	r30, r22
    1ff4:	93 83       	std	Z+3, r25	; 0x03
    1ff6:	82 83       	std	Z+2, r24	; 0x02
    1ff8:	fe 01       	movw	r30, r28
    1ffa:	11 c0       	rjmp	.+34     	; 0x201e <malloc+0x6e>
    1ffc:	40 81       	ld	r20, Z
    1ffe:	51 81       	ldd	r21, Z+1	; 0x01
    2000:	02 81       	ldd	r16, Z+2	; 0x02
    2002:	13 81       	ldd	r17, Z+3	; 0x03
    2004:	48 17       	cp	r20, r24
    2006:	59 07       	cpc	r21, r25
    2008:	e0 f0       	brcs	.+56     	; 0x2042 <malloc+0x92>
    200a:	48 17       	cp	r20, r24
    200c:	59 07       	cpc	r21, r25
    200e:	99 f4       	brne	.+38     	; 0x2036 <malloc+0x86>
    2010:	10 97       	sbiw	r26, 0x00	; 0
    2012:	61 f0       	breq	.+24     	; 0x202c <malloc+0x7c>
    2014:	12 96       	adiw	r26, 0x02	; 2
    2016:	0c 93       	st	X, r16
    2018:	12 97       	sbiw	r26, 0x02	; 2
    201a:	13 96       	adiw	r26, 0x03	; 3
    201c:	1c 93       	st	X, r17
    201e:	32 96       	adiw	r30, 0x02	; 2
    2020:	cf 01       	movw	r24, r30
    2022:	df 91       	pop	r29
    2024:	cf 91       	pop	r28
    2026:	1f 91       	pop	r17
    2028:	0f 91       	pop	r16
    202a:	08 95       	ret
    202c:	00 93 d8 01 	sts	0x01D8, r16	; 0x8001d8 <__flp>
    2030:	10 93 d9 01 	sts	0x01D9, r17	; 0x8001d9 <__flp+0x1>
    2034:	f4 cf       	rjmp	.-24     	; 0x201e <malloc+0x6e>
    2036:	21 15       	cp	r18, r1
    2038:	31 05       	cpc	r19, r1
    203a:	51 f0       	breq	.+20     	; 0x2050 <malloc+0xa0>
    203c:	42 17       	cp	r20, r18
    203e:	53 07       	cpc	r21, r19
    2040:	38 f0       	brcs	.+14     	; 0x2050 <malloc+0xa0>
    2042:	a9 01       	movw	r20, r18
    2044:	db 01       	movw	r26, r22
    2046:	9a 01       	movw	r18, r20
    2048:	bd 01       	movw	r22, r26
    204a:	df 01       	movw	r26, r30
    204c:	f8 01       	movw	r30, r16
    204e:	c1 cf       	rjmp	.-126    	; 0x1fd2 <malloc+0x22>
    2050:	ef 01       	movw	r28, r30
    2052:	f9 cf       	rjmp	.-14     	; 0x2046 <malloc+0x96>
    2054:	90 93 d9 01 	sts	0x01D9, r25	; 0x8001d9 <__flp+0x1>
    2058:	80 93 d8 01 	sts	0x01D8, r24	; 0x8001d8 <__flp>
    205c:	cd cf       	rjmp	.-102    	; 0x1ff8 <malloc+0x48>
    205e:	fe 01       	movw	r30, r28
    2060:	e2 0f       	add	r30, r18
    2062:	f3 1f       	adc	r31, r19
    2064:	81 93       	st	Z+, r24
    2066:	91 93       	st	Z+, r25
    2068:	22 50       	subi	r18, 0x02	; 2
    206a:	31 09       	sbc	r19, r1
    206c:	39 83       	std	Y+1, r19	; 0x01
    206e:	28 83       	st	Y, r18
    2070:	d7 cf       	rjmp	.-82     	; 0x2020 <malloc+0x70>
    2072:	20 91 d6 01 	lds	r18, 0x01D6	; 0x8001d6 <__brkval>
    2076:	30 91 d7 01 	lds	r19, 0x01D7	; 0x8001d7 <__brkval+0x1>
    207a:	23 2b       	or	r18, r19
    207c:	41 f4       	brne	.+16     	; 0x208e <malloc+0xde>
    207e:	20 91 02 01 	lds	r18, 0x0102	; 0x800102 <__malloc_heap_start>
    2082:	30 91 03 01 	lds	r19, 0x0103	; 0x800103 <__malloc_heap_start+0x1>
    2086:	30 93 d7 01 	sts	0x01D7, r19	; 0x8001d7 <__brkval+0x1>
    208a:	20 93 d6 01 	sts	0x01D6, r18	; 0x8001d6 <__brkval>
    208e:	20 91 00 01 	lds	r18, 0x0100	; 0x800100 <__malloc_heap_end>
    2092:	30 91 01 01 	lds	r19, 0x0101	; 0x800101 <__malloc_heap_end+0x1>
    2096:	21 15       	cp	r18, r1
    2098:	31 05       	cpc	r19, r1
    209a:	41 f4       	brne	.+16     	; 0x20ac <malloc+0xfc>
    209c:	2d b7       	in	r18, 0x3d	; 61
    209e:	3e b7       	in	r19, 0x3e	; 62
    20a0:	40 91 04 01 	lds	r20, 0x0104	; 0x800104 <__malloc_margin>
    20a4:	50 91 05 01 	lds	r21, 0x0105	; 0x800105 <__malloc_margin+0x1>
    20a8:	24 1b       	sub	r18, r20
    20aa:	35 0b       	sbc	r19, r21
    20ac:	e0 91 d6 01 	lds	r30, 0x01D6	; 0x8001d6 <__brkval>
    20b0:	f0 91 d7 01 	lds	r31, 0x01D7	; 0x8001d7 <__brkval+0x1>
    20b4:	e2 17       	cp	r30, r18
    20b6:	f3 07       	cpc	r31, r19
    20b8:	a0 f4       	brcc	.+40     	; 0x20e2 <malloc+0x132>
    20ba:	2e 1b       	sub	r18, r30
    20bc:	3f 0b       	sbc	r19, r31
    20be:	28 17       	cp	r18, r24
    20c0:	39 07       	cpc	r19, r25
    20c2:	78 f0       	brcs	.+30     	; 0x20e2 <malloc+0x132>
    20c4:	ac 01       	movw	r20, r24
    20c6:	4e 5f       	subi	r20, 0xFE	; 254
    20c8:	5f 4f       	sbci	r21, 0xFF	; 255
    20ca:	24 17       	cp	r18, r20
    20cc:	35 07       	cpc	r19, r21
    20ce:	48 f0       	brcs	.+18     	; 0x20e2 <malloc+0x132>
    20d0:	4e 0f       	add	r20, r30
    20d2:	5f 1f       	adc	r21, r31
    20d4:	50 93 d7 01 	sts	0x01D7, r21	; 0x8001d7 <__brkval+0x1>
    20d8:	40 93 d6 01 	sts	0x01D6, r20	; 0x8001d6 <__brkval>
    20dc:	81 93       	st	Z+, r24
    20de:	91 93       	st	Z+, r25
    20e0:	9f cf       	rjmp	.-194    	; 0x2020 <malloc+0x70>
    20e2:	f0 e0       	ldi	r31, 0x00	; 0
    20e4:	e0 e0       	ldi	r30, 0x00	; 0
    20e6:	9c cf       	rjmp	.-200    	; 0x2020 <malloc+0x70>

000020e8 <free>:
    20e8:	cf 93       	push	r28
    20ea:	df 93       	push	r29
    20ec:	00 97       	sbiw	r24, 0x00	; 0
    20ee:	e9 f0       	breq	.+58     	; 0x212a <free+0x42>
    20f0:	fc 01       	movw	r30, r24
    20f2:	32 97       	sbiw	r30, 0x02	; 2
    20f4:	13 82       	std	Z+3, r1	; 0x03
    20f6:	12 82       	std	Z+2, r1	; 0x02
    20f8:	a0 91 d8 01 	lds	r26, 0x01D8	; 0x8001d8 <__flp>
    20fc:	b0 91 d9 01 	lds	r27, 0x01D9	; 0x8001d9 <__flp+0x1>
    2100:	ed 01       	movw	r28, r26
    2102:	30 e0       	ldi	r19, 0x00	; 0
    2104:	20 e0       	ldi	r18, 0x00	; 0
    2106:	10 97       	sbiw	r26, 0x00	; 0
    2108:	a1 f4       	brne	.+40     	; 0x2132 <free+0x4a>
    210a:	20 81       	ld	r18, Z
    210c:	31 81       	ldd	r19, Z+1	; 0x01
    210e:	82 0f       	add	r24, r18
    2110:	93 1f       	adc	r25, r19
    2112:	20 91 d6 01 	lds	r18, 0x01D6	; 0x8001d6 <__brkval>
    2116:	30 91 d7 01 	lds	r19, 0x01D7	; 0x8001d7 <__brkval+0x1>
    211a:	28 17       	cp	r18, r24
    211c:	39 07       	cpc	r19, r25
    211e:	09 f0       	breq	.+2      	; 0x2122 <free+0x3a>
    2120:	61 c0       	rjmp	.+194    	; 0x21e4 <free+0xfc>
    2122:	f0 93 d7 01 	sts	0x01D7, r31	; 0x8001d7 <__brkval+0x1>
    2126:	e0 93 d6 01 	sts	0x01D6, r30	; 0x8001d6 <__brkval>
    212a:	df 91       	pop	r29
    212c:	cf 91       	pop	r28
    212e:	08 95       	ret
    2130:	ea 01       	movw	r28, r20
    2132:	ce 17       	cp	r28, r30
    2134:	df 07       	cpc	r29, r31
    2136:	e8 f5       	brcc	.+122    	; 0x21b2 <free+0xca>
    2138:	4a 81       	ldd	r20, Y+2	; 0x02
    213a:	5b 81       	ldd	r21, Y+3	; 0x03
    213c:	9e 01       	movw	r18, r28
    213e:	41 15       	cp	r20, r1
    2140:	51 05       	cpc	r21, r1
    2142:	b1 f7       	brne	.-20     	; 0x2130 <free+0x48>
    2144:	e9 01       	movw	r28, r18
    2146:	fb 83       	std	Y+3, r31	; 0x03
    2148:	ea 83       	std	Y+2, r30	; 0x02
    214a:	49 91       	ld	r20, Y+
    214c:	59 91       	ld	r21, Y+
    214e:	c4 0f       	add	r28, r20
    2150:	d5 1f       	adc	r29, r21
    2152:	ec 17       	cp	r30, r28
    2154:	fd 07       	cpc	r31, r29
    2156:	61 f4       	brne	.+24     	; 0x2170 <free+0x88>
    2158:	80 81       	ld	r24, Z
    215a:	91 81       	ldd	r25, Z+1	; 0x01
    215c:	02 96       	adiw	r24, 0x02	; 2
    215e:	84 0f       	add	r24, r20
    2160:	95 1f       	adc	r25, r21
    2162:	e9 01       	movw	r28, r18
    2164:	99 83       	std	Y+1, r25	; 0x01
    2166:	88 83       	st	Y, r24
    2168:	82 81       	ldd	r24, Z+2	; 0x02
    216a:	93 81       	ldd	r25, Z+3	; 0x03
    216c:	9b 83       	std	Y+3, r25	; 0x03
    216e:	8a 83       	std	Y+2, r24	; 0x02
    2170:	f0 e0       	ldi	r31, 0x00	; 0
    2172:	e0 e0       	ldi	r30, 0x00	; 0
    2174:	12 96       	adiw	r26, 0x02	; 2
    2176:	8d 91       	ld	r24, X+
    2178:	9c 91       	ld	r25, X
    217a:	13 97       	sbiw	r26, 0x03	; 3
    217c:	00 97       	sbiw	r24, 0x00	; 0
    217e:	b9 f5       	brne	.+110    	; 0x21ee <free+0x106>
    2180:	2d 91       	ld	r18, X+
    2182:	3c 91       	ld	r19, X
    2184:	11 97       	sbiw	r26, 0x01	; 1
    2186:	cd 01       	movw	r24, r26
    2188:	02 96       	adiw	r24, 0x02	; 2
    218a:	82 0f       	add	r24, r18
    218c:	93 1f       	adc	r25, r19
    218e:	20 91 d6 01 	lds	r18, 0x01D6	; 0x8001d6 <__brkval>
    2192:	30 91 d7 01 	lds	r19, 0x01D7	; 0x8001d7 <__brkval+0x1>
    2196:	28 17       	cp	r18, r24
    2198:	39 07       	cpc	r19, r25
    219a:	39 f6       	brne	.-114    	; 0x212a <free+0x42>
    219c:	30 97       	sbiw	r30, 0x00	; 0
    219e:	51 f5       	brne	.+84     	; 0x21f4 <free+0x10c>
    21a0:	10 92 d9 01 	sts	0x01D9, r1	; 0x8001d9 <__flp+0x1>
    21a4:	10 92 d8 01 	sts	0x01D8, r1	; 0x8001d8 <__flp>
    21a8:	b0 93 d7 01 	sts	0x01D7, r27	; 0x8001d7 <__brkval+0x1>
    21ac:	a0 93 d6 01 	sts	0x01D6, r26	; 0x8001d6 <__brkval>
    21b0:	bc cf       	rjmp	.-136    	; 0x212a <free+0x42>
    21b2:	d3 83       	std	Z+3, r29	; 0x03
    21b4:	c2 83       	std	Z+2, r28	; 0x02
    21b6:	40 81       	ld	r20, Z
    21b8:	51 81       	ldd	r21, Z+1	; 0x01
    21ba:	84 0f       	add	r24, r20
    21bc:	95 1f       	adc	r25, r21
    21be:	c8 17       	cp	r28, r24
    21c0:	d9 07       	cpc	r29, r25
    21c2:	61 f4       	brne	.+24     	; 0x21dc <free+0xf4>
    21c4:	4e 5f       	subi	r20, 0xFE	; 254
    21c6:	5f 4f       	sbci	r21, 0xFF	; 255
    21c8:	88 81       	ld	r24, Y
    21ca:	99 81       	ldd	r25, Y+1	; 0x01
    21cc:	48 0f       	add	r20, r24
    21ce:	59 1f       	adc	r21, r25
    21d0:	51 83       	std	Z+1, r21	; 0x01
    21d2:	40 83       	st	Z, r20
    21d4:	8a 81       	ldd	r24, Y+2	; 0x02
    21d6:	9b 81       	ldd	r25, Y+3	; 0x03
    21d8:	93 83       	std	Z+3, r25	; 0x03
    21da:	82 83       	std	Z+2, r24	; 0x02
    21dc:	21 15       	cp	r18, r1
    21de:	31 05       	cpc	r19, r1
    21e0:	09 f0       	breq	.+2      	; 0x21e4 <free+0xfc>
    21e2:	b0 cf       	rjmp	.-160    	; 0x2144 <free+0x5c>
    21e4:	f0 93 d9 01 	sts	0x01D9, r31	; 0x8001d9 <__flp+0x1>
    21e8:	e0 93 d8 01 	sts	0x01D8, r30	; 0x8001d8 <__flp>
    21ec:	9e cf       	rjmp	.-196    	; 0x212a <free+0x42>
    21ee:	fd 01       	movw	r30, r26
    21f0:	dc 01       	movw	r26, r24
    21f2:	c0 cf       	rjmp	.-128    	; 0x2174 <free+0x8c>
    21f4:	13 82       	std	Z+3, r1	; 0x03
    21f6:	12 82       	std	Z+2, r1	; 0x02
    21f8:	d7 cf       	rjmp	.-82     	; 0x21a8 <free+0xc0>

000021fa <__do_global_dtors>:
    21fa:	10 e0       	ldi	r17, 0x00	; 0
    21fc:	c6 e3       	ldi	r28, 0x36	; 54
    21fe:	d0 e0       	ldi	r29, 0x00	; 0
    2200:	04 c0       	rjmp	.+8      	; 0x220a <__do_global_dtors+0x10>
    2202:	fe 01       	movw	r30, r28
    2204:	0e 94 d2 0f 	call	0x1fa4	; 0x1fa4 <__tablejump2__>
    2208:	21 96       	adiw	r28, 0x01	; 1
    220a:	c7 33       	cpi	r28, 0x37	; 55
    220c:	d1 07       	cpc	r29, r17
    220e:	c9 f7       	brne	.-14     	; 0x2202 <__do_global_dtors+0x8>
    2210:	f8 94       	cli

00002212 <__stop_program>:
    2212:	ff cf       	rjmp	.-2      	; 0x2212 <__stop_program>
