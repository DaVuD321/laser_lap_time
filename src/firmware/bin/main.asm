
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
      38:	0c 94 cd 03 	jmp	0x79a	; 0x79a <__vector_14>
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
      68:	2a 04       	cpc	r2, r10
      6a:	1d 05       	cpc	r17, r13

0000006c <__ctors_end>:
      6c:	21 05       	cpc	r18, r1

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
      80:	ea e8       	ldi	r30, 0x8A	; 138
      82:	f1 e2       	ldi	r31, 0x21	; 33
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
      ac:	0e 94 8d 0f 	call	0x1f1a	; 0x1f1a <__tablejump2__>
      b0:	c4 33       	cpi	r28, 0x34	; 52
      b2:	d1 07       	cpc	r29, r17
      b4:	c9 f7       	brne	.-14     	; 0xa8 <__do_global_ctors+0x8>
      b6:	0e 94 2c 0f 	call	0x1e58	; 0x1e58 <main>
      ba:	0c 94 b8 10 	jmp	0x2170	; 0x2170 <__do_global_dtors>

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

0000075c <_ZN8CRTTimer8get_timeEv>:
     75c:	cf 93       	push	r28
     75e:	df 93       	push	r29
     760:	00 d0       	rcall	.+0      	; 0x762 <_ZN8CRTTimer8get_timeEv+0x6>
     762:	00 d0       	rcall	.+0      	; 0x764 <_ZN8CRTTimer8get_timeEv+0x8>
     764:	cd b7       	in	r28, 0x3d	; 61
     766:	de b7       	in	r29, 0x3e	; 62
     768:	f8 94       	cli
     76a:	80 91 d1 01 	lds	r24, 0x01D1	; 0x8001d1 <g_rt_time>
     76e:	90 91 d2 01 	lds	r25, 0x01D2	; 0x8001d2 <g_rt_time+0x1>
     772:	a0 91 d3 01 	lds	r26, 0x01D3	; 0x8001d3 <g_rt_time+0x2>
     776:	b0 91 d4 01 	lds	r27, 0x01D4	; 0x8001d4 <g_rt_time+0x3>
     77a:	89 83       	std	Y+1, r24	; 0x01
     77c:	9a 83       	std	Y+2, r25	; 0x02
     77e:	ab 83       	std	Y+3, r26	; 0x03
     780:	bc 83       	std	Y+4, r27	; 0x04
     782:	78 94       	sei
     784:	69 81       	ldd	r22, Y+1	; 0x01
     786:	7a 81       	ldd	r23, Y+2	; 0x02
     788:	8b 81       	ldd	r24, Y+3	; 0x03
     78a:	9c 81       	ldd	r25, Y+4	; 0x04
     78c:	0f 90       	pop	r0
     78e:	0f 90       	pop	r0
     790:	0f 90       	pop	r0
     792:	0f 90       	pop	r0
     794:	df 91       	pop	r29
     796:	cf 91       	pop	r28
     798:	08 95       	ret

0000079a <__vector_14>:
     79a:	1f 92       	push	r1
     79c:	0f 92       	push	r0
     79e:	0f b6       	in	r0, 0x3f	; 63
     7a0:	0f 92       	push	r0
     7a2:	11 24       	eor	r1, r1
     7a4:	2f 93       	push	r18
     7a6:	3f 93       	push	r19
     7a8:	4f 93       	push	r20
     7aa:	5f 93       	push	r21
     7ac:	6f 93       	push	r22
     7ae:	7f 93       	push	r23
     7b0:	8f 93       	push	r24
     7b2:	9f 93       	push	r25
     7b4:	af 93       	push	r26
     7b6:	bf 93       	push	r27
     7b8:	cf 93       	push	r28
     7ba:	df 93       	push	r29
     7bc:	ef 93       	push	r30
     7be:	ff 93       	push	r31
     7c0:	c1 e9       	ldi	r28, 0x91	; 145
     7c2:	d1 e0       	ldi	r29, 0x01	; 1
     7c4:	8c 81       	ldd	r24, Y+4	; 0x04
     7c6:	9d 81       	ldd	r25, Y+5	; 0x05
     7c8:	00 97       	sbiw	r24, 0x00	; 0
     7ca:	71 f1       	breq	.+92     	; 0x828 <__vector_14+0x8e>
     7cc:	01 97       	sbiw	r24, 0x01	; 1
     7ce:	9d 83       	std	Y+5, r25	; 0x05
     7d0:	8c 83       	std	Y+4, r24	; 0x04
     7d2:	28 96       	adiw	r28, 0x08	; 8
     7d4:	b1 e0       	ldi	r27, 0x01	; 1
     7d6:	c1 3d       	cpi	r28, 0xD1	; 209
     7d8:	db 07       	cpc	r29, r27
     7da:	a1 f7       	brne	.-24     	; 0x7c4 <__vector_14+0x2a>
     7dc:	80 91 d1 01 	lds	r24, 0x01D1	; 0x8001d1 <g_rt_time>
     7e0:	90 91 d2 01 	lds	r25, 0x01D2	; 0x8001d2 <g_rt_time+0x1>
     7e4:	a0 91 d3 01 	lds	r26, 0x01D3	; 0x8001d3 <g_rt_time+0x2>
     7e8:	b0 91 d4 01 	lds	r27, 0x01D4	; 0x8001d4 <g_rt_time+0x3>
     7ec:	01 96       	adiw	r24, 0x01	; 1
     7ee:	a1 1d       	adc	r26, r1
     7f0:	b1 1d       	adc	r27, r1
     7f2:	80 93 d1 01 	sts	0x01D1, r24	; 0x8001d1 <g_rt_time>
     7f6:	90 93 d2 01 	sts	0x01D2, r25	; 0x8001d2 <g_rt_time+0x1>
     7fa:	a0 93 d3 01 	sts	0x01D3, r26	; 0x8001d3 <g_rt_time+0x2>
     7fe:	b0 93 d4 01 	sts	0x01D4, r27	; 0x8001d4 <g_rt_time+0x3>
     802:	ff 91       	pop	r31
     804:	ef 91       	pop	r30
     806:	df 91       	pop	r29
     808:	cf 91       	pop	r28
     80a:	bf 91       	pop	r27
     80c:	af 91       	pop	r26
     80e:	9f 91       	pop	r25
     810:	8f 91       	pop	r24
     812:	7f 91       	pop	r23
     814:	6f 91       	pop	r22
     816:	5f 91       	pop	r21
     818:	4f 91       	pop	r20
     81a:	3f 91       	pop	r19
     81c:	2f 91       	pop	r18
     81e:	0f 90       	pop	r0
     820:	0f be       	out	0x3f, r0	; 63
     822:	0f 90       	pop	r0
     824:	1f 90       	pop	r1
     826:	18 95       	reti
     828:	8a 81       	ldd	r24, Y+2	; 0x02
     82a:	9b 81       	ldd	r25, Y+3	; 0x03
     82c:	9d 83       	std	Y+5, r25	; 0x05
     82e:	8c 83       	std	Y+4, r24	; 0x04
     830:	8e 81       	ldd	r24, Y+6	; 0x06
     832:	8f 3f       	cpi	r24, 0xFF	; 255
     834:	11 f0       	breq	.+4      	; 0x83a <__vector_14+0xa0>
     836:	8f 5f       	subi	r24, 0xFF	; 255
     838:	8e 83       	std	Y+6, r24	; 0x06
     83a:	8f 81       	ldd	r24, Y+7	; 0x07
     83c:	88 23       	and	r24, r24
     83e:	49 f2       	breq	.-110    	; 0x7d2 <__vector_14+0x38>
     840:	88 81       	ld	r24, Y
     842:	99 81       	ldd	r25, Y+1	; 0x01
     844:	dc 01       	movw	r26, r24
     846:	ed 91       	ld	r30, X+
     848:	fc 91       	ld	r31, X
     84a:	04 80       	ldd	r0, Z+4	; 0x04
     84c:	f5 81       	ldd	r31, Z+5	; 0x05
     84e:	e0 2d       	mov	r30, r0
     850:	09 95       	icall
     852:	bf cf       	rjmp	.-130    	; 0x7d2 <__vector_14+0x38>

00000854 <_GLOBAL__sub_I_g_rt_time>:
     854:	80 e9       	ldi	r24, 0x90	; 144
     856:	91 e0       	ldi	r25, 0x01	; 1
     858:	0c 94 91 03 	jmp	0x722	; 0x722 <_ZN8CRTTimerC1Ev>

0000085c <_ZN6CUSARTC1Ev>:
     85c:	10 92 c5 00 	sts	0x00C5, r1	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
     860:	87 e6       	ldi	r24, 0x67	; 103
     862:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
     866:	e2 ec       	ldi	r30, 0xC2	; 194
     868:	f0 e0       	ldi	r31, 0x00	; 0
     86a:	80 81       	ld	r24, Z
     86c:	86 60       	ori	r24, 0x06	; 6
     86e:	80 83       	st	Z, r24
     870:	e1 ec       	ldi	r30, 0xC1	; 193
     872:	f0 e0       	ldi	r31, 0x00	; 0
     874:	80 81       	ld	r24, Z
     876:	88 61       	ori	r24, 0x18	; 24
     878:	80 83       	st	Z, r24
     87a:	08 95       	ret

0000087c <_ZN6CUSARTD1Ev>:
     87c:	08 95       	ret

0000087e <_ZN6CUSART8put_charEc>:
     87e:	6a 30       	cpi	r22, 0x0A	; 10
     880:	49 f4       	brne	.+18     	; 0x894 <_ZN6CUSART8put_charEc+0x16>
     882:	8d e0       	ldi	r24, 0x0D	; 13
     884:	80 93 c6 00 	sts	0x00C6, r24	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     888:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     88c:	85 fd       	sbrc	r24, 5
     88e:	02 c0       	rjmp	.+4      	; 0x894 <_ZN6CUSART8put_charEc+0x16>
     890:	00 00       	nop
     892:	fa cf       	rjmp	.-12     	; 0x888 <_ZN6CUSART8put_charEc+0xa>
     894:	60 93 c6 00 	sts	0x00C6, r22	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
     898:	80 91 c0 00 	lds	r24, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
     89c:	85 fd       	sbrc	r24, 5
     89e:	02 c0       	rjmp	.+4      	; 0x8a4 <_ZN6CUSART8put_charEc+0x26>
     8a0:	00 00       	nop
     8a2:	fa cf       	rjmp	.-12     	; 0x898 <_ZN6CUSART8put_charEc+0x1a>
     8a4:	08 95       	ret

000008a6 <_ZN9CTerminal4putsEPKc>:
     8a6:	0f 93       	push	r16
     8a8:	1f 93       	push	r17
     8aa:	cf 93       	push	r28
     8ac:	df 93       	push	r29
     8ae:	8c 01       	movw	r16, r24
     8b0:	eb 01       	movw	r28, r22
     8b2:	69 91       	ld	r22, Y+
     8b4:	66 23       	and	r22, r22
     8b6:	21 f0       	breq	.+8      	; 0x8c0 <_ZN9CTerminal4putsEPKc+0x1a>
     8b8:	c8 01       	movw	r24, r16
     8ba:	0e 94 3f 04 	call	0x87e	; 0x87e <_ZN6CUSART8put_charEc>
     8be:	f9 cf       	rjmp	.-14     	; 0x8b2 <_ZN9CTerminal4putsEPKc+0xc>
     8c0:	df 91       	pop	r29
     8c2:	cf 91       	pop	r28
     8c4:	1f 91       	pop	r17
     8c6:	0f 91       	pop	r16
     8c8:	08 95       	ret

000008ca <_ZN9CTerminal4putiEl>:
     8ca:	8f 92       	push	r8
     8cc:	9f 92       	push	r9
     8ce:	af 92       	push	r10
     8d0:	bf 92       	push	r11
     8d2:	cf 92       	push	r12
     8d4:	df 92       	push	r13
     8d6:	ef 92       	push	r14
     8d8:	ff 92       	push	r15
     8da:	0f 93       	push	r16
     8dc:	1f 93       	push	r17
     8de:	cf 93       	push	r28
     8e0:	df 93       	push	r29
     8e2:	cd b7       	in	r28, 0x3d	; 61
     8e4:	de b7       	in	r29, 0x3e	; 62
     8e6:	2c 97       	sbiw	r28, 0x0c	; 12
     8e8:	0f b6       	in	r0, 0x3f	; 63
     8ea:	f8 94       	cli
     8ec:	de bf       	out	0x3e, r29	; 62
     8ee:	0f be       	out	0x3f, r0	; 63
     8f0:	cd bf       	out	0x3d, r28	; 61
     8f2:	7c 01       	movw	r14, r24
     8f4:	00 e0       	ldi	r16, 0x00	; 0
     8f6:	77 ff       	sbrs	r23, 7
     8f8:	08 c0       	rjmp	.+16     	; 0x90a <__stack+0xb>
     8fa:	70 95       	com	r23
     8fc:	60 95       	com	r22
     8fe:	50 95       	com	r21
     900:	41 95       	neg	r20
     902:	5f 4f       	sbci	r21, 0xFF	; 255
     904:	6f 4f       	sbci	r22, 0xFF	; 255
     906:	7f 4f       	sbci	r23, 0xFF	; 255
     908:	01 e0       	ldi	r16, 0x01	; 1
     90a:	1c 86       	std	Y+12, r1	; 0x0c
     90c:	1a e0       	ldi	r17, 0x0A	; 10
     90e:	9a e0       	ldi	r25, 0x0A	; 10
     910:	89 2e       	mov	r8, r25
     912:	91 2c       	mov	r9, r1
     914:	a1 2c       	mov	r10, r1
     916:	b1 2c       	mov	r11, r1
     918:	cc 24       	eor	r12, r12
     91a:	c3 94       	inc	r12
     91c:	d1 2c       	mov	r13, r1
     91e:	cc 0e       	add	r12, r28
     920:	dd 1e       	adc	r13, r29
     922:	c1 0e       	add	r12, r17
     924:	d1 1c       	adc	r13, r1
     926:	cb 01       	movw	r24, r22
     928:	ba 01       	movw	r22, r20
     92a:	a5 01       	movw	r20, r10
     92c:	94 01       	movw	r18, r8
     92e:	0e 94 6e 0f 	call	0x1edc	; 0x1edc <__divmodsi4>
     932:	94 2f       	mov	r25, r20
     934:	85 2f       	mov	r24, r21
     936:	60 5d       	subi	r22, 0xD0	; 208
     938:	f6 01       	movw	r30, r12
     93a:	60 83       	st	Z, r22
     93c:	a9 01       	movw	r20, r18
     93e:	69 2f       	mov	r22, r25
     940:	78 2f       	mov	r23, r24
     942:	8f ef       	ldi	r24, 0xFF	; 255
     944:	81 0f       	add	r24, r17
     946:	41 15       	cp	r20, r1
     948:	51 05       	cpc	r21, r1
     94a:	61 05       	cpc	r22, r1
     94c:	71 05       	cpc	r23, r1
     94e:	39 f5       	brne	.+78     	; 0x99e <__stack+0x9f>
     950:	00 23       	and	r16, r16
     952:	49 f0       	breq	.+18     	; 0x966 <__stack+0x67>
     954:	e1 e0       	ldi	r30, 0x01	; 1
     956:	f0 e0       	ldi	r31, 0x00	; 0
     958:	ec 0f       	add	r30, r28
     95a:	fd 1f       	adc	r31, r29
     95c:	e8 0f       	add	r30, r24
     95e:	f1 1d       	adc	r31, r1
     960:	9d e2       	ldi	r25, 0x2D	; 45
     962:	90 83       	st	Z, r25
     964:	18 2f       	mov	r17, r24
     966:	61 e0       	ldi	r22, 0x01	; 1
     968:	70 e0       	ldi	r23, 0x00	; 0
     96a:	6c 0f       	add	r22, r28
     96c:	7d 1f       	adc	r23, r29
     96e:	61 0f       	add	r22, r17
     970:	71 1d       	adc	r23, r1
     972:	c7 01       	movw	r24, r14
     974:	0e 94 53 04 	call	0x8a6	; 0x8a6 <_ZN9CTerminal4putsEPKc>
     978:	2c 96       	adiw	r28, 0x0c	; 12
     97a:	0f b6       	in	r0, 0x3f	; 63
     97c:	f8 94       	cli
     97e:	de bf       	out	0x3e, r29	; 62
     980:	0f be       	out	0x3f, r0	; 63
     982:	cd bf       	out	0x3d, r28	; 61
     984:	df 91       	pop	r29
     986:	cf 91       	pop	r28
     988:	1f 91       	pop	r17
     98a:	0f 91       	pop	r16
     98c:	ff 90       	pop	r15
     98e:	ef 90       	pop	r14
     990:	df 90       	pop	r13
     992:	cf 90       	pop	r12
     994:	bf 90       	pop	r11
     996:	af 90       	pop	r10
     998:	9f 90       	pop	r9
     99a:	8f 90       	pop	r8
     99c:	08 95       	ret
     99e:	18 2f       	mov	r17, r24
     9a0:	bb cf       	rjmp	.-138    	; 0x918 <__stack+0x19>

000009a2 <_ZN9CTerminal5putuiEm>:
     9a2:	8f 92       	push	r8
     9a4:	9f 92       	push	r9
     9a6:	af 92       	push	r10
     9a8:	bf 92       	push	r11
     9aa:	cf 92       	push	r12
     9ac:	df 92       	push	r13
     9ae:	ef 92       	push	r14
     9b0:	ff 92       	push	r15
     9b2:	1f 93       	push	r17
     9b4:	cf 93       	push	r28
     9b6:	df 93       	push	r29
     9b8:	cd b7       	in	r28, 0x3d	; 61
     9ba:	de b7       	in	r29, 0x3e	; 62
     9bc:	2c 97       	sbiw	r28, 0x0c	; 12
     9be:	0f b6       	in	r0, 0x3f	; 63
     9c0:	f8 94       	cli
     9c2:	de bf       	out	0x3e, r29	; 62
     9c4:	0f be       	out	0x3f, r0	; 63
     9c6:	cd bf       	out	0x3d, r28	; 61
     9c8:	6c 01       	movw	r12, r24
     9ca:	1c 86       	std	Y+12, r1	; 0x0c
     9cc:	1a e0       	ldi	r17, 0x0A	; 10
     9ce:	9a e0       	ldi	r25, 0x0A	; 10
     9d0:	89 2e       	mov	r8, r25
     9d2:	91 2c       	mov	r9, r1
     9d4:	a1 2c       	mov	r10, r1
     9d6:	b1 2c       	mov	r11, r1
     9d8:	ee 24       	eor	r14, r14
     9da:	e3 94       	inc	r14
     9dc:	f1 2c       	mov	r15, r1
     9de:	ec 0e       	add	r14, r28
     9e0:	fd 1e       	adc	r15, r29
     9e2:	e1 0e       	add	r14, r17
     9e4:	f1 1c       	adc	r15, r1
     9e6:	cb 01       	movw	r24, r22
     9e8:	ba 01       	movw	r22, r20
     9ea:	a5 01       	movw	r20, r10
     9ec:	94 01       	movw	r18, r8
     9ee:	0e 94 4c 0f 	call	0x1e98	; 0x1e98 <__udivmodsi4>
     9f2:	94 2f       	mov	r25, r20
     9f4:	85 2f       	mov	r24, r21
     9f6:	60 5d       	subi	r22, 0xD0	; 208
     9f8:	f7 01       	movw	r30, r14
     9fa:	60 83       	st	Z, r22
     9fc:	a9 01       	movw	r20, r18
     9fe:	69 2f       	mov	r22, r25
     a00:	78 2f       	mov	r23, r24
     a02:	11 50       	subi	r17, 0x01	; 1
     a04:	41 15       	cp	r20, r1
     a06:	51 05       	cpc	r21, r1
     a08:	61 05       	cpc	r22, r1
     a0a:	71 05       	cpc	r23, r1
     a0c:	29 f7       	brne	.-54     	; 0x9d8 <_ZN9CTerminal5putuiEm+0x36>
     a0e:	b7 01       	movw	r22, r14
     a10:	c6 01       	movw	r24, r12
     a12:	0e 94 53 04 	call	0x8a6	; 0x8a6 <_ZN9CTerminal4putsEPKc>
     a16:	2c 96       	adiw	r28, 0x0c	; 12
     a18:	0f b6       	in	r0, 0x3f	; 63
     a1a:	f8 94       	cli
     a1c:	de bf       	out	0x3e, r29	; 62
     a1e:	0f be       	out	0x3f, r0	; 63
     a20:	cd bf       	out	0x3d, r28	; 61
     a22:	df 91       	pop	r29
     a24:	cf 91       	pop	r28
     a26:	1f 91       	pop	r17
     a28:	ff 90       	pop	r15
     a2a:	ef 90       	pop	r14
     a2c:	df 90       	pop	r13
     a2e:	cf 90       	pop	r12
     a30:	bf 90       	pop	r11
     a32:	af 90       	pop	r10
     a34:	9f 90       	pop	r9
     a36:	8f 90       	pop	r8
     a38:	08 95       	ret

00000a3a <_GLOBAL__sub_I_terminal>:
     a3a:	85 ed       	ldi	r24, 0xD5	; 213
     a3c:	91 e0       	ldi	r25, 0x01	; 1
     a3e:	0c 94 2e 04 	jmp	0x85c	; 0x85c <_ZN6CUSARTC1Ev>

00000a42 <_GLOBAL__sub_D_terminal>:
     a42:	85 ed       	ldi	r24, 0xD5	; 213
     a44:	91 e0       	ldi	r25, 0x01	; 1
     a46:	0c 94 3e 04 	jmp	0x87c	; 0x87c <_ZN6CUSARTD1Ev>

00000a4a <_ZdlPv>:
     a4a:	0c 94 2f 10 	jmp	0x205e	; 0x205e <free>

00000a4e <_ZN16CObjectDetectionC1Ev>:
     a4e:	0c 94 61 00 	jmp	0xc2	; 0xc2 <_ZN8CVL53L0XC1Ev>

00000a52 <_ZN16CObjectDetectionD1Ev>:
     a52:	0c 94 62 00 	jmp	0xc4	; 0xc4 <_ZN8CVL53L0XD1Ev>

00000a56 <_ZN16CObjectDetection4initEP14CI2C_Interface>:
     a56:	fc 01       	movw	r30, r24
     a58:	16 8a       	std	Z+22, r1	; 0x16
     a5a:	15 8a       	std	Z+21, r1	; 0x15
     a5c:	10 8e       	std	Z+24, r1	; 0x18
     a5e:	17 8a       	std	Z+23, r1	; 0x17
     a60:	12 8e       	std	Z+26, r1	; 0x1a
     a62:	11 8e       	std	Z+25, r1	; 0x19
     a64:	13 8e       	std	Z+27, r1	; 0x1b
     a66:	14 8a       	std	Z+20, r1	; 0x14
     a68:	13 8a       	std	Z+19, r1	; 0x13
     a6a:	0c 94 d3 01 	jmp	0x3a6	; 0x3a6 <_ZN8CVL53L0X4initEP14CI2C_Interface>

00000a6e <_ZN16CObjectDetection7processEv>:
     a6e:	cf 93       	push	r28
     a70:	df 93       	push	r29
     a72:	ec 01       	movw	r28, r24
     a74:	0e 94 63 00 	call	0xc6	; 0xc6 <_ZN8CVL53L0X4readEv>
     a78:	ce 01       	movw	r24, r28
     a7a:	0e 94 9b 00 	call	0x136	; 0x136 <_ZN8CVL53L0X12get_distanceEv>
     a7e:	9e 8b       	std	Y+22, r25	; 0x16
     a80:	8d 8b       	std	Y+21, r24	; 0x15
     a82:	4f 89       	ldd	r20, Y+23	; 0x17
     a84:	58 8d       	ldd	r21, Y+24	; 0x18
     a86:	6f e1       	ldi	r22, 0x1F	; 31
     a88:	64 9f       	mul	r22, r20
     a8a:	90 01       	movw	r18, r0
     a8c:	65 9f       	mul	r22, r21
     a8e:	30 0d       	add	r19, r0
     a90:	11 24       	eor	r1, r1
     a92:	28 0f       	add	r18, r24
     a94:	39 1f       	adc	r19, r25
     a96:	37 ff       	sbrs	r19, 7
     a98:	02 c0       	rjmp	.+4      	; 0xa9e <_ZN16CObjectDetection7processEv+0x30>
     a9a:	21 5e       	subi	r18, 0xE1	; 225
     a9c:	3f 4f       	sbci	r19, 0xFF	; 255
     a9e:	45 e0       	ldi	r20, 0x05	; 5
     aa0:	35 95       	asr	r19
     aa2:	27 95       	ror	r18
     aa4:	4a 95       	dec	r20
     aa6:	e1 f7       	brne	.-8      	; 0xaa0 <_ZN16CObjectDetection7processEv+0x32>
     aa8:	38 8f       	std	Y+24, r19	; 0x18
     aaa:	2f 8b       	std	Y+23, r18	; 0x17
     aac:	82 1b       	sub	r24, r18
     aae:	93 0b       	sbc	r25, r19
     ab0:	9a 8f       	std	Y+26, r25	; 0x1a
     ab2:	89 8f       	std	Y+25, r24	; 0x19
     ab4:	86 3f       	cpi	r24, 0xF6	; 246
     ab6:	9f 4f       	sbci	r25, 0xFF	; 255
     ab8:	a4 f4       	brge	.+40     	; 0xae2 <_ZN16CObjectDetection7processEv+0x74>
     aba:	8b 89       	ldd	r24, Y+19	; 0x13
     abc:	9c 89       	ldd	r25, Y+20	; 0x14
     abe:	89 2b       	or	r24, r25
     ac0:	81 f4       	brne	.+32     	; 0xae2 <_ZN16CObjectDetection7processEv+0x74>
     ac2:	81 e0       	ldi	r24, 0x01	; 1
     ac4:	8b 8f       	std	Y+27, r24	; 0x1b
     ac6:	84 e1       	ldi	r24, 0x14	; 20
     ac8:	90 e0       	ldi	r25, 0x00	; 0
     aca:	9c 8b       	std	Y+20, r25	; 0x14
     acc:	8b 8b       	std	Y+19, r24	; 0x13
     ace:	8b 89       	ldd	r24, Y+19	; 0x13
     ad0:	9c 89       	ldd	r25, Y+20	; 0x14
     ad2:	00 97       	sbiw	r24, 0x00	; 0
     ad4:	19 f0       	breq	.+6      	; 0xadc <_ZN16CObjectDetection7processEv+0x6e>
     ad6:	01 97       	sbiw	r24, 0x01	; 1
     ad8:	9c 8b       	std	Y+20, r25	; 0x14
     ada:	8b 8b       	std	Y+19, r24	; 0x13
     adc:	df 91       	pop	r29
     ade:	cf 91       	pop	r28
     ae0:	08 95       	ret
     ae2:	1b 8e       	std	Y+27, r1	; 0x1b
     ae4:	f4 cf       	rjmp	.-24     	; 0xace <_ZN16CObjectDetection7processEv+0x60>

00000ae6 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE9write_regEhhh>:
     ae6:	ff 92       	push	r15
     ae8:	0f 93       	push	r16
     aea:	1f 93       	push	r17
     aec:	cf 93       	push	r28
     aee:	df 93       	push	r29
     af0:	ec 01       	movw	r28, r24
     af2:	f6 2e       	mov	r15, r22
     af4:	04 2f       	mov	r16, r20
     af6:	12 2f       	mov	r17, r18
     af8:	e8 81       	ld	r30, Y
     afa:	f9 81       	ldd	r31, Y+1	; 0x01
     afc:	01 90       	ld	r0, Z+
     afe:	f0 81       	ld	r31, Z
     b00:	e0 2d       	mov	r30, r0
     b02:	09 95       	icall
     b04:	e8 81       	ld	r30, Y
     b06:	f9 81       	ldd	r31, Y+1	; 0x01
     b08:	04 80       	ldd	r0, Z+4	; 0x04
     b0a:	f5 81       	ldd	r31, Z+5	; 0x05
     b0c:	e0 2d       	mov	r30, r0
     b0e:	6f 2d       	mov	r22, r15
     b10:	ce 01       	movw	r24, r28
     b12:	09 95       	icall
     b14:	e8 81       	ld	r30, Y
     b16:	f9 81       	ldd	r31, Y+1	; 0x01
     b18:	04 80       	ldd	r0, Z+4	; 0x04
     b1a:	f5 81       	ldd	r31, Z+5	; 0x05
     b1c:	e0 2d       	mov	r30, r0
     b1e:	60 2f       	mov	r22, r16
     b20:	ce 01       	movw	r24, r28
     b22:	09 95       	icall
     b24:	e8 81       	ld	r30, Y
     b26:	f9 81       	ldd	r31, Y+1	; 0x01
     b28:	04 80       	ldd	r0, Z+4	; 0x04
     b2a:	f5 81       	ldd	r31, Z+5	; 0x05
     b2c:	e0 2d       	mov	r30, r0
     b2e:	61 2f       	mov	r22, r17
     b30:	ce 01       	movw	r24, r28
     b32:	09 95       	icall
     b34:	e8 81       	ld	r30, Y
     b36:	f9 81       	ldd	r31, Y+1	; 0x01
     b38:	02 80       	ldd	r0, Z+2	; 0x02
     b3a:	f3 81       	ldd	r31, Z+3	; 0x03
     b3c:	e0 2d       	mov	r30, r0
     b3e:	ce 01       	movw	r24, r28
     b40:	df 91       	pop	r29
     b42:	cf 91       	pop	r28
     b44:	1f 91       	pop	r17
     b46:	0f 91       	pop	r16
     b48:	ff 90       	pop	r15
     b4a:	09 94       	ijmp

00000b4c <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE15write_reg_16bitEhhj>:
     b4c:	ef 92       	push	r14
     b4e:	ff 92       	push	r15
     b50:	0f 93       	push	r16
     b52:	1f 93       	push	r17
     b54:	cf 93       	push	r28
     b56:	df 93       	push	r29
     b58:	ec 01       	movw	r28, r24
     b5a:	e6 2e       	mov	r14, r22
     b5c:	f4 2e       	mov	r15, r20
     b5e:	12 2f       	mov	r17, r18
     b60:	03 2f       	mov	r16, r19
     b62:	e8 81       	ld	r30, Y
     b64:	f9 81       	ldd	r31, Y+1	; 0x01
     b66:	01 90       	ld	r0, Z+
     b68:	f0 81       	ld	r31, Z
     b6a:	e0 2d       	mov	r30, r0
     b6c:	09 95       	icall
     b6e:	e8 81       	ld	r30, Y
     b70:	f9 81       	ldd	r31, Y+1	; 0x01
     b72:	04 80       	ldd	r0, Z+4	; 0x04
     b74:	f5 81       	ldd	r31, Z+5	; 0x05
     b76:	e0 2d       	mov	r30, r0
     b78:	6e 2d       	mov	r22, r14
     b7a:	ce 01       	movw	r24, r28
     b7c:	09 95       	icall
     b7e:	e8 81       	ld	r30, Y
     b80:	f9 81       	ldd	r31, Y+1	; 0x01
     b82:	04 80       	ldd	r0, Z+4	; 0x04
     b84:	f5 81       	ldd	r31, Z+5	; 0x05
     b86:	e0 2d       	mov	r30, r0
     b88:	6f 2d       	mov	r22, r15
     b8a:	ce 01       	movw	r24, r28
     b8c:	09 95       	icall
     b8e:	e8 81       	ld	r30, Y
     b90:	f9 81       	ldd	r31, Y+1	; 0x01
     b92:	04 80       	ldd	r0, Z+4	; 0x04
     b94:	f5 81       	ldd	r31, Z+5	; 0x05
     b96:	e0 2d       	mov	r30, r0
     b98:	60 2f       	mov	r22, r16
     b9a:	ce 01       	movw	r24, r28
     b9c:	09 95       	icall
     b9e:	e8 81       	ld	r30, Y
     ba0:	f9 81       	ldd	r31, Y+1	; 0x01
     ba2:	04 80       	ldd	r0, Z+4	; 0x04
     ba4:	f5 81       	ldd	r31, Z+5	; 0x05
     ba6:	e0 2d       	mov	r30, r0
     ba8:	61 2f       	mov	r22, r17
     baa:	ce 01       	movw	r24, r28
     bac:	09 95       	icall
     bae:	e8 81       	ld	r30, Y
     bb0:	f9 81       	ldd	r31, Y+1	; 0x01
     bb2:	02 80       	ldd	r0, Z+2	; 0x02
     bb4:	f3 81       	ldd	r31, Z+3	; 0x03
     bb6:	e0 2d       	mov	r30, r0
     bb8:	ce 01       	movw	r24, r28
     bba:	df 91       	pop	r29
     bbc:	cf 91       	pop	r28
     bbe:	1f 91       	pop	r17
     bc0:	0f 91       	pop	r16
     bc2:	ff 90       	pop	r15
     bc4:	ef 90       	pop	r14
     bc6:	09 94       	ijmp

00000bc8 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE15write_reg_multiEhhPhj>:
     bc8:	cf 92       	push	r12
     bca:	df 92       	push	r13
     bcc:	ef 92       	push	r14
     bce:	ff 92       	push	r15
     bd0:	0f 93       	push	r16
     bd2:	1f 93       	push	r17
     bd4:	cf 93       	push	r28
     bd6:	df 93       	push	r29
     bd8:	ec 01       	movw	r28, r24
     bda:	e6 2e       	mov	r14, r22
     bdc:	f4 2e       	mov	r15, r20
     bde:	69 01       	movw	r12, r18
     be0:	e8 81       	ld	r30, Y
     be2:	f9 81       	ldd	r31, Y+1	; 0x01
     be4:	01 90       	ld	r0, Z+
     be6:	f0 81       	ld	r31, Z
     be8:	e0 2d       	mov	r30, r0
     bea:	09 95       	icall
     bec:	e8 81       	ld	r30, Y
     bee:	f9 81       	ldd	r31, Y+1	; 0x01
     bf0:	04 80       	ldd	r0, Z+4	; 0x04
     bf2:	f5 81       	ldd	r31, Z+5	; 0x05
     bf4:	e0 2d       	mov	r30, r0
     bf6:	6e 2d       	mov	r22, r14
     bf8:	ce 01       	movw	r24, r28
     bfa:	09 95       	icall
     bfc:	e8 81       	ld	r30, Y
     bfe:	f9 81       	ldd	r31, Y+1	; 0x01
     c00:	04 80       	ldd	r0, Z+4	; 0x04
     c02:	f5 81       	ldd	r31, Z+5	; 0x05
     c04:	e0 2d       	mov	r30, r0
     c06:	6f 2d       	mov	r22, r15
     c08:	ce 01       	movw	r24, r28
     c0a:	09 95       	icall
     c0c:	76 01       	movw	r14, r12
     c0e:	0c 0d       	add	r16, r12
     c10:	1d 1d       	adc	r17, r13
     c12:	e8 81       	ld	r30, Y
     c14:	f9 81       	ldd	r31, Y+1	; 0x01
     c16:	e0 16       	cp	r14, r16
     c18:	f1 06       	cpc	r15, r17
     c1a:	49 f0       	breq	.+18     	; 0xc2e <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x66>
     c1c:	d7 01       	movw	r26, r14
     c1e:	6d 91       	ld	r22, X+
     c20:	7d 01       	movw	r14, r26
     c22:	04 80       	ldd	r0, Z+4	; 0x04
     c24:	f5 81       	ldd	r31, Z+5	; 0x05
     c26:	e0 2d       	mov	r30, r0
     c28:	ce 01       	movw	r24, r28
     c2a:	09 95       	icall
     c2c:	f2 cf       	rjmp	.-28     	; 0xc12 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x4a>
     c2e:	02 80       	ldd	r0, Z+2	; 0x02
     c30:	f3 81       	ldd	r31, Z+3	; 0x03
     c32:	e0 2d       	mov	r30, r0
     c34:	ce 01       	movw	r24, r28
     c36:	df 91       	pop	r29
     c38:	cf 91       	pop	r28
     c3a:	1f 91       	pop	r17
     c3c:	0f 91       	pop	r16
     c3e:	ff 90       	pop	r15
     c40:	ef 90       	pop	r14
     c42:	df 90       	pop	r13
     c44:	cf 90       	pop	r12
     c46:	09 94       	ijmp

00000c48 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE8read_regEhh>:
     c48:	0f 93       	push	r16
     c4a:	1f 93       	push	r17
     c4c:	cf 93       	push	r28
     c4e:	df 93       	push	r29
     c50:	ec 01       	movw	r28, r24
     c52:	16 2f       	mov	r17, r22
     c54:	04 2f       	mov	r16, r20
     c56:	e8 81       	ld	r30, Y
     c58:	f9 81       	ldd	r31, Y+1	; 0x01
     c5a:	01 90       	ld	r0, Z+
     c5c:	f0 81       	ld	r31, Z
     c5e:	e0 2d       	mov	r30, r0
     c60:	09 95       	icall
     c62:	e8 81       	ld	r30, Y
     c64:	f9 81       	ldd	r31, Y+1	; 0x01
     c66:	04 80       	ldd	r0, Z+4	; 0x04
     c68:	f5 81       	ldd	r31, Z+5	; 0x05
     c6a:	e0 2d       	mov	r30, r0
     c6c:	61 2f       	mov	r22, r17
     c6e:	ce 01       	movw	r24, r28
     c70:	09 95       	icall
     c72:	e8 81       	ld	r30, Y
     c74:	f9 81       	ldd	r31, Y+1	; 0x01
     c76:	04 80       	ldd	r0, Z+4	; 0x04
     c78:	f5 81       	ldd	r31, Z+5	; 0x05
     c7a:	e0 2d       	mov	r30, r0
     c7c:	60 2f       	mov	r22, r16
     c7e:	ce 01       	movw	r24, r28
     c80:	09 95       	icall
     c82:	e8 81       	ld	r30, Y
     c84:	f9 81       	ldd	r31, Y+1	; 0x01
     c86:	01 90       	ld	r0, Z+
     c88:	f0 81       	ld	r31, Z
     c8a:	e0 2d       	mov	r30, r0
     c8c:	ce 01       	movw	r24, r28
     c8e:	09 95       	icall
     c90:	61 2f       	mov	r22, r17
     c92:	61 60       	ori	r22, 0x01	; 1
     c94:	e8 81       	ld	r30, Y
     c96:	f9 81       	ldd	r31, Y+1	; 0x01
     c98:	04 80       	ldd	r0, Z+4	; 0x04
     c9a:	f5 81       	ldd	r31, Z+5	; 0x05
     c9c:	e0 2d       	mov	r30, r0
     c9e:	ce 01       	movw	r24, r28
     ca0:	09 95       	icall
     ca2:	e8 81       	ld	r30, Y
     ca4:	f9 81       	ldd	r31, Y+1	; 0x01
     ca6:	06 80       	ldd	r0, Z+6	; 0x06
     ca8:	f7 81       	ldd	r31, Z+7	; 0x07
     caa:	e0 2d       	mov	r30, r0
     cac:	60 e0       	ldi	r22, 0x00	; 0
     cae:	ce 01       	movw	r24, r28
     cb0:	09 95       	icall
     cb2:	18 2f       	mov	r17, r24
     cb4:	e8 81       	ld	r30, Y
     cb6:	f9 81       	ldd	r31, Y+1	; 0x01
     cb8:	02 80       	ldd	r0, Z+2	; 0x02
     cba:	f3 81       	ldd	r31, Z+3	; 0x03
     cbc:	e0 2d       	mov	r30, r0
     cbe:	ce 01       	movw	r24, r28
     cc0:	09 95       	icall
     cc2:	81 2f       	mov	r24, r17
     cc4:	df 91       	pop	r29
     cc6:	cf 91       	pop	r28
     cc8:	1f 91       	pop	r17
     cca:	0f 91       	pop	r16
     ccc:	08 95       	ret

00000cce <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE14read_reg_16bitEhh>:
     cce:	0f 93       	push	r16
     cd0:	1f 93       	push	r17
     cd2:	cf 93       	push	r28
     cd4:	df 93       	push	r29
     cd6:	ec 01       	movw	r28, r24
     cd8:	16 2f       	mov	r17, r22
     cda:	04 2f       	mov	r16, r20
     cdc:	e8 81       	ld	r30, Y
     cde:	f9 81       	ldd	r31, Y+1	; 0x01
     ce0:	01 90       	ld	r0, Z+
     ce2:	f0 81       	ld	r31, Z
     ce4:	e0 2d       	mov	r30, r0
     ce6:	09 95       	icall
     ce8:	e8 81       	ld	r30, Y
     cea:	f9 81       	ldd	r31, Y+1	; 0x01
     cec:	04 80       	ldd	r0, Z+4	; 0x04
     cee:	f5 81       	ldd	r31, Z+5	; 0x05
     cf0:	e0 2d       	mov	r30, r0
     cf2:	61 2f       	mov	r22, r17
     cf4:	ce 01       	movw	r24, r28
     cf6:	09 95       	icall
     cf8:	e8 81       	ld	r30, Y
     cfa:	f9 81       	ldd	r31, Y+1	; 0x01
     cfc:	04 80       	ldd	r0, Z+4	; 0x04
     cfe:	f5 81       	ldd	r31, Z+5	; 0x05
     d00:	e0 2d       	mov	r30, r0
     d02:	60 2f       	mov	r22, r16
     d04:	ce 01       	movw	r24, r28
     d06:	09 95       	icall
     d08:	e8 81       	ld	r30, Y
     d0a:	f9 81       	ldd	r31, Y+1	; 0x01
     d0c:	01 90       	ld	r0, Z+
     d0e:	f0 81       	ld	r31, Z
     d10:	e0 2d       	mov	r30, r0
     d12:	ce 01       	movw	r24, r28
     d14:	09 95       	icall
     d16:	61 2f       	mov	r22, r17
     d18:	61 60       	ori	r22, 0x01	; 1
     d1a:	e8 81       	ld	r30, Y
     d1c:	f9 81       	ldd	r31, Y+1	; 0x01
     d1e:	04 80       	ldd	r0, Z+4	; 0x04
     d20:	f5 81       	ldd	r31, Z+5	; 0x05
     d22:	e0 2d       	mov	r30, r0
     d24:	ce 01       	movw	r24, r28
     d26:	09 95       	icall
     d28:	e8 81       	ld	r30, Y
     d2a:	f9 81       	ldd	r31, Y+1	; 0x01
     d2c:	06 80       	ldd	r0, Z+6	; 0x06
     d2e:	f7 81       	ldd	r31, Z+7	; 0x07
     d30:	e0 2d       	mov	r30, r0
     d32:	61 e0       	ldi	r22, 0x01	; 1
     d34:	ce 01       	movw	r24, r28
     d36:	09 95       	icall
     d38:	08 2f       	mov	r16, r24
     d3a:	10 e0       	ldi	r17, 0x00	; 0
     d3c:	10 2f       	mov	r17, r16
     d3e:	00 27       	eor	r16, r16
     d40:	e8 81       	ld	r30, Y
     d42:	f9 81       	ldd	r31, Y+1	; 0x01
     d44:	06 80       	ldd	r0, Z+6	; 0x06
     d46:	f7 81       	ldd	r31, Z+7	; 0x07
     d48:	e0 2d       	mov	r30, r0
     d4a:	60 e0       	ldi	r22, 0x00	; 0
     d4c:	ce 01       	movw	r24, r28
     d4e:	09 95       	icall
     d50:	08 2b       	or	r16, r24
     d52:	e8 81       	ld	r30, Y
     d54:	f9 81       	ldd	r31, Y+1	; 0x01
     d56:	02 80       	ldd	r0, Z+2	; 0x02
     d58:	f3 81       	ldd	r31, Z+3	; 0x03
     d5a:	e0 2d       	mov	r30, r0
     d5c:	ce 01       	movw	r24, r28
     d5e:	09 95       	icall
     d60:	c8 01       	movw	r24, r16
     d62:	df 91       	pop	r29
     d64:	cf 91       	pop	r28
     d66:	1f 91       	pop	r17
     d68:	0f 91       	pop	r16
     d6a:	08 95       	ret

00000d6c <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE14read_reg_multiEhhPhj>:
     d6c:	cf 92       	push	r12
     d6e:	df 92       	push	r13
     d70:	ef 92       	push	r14
     d72:	ff 92       	push	r15
     d74:	0f 93       	push	r16
     d76:	1f 93       	push	r17
     d78:	cf 93       	push	r28
     d7a:	df 93       	push	r29
     d7c:	ec 01       	movw	r28, r24
     d7e:	f6 2e       	mov	r15, r22
     d80:	e4 2e       	mov	r14, r20
     d82:	69 01       	movw	r12, r18
     d84:	e8 81       	ld	r30, Y
     d86:	f9 81       	ldd	r31, Y+1	; 0x01
     d88:	01 90       	ld	r0, Z+
     d8a:	f0 81       	ld	r31, Z
     d8c:	e0 2d       	mov	r30, r0
     d8e:	09 95       	icall
     d90:	e8 81       	ld	r30, Y
     d92:	f9 81       	ldd	r31, Y+1	; 0x01
     d94:	04 80       	ldd	r0, Z+4	; 0x04
     d96:	f5 81       	ldd	r31, Z+5	; 0x05
     d98:	e0 2d       	mov	r30, r0
     d9a:	6f 2d       	mov	r22, r15
     d9c:	ce 01       	movw	r24, r28
     d9e:	09 95       	icall
     da0:	e8 81       	ld	r30, Y
     da2:	f9 81       	ldd	r31, Y+1	; 0x01
     da4:	04 80       	ldd	r0, Z+4	; 0x04
     da6:	f5 81       	ldd	r31, Z+5	; 0x05
     da8:	e0 2d       	mov	r30, r0
     daa:	6e 2d       	mov	r22, r14
     dac:	ce 01       	movw	r24, r28
     dae:	09 95       	icall
     db0:	e8 81       	ld	r30, Y
     db2:	f9 81       	ldd	r31, Y+1	; 0x01
     db4:	01 90       	ld	r0, Z+
     db6:	f0 81       	ld	r31, Z
     db8:	e0 2d       	mov	r30, r0
     dba:	ce 01       	movw	r24, r28
     dbc:	09 95       	icall
     dbe:	6f 2d       	mov	r22, r15
     dc0:	61 60       	ori	r22, 0x01	; 1
     dc2:	e8 81       	ld	r30, Y
     dc4:	f9 81       	ldd	r31, Y+1	; 0x01
     dc6:	04 80       	ldd	r0, Z+4	; 0x04
     dc8:	f5 81       	ldd	r31, Z+5	; 0x05
     dca:	e0 2d       	mov	r30, r0
     dcc:	ce 01       	movw	r24, r28
     dce:	09 95       	icall
     dd0:	76 01       	movw	r14, r12
     dd2:	0c 0d       	add	r16, r12
     dd4:	1d 1d       	adc	r17, r13
     dd6:	e8 81       	ld	r30, Y
     dd8:	f9 81       	ldd	r31, Y+1	; 0x01
     dda:	e0 16       	cp	r14, r16
     ddc:	f1 06       	cpc	r15, r17
     dde:	51 f0       	breq	.+20     	; 0xdf4 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x88>
     de0:	06 80       	ldd	r0, Z+6	; 0x06
     de2:	f7 81       	ldd	r31, Z+7	; 0x07
     de4:	e0 2d       	mov	r30, r0
     de6:	61 e0       	ldi	r22, 0x01	; 1
     de8:	ce 01       	movw	r24, r28
     dea:	09 95       	icall
     dec:	f7 01       	movw	r30, r14
     dee:	81 93       	st	Z+, r24
     df0:	7f 01       	movw	r14, r30
     df2:	f1 cf       	rjmp	.-30     	; 0xdd6 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x6a>
     df4:	02 80       	ldd	r0, Z+2	; 0x02
     df6:	f3 81       	ldd	r31, Z+3	; 0x03
     df8:	e0 2d       	mov	r30, r0
     dfa:	ce 01       	movw	r24, r28
     dfc:	df 91       	pop	r29
     dfe:	cf 91       	pop	r28
     e00:	1f 91       	pop	r17
     e02:	0f 91       	pop	r16
     e04:	ff 90       	pop	r15
     e06:	ef 90       	pop	r14
     e08:	df 90       	pop	r13
     e0a:	cf 90       	pop	r12
     e0c:	09 94       	ijmp

00000e0e <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE9write_regEhhh>:
     e0e:	ff 92       	push	r15
     e10:	0f 93       	push	r16
     e12:	1f 93       	push	r17
     e14:	cf 93       	push	r28
     e16:	df 93       	push	r29
     e18:	ec 01       	movw	r28, r24
     e1a:	f6 2e       	mov	r15, r22
     e1c:	04 2f       	mov	r16, r20
     e1e:	12 2f       	mov	r17, r18
     e20:	e8 81       	ld	r30, Y
     e22:	f9 81       	ldd	r31, Y+1	; 0x01
     e24:	01 90       	ld	r0, Z+
     e26:	f0 81       	ld	r31, Z
     e28:	e0 2d       	mov	r30, r0
     e2a:	09 95       	icall
     e2c:	e8 81       	ld	r30, Y
     e2e:	f9 81       	ldd	r31, Y+1	; 0x01
     e30:	04 80       	ldd	r0, Z+4	; 0x04
     e32:	f5 81       	ldd	r31, Z+5	; 0x05
     e34:	e0 2d       	mov	r30, r0
     e36:	6f 2d       	mov	r22, r15
     e38:	ce 01       	movw	r24, r28
     e3a:	09 95       	icall
     e3c:	e8 81       	ld	r30, Y
     e3e:	f9 81       	ldd	r31, Y+1	; 0x01
     e40:	04 80       	ldd	r0, Z+4	; 0x04
     e42:	f5 81       	ldd	r31, Z+5	; 0x05
     e44:	e0 2d       	mov	r30, r0
     e46:	60 2f       	mov	r22, r16
     e48:	ce 01       	movw	r24, r28
     e4a:	09 95       	icall
     e4c:	e8 81       	ld	r30, Y
     e4e:	f9 81       	ldd	r31, Y+1	; 0x01
     e50:	04 80       	ldd	r0, Z+4	; 0x04
     e52:	f5 81       	ldd	r31, Z+5	; 0x05
     e54:	e0 2d       	mov	r30, r0
     e56:	61 2f       	mov	r22, r17
     e58:	ce 01       	movw	r24, r28
     e5a:	09 95       	icall
     e5c:	e8 81       	ld	r30, Y
     e5e:	f9 81       	ldd	r31, Y+1	; 0x01
     e60:	02 80       	ldd	r0, Z+2	; 0x02
     e62:	f3 81       	ldd	r31, Z+3	; 0x03
     e64:	e0 2d       	mov	r30, r0
     e66:	ce 01       	movw	r24, r28
     e68:	df 91       	pop	r29
     e6a:	cf 91       	pop	r28
     e6c:	1f 91       	pop	r17
     e6e:	0f 91       	pop	r16
     e70:	ff 90       	pop	r15
     e72:	09 94       	ijmp

00000e74 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE15write_reg_16bitEhhj>:
     e74:	ef 92       	push	r14
     e76:	ff 92       	push	r15
     e78:	0f 93       	push	r16
     e7a:	1f 93       	push	r17
     e7c:	cf 93       	push	r28
     e7e:	df 93       	push	r29
     e80:	ec 01       	movw	r28, r24
     e82:	e6 2e       	mov	r14, r22
     e84:	f4 2e       	mov	r15, r20
     e86:	12 2f       	mov	r17, r18
     e88:	03 2f       	mov	r16, r19
     e8a:	e8 81       	ld	r30, Y
     e8c:	f9 81       	ldd	r31, Y+1	; 0x01
     e8e:	01 90       	ld	r0, Z+
     e90:	f0 81       	ld	r31, Z
     e92:	e0 2d       	mov	r30, r0
     e94:	09 95       	icall
     e96:	e8 81       	ld	r30, Y
     e98:	f9 81       	ldd	r31, Y+1	; 0x01
     e9a:	04 80       	ldd	r0, Z+4	; 0x04
     e9c:	f5 81       	ldd	r31, Z+5	; 0x05
     e9e:	e0 2d       	mov	r30, r0
     ea0:	6e 2d       	mov	r22, r14
     ea2:	ce 01       	movw	r24, r28
     ea4:	09 95       	icall
     ea6:	e8 81       	ld	r30, Y
     ea8:	f9 81       	ldd	r31, Y+1	; 0x01
     eaa:	04 80       	ldd	r0, Z+4	; 0x04
     eac:	f5 81       	ldd	r31, Z+5	; 0x05
     eae:	e0 2d       	mov	r30, r0
     eb0:	6f 2d       	mov	r22, r15
     eb2:	ce 01       	movw	r24, r28
     eb4:	09 95       	icall
     eb6:	e8 81       	ld	r30, Y
     eb8:	f9 81       	ldd	r31, Y+1	; 0x01
     eba:	04 80       	ldd	r0, Z+4	; 0x04
     ebc:	f5 81       	ldd	r31, Z+5	; 0x05
     ebe:	e0 2d       	mov	r30, r0
     ec0:	60 2f       	mov	r22, r16
     ec2:	ce 01       	movw	r24, r28
     ec4:	09 95       	icall
     ec6:	e8 81       	ld	r30, Y
     ec8:	f9 81       	ldd	r31, Y+1	; 0x01
     eca:	04 80       	ldd	r0, Z+4	; 0x04
     ecc:	f5 81       	ldd	r31, Z+5	; 0x05
     ece:	e0 2d       	mov	r30, r0
     ed0:	61 2f       	mov	r22, r17
     ed2:	ce 01       	movw	r24, r28
     ed4:	09 95       	icall
     ed6:	e8 81       	ld	r30, Y
     ed8:	f9 81       	ldd	r31, Y+1	; 0x01
     eda:	02 80       	ldd	r0, Z+2	; 0x02
     edc:	f3 81       	ldd	r31, Z+3	; 0x03
     ede:	e0 2d       	mov	r30, r0
     ee0:	ce 01       	movw	r24, r28
     ee2:	df 91       	pop	r29
     ee4:	cf 91       	pop	r28
     ee6:	1f 91       	pop	r17
     ee8:	0f 91       	pop	r16
     eea:	ff 90       	pop	r15
     eec:	ef 90       	pop	r14
     eee:	09 94       	ijmp

00000ef0 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE15write_reg_multiEhhPhj>:
     ef0:	cf 92       	push	r12
     ef2:	df 92       	push	r13
     ef4:	ef 92       	push	r14
     ef6:	ff 92       	push	r15
     ef8:	0f 93       	push	r16
     efa:	1f 93       	push	r17
     efc:	cf 93       	push	r28
     efe:	df 93       	push	r29
     f00:	ec 01       	movw	r28, r24
     f02:	e6 2e       	mov	r14, r22
     f04:	f4 2e       	mov	r15, r20
     f06:	69 01       	movw	r12, r18
     f08:	e8 81       	ld	r30, Y
     f0a:	f9 81       	ldd	r31, Y+1	; 0x01
     f0c:	01 90       	ld	r0, Z+
     f0e:	f0 81       	ld	r31, Z
     f10:	e0 2d       	mov	r30, r0
     f12:	09 95       	icall
     f14:	e8 81       	ld	r30, Y
     f16:	f9 81       	ldd	r31, Y+1	; 0x01
     f18:	04 80       	ldd	r0, Z+4	; 0x04
     f1a:	f5 81       	ldd	r31, Z+5	; 0x05
     f1c:	e0 2d       	mov	r30, r0
     f1e:	6e 2d       	mov	r22, r14
     f20:	ce 01       	movw	r24, r28
     f22:	09 95       	icall
     f24:	e8 81       	ld	r30, Y
     f26:	f9 81       	ldd	r31, Y+1	; 0x01
     f28:	04 80       	ldd	r0, Z+4	; 0x04
     f2a:	f5 81       	ldd	r31, Z+5	; 0x05
     f2c:	e0 2d       	mov	r30, r0
     f2e:	6f 2d       	mov	r22, r15
     f30:	ce 01       	movw	r24, r28
     f32:	09 95       	icall
     f34:	76 01       	movw	r14, r12
     f36:	0c 0d       	add	r16, r12
     f38:	1d 1d       	adc	r17, r13
     f3a:	e8 81       	ld	r30, Y
     f3c:	f9 81       	ldd	r31, Y+1	; 0x01
     f3e:	e0 16       	cp	r14, r16
     f40:	f1 06       	cpc	r15, r17
     f42:	49 f0       	breq	.+18     	; 0xf56 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x66>
     f44:	d7 01       	movw	r26, r14
     f46:	6d 91       	ld	r22, X+
     f48:	7d 01       	movw	r14, r26
     f4a:	04 80       	ldd	r0, Z+4	; 0x04
     f4c:	f5 81       	ldd	r31, Z+5	; 0x05
     f4e:	e0 2d       	mov	r30, r0
     f50:	ce 01       	movw	r24, r28
     f52:	09 95       	icall
     f54:	f2 cf       	rjmp	.-28     	; 0xf3a <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x4a>
     f56:	02 80       	ldd	r0, Z+2	; 0x02
     f58:	f3 81       	ldd	r31, Z+3	; 0x03
     f5a:	e0 2d       	mov	r30, r0
     f5c:	ce 01       	movw	r24, r28
     f5e:	df 91       	pop	r29
     f60:	cf 91       	pop	r28
     f62:	1f 91       	pop	r17
     f64:	0f 91       	pop	r16
     f66:	ff 90       	pop	r15
     f68:	ef 90       	pop	r14
     f6a:	df 90       	pop	r13
     f6c:	cf 90       	pop	r12
     f6e:	09 94       	ijmp

00000f70 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE8read_regEhh>:
     f70:	0f 93       	push	r16
     f72:	1f 93       	push	r17
     f74:	cf 93       	push	r28
     f76:	df 93       	push	r29
     f78:	ec 01       	movw	r28, r24
     f7a:	16 2f       	mov	r17, r22
     f7c:	04 2f       	mov	r16, r20
     f7e:	e8 81       	ld	r30, Y
     f80:	f9 81       	ldd	r31, Y+1	; 0x01
     f82:	01 90       	ld	r0, Z+
     f84:	f0 81       	ld	r31, Z
     f86:	e0 2d       	mov	r30, r0
     f88:	09 95       	icall
     f8a:	e8 81       	ld	r30, Y
     f8c:	f9 81       	ldd	r31, Y+1	; 0x01
     f8e:	04 80       	ldd	r0, Z+4	; 0x04
     f90:	f5 81       	ldd	r31, Z+5	; 0x05
     f92:	e0 2d       	mov	r30, r0
     f94:	61 2f       	mov	r22, r17
     f96:	ce 01       	movw	r24, r28
     f98:	09 95       	icall
     f9a:	e8 81       	ld	r30, Y
     f9c:	f9 81       	ldd	r31, Y+1	; 0x01
     f9e:	04 80       	ldd	r0, Z+4	; 0x04
     fa0:	f5 81       	ldd	r31, Z+5	; 0x05
     fa2:	e0 2d       	mov	r30, r0
     fa4:	60 2f       	mov	r22, r16
     fa6:	ce 01       	movw	r24, r28
     fa8:	09 95       	icall
     faa:	e8 81       	ld	r30, Y
     fac:	f9 81       	ldd	r31, Y+1	; 0x01
     fae:	01 90       	ld	r0, Z+
     fb0:	f0 81       	ld	r31, Z
     fb2:	e0 2d       	mov	r30, r0
     fb4:	ce 01       	movw	r24, r28
     fb6:	09 95       	icall
     fb8:	61 2f       	mov	r22, r17
     fba:	61 60       	ori	r22, 0x01	; 1
     fbc:	e8 81       	ld	r30, Y
     fbe:	f9 81       	ldd	r31, Y+1	; 0x01
     fc0:	04 80       	ldd	r0, Z+4	; 0x04
     fc2:	f5 81       	ldd	r31, Z+5	; 0x05
     fc4:	e0 2d       	mov	r30, r0
     fc6:	ce 01       	movw	r24, r28
     fc8:	09 95       	icall
     fca:	e8 81       	ld	r30, Y
     fcc:	f9 81       	ldd	r31, Y+1	; 0x01
     fce:	06 80       	ldd	r0, Z+6	; 0x06
     fd0:	f7 81       	ldd	r31, Z+7	; 0x07
     fd2:	e0 2d       	mov	r30, r0
     fd4:	60 e0       	ldi	r22, 0x00	; 0
     fd6:	ce 01       	movw	r24, r28
     fd8:	09 95       	icall
     fda:	18 2f       	mov	r17, r24
     fdc:	e8 81       	ld	r30, Y
     fde:	f9 81       	ldd	r31, Y+1	; 0x01
     fe0:	02 80       	ldd	r0, Z+2	; 0x02
     fe2:	f3 81       	ldd	r31, Z+3	; 0x03
     fe4:	e0 2d       	mov	r30, r0
     fe6:	ce 01       	movw	r24, r28
     fe8:	09 95       	icall
     fea:	81 2f       	mov	r24, r17
     fec:	df 91       	pop	r29
     fee:	cf 91       	pop	r28
     ff0:	1f 91       	pop	r17
     ff2:	0f 91       	pop	r16
     ff4:	08 95       	ret

00000ff6 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE14read_reg_16bitEhh>:
     ff6:	0f 93       	push	r16
     ff8:	1f 93       	push	r17
     ffa:	cf 93       	push	r28
     ffc:	df 93       	push	r29
     ffe:	ec 01       	movw	r28, r24
    1000:	16 2f       	mov	r17, r22
    1002:	04 2f       	mov	r16, r20
    1004:	e8 81       	ld	r30, Y
    1006:	f9 81       	ldd	r31, Y+1	; 0x01
    1008:	01 90       	ld	r0, Z+
    100a:	f0 81       	ld	r31, Z
    100c:	e0 2d       	mov	r30, r0
    100e:	09 95       	icall
    1010:	e8 81       	ld	r30, Y
    1012:	f9 81       	ldd	r31, Y+1	; 0x01
    1014:	04 80       	ldd	r0, Z+4	; 0x04
    1016:	f5 81       	ldd	r31, Z+5	; 0x05
    1018:	e0 2d       	mov	r30, r0
    101a:	61 2f       	mov	r22, r17
    101c:	ce 01       	movw	r24, r28
    101e:	09 95       	icall
    1020:	e8 81       	ld	r30, Y
    1022:	f9 81       	ldd	r31, Y+1	; 0x01
    1024:	04 80       	ldd	r0, Z+4	; 0x04
    1026:	f5 81       	ldd	r31, Z+5	; 0x05
    1028:	e0 2d       	mov	r30, r0
    102a:	60 2f       	mov	r22, r16
    102c:	ce 01       	movw	r24, r28
    102e:	09 95       	icall
    1030:	e8 81       	ld	r30, Y
    1032:	f9 81       	ldd	r31, Y+1	; 0x01
    1034:	01 90       	ld	r0, Z+
    1036:	f0 81       	ld	r31, Z
    1038:	e0 2d       	mov	r30, r0
    103a:	ce 01       	movw	r24, r28
    103c:	09 95       	icall
    103e:	61 2f       	mov	r22, r17
    1040:	61 60       	ori	r22, 0x01	; 1
    1042:	e8 81       	ld	r30, Y
    1044:	f9 81       	ldd	r31, Y+1	; 0x01
    1046:	04 80       	ldd	r0, Z+4	; 0x04
    1048:	f5 81       	ldd	r31, Z+5	; 0x05
    104a:	e0 2d       	mov	r30, r0
    104c:	ce 01       	movw	r24, r28
    104e:	09 95       	icall
    1050:	e8 81       	ld	r30, Y
    1052:	f9 81       	ldd	r31, Y+1	; 0x01
    1054:	06 80       	ldd	r0, Z+6	; 0x06
    1056:	f7 81       	ldd	r31, Z+7	; 0x07
    1058:	e0 2d       	mov	r30, r0
    105a:	61 e0       	ldi	r22, 0x01	; 1
    105c:	ce 01       	movw	r24, r28
    105e:	09 95       	icall
    1060:	08 2f       	mov	r16, r24
    1062:	10 e0       	ldi	r17, 0x00	; 0
    1064:	10 2f       	mov	r17, r16
    1066:	00 27       	eor	r16, r16
    1068:	e8 81       	ld	r30, Y
    106a:	f9 81       	ldd	r31, Y+1	; 0x01
    106c:	06 80       	ldd	r0, Z+6	; 0x06
    106e:	f7 81       	ldd	r31, Z+7	; 0x07
    1070:	e0 2d       	mov	r30, r0
    1072:	60 e0       	ldi	r22, 0x00	; 0
    1074:	ce 01       	movw	r24, r28
    1076:	09 95       	icall
    1078:	08 2b       	or	r16, r24
    107a:	e8 81       	ld	r30, Y
    107c:	f9 81       	ldd	r31, Y+1	; 0x01
    107e:	02 80       	ldd	r0, Z+2	; 0x02
    1080:	f3 81       	ldd	r31, Z+3	; 0x03
    1082:	e0 2d       	mov	r30, r0
    1084:	ce 01       	movw	r24, r28
    1086:	09 95       	icall
    1088:	c8 01       	movw	r24, r16
    108a:	df 91       	pop	r29
    108c:	cf 91       	pop	r28
    108e:	1f 91       	pop	r17
    1090:	0f 91       	pop	r16
    1092:	08 95       	ret

00001094 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE14read_reg_multiEhhPhj>:
    1094:	cf 92       	push	r12
    1096:	df 92       	push	r13
    1098:	ef 92       	push	r14
    109a:	ff 92       	push	r15
    109c:	0f 93       	push	r16
    109e:	1f 93       	push	r17
    10a0:	cf 93       	push	r28
    10a2:	df 93       	push	r29
    10a4:	ec 01       	movw	r28, r24
    10a6:	f6 2e       	mov	r15, r22
    10a8:	e4 2e       	mov	r14, r20
    10aa:	69 01       	movw	r12, r18
    10ac:	e8 81       	ld	r30, Y
    10ae:	f9 81       	ldd	r31, Y+1	; 0x01
    10b0:	01 90       	ld	r0, Z+
    10b2:	f0 81       	ld	r31, Z
    10b4:	e0 2d       	mov	r30, r0
    10b6:	09 95       	icall
    10b8:	e8 81       	ld	r30, Y
    10ba:	f9 81       	ldd	r31, Y+1	; 0x01
    10bc:	04 80       	ldd	r0, Z+4	; 0x04
    10be:	f5 81       	ldd	r31, Z+5	; 0x05
    10c0:	e0 2d       	mov	r30, r0
    10c2:	6f 2d       	mov	r22, r15
    10c4:	ce 01       	movw	r24, r28
    10c6:	09 95       	icall
    10c8:	e8 81       	ld	r30, Y
    10ca:	f9 81       	ldd	r31, Y+1	; 0x01
    10cc:	04 80       	ldd	r0, Z+4	; 0x04
    10ce:	f5 81       	ldd	r31, Z+5	; 0x05
    10d0:	e0 2d       	mov	r30, r0
    10d2:	6e 2d       	mov	r22, r14
    10d4:	ce 01       	movw	r24, r28
    10d6:	09 95       	icall
    10d8:	e8 81       	ld	r30, Y
    10da:	f9 81       	ldd	r31, Y+1	; 0x01
    10dc:	01 90       	ld	r0, Z+
    10de:	f0 81       	ld	r31, Z
    10e0:	e0 2d       	mov	r30, r0
    10e2:	ce 01       	movw	r24, r28
    10e4:	09 95       	icall
    10e6:	6f 2d       	mov	r22, r15
    10e8:	61 60       	ori	r22, 0x01	; 1
    10ea:	e8 81       	ld	r30, Y
    10ec:	f9 81       	ldd	r31, Y+1	; 0x01
    10ee:	04 80       	ldd	r0, Z+4	; 0x04
    10f0:	f5 81       	ldd	r31, Z+5	; 0x05
    10f2:	e0 2d       	mov	r30, r0
    10f4:	ce 01       	movw	r24, r28
    10f6:	09 95       	icall
    10f8:	76 01       	movw	r14, r12
    10fa:	0c 0d       	add	r16, r12
    10fc:	1d 1d       	adc	r17, r13
    10fe:	e8 81       	ld	r30, Y
    1100:	f9 81       	ldd	r31, Y+1	; 0x01
    1102:	e0 16       	cp	r14, r16
    1104:	f1 06       	cpc	r15, r17
    1106:	51 f0       	breq	.+20     	; 0x111c <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x88>
    1108:	06 80       	ldd	r0, Z+6	; 0x06
    110a:	f7 81       	ldd	r31, Z+7	; 0x07
    110c:	e0 2d       	mov	r30, r0
    110e:	61 e0       	ldi	r22, 0x01	; 1
    1110:	ce 01       	movw	r24, r28
    1112:	09 95       	icall
    1114:	f7 01       	movw	r30, r14
    1116:	81 93       	st	Z+, r24
    1118:	7f 01       	movw	r14, r30
    111a:	f1 cf       	rjmp	.-30     	; 0x10fe <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x6a>
    111c:	02 80       	ldd	r0, Z+2	; 0x02
    111e:	f3 81       	ldd	r31, Z+3	; 0x03
    1120:	e0 2d       	mov	r30, r0
    1122:	ce 01       	movw	r24, r28
    1124:	df 91       	pop	r29
    1126:	cf 91       	pop	r28
    1128:	1f 91       	pop	r17
    112a:	0f 91       	pop	r16
    112c:	ff 90       	pop	r15
    112e:	ef 90       	pop	r14
    1130:	df 90       	pop	r13
    1132:	cf 90       	pop	r12
    1134:	09 94       	ijmp

00001136 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE9write_regEhhh>:
    1136:	ff 92       	push	r15
    1138:	0f 93       	push	r16
    113a:	1f 93       	push	r17
    113c:	cf 93       	push	r28
    113e:	df 93       	push	r29
    1140:	ec 01       	movw	r28, r24
    1142:	f6 2e       	mov	r15, r22
    1144:	04 2f       	mov	r16, r20
    1146:	12 2f       	mov	r17, r18
    1148:	e8 81       	ld	r30, Y
    114a:	f9 81       	ldd	r31, Y+1	; 0x01
    114c:	01 90       	ld	r0, Z+
    114e:	f0 81       	ld	r31, Z
    1150:	e0 2d       	mov	r30, r0
    1152:	09 95       	icall
    1154:	e8 81       	ld	r30, Y
    1156:	f9 81       	ldd	r31, Y+1	; 0x01
    1158:	04 80       	ldd	r0, Z+4	; 0x04
    115a:	f5 81       	ldd	r31, Z+5	; 0x05
    115c:	e0 2d       	mov	r30, r0
    115e:	6f 2d       	mov	r22, r15
    1160:	ce 01       	movw	r24, r28
    1162:	09 95       	icall
    1164:	e8 81       	ld	r30, Y
    1166:	f9 81       	ldd	r31, Y+1	; 0x01
    1168:	04 80       	ldd	r0, Z+4	; 0x04
    116a:	f5 81       	ldd	r31, Z+5	; 0x05
    116c:	e0 2d       	mov	r30, r0
    116e:	60 2f       	mov	r22, r16
    1170:	ce 01       	movw	r24, r28
    1172:	09 95       	icall
    1174:	e8 81       	ld	r30, Y
    1176:	f9 81       	ldd	r31, Y+1	; 0x01
    1178:	04 80       	ldd	r0, Z+4	; 0x04
    117a:	f5 81       	ldd	r31, Z+5	; 0x05
    117c:	e0 2d       	mov	r30, r0
    117e:	61 2f       	mov	r22, r17
    1180:	ce 01       	movw	r24, r28
    1182:	09 95       	icall
    1184:	e8 81       	ld	r30, Y
    1186:	f9 81       	ldd	r31, Y+1	; 0x01
    1188:	02 80       	ldd	r0, Z+2	; 0x02
    118a:	f3 81       	ldd	r31, Z+3	; 0x03
    118c:	e0 2d       	mov	r30, r0
    118e:	ce 01       	movw	r24, r28
    1190:	df 91       	pop	r29
    1192:	cf 91       	pop	r28
    1194:	1f 91       	pop	r17
    1196:	0f 91       	pop	r16
    1198:	ff 90       	pop	r15
    119a:	09 94       	ijmp

0000119c <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE15write_reg_16bitEhhj>:
    119c:	ef 92       	push	r14
    119e:	ff 92       	push	r15
    11a0:	0f 93       	push	r16
    11a2:	1f 93       	push	r17
    11a4:	cf 93       	push	r28
    11a6:	df 93       	push	r29
    11a8:	ec 01       	movw	r28, r24
    11aa:	e6 2e       	mov	r14, r22
    11ac:	f4 2e       	mov	r15, r20
    11ae:	12 2f       	mov	r17, r18
    11b0:	03 2f       	mov	r16, r19
    11b2:	e8 81       	ld	r30, Y
    11b4:	f9 81       	ldd	r31, Y+1	; 0x01
    11b6:	01 90       	ld	r0, Z+
    11b8:	f0 81       	ld	r31, Z
    11ba:	e0 2d       	mov	r30, r0
    11bc:	09 95       	icall
    11be:	e8 81       	ld	r30, Y
    11c0:	f9 81       	ldd	r31, Y+1	; 0x01
    11c2:	04 80       	ldd	r0, Z+4	; 0x04
    11c4:	f5 81       	ldd	r31, Z+5	; 0x05
    11c6:	e0 2d       	mov	r30, r0
    11c8:	6e 2d       	mov	r22, r14
    11ca:	ce 01       	movw	r24, r28
    11cc:	09 95       	icall
    11ce:	e8 81       	ld	r30, Y
    11d0:	f9 81       	ldd	r31, Y+1	; 0x01
    11d2:	04 80       	ldd	r0, Z+4	; 0x04
    11d4:	f5 81       	ldd	r31, Z+5	; 0x05
    11d6:	e0 2d       	mov	r30, r0
    11d8:	6f 2d       	mov	r22, r15
    11da:	ce 01       	movw	r24, r28
    11dc:	09 95       	icall
    11de:	e8 81       	ld	r30, Y
    11e0:	f9 81       	ldd	r31, Y+1	; 0x01
    11e2:	04 80       	ldd	r0, Z+4	; 0x04
    11e4:	f5 81       	ldd	r31, Z+5	; 0x05
    11e6:	e0 2d       	mov	r30, r0
    11e8:	60 2f       	mov	r22, r16
    11ea:	ce 01       	movw	r24, r28
    11ec:	09 95       	icall
    11ee:	e8 81       	ld	r30, Y
    11f0:	f9 81       	ldd	r31, Y+1	; 0x01
    11f2:	04 80       	ldd	r0, Z+4	; 0x04
    11f4:	f5 81       	ldd	r31, Z+5	; 0x05
    11f6:	e0 2d       	mov	r30, r0
    11f8:	61 2f       	mov	r22, r17
    11fa:	ce 01       	movw	r24, r28
    11fc:	09 95       	icall
    11fe:	e8 81       	ld	r30, Y
    1200:	f9 81       	ldd	r31, Y+1	; 0x01
    1202:	02 80       	ldd	r0, Z+2	; 0x02
    1204:	f3 81       	ldd	r31, Z+3	; 0x03
    1206:	e0 2d       	mov	r30, r0
    1208:	ce 01       	movw	r24, r28
    120a:	df 91       	pop	r29
    120c:	cf 91       	pop	r28
    120e:	1f 91       	pop	r17
    1210:	0f 91       	pop	r16
    1212:	ff 90       	pop	r15
    1214:	ef 90       	pop	r14
    1216:	09 94       	ijmp

00001218 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE15write_reg_multiEhhPhj>:
    1218:	cf 92       	push	r12
    121a:	df 92       	push	r13
    121c:	ef 92       	push	r14
    121e:	ff 92       	push	r15
    1220:	0f 93       	push	r16
    1222:	1f 93       	push	r17
    1224:	cf 93       	push	r28
    1226:	df 93       	push	r29
    1228:	ec 01       	movw	r28, r24
    122a:	e6 2e       	mov	r14, r22
    122c:	f4 2e       	mov	r15, r20
    122e:	69 01       	movw	r12, r18
    1230:	e8 81       	ld	r30, Y
    1232:	f9 81       	ldd	r31, Y+1	; 0x01
    1234:	01 90       	ld	r0, Z+
    1236:	f0 81       	ld	r31, Z
    1238:	e0 2d       	mov	r30, r0
    123a:	09 95       	icall
    123c:	e8 81       	ld	r30, Y
    123e:	f9 81       	ldd	r31, Y+1	; 0x01
    1240:	04 80       	ldd	r0, Z+4	; 0x04
    1242:	f5 81       	ldd	r31, Z+5	; 0x05
    1244:	e0 2d       	mov	r30, r0
    1246:	6e 2d       	mov	r22, r14
    1248:	ce 01       	movw	r24, r28
    124a:	09 95       	icall
    124c:	e8 81       	ld	r30, Y
    124e:	f9 81       	ldd	r31, Y+1	; 0x01
    1250:	04 80       	ldd	r0, Z+4	; 0x04
    1252:	f5 81       	ldd	r31, Z+5	; 0x05
    1254:	e0 2d       	mov	r30, r0
    1256:	6f 2d       	mov	r22, r15
    1258:	ce 01       	movw	r24, r28
    125a:	09 95       	icall
    125c:	76 01       	movw	r14, r12
    125e:	0c 0d       	add	r16, r12
    1260:	1d 1d       	adc	r17, r13
    1262:	e8 81       	ld	r30, Y
    1264:	f9 81       	ldd	r31, Y+1	; 0x01
    1266:	e0 16       	cp	r14, r16
    1268:	f1 06       	cpc	r15, r17
    126a:	49 f0       	breq	.+18     	; 0x127e <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x66>
    126c:	d7 01       	movw	r26, r14
    126e:	6d 91       	ld	r22, X+
    1270:	7d 01       	movw	r14, r26
    1272:	04 80       	ldd	r0, Z+4	; 0x04
    1274:	f5 81       	ldd	r31, Z+5	; 0x05
    1276:	e0 2d       	mov	r30, r0
    1278:	ce 01       	movw	r24, r28
    127a:	09 95       	icall
    127c:	f2 cf       	rjmp	.-28     	; 0x1262 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x4a>
    127e:	02 80       	ldd	r0, Z+2	; 0x02
    1280:	f3 81       	ldd	r31, Z+3	; 0x03
    1282:	e0 2d       	mov	r30, r0
    1284:	ce 01       	movw	r24, r28
    1286:	df 91       	pop	r29
    1288:	cf 91       	pop	r28
    128a:	1f 91       	pop	r17
    128c:	0f 91       	pop	r16
    128e:	ff 90       	pop	r15
    1290:	ef 90       	pop	r14
    1292:	df 90       	pop	r13
    1294:	cf 90       	pop	r12
    1296:	09 94       	ijmp

00001298 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE8read_regEhh>:
    1298:	0f 93       	push	r16
    129a:	1f 93       	push	r17
    129c:	cf 93       	push	r28
    129e:	df 93       	push	r29
    12a0:	ec 01       	movw	r28, r24
    12a2:	16 2f       	mov	r17, r22
    12a4:	04 2f       	mov	r16, r20
    12a6:	e8 81       	ld	r30, Y
    12a8:	f9 81       	ldd	r31, Y+1	; 0x01
    12aa:	01 90       	ld	r0, Z+
    12ac:	f0 81       	ld	r31, Z
    12ae:	e0 2d       	mov	r30, r0
    12b0:	09 95       	icall
    12b2:	e8 81       	ld	r30, Y
    12b4:	f9 81       	ldd	r31, Y+1	; 0x01
    12b6:	04 80       	ldd	r0, Z+4	; 0x04
    12b8:	f5 81       	ldd	r31, Z+5	; 0x05
    12ba:	e0 2d       	mov	r30, r0
    12bc:	61 2f       	mov	r22, r17
    12be:	ce 01       	movw	r24, r28
    12c0:	09 95       	icall
    12c2:	e8 81       	ld	r30, Y
    12c4:	f9 81       	ldd	r31, Y+1	; 0x01
    12c6:	04 80       	ldd	r0, Z+4	; 0x04
    12c8:	f5 81       	ldd	r31, Z+5	; 0x05
    12ca:	e0 2d       	mov	r30, r0
    12cc:	60 2f       	mov	r22, r16
    12ce:	ce 01       	movw	r24, r28
    12d0:	09 95       	icall
    12d2:	e8 81       	ld	r30, Y
    12d4:	f9 81       	ldd	r31, Y+1	; 0x01
    12d6:	01 90       	ld	r0, Z+
    12d8:	f0 81       	ld	r31, Z
    12da:	e0 2d       	mov	r30, r0
    12dc:	ce 01       	movw	r24, r28
    12de:	09 95       	icall
    12e0:	61 2f       	mov	r22, r17
    12e2:	61 60       	ori	r22, 0x01	; 1
    12e4:	e8 81       	ld	r30, Y
    12e6:	f9 81       	ldd	r31, Y+1	; 0x01
    12e8:	04 80       	ldd	r0, Z+4	; 0x04
    12ea:	f5 81       	ldd	r31, Z+5	; 0x05
    12ec:	e0 2d       	mov	r30, r0
    12ee:	ce 01       	movw	r24, r28
    12f0:	09 95       	icall
    12f2:	e8 81       	ld	r30, Y
    12f4:	f9 81       	ldd	r31, Y+1	; 0x01
    12f6:	06 80       	ldd	r0, Z+6	; 0x06
    12f8:	f7 81       	ldd	r31, Z+7	; 0x07
    12fa:	e0 2d       	mov	r30, r0
    12fc:	60 e0       	ldi	r22, 0x00	; 0
    12fe:	ce 01       	movw	r24, r28
    1300:	09 95       	icall
    1302:	18 2f       	mov	r17, r24
    1304:	e8 81       	ld	r30, Y
    1306:	f9 81       	ldd	r31, Y+1	; 0x01
    1308:	02 80       	ldd	r0, Z+2	; 0x02
    130a:	f3 81       	ldd	r31, Z+3	; 0x03
    130c:	e0 2d       	mov	r30, r0
    130e:	ce 01       	movw	r24, r28
    1310:	09 95       	icall
    1312:	81 2f       	mov	r24, r17
    1314:	df 91       	pop	r29
    1316:	cf 91       	pop	r28
    1318:	1f 91       	pop	r17
    131a:	0f 91       	pop	r16
    131c:	08 95       	ret

0000131e <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE14read_reg_16bitEhh>:
    131e:	0f 93       	push	r16
    1320:	1f 93       	push	r17
    1322:	cf 93       	push	r28
    1324:	df 93       	push	r29
    1326:	ec 01       	movw	r28, r24
    1328:	16 2f       	mov	r17, r22
    132a:	04 2f       	mov	r16, r20
    132c:	e8 81       	ld	r30, Y
    132e:	f9 81       	ldd	r31, Y+1	; 0x01
    1330:	01 90       	ld	r0, Z+
    1332:	f0 81       	ld	r31, Z
    1334:	e0 2d       	mov	r30, r0
    1336:	09 95       	icall
    1338:	e8 81       	ld	r30, Y
    133a:	f9 81       	ldd	r31, Y+1	; 0x01
    133c:	04 80       	ldd	r0, Z+4	; 0x04
    133e:	f5 81       	ldd	r31, Z+5	; 0x05
    1340:	e0 2d       	mov	r30, r0
    1342:	61 2f       	mov	r22, r17
    1344:	ce 01       	movw	r24, r28
    1346:	09 95       	icall
    1348:	e8 81       	ld	r30, Y
    134a:	f9 81       	ldd	r31, Y+1	; 0x01
    134c:	04 80       	ldd	r0, Z+4	; 0x04
    134e:	f5 81       	ldd	r31, Z+5	; 0x05
    1350:	e0 2d       	mov	r30, r0
    1352:	60 2f       	mov	r22, r16
    1354:	ce 01       	movw	r24, r28
    1356:	09 95       	icall
    1358:	e8 81       	ld	r30, Y
    135a:	f9 81       	ldd	r31, Y+1	; 0x01
    135c:	01 90       	ld	r0, Z+
    135e:	f0 81       	ld	r31, Z
    1360:	e0 2d       	mov	r30, r0
    1362:	ce 01       	movw	r24, r28
    1364:	09 95       	icall
    1366:	61 2f       	mov	r22, r17
    1368:	61 60       	ori	r22, 0x01	; 1
    136a:	e8 81       	ld	r30, Y
    136c:	f9 81       	ldd	r31, Y+1	; 0x01
    136e:	04 80       	ldd	r0, Z+4	; 0x04
    1370:	f5 81       	ldd	r31, Z+5	; 0x05
    1372:	e0 2d       	mov	r30, r0
    1374:	ce 01       	movw	r24, r28
    1376:	09 95       	icall
    1378:	e8 81       	ld	r30, Y
    137a:	f9 81       	ldd	r31, Y+1	; 0x01
    137c:	06 80       	ldd	r0, Z+6	; 0x06
    137e:	f7 81       	ldd	r31, Z+7	; 0x07
    1380:	e0 2d       	mov	r30, r0
    1382:	61 e0       	ldi	r22, 0x01	; 1
    1384:	ce 01       	movw	r24, r28
    1386:	09 95       	icall
    1388:	08 2f       	mov	r16, r24
    138a:	10 e0       	ldi	r17, 0x00	; 0
    138c:	10 2f       	mov	r17, r16
    138e:	00 27       	eor	r16, r16
    1390:	e8 81       	ld	r30, Y
    1392:	f9 81       	ldd	r31, Y+1	; 0x01
    1394:	06 80       	ldd	r0, Z+6	; 0x06
    1396:	f7 81       	ldd	r31, Z+7	; 0x07
    1398:	e0 2d       	mov	r30, r0
    139a:	60 e0       	ldi	r22, 0x00	; 0
    139c:	ce 01       	movw	r24, r28
    139e:	09 95       	icall
    13a0:	08 2b       	or	r16, r24
    13a2:	e8 81       	ld	r30, Y
    13a4:	f9 81       	ldd	r31, Y+1	; 0x01
    13a6:	02 80       	ldd	r0, Z+2	; 0x02
    13a8:	f3 81       	ldd	r31, Z+3	; 0x03
    13aa:	e0 2d       	mov	r30, r0
    13ac:	ce 01       	movw	r24, r28
    13ae:	09 95       	icall
    13b0:	c8 01       	movw	r24, r16
    13b2:	df 91       	pop	r29
    13b4:	cf 91       	pop	r28
    13b6:	1f 91       	pop	r17
    13b8:	0f 91       	pop	r16
    13ba:	08 95       	ret

000013bc <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE14read_reg_multiEhhPhj>:
    13bc:	cf 92       	push	r12
    13be:	df 92       	push	r13
    13c0:	ef 92       	push	r14
    13c2:	ff 92       	push	r15
    13c4:	0f 93       	push	r16
    13c6:	1f 93       	push	r17
    13c8:	cf 93       	push	r28
    13ca:	df 93       	push	r29
    13cc:	ec 01       	movw	r28, r24
    13ce:	f6 2e       	mov	r15, r22
    13d0:	e4 2e       	mov	r14, r20
    13d2:	69 01       	movw	r12, r18
    13d4:	e8 81       	ld	r30, Y
    13d6:	f9 81       	ldd	r31, Y+1	; 0x01
    13d8:	01 90       	ld	r0, Z+
    13da:	f0 81       	ld	r31, Z
    13dc:	e0 2d       	mov	r30, r0
    13de:	09 95       	icall
    13e0:	e8 81       	ld	r30, Y
    13e2:	f9 81       	ldd	r31, Y+1	; 0x01
    13e4:	04 80       	ldd	r0, Z+4	; 0x04
    13e6:	f5 81       	ldd	r31, Z+5	; 0x05
    13e8:	e0 2d       	mov	r30, r0
    13ea:	6f 2d       	mov	r22, r15
    13ec:	ce 01       	movw	r24, r28
    13ee:	09 95       	icall
    13f0:	e8 81       	ld	r30, Y
    13f2:	f9 81       	ldd	r31, Y+1	; 0x01
    13f4:	04 80       	ldd	r0, Z+4	; 0x04
    13f6:	f5 81       	ldd	r31, Z+5	; 0x05
    13f8:	e0 2d       	mov	r30, r0
    13fa:	6e 2d       	mov	r22, r14
    13fc:	ce 01       	movw	r24, r28
    13fe:	09 95       	icall
    1400:	e8 81       	ld	r30, Y
    1402:	f9 81       	ldd	r31, Y+1	; 0x01
    1404:	01 90       	ld	r0, Z+
    1406:	f0 81       	ld	r31, Z
    1408:	e0 2d       	mov	r30, r0
    140a:	ce 01       	movw	r24, r28
    140c:	09 95       	icall
    140e:	6f 2d       	mov	r22, r15
    1410:	61 60       	ori	r22, 0x01	; 1
    1412:	e8 81       	ld	r30, Y
    1414:	f9 81       	ldd	r31, Y+1	; 0x01
    1416:	04 80       	ldd	r0, Z+4	; 0x04
    1418:	f5 81       	ldd	r31, Z+5	; 0x05
    141a:	e0 2d       	mov	r30, r0
    141c:	ce 01       	movw	r24, r28
    141e:	09 95       	icall
    1420:	76 01       	movw	r14, r12
    1422:	0c 0d       	add	r16, r12
    1424:	1d 1d       	adc	r17, r13
    1426:	e8 81       	ld	r30, Y
    1428:	f9 81       	ldd	r31, Y+1	; 0x01
    142a:	e0 16       	cp	r14, r16
    142c:	f1 06       	cpc	r15, r17
    142e:	51 f0       	breq	.+20     	; 0x1444 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x88>
    1430:	06 80       	ldd	r0, Z+6	; 0x06
    1432:	f7 81       	ldd	r31, Z+7	; 0x07
    1434:	e0 2d       	mov	r30, r0
    1436:	61 e0       	ldi	r22, 0x01	; 1
    1438:	ce 01       	movw	r24, r28
    143a:	09 95       	icall
    143c:	f7 01       	movw	r30, r14
    143e:	81 93       	st	Z+, r24
    1440:	7f 01       	movw	r14, r30
    1442:	f1 cf       	rjmp	.-30     	; 0x1426 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x6a>
    1444:	02 80       	ldd	r0, Z+2	; 0x02
    1446:	f3 81       	ldd	r31, Z+3	; 0x03
    1448:	e0 2d       	mov	r30, r0
    144a:	ce 01       	movw	r24, r28
    144c:	df 91       	pop	r29
    144e:	cf 91       	pop	r28
    1450:	1f 91       	pop	r17
    1452:	0f 91       	pop	r16
    1454:	ff 90       	pop	r15
    1456:	ef 90       	pop	r14
    1458:	df 90       	pop	r13
    145a:	cf 90       	pop	r12
    145c:	09 94       	ijmp

0000145e <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE9write_regEhhh>:
    145e:	ff 92       	push	r15
    1460:	0f 93       	push	r16
    1462:	1f 93       	push	r17
    1464:	cf 93       	push	r28
    1466:	df 93       	push	r29
    1468:	ec 01       	movw	r28, r24
    146a:	f6 2e       	mov	r15, r22
    146c:	04 2f       	mov	r16, r20
    146e:	12 2f       	mov	r17, r18
    1470:	e8 81       	ld	r30, Y
    1472:	f9 81       	ldd	r31, Y+1	; 0x01
    1474:	01 90       	ld	r0, Z+
    1476:	f0 81       	ld	r31, Z
    1478:	e0 2d       	mov	r30, r0
    147a:	09 95       	icall
    147c:	e8 81       	ld	r30, Y
    147e:	f9 81       	ldd	r31, Y+1	; 0x01
    1480:	04 80       	ldd	r0, Z+4	; 0x04
    1482:	f5 81       	ldd	r31, Z+5	; 0x05
    1484:	e0 2d       	mov	r30, r0
    1486:	6f 2d       	mov	r22, r15
    1488:	ce 01       	movw	r24, r28
    148a:	09 95       	icall
    148c:	e8 81       	ld	r30, Y
    148e:	f9 81       	ldd	r31, Y+1	; 0x01
    1490:	04 80       	ldd	r0, Z+4	; 0x04
    1492:	f5 81       	ldd	r31, Z+5	; 0x05
    1494:	e0 2d       	mov	r30, r0
    1496:	60 2f       	mov	r22, r16
    1498:	ce 01       	movw	r24, r28
    149a:	09 95       	icall
    149c:	e8 81       	ld	r30, Y
    149e:	f9 81       	ldd	r31, Y+1	; 0x01
    14a0:	04 80       	ldd	r0, Z+4	; 0x04
    14a2:	f5 81       	ldd	r31, Z+5	; 0x05
    14a4:	e0 2d       	mov	r30, r0
    14a6:	61 2f       	mov	r22, r17
    14a8:	ce 01       	movw	r24, r28
    14aa:	09 95       	icall
    14ac:	e8 81       	ld	r30, Y
    14ae:	f9 81       	ldd	r31, Y+1	; 0x01
    14b0:	02 80       	ldd	r0, Z+2	; 0x02
    14b2:	f3 81       	ldd	r31, Z+3	; 0x03
    14b4:	e0 2d       	mov	r30, r0
    14b6:	ce 01       	movw	r24, r28
    14b8:	df 91       	pop	r29
    14ba:	cf 91       	pop	r28
    14bc:	1f 91       	pop	r17
    14be:	0f 91       	pop	r16
    14c0:	ff 90       	pop	r15
    14c2:	09 94       	ijmp

000014c4 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE15write_reg_16bitEhhj>:
    14c4:	ef 92       	push	r14
    14c6:	ff 92       	push	r15
    14c8:	0f 93       	push	r16
    14ca:	1f 93       	push	r17
    14cc:	cf 93       	push	r28
    14ce:	df 93       	push	r29
    14d0:	ec 01       	movw	r28, r24
    14d2:	e6 2e       	mov	r14, r22
    14d4:	f4 2e       	mov	r15, r20
    14d6:	12 2f       	mov	r17, r18
    14d8:	03 2f       	mov	r16, r19
    14da:	e8 81       	ld	r30, Y
    14dc:	f9 81       	ldd	r31, Y+1	; 0x01
    14de:	01 90       	ld	r0, Z+
    14e0:	f0 81       	ld	r31, Z
    14e2:	e0 2d       	mov	r30, r0
    14e4:	09 95       	icall
    14e6:	e8 81       	ld	r30, Y
    14e8:	f9 81       	ldd	r31, Y+1	; 0x01
    14ea:	04 80       	ldd	r0, Z+4	; 0x04
    14ec:	f5 81       	ldd	r31, Z+5	; 0x05
    14ee:	e0 2d       	mov	r30, r0
    14f0:	6e 2d       	mov	r22, r14
    14f2:	ce 01       	movw	r24, r28
    14f4:	09 95       	icall
    14f6:	e8 81       	ld	r30, Y
    14f8:	f9 81       	ldd	r31, Y+1	; 0x01
    14fa:	04 80       	ldd	r0, Z+4	; 0x04
    14fc:	f5 81       	ldd	r31, Z+5	; 0x05
    14fe:	e0 2d       	mov	r30, r0
    1500:	6f 2d       	mov	r22, r15
    1502:	ce 01       	movw	r24, r28
    1504:	09 95       	icall
    1506:	e8 81       	ld	r30, Y
    1508:	f9 81       	ldd	r31, Y+1	; 0x01
    150a:	04 80       	ldd	r0, Z+4	; 0x04
    150c:	f5 81       	ldd	r31, Z+5	; 0x05
    150e:	e0 2d       	mov	r30, r0
    1510:	60 2f       	mov	r22, r16
    1512:	ce 01       	movw	r24, r28
    1514:	09 95       	icall
    1516:	e8 81       	ld	r30, Y
    1518:	f9 81       	ldd	r31, Y+1	; 0x01
    151a:	04 80       	ldd	r0, Z+4	; 0x04
    151c:	f5 81       	ldd	r31, Z+5	; 0x05
    151e:	e0 2d       	mov	r30, r0
    1520:	61 2f       	mov	r22, r17
    1522:	ce 01       	movw	r24, r28
    1524:	09 95       	icall
    1526:	e8 81       	ld	r30, Y
    1528:	f9 81       	ldd	r31, Y+1	; 0x01
    152a:	02 80       	ldd	r0, Z+2	; 0x02
    152c:	f3 81       	ldd	r31, Z+3	; 0x03
    152e:	e0 2d       	mov	r30, r0
    1530:	ce 01       	movw	r24, r28
    1532:	df 91       	pop	r29
    1534:	cf 91       	pop	r28
    1536:	1f 91       	pop	r17
    1538:	0f 91       	pop	r16
    153a:	ff 90       	pop	r15
    153c:	ef 90       	pop	r14
    153e:	09 94       	ijmp

00001540 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE15write_reg_multiEhhPhj>:
    1540:	cf 92       	push	r12
    1542:	df 92       	push	r13
    1544:	ef 92       	push	r14
    1546:	ff 92       	push	r15
    1548:	0f 93       	push	r16
    154a:	1f 93       	push	r17
    154c:	cf 93       	push	r28
    154e:	df 93       	push	r29
    1550:	ec 01       	movw	r28, r24
    1552:	e6 2e       	mov	r14, r22
    1554:	f4 2e       	mov	r15, r20
    1556:	69 01       	movw	r12, r18
    1558:	e8 81       	ld	r30, Y
    155a:	f9 81       	ldd	r31, Y+1	; 0x01
    155c:	01 90       	ld	r0, Z+
    155e:	f0 81       	ld	r31, Z
    1560:	e0 2d       	mov	r30, r0
    1562:	09 95       	icall
    1564:	e8 81       	ld	r30, Y
    1566:	f9 81       	ldd	r31, Y+1	; 0x01
    1568:	04 80       	ldd	r0, Z+4	; 0x04
    156a:	f5 81       	ldd	r31, Z+5	; 0x05
    156c:	e0 2d       	mov	r30, r0
    156e:	6e 2d       	mov	r22, r14
    1570:	ce 01       	movw	r24, r28
    1572:	09 95       	icall
    1574:	e8 81       	ld	r30, Y
    1576:	f9 81       	ldd	r31, Y+1	; 0x01
    1578:	04 80       	ldd	r0, Z+4	; 0x04
    157a:	f5 81       	ldd	r31, Z+5	; 0x05
    157c:	e0 2d       	mov	r30, r0
    157e:	6f 2d       	mov	r22, r15
    1580:	ce 01       	movw	r24, r28
    1582:	09 95       	icall
    1584:	76 01       	movw	r14, r12
    1586:	0c 0d       	add	r16, r12
    1588:	1d 1d       	adc	r17, r13
    158a:	e8 81       	ld	r30, Y
    158c:	f9 81       	ldd	r31, Y+1	; 0x01
    158e:	e0 16       	cp	r14, r16
    1590:	f1 06       	cpc	r15, r17
    1592:	49 f0       	breq	.+18     	; 0x15a6 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x66>
    1594:	d7 01       	movw	r26, r14
    1596:	6d 91       	ld	r22, X+
    1598:	7d 01       	movw	r14, r26
    159a:	04 80       	ldd	r0, Z+4	; 0x04
    159c:	f5 81       	ldd	r31, Z+5	; 0x05
    159e:	e0 2d       	mov	r30, r0
    15a0:	ce 01       	movw	r24, r28
    15a2:	09 95       	icall
    15a4:	f2 cf       	rjmp	.-28     	; 0x158a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE15write_reg_multiEhhPhj+0x4a>
    15a6:	02 80       	ldd	r0, Z+2	; 0x02
    15a8:	f3 81       	ldd	r31, Z+3	; 0x03
    15aa:	e0 2d       	mov	r30, r0
    15ac:	ce 01       	movw	r24, r28
    15ae:	df 91       	pop	r29
    15b0:	cf 91       	pop	r28
    15b2:	1f 91       	pop	r17
    15b4:	0f 91       	pop	r16
    15b6:	ff 90       	pop	r15
    15b8:	ef 90       	pop	r14
    15ba:	df 90       	pop	r13
    15bc:	cf 90       	pop	r12
    15be:	09 94       	ijmp

000015c0 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE8read_regEhh>:
    15c0:	0f 93       	push	r16
    15c2:	1f 93       	push	r17
    15c4:	cf 93       	push	r28
    15c6:	df 93       	push	r29
    15c8:	ec 01       	movw	r28, r24
    15ca:	16 2f       	mov	r17, r22
    15cc:	04 2f       	mov	r16, r20
    15ce:	e8 81       	ld	r30, Y
    15d0:	f9 81       	ldd	r31, Y+1	; 0x01
    15d2:	01 90       	ld	r0, Z+
    15d4:	f0 81       	ld	r31, Z
    15d6:	e0 2d       	mov	r30, r0
    15d8:	09 95       	icall
    15da:	e8 81       	ld	r30, Y
    15dc:	f9 81       	ldd	r31, Y+1	; 0x01
    15de:	04 80       	ldd	r0, Z+4	; 0x04
    15e0:	f5 81       	ldd	r31, Z+5	; 0x05
    15e2:	e0 2d       	mov	r30, r0
    15e4:	61 2f       	mov	r22, r17
    15e6:	ce 01       	movw	r24, r28
    15e8:	09 95       	icall
    15ea:	e8 81       	ld	r30, Y
    15ec:	f9 81       	ldd	r31, Y+1	; 0x01
    15ee:	04 80       	ldd	r0, Z+4	; 0x04
    15f0:	f5 81       	ldd	r31, Z+5	; 0x05
    15f2:	e0 2d       	mov	r30, r0
    15f4:	60 2f       	mov	r22, r16
    15f6:	ce 01       	movw	r24, r28
    15f8:	09 95       	icall
    15fa:	e8 81       	ld	r30, Y
    15fc:	f9 81       	ldd	r31, Y+1	; 0x01
    15fe:	01 90       	ld	r0, Z+
    1600:	f0 81       	ld	r31, Z
    1602:	e0 2d       	mov	r30, r0
    1604:	ce 01       	movw	r24, r28
    1606:	09 95       	icall
    1608:	61 2f       	mov	r22, r17
    160a:	61 60       	ori	r22, 0x01	; 1
    160c:	e8 81       	ld	r30, Y
    160e:	f9 81       	ldd	r31, Y+1	; 0x01
    1610:	04 80       	ldd	r0, Z+4	; 0x04
    1612:	f5 81       	ldd	r31, Z+5	; 0x05
    1614:	e0 2d       	mov	r30, r0
    1616:	ce 01       	movw	r24, r28
    1618:	09 95       	icall
    161a:	e8 81       	ld	r30, Y
    161c:	f9 81       	ldd	r31, Y+1	; 0x01
    161e:	06 80       	ldd	r0, Z+6	; 0x06
    1620:	f7 81       	ldd	r31, Z+7	; 0x07
    1622:	e0 2d       	mov	r30, r0
    1624:	60 e0       	ldi	r22, 0x00	; 0
    1626:	ce 01       	movw	r24, r28
    1628:	09 95       	icall
    162a:	18 2f       	mov	r17, r24
    162c:	e8 81       	ld	r30, Y
    162e:	f9 81       	ldd	r31, Y+1	; 0x01
    1630:	02 80       	ldd	r0, Z+2	; 0x02
    1632:	f3 81       	ldd	r31, Z+3	; 0x03
    1634:	e0 2d       	mov	r30, r0
    1636:	ce 01       	movw	r24, r28
    1638:	09 95       	icall
    163a:	81 2f       	mov	r24, r17
    163c:	df 91       	pop	r29
    163e:	cf 91       	pop	r28
    1640:	1f 91       	pop	r17
    1642:	0f 91       	pop	r16
    1644:	08 95       	ret

00001646 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE14read_reg_16bitEhh>:
    1646:	0f 93       	push	r16
    1648:	1f 93       	push	r17
    164a:	cf 93       	push	r28
    164c:	df 93       	push	r29
    164e:	ec 01       	movw	r28, r24
    1650:	16 2f       	mov	r17, r22
    1652:	04 2f       	mov	r16, r20
    1654:	e8 81       	ld	r30, Y
    1656:	f9 81       	ldd	r31, Y+1	; 0x01
    1658:	01 90       	ld	r0, Z+
    165a:	f0 81       	ld	r31, Z
    165c:	e0 2d       	mov	r30, r0
    165e:	09 95       	icall
    1660:	e8 81       	ld	r30, Y
    1662:	f9 81       	ldd	r31, Y+1	; 0x01
    1664:	04 80       	ldd	r0, Z+4	; 0x04
    1666:	f5 81       	ldd	r31, Z+5	; 0x05
    1668:	e0 2d       	mov	r30, r0
    166a:	61 2f       	mov	r22, r17
    166c:	ce 01       	movw	r24, r28
    166e:	09 95       	icall
    1670:	e8 81       	ld	r30, Y
    1672:	f9 81       	ldd	r31, Y+1	; 0x01
    1674:	04 80       	ldd	r0, Z+4	; 0x04
    1676:	f5 81       	ldd	r31, Z+5	; 0x05
    1678:	e0 2d       	mov	r30, r0
    167a:	60 2f       	mov	r22, r16
    167c:	ce 01       	movw	r24, r28
    167e:	09 95       	icall
    1680:	e8 81       	ld	r30, Y
    1682:	f9 81       	ldd	r31, Y+1	; 0x01
    1684:	01 90       	ld	r0, Z+
    1686:	f0 81       	ld	r31, Z
    1688:	e0 2d       	mov	r30, r0
    168a:	ce 01       	movw	r24, r28
    168c:	09 95       	icall
    168e:	61 2f       	mov	r22, r17
    1690:	61 60       	ori	r22, 0x01	; 1
    1692:	e8 81       	ld	r30, Y
    1694:	f9 81       	ldd	r31, Y+1	; 0x01
    1696:	04 80       	ldd	r0, Z+4	; 0x04
    1698:	f5 81       	ldd	r31, Z+5	; 0x05
    169a:	e0 2d       	mov	r30, r0
    169c:	ce 01       	movw	r24, r28
    169e:	09 95       	icall
    16a0:	e8 81       	ld	r30, Y
    16a2:	f9 81       	ldd	r31, Y+1	; 0x01
    16a4:	06 80       	ldd	r0, Z+6	; 0x06
    16a6:	f7 81       	ldd	r31, Z+7	; 0x07
    16a8:	e0 2d       	mov	r30, r0
    16aa:	61 e0       	ldi	r22, 0x01	; 1
    16ac:	ce 01       	movw	r24, r28
    16ae:	09 95       	icall
    16b0:	08 2f       	mov	r16, r24
    16b2:	10 e0       	ldi	r17, 0x00	; 0
    16b4:	10 2f       	mov	r17, r16
    16b6:	00 27       	eor	r16, r16
    16b8:	e8 81       	ld	r30, Y
    16ba:	f9 81       	ldd	r31, Y+1	; 0x01
    16bc:	06 80       	ldd	r0, Z+6	; 0x06
    16be:	f7 81       	ldd	r31, Z+7	; 0x07
    16c0:	e0 2d       	mov	r30, r0
    16c2:	60 e0       	ldi	r22, 0x00	; 0
    16c4:	ce 01       	movw	r24, r28
    16c6:	09 95       	icall
    16c8:	08 2b       	or	r16, r24
    16ca:	e8 81       	ld	r30, Y
    16cc:	f9 81       	ldd	r31, Y+1	; 0x01
    16ce:	02 80       	ldd	r0, Z+2	; 0x02
    16d0:	f3 81       	ldd	r31, Z+3	; 0x03
    16d2:	e0 2d       	mov	r30, r0
    16d4:	ce 01       	movw	r24, r28
    16d6:	09 95       	icall
    16d8:	c8 01       	movw	r24, r16
    16da:	df 91       	pop	r29
    16dc:	cf 91       	pop	r28
    16de:	1f 91       	pop	r17
    16e0:	0f 91       	pop	r16
    16e2:	08 95       	ret

000016e4 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE14read_reg_multiEhhPhj>:
    16e4:	cf 92       	push	r12
    16e6:	df 92       	push	r13
    16e8:	ef 92       	push	r14
    16ea:	ff 92       	push	r15
    16ec:	0f 93       	push	r16
    16ee:	1f 93       	push	r17
    16f0:	cf 93       	push	r28
    16f2:	df 93       	push	r29
    16f4:	ec 01       	movw	r28, r24
    16f6:	f6 2e       	mov	r15, r22
    16f8:	e4 2e       	mov	r14, r20
    16fa:	69 01       	movw	r12, r18
    16fc:	e8 81       	ld	r30, Y
    16fe:	f9 81       	ldd	r31, Y+1	; 0x01
    1700:	01 90       	ld	r0, Z+
    1702:	f0 81       	ld	r31, Z
    1704:	e0 2d       	mov	r30, r0
    1706:	09 95       	icall
    1708:	e8 81       	ld	r30, Y
    170a:	f9 81       	ldd	r31, Y+1	; 0x01
    170c:	04 80       	ldd	r0, Z+4	; 0x04
    170e:	f5 81       	ldd	r31, Z+5	; 0x05
    1710:	e0 2d       	mov	r30, r0
    1712:	6f 2d       	mov	r22, r15
    1714:	ce 01       	movw	r24, r28
    1716:	09 95       	icall
    1718:	e8 81       	ld	r30, Y
    171a:	f9 81       	ldd	r31, Y+1	; 0x01
    171c:	04 80       	ldd	r0, Z+4	; 0x04
    171e:	f5 81       	ldd	r31, Z+5	; 0x05
    1720:	e0 2d       	mov	r30, r0
    1722:	6e 2d       	mov	r22, r14
    1724:	ce 01       	movw	r24, r28
    1726:	09 95       	icall
    1728:	e8 81       	ld	r30, Y
    172a:	f9 81       	ldd	r31, Y+1	; 0x01
    172c:	01 90       	ld	r0, Z+
    172e:	f0 81       	ld	r31, Z
    1730:	e0 2d       	mov	r30, r0
    1732:	ce 01       	movw	r24, r28
    1734:	09 95       	icall
    1736:	6f 2d       	mov	r22, r15
    1738:	61 60       	ori	r22, 0x01	; 1
    173a:	e8 81       	ld	r30, Y
    173c:	f9 81       	ldd	r31, Y+1	; 0x01
    173e:	04 80       	ldd	r0, Z+4	; 0x04
    1740:	f5 81       	ldd	r31, Z+5	; 0x05
    1742:	e0 2d       	mov	r30, r0
    1744:	ce 01       	movw	r24, r28
    1746:	09 95       	icall
    1748:	76 01       	movw	r14, r12
    174a:	0c 0d       	add	r16, r12
    174c:	1d 1d       	adc	r17, r13
    174e:	e8 81       	ld	r30, Y
    1750:	f9 81       	ldd	r31, Y+1	; 0x01
    1752:	e0 16       	cp	r14, r16
    1754:	f1 06       	cpc	r15, r17
    1756:	51 f0       	breq	.+20     	; 0x176c <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x88>
    1758:	06 80       	ldd	r0, Z+6	; 0x06
    175a:	f7 81       	ldd	r31, Z+7	; 0x07
    175c:	e0 2d       	mov	r30, r0
    175e:	61 e0       	ldi	r22, 0x01	; 1
    1760:	ce 01       	movw	r24, r28
    1762:	09 95       	icall
    1764:	f7 01       	movw	r30, r14
    1766:	81 93       	st	Z+, r24
    1768:	7f 01       	movw	r14, r30
    176a:	f1 cf       	rjmp	.-30     	; 0x174e <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE14read_reg_multiEhhPhj+0x6a>
    176c:	02 80       	ldd	r0, Z+2	; 0x02
    176e:	f3 81       	ldd	r31, Z+3	; 0x03
    1770:	e0 2d       	mov	r30, r0
    1772:	ce 01       	movw	r24, r28
    1774:	df 91       	pop	r29
    1776:	cf 91       	pop	r28
    1778:	1f 91       	pop	r17
    177a:	0f 91       	pop	r16
    177c:	ff 90       	pop	r15
    177e:	ef 90       	pop	r14
    1780:	df 90       	pop	r13
    1782:	cf 90       	pop	r12
    1784:	09 94       	ijmp

00001786 <_ZN16CMeasurementTaskD1Ev>:
    1786:	0f 93       	push	r16
    1788:	1f 93       	push	r17
    178a:	cf 93       	push	r28
    178c:	df 93       	push	r29
    178e:	29 e8       	ldi	r18, 0x89	; 137
    1790:	31 e0       	ldi	r19, 0x01	; 1
    1792:	fc 01       	movw	r30, r24
    1794:	31 83       	std	Z+1, r19	; 0x01
    1796:	20 83       	st	Z, r18
    1798:	8c 01       	movw	r16, r24
    179a:	0e 5e       	subi	r16, 0xEE	; 238
    179c:	1f 4f       	sbci	r17, 0xFF	; 255
    179e:	59 f0       	breq	.+22     	; 0x17b6 <_ZN16CMeasurementTaskD1Ev+0x30>
    17a0:	ec 01       	movw	r28, r24
    17a2:	ce 57       	subi	r28, 0x7E	; 126
    17a4:	df 4f       	sbci	r29, 0xFF	; 255
    17a6:	0c 17       	cp	r16, r28
    17a8:	1d 07       	cpc	r17, r29
    17aa:	29 f0       	breq	.+10     	; 0x17b6 <_ZN16CMeasurementTaskD1Ev+0x30>
    17ac:	6c 97       	sbiw	r28, 0x1c	; 28
    17ae:	ce 01       	movw	r24, r28
    17b0:	0e 94 29 05 	call	0xa52	; 0xa52 <_ZN16CObjectDetectionD1Ev>
    17b4:	f8 cf       	rjmp	.-16     	; 0x17a6 <_ZN16CMeasurementTaskD1Ev+0x20>
    17b6:	df 91       	pop	r29
    17b8:	cf 91       	pop	r28
    17ba:	1f 91       	pop	r17
    17bc:	0f 91       	pop	r16
    17be:	08 95       	ret

000017c0 <_ZN16CMeasurementTaskD0Ev>:
    17c0:	cf 93       	push	r28
    17c2:	df 93       	push	r29
    17c4:	ec 01       	movw	r28, r24
    17c6:	0e 94 c3 0b 	call	0x1786	; 0x1786 <_ZN16CMeasurementTaskD1Ev>
    17ca:	ce 01       	movw	r24, r28
    17cc:	df 91       	pop	r29
    17ce:	cf 91       	pop	r28
    17d0:	0c 94 25 05 	jmp	0xa4a	; 0xa4a <_ZdlPv>

000017d4 <_ZN16CMeasurementTaskclEv>:
    17d4:	0f 93       	push	r16
    17d6:	1f 93       	push	r17
    17d8:	cf 93       	push	r28
    17da:	df 93       	push	r29
    17dc:	ec 01       	movw	r28, r24
    17de:	42 96       	adiw	r24, 0x12	; 18
    17e0:	0e 94 37 05 	call	0xa6e	; 0xa6e <_ZN16CObjectDetection7processEv>
    17e4:	ce 01       	movw	r24, r28
    17e6:	8e 96       	adiw	r24, 0x2e	; 46
    17e8:	0e 94 37 05 	call	0xa6e	; 0xa6e <_ZN16CObjectDetection7processEv>
    17ec:	ce 01       	movw	r24, r28
    17ee:	86 5b       	subi	r24, 0xB6	; 182
    17f0:	9f 4f       	sbci	r25, 0xFF	; 255
    17f2:	0e 94 37 05 	call	0xa6e	; 0xa6e <_ZN16CObjectDetection7processEv>
    17f6:	ce 01       	movw	r24, r28
    17f8:	8a 59       	subi	r24, 0x9A	; 154
    17fa:	9f 4f       	sbci	r25, 0xFF	; 255
    17fc:	0e 94 37 05 	call	0xa6e	; 0xa6e <_ZN16CObjectDetection7processEv>
    1800:	9e 01       	movw	r18, r28
    1802:	20 59       	subi	r18, 0x90	; 144
    1804:	3f 4f       	sbci	r19, 0xFF	; 255
    1806:	8e 01       	movw	r16, r28
    1808:	80 e0       	ldi	r24, 0x00	; 0
    180a:	f8 01       	movw	r30, r16
    180c:	95 a5       	ldd	r25, Z+45	; 0x2d
    180e:	91 11       	cpse	r25, r1
    1810:	89 2f       	mov	r24, r25
    1812:	04 5e       	subi	r16, 0xE4	; 228
    1814:	1f 4f       	sbci	r17, 0xFF	; 255
    1816:	20 17       	cp	r18, r16
    1818:	31 07       	cpc	r19, r17
    181a:	b9 f7       	brne	.-18     	; 0x180a <_ZN16CMeasurementTaskclEv+0x36>
    181c:	88 23       	and	r24, r24
    181e:	69 f1       	breq	.+90     	; 0x187a <_ZN16CMeasurementTaskclEv+0xa6>
    1820:	80 e9       	ldi	r24, 0x90	; 144
    1822:	91 e0       	ldi	r25, 0x01	; 1
    1824:	0e 94 ae 03 	call	0x75c	; 0x75c <_ZN8CRTTimer8get_timeEv>
    1828:	ab 01       	movw	r20, r22
    182a:	bc 01       	movw	r22, r24
    182c:	85 ed       	ldi	r24, 0xD5	; 213
    182e:	91 e0       	ldi	r25, 0x01	; 1
    1830:	0e 94 d1 04 	call	0x9a2	; 0x9a2 <_ZN9CTerminal5putuiEm>
    1834:	61 e1       	ldi	r22, 0x11	; 17
    1836:	71 e0       	ldi	r23, 0x01	; 1
    1838:	85 ed       	ldi	r24, 0xD5	; 213
    183a:	91 e0       	ldi	r25, 0x01	; 1
    183c:	0e 94 53 04 	call	0x8a6	; 0x8a6 <_ZN9CTerminal4putsEPKc>
    1840:	8d a5       	ldd	r24, Y+45	; 0x2d
    1842:	61 e3       	ldi	r22, 0x31	; 49
    1844:	81 11       	cpse	r24, r1
    1846:	01 c0       	rjmp	.+2      	; 0x184a <_ZN16CMeasurementTaskclEv+0x76>
    1848:	60 e3       	ldi	r22, 0x30	; 48
    184a:	85 ed       	ldi	r24, 0xD5	; 213
    184c:	91 e0       	ldi	r25, 0x01	; 1
    184e:	0e 94 3f 04 	call	0x87e	; 0x87e <_ZN6CUSART8put_charEc>
    1852:	61 e1       	ldi	r22, 0x11	; 17
    1854:	71 e0       	ldi	r23, 0x01	; 1
    1856:	85 ed       	ldi	r24, 0xD5	; 213
    1858:	91 e0       	ldi	r25, 0x01	; 1
    185a:	0e 94 53 04 	call	0x8a6	; 0x8a6 <_ZN9CTerminal4putsEPKc>
    185e:	6c 96       	adiw	r28, 0x1c	; 28
    1860:	c0 17       	cp	r28, r16
    1862:	d1 07       	cpc	r29, r17
    1864:	69 f7       	brne	.-38     	; 0x1840 <_ZN16CMeasurementTaskclEv+0x6c>
    1866:	63 e2       	ldi	r22, 0x23	; 35
    1868:	71 e0       	ldi	r23, 0x01	; 1
    186a:	85 ed       	ldi	r24, 0xD5	; 213
    186c:	91 e0       	ldi	r25, 0x01	; 1
    186e:	df 91       	pop	r29
    1870:	cf 91       	pop	r28
    1872:	1f 91       	pop	r17
    1874:	0f 91       	pop	r16
    1876:	0c 94 53 04 	jmp	0x8a6	; 0x8a6 <_ZN9CTerminal4putsEPKc>
    187a:	df 91       	pop	r29
    187c:	cf 91       	pop	r28
    187e:	1f 91       	pop	r17
    1880:	0f 91       	pop	r16
    1882:	08 95       	ret

00001884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>:
    1884:	88 23       	and	r24, r24
    1886:	11 f0       	breq	.+4      	; 0x188c <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3+0x8>
    1888:	3d 98       	cbi	0x07, 5	; 7
    188a:	08 95       	ret
    188c:	3d 9a       	sbi	0x07, 5	; 7
    188e:	08 95       	ret

00001890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>:
	...
    1898:	00 00       	nop
    189a:	08 95       	ret

0000189c <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE5startEv>:
    189c:	81 e0       	ldi	r24, 0x01	; 1
    189e:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    18a2:	3b 98       	cbi	0x07, 3	; 7
    18a4:	81 e0       	ldi	r24, 0x01	; 1
    18a6:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    18aa:	3b 9a       	sbi	0x07, 3	; 7
    18ac:	80 e0       	ldi	r24, 0x00	; 0
    18ae:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    18b2:	3b 98       	cbi	0x07, 3	; 7
    18b4:	0c 94 48 0c 	jmp	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

000018b8 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE4stopEv>:
    18b8:	80 e0       	ldi	r24, 0x00	; 0
    18ba:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    18be:	3b 9a       	sbi	0x07, 3	; 7
    18c0:	81 e0       	ldi	r24, 0x01	; 1
    18c2:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    18c6:	3b 9a       	sbi	0x07, 3	; 7
    18c8:	81 e0       	ldi	r24, 0x01	; 1
    18ca:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    18ce:	3b 98       	cbi	0x07, 3	; 7
    18d0:	0c 94 48 0c 	jmp	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

000018d4 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE5startEv>:
    18d4:	81 e0       	ldi	r24, 0x01	; 1
    18d6:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    18da:	3a 98       	cbi	0x07, 2	; 7
    18dc:	81 e0       	ldi	r24, 0x01	; 1
    18de:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    18e2:	3a 9a       	sbi	0x07, 2	; 7
    18e4:	80 e0       	ldi	r24, 0x00	; 0
    18e6:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    18ea:	3a 98       	cbi	0x07, 2	; 7
    18ec:	0c 94 48 0c 	jmp	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

000018f0 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE4stopEv>:
    18f0:	80 e0       	ldi	r24, 0x00	; 0
    18f2:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    18f6:	3a 9a       	sbi	0x07, 2	; 7
    18f8:	81 e0       	ldi	r24, 0x01	; 1
    18fa:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    18fe:	3a 9a       	sbi	0x07, 2	; 7
    1900:	81 e0       	ldi	r24, 0x01	; 1
    1902:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1906:	3a 98       	cbi	0x07, 2	; 7
    1908:	0c 94 48 0c 	jmp	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

0000190c <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4stopEv>:
    190c:	80 e0       	ldi	r24, 0x00	; 0
    190e:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1912:	38 9a       	sbi	0x07, 0	; 7
    1914:	81 e0       	ldi	r24, 0x01	; 1
    1916:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    191a:	38 9a       	sbi	0x07, 0	; 7
    191c:	81 e0       	ldi	r24, 0x01	; 1
    191e:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1922:	38 98       	cbi	0x07, 0	; 7
    1924:	0c 94 48 0c 	jmp	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

00001928 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5startEv>:
    1928:	81 e0       	ldi	r24, 0x01	; 1
    192a:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    192e:	38 98       	cbi	0x07, 0	; 7
    1930:	81 e0       	ldi	r24, 0x01	; 1
    1932:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1936:	38 9a       	sbi	0x07, 0	; 7
    1938:	80 e0       	ldi	r24, 0x00	; 0
    193a:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    193e:	38 98       	cbi	0x07, 0	; 7
    1940:	0c 94 48 0c 	jmp	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

00001944 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE5startEv>:
    1944:	81 e0       	ldi	r24, 0x01	; 1
    1946:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    194a:	39 98       	cbi	0x07, 1	; 7
    194c:	81 e0       	ldi	r24, 0x01	; 1
    194e:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1952:	39 9a       	sbi	0x07, 1	; 7
    1954:	80 e0       	ldi	r24, 0x00	; 0
    1956:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    195a:	39 98       	cbi	0x07, 1	; 7
    195c:	0c 94 48 0c 	jmp	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

00001960 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE4stopEv>:
    1960:	80 e0       	ldi	r24, 0x00	; 0
    1962:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1966:	39 9a       	sbi	0x07, 1	; 7
    1968:	81 e0       	ldi	r24, 0x01	; 1
    196a:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    196e:	39 9a       	sbi	0x07, 1	; 7
    1970:	81 e0       	ldi	r24, 0x01	; 1
    1972:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1976:	39 98       	cbi	0x07, 1	; 7
    1978:	0c 94 48 0c 	jmp	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>

0000197c <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5writeEh>:
    197c:	cf 93       	push	r28
    197e:	df 93       	push	r29
    1980:	d6 2f       	mov	r29, r22
    1982:	c8 e0       	ldi	r28, 0x08	; 8
    1984:	80 e0       	ldi	r24, 0x00	; 0
    1986:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    198a:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    198e:	d7 ff       	sbrs	r29, 7
    1990:	24 c0       	rjmp	.+72     	; 0x19da <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5writeEh+0x5e>
    1992:	38 98       	cbi	0x07, 0	; 7
    1994:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1998:	81 e0       	ldi	r24, 0x01	; 1
    199a:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    199e:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    19a2:	dd 0f       	add	r29, r29
    19a4:	c1 50       	subi	r28, 0x01	; 1
    19a6:	71 f7       	brne	.-36     	; 0x1984 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5writeEh+0x8>
    19a8:	80 e0       	ldi	r24, 0x00	; 0
    19aa:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    19ae:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    19b2:	38 98       	cbi	0x07, 0	; 7
    19b4:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    19b8:	81 e0       	ldi	r24, 0x01	; 1
    19ba:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    19be:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    19c2:	c6 b1       	in	r28, 0x06	; 6
    19c4:	80 e0       	ldi	r24, 0x00	; 0
    19c6:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    19ca:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    19ce:	8c 2f       	mov	r24, r28
    19d0:	80 95       	com	r24
    19d2:	81 70       	andi	r24, 0x01	; 1
    19d4:	df 91       	pop	r29
    19d6:	cf 91       	pop	r28
    19d8:	08 95       	ret
    19da:	38 9a       	sbi	0x07, 0	; 7
    19dc:	db cf       	rjmp	.-74     	; 0x1994 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5writeEh+0x18>

000019de <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE5writeEh>:
    19de:	cf 93       	push	r28
    19e0:	df 93       	push	r29
    19e2:	d6 2f       	mov	r29, r22
    19e4:	c8 e0       	ldi	r28, 0x08	; 8
    19e6:	80 e0       	ldi	r24, 0x00	; 0
    19e8:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    19ec:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    19f0:	d7 ff       	sbrs	r29, 7
    19f2:	26 c0       	rjmp	.+76     	; 0x1a40 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE5writeEh+0x62>
    19f4:	3a 98       	cbi	0x07, 2	; 7
    19f6:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    19fa:	81 e0       	ldi	r24, 0x01	; 1
    19fc:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1a00:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a04:	dd 0f       	add	r29, r29
    1a06:	c1 50       	subi	r28, 0x01	; 1
    1a08:	71 f7       	brne	.-36     	; 0x19e6 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE5writeEh+0x8>
    1a0a:	80 e0       	ldi	r24, 0x00	; 0
    1a0c:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1a10:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a14:	3a 98       	cbi	0x07, 2	; 7
    1a16:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a1a:	81 e0       	ldi	r24, 0x01	; 1
    1a1c:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1a20:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a24:	c6 b1       	in	r28, 0x06	; 6
    1a26:	80 e0       	ldi	r24, 0x00	; 0
    1a28:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1a2c:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a30:	c2 fb       	bst	r28, 2
    1a32:	cc 27       	eor	r28, r28
    1a34:	c0 f9       	bld	r28, 0
    1a36:	81 e0       	ldi	r24, 0x01	; 1
    1a38:	8c 27       	eor	r24, r28
    1a3a:	df 91       	pop	r29
    1a3c:	cf 91       	pop	r28
    1a3e:	08 95       	ret
    1a40:	3a 9a       	sbi	0x07, 2	; 7
    1a42:	d9 cf       	rjmp	.-78     	; 0x19f6 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE5writeEh+0x18>

00001a44 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE5writeEh>:
    1a44:	cf 93       	push	r28
    1a46:	df 93       	push	r29
    1a48:	d6 2f       	mov	r29, r22
    1a4a:	c8 e0       	ldi	r28, 0x08	; 8
    1a4c:	80 e0       	ldi	r24, 0x00	; 0
    1a4e:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1a52:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a56:	d7 ff       	sbrs	r29, 7
    1a58:	26 c0       	rjmp	.+76     	; 0x1aa6 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE5writeEh+0x62>
    1a5a:	3b 98       	cbi	0x07, 3	; 7
    1a5c:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a60:	81 e0       	ldi	r24, 0x01	; 1
    1a62:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1a66:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a6a:	dd 0f       	add	r29, r29
    1a6c:	c1 50       	subi	r28, 0x01	; 1
    1a6e:	71 f7       	brne	.-36     	; 0x1a4c <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE5writeEh+0x8>
    1a70:	80 e0       	ldi	r24, 0x00	; 0
    1a72:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1a76:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a7a:	3b 98       	cbi	0x07, 3	; 7
    1a7c:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a80:	81 e0       	ldi	r24, 0x01	; 1
    1a82:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1a86:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a8a:	c6 b1       	in	r28, 0x06	; 6
    1a8c:	80 e0       	ldi	r24, 0x00	; 0
    1a8e:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1a92:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1a96:	c3 fb       	bst	r28, 3
    1a98:	cc 27       	eor	r28, r28
    1a9a:	c0 f9       	bld	r28, 0
    1a9c:	81 e0       	ldi	r24, 0x01	; 1
    1a9e:	8c 27       	eor	r24, r28
    1aa0:	df 91       	pop	r29
    1aa2:	cf 91       	pop	r28
    1aa4:	08 95       	ret
    1aa6:	3b 9a       	sbi	0x07, 3	; 7
    1aa8:	d9 cf       	rjmp	.-78     	; 0x1a5c <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE5writeEh+0x18>

00001aaa <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE5writeEh>:
    1aaa:	cf 93       	push	r28
    1aac:	df 93       	push	r29
    1aae:	d6 2f       	mov	r29, r22
    1ab0:	c8 e0       	ldi	r28, 0x08	; 8
    1ab2:	80 e0       	ldi	r24, 0x00	; 0
    1ab4:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1ab8:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1abc:	d7 ff       	sbrs	r29, 7
    1abe:	25 c0       	rjmp	.+74     	; 0x1b0a <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE5writeEh+0x60>
    1ac0:	39 98       	cbi	0x07, 1	; 7
    1ac2:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1ac6:	81 e0       	ldi	r24, 0x01	; 1
    1ac8:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1acc:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1ad0:	dd 0f       	add	r29, r29
    1ad2:	c1 50       	subi	r28, 0x01	; 1
    1ad4:	71 f7       	brne	.-36     	; 0x1ab2 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE5writeEh+0x8>
    1ad6:	80 e0       	ldi	r24, 0x00	; 0
    1ad8:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1adc:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1ae0:	39 98       	cbi	0x07, 1	; 7
    1ae2:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1ae6:	81 e0       	ldi	r24, 0x01	; 1
    1ae8:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1aec:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1af0:	c6 b1       	in	r28, 0x06	; 6
    1af2:	80 e0       	ldi	r24, 0x00	; 0
    1af4:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1af8:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1afc:	c6 95       	lsr	r28
    1afe:	c1 70       	andi	r28, 0x01	; 1
    1b00:	81 e0       	ldi	r24, 0x01	; 1
    1b02:	8c 27       	eor	r24, r28
    1b04:	df 91       	pop	r29
    1b06:	cf 91       	pop	r28
    1b08:	08 95       	ret
    1b0a:	39 9a       	sbi	0x07, 1	; 7
    1b0c:	da cf       	rjmp	.-76     	; 0x1ac2 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE5writeEh+0x18>

00001b0e <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE4readEh>:
    1b0e:	1f 93       	push	r17
    1b10:	cf 93       	push	r28
    1b12:	df 93       	push	r29
    1b14:	16 2f       	mov	r17, r22
    1b16:	3b 98       	cbi	0x07, 3	; 7
    1b18:	80 e0       	ldi	r24, 0x00	; 0
    1b1a:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1b1e:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1b22:	d8 e0       	ldi	r29, 0x08	; 8
    1b24:	c0 e0       	ldi	r28, 0x00	; 0
    1b26:	cc 0f       	add	r28, r28
    1b28:	81 e0       	ldi	r24, 0x01	; 1
    1b2a:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1b2e:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1b32:	33 99       	sbic	0x06, 3	; 6
    1b34:	c1 60       	ori	r28, 0x01	; 1
    1b36:	80 e0       	ldi	r24, 0x00	; 0
    1b38:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1b3c:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1b40:	d1 50       	subi	r29, 0x01	; 1
    1b42:	89 f7       	brne	.-30     	; 0x1b26 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE4readEh+0x18>
    1b44:	11 23       	and	r17, r17
    1b46:	a9 f0       	breq	.+42     	; 0x1b72 <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE4readEh+0x64>
    1b48:	3b 9a       	sbi	0x07, 3	; 7
    1b4a:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1b4e:	81 e0       	ldi	r24, 0x01	; 1
    1b50:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1b54:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1b58:	80 e0       	ldi	r24, 0x00	; 0
    1b5a:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1b5e:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1b62:	3b 98       	cbi	0x07, 3	; 7
    1b64:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1b68:	8c 2f       	mov	r24, r28
    1b6a:	df 91       	pop	r29
    1b6c:	cf 91       	pop	r28
    1b6e:	1f 91       	pop	r17
    1b70:	08 95       	ret
    1b72:	3b 98       	cbi	0x07, 3	; 7
    1b74:	ea cf       	rjmp	.-44     	; 0x1b4a <_ZN4TI2CILh2ELh3ELh5ELh5ELh2EE4readEh+0x3c>

00001b76 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE4readEh>:
    1b76:	1f 93       	push	r17
    1b78:	cf 93       	push	r28
    1b7a:	df 93       	push	r29
    1b7c:	16 2f       	mov	r17, r22
    1b7e:	3a 98       	cbi	0x07, 2	; 7
    1b80:	80 e0       	ldi	r24, 0x00	; 0
    1b82:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1b86:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1b8a:	d8 e0       	ldi	r29, 0x08	; 8
    1b8c:	c0 e0       	ldi	r28, 0x00	; 0
    1b8e:	cc 0f       	add	r28, r28
    1b90:	81 e0       	ldi	r24, 0x01	; 1
    1b92:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1b96:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1b9a:	32 99       	sbic	0x06, 2	; 6
    1b9c:	c1 60       	ori	r28, 0x01	; 1
    1b9e:	80 e0       	ldi	r24, 0x00	; 0
    1ba0:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1ba4:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1ba8:	d1 50       	subi	r29, 0x01	; 1
    1baa:	89 f7       	brne	.-30     	; 0x1b8e <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE4readEh+0x18>
    1bac:	11 23       	and	r17, r17
    1bae:	a9 f0       	breq	.+42     	; 0x1bda <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE4readEh+0x64>
    1bb0:	3a 9a       	sbi	0x07, 2	; 7
    1bb2:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1bb6:	81 e0       	ldi	r24, 0x01	; 1
    1bb8:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1bbc:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1bc0:	80 e0       	ldi	r24, 0x00	; 0
    1bc2:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1bc6:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1bca:	3a 98       	cbi	0x07, 2	; 7
    1bcc:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1bd0:	8c 2f       	mov	r24, r28
    1bd2:	df 91       	pop	r29
    1bd4:	cf 91       	pop	r28
    1bd6:	1f 91       	pop	r17
    1bd8:	08 95       	ret
    1bda:	3a 98       	cbi	0x07, 2	; 7
    1bdc:	ea cf       	rjmp	.-44     	; 0x1bb2 <_ZN4TI2CILh2ELh2ELh5ELh5ELh2EE4readEh+0x3c>

00001bde <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4readEh>:
    1bde:	1f 93       	push	r17
    1be0:	cf 93       	push	r28
    1be2:	df 93       	push	r29
    1be4:	16 2f       	mov	r17, r22
    1be6:	38 98       	cbi	0x07, 0	; 7
    1be8:	80 e0       	ldi	r24, 0x00	; 0
    1bea:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1bee:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1bf2:	d8 e0       	ldi	r29, 0x08	; 8
    1bf4:	c0 e0       	ldi	r28, 0x00	; 0
    1bf6:	cc 0f       	add	r28, r28
    1bf8:	81 e0       	ldi	r24, 0x01	; 1
    1bfa:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1bfe:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1c02:	30 99       	sbic	0x06, 0	; 6
    1c04:	c1 60       	ori	r28, 0x01	; 1
    1c06:	80 e0       	ldi	r24, 0x00	; 0
    1c08:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1c0c:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1c10:	d1 50       	subi	r29, 0x01	; 1
    1c12:	89 f7       	brne	.-30     	; 0x1bf6 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4readEh+0x18>
    1c14:	11 23       	and	r17, r17
    1c16:	a9 f0       	breq	.+42     	; 0x1c42 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4readEh+0x64>
    1c18:	38 9a       	sbi	0x07, 0	; 7
    1c1a:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1c1e:	81 e0       	ldi	r24, 0x01	; 1
    1c20:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1c24:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1c28:	80 e0       	ldi	r24, 0x00	; 0
    1c2a:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1c2e:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1c32:	38 98       	cbi	0x07, 0	; 7
    1c34:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1c38:	8c 2f       	mov	r24, r28
    1c3a:	df 91       	pop	r29
    1c3c:	cf 91       	pop	r28
    1c3e:	1f 91       	pop	r17
    1c40:	08 95       	ret
    1c42:	38 98       	cbi	0x07, 0	; 7
    1c44:	ea cf       	rjmp	.-44     	; 0x1c1a <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE4readEh+0x3c>

00001c46 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE4readEh>:
    1c46:	1f 93       	push	r17
    1c48:	cf 93       	push	r28
    1c4a:	df 93       	push	r29
    1c4c:	16 2f       	mov	r17, r22
    1c4e:	39 98       	cbi	0x07, 1	; 7
    1c50:	80 e0       	ldi	r24, 0x00	; 0
    1c52:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1c56:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1c5a:	d8 e0       	ldi	r29, 0x08	; 8
    1c5c:	c0 e0       	ldi	r28, 0x00	; 0
    1c5e:	cc 0f       	add	r28, r28
    1c60:	81 e0       	ldi	r24, 0x01	; 1
    1c62:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1c66:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1c6a:	31 99       	sbic	0x06, 1	; 6
    1c6c:	c1 60       	ori	r28, 0x01	; 1
    1c6e:	80 e0       	ldi	r24, 0x00	; 0
    1c70:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1c74:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1c78:	d1 50       	subi	r29, 0x01	; 1
    1c7a:	89 f7       	brne	.-30     	; 0x1c5e <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE4readEh+0x18>
    1c7c:	11 23       	and	r17, r17
    1c7e:	a9 f0       	breq	.+42     	; 0x1caa <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE4readEh+0x64>
    1c80:	39 9a       	sbi	0x07, 1	; 7
    1c82:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1c86:	81 e0       	ldi	r24, 0x01	; 1
    1c88:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1c8c:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1c90:	80 e0       	ldi	r24, 0x00	; 0
    1c92:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1c96:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1c9a:	39 98       	cbi	0x07, 1	; 7
    1c9c:	0e 94 48 0c 	call	0x1890	; 0x1890 <_ZN4TI2CILh2ELh0ELh5ELh5ELh2EE5delayEv.isra.19>
    1ca0:	8c 2f       	mov	r24, r28
    1ca2:	df 91       	pop	r29
    1ca4:	cf 91       	pop	r28
    1ca6:	1f 91       	pop	r17
    1ca8:	08 95       	ret
    1caa:	39 98       	cbi	0x07, 1	; 7
    1cac:	ea cf       	rjmp	.-44     	; 0x1c82 <_ZN4TI2CILh2ELh1ELh5ELh5ELh2EE4readEh+0x3c>

00001cae <_ZN16CMeasurementTaskC1Ev>:
    1cae:	4f 92       	push	r4
    1cb0:	5f 92       	push	r5
    1cb2:	6f 92       	push	r6
    1cb4:	7f 92       	push	r7
    1cb6:	8f 92       	push	r8
    1cb8:	9f 92       	push	r9
    1cba:	af 92       	push	r10
    1cbc:	bf 92       	push	r11
    1cbe:	cf 92       	push	r12
    1cc0:	df 92       	push	r13
    1cc2:	ef 92       	push	r14
    1cc4:	ff 92       	push	r15
    1cc6:	0f 93       	push	r16
    1cc8:	1f 93       	push	r17
    1cca:	cf 93       	push	r28
    1ccc:	df 93       	push	r29
    1cce:	ec 01       	movw	r28, r24
    1cd0:	89 e8       	ldi	r24, 0x89	; 137
    1cd2:	91 e0       	ldi	r25, 0x01	; 1
    1cd4:	fe 01       	movw	r30, r28
    1cd6:	81 93       	st	Z+, r24
    1cd8:	91 93       	st	Z+, r25
    1cda:	7f 01       	movw	r14, r30
    1cdc:	89 e2       	ldi	r24, 0x29	; 41
    1cde:	91 e0       	ldi	r25, 0x01	; 1
    1ce0:	9b 83       	std	Y+3, r25	; 0x03
    1ce2:	8a 83       	std	Y+2, r24	; 0x02
    1ce4:	38 98       	cbi	0x07, 0	; 7
    1ce6:	81 e0       	ldi	r24, 0x01	; 1
    1ce8:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1cec:	40 98       	cbi	0x08, 0	; 8
    1cee:	45 98       	cbi	0x08, 5	; 8
    1cf0:	6e 01       	movw	r12, r28
    1cf2:	f6 e0       	ldi	r31, 0x06	; 6
    1cf4:	cf 0e       	add	r12, r31
    1cf6:	d1 1c       	adc	r13, r1
    1cf8:	81 e4       	ldi	r24, 0x41	; 65
    1cfa:	91 e0       	ldi	r25, 0x01	; 1
    1cfc:	9f 83       	std	Y+7, r25	; 0x07
    1cfe:	8e 83       	std	Y+6, r24	; 0x06
    1d00:	39 98       	cbi	0x07, 1	; 7
    1d02:	81 e0       	ldi	r24, 0x01	; 1
    1d04:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1d08:	41 98       	cbi	0x08, 1	; 8
    1d0a:	45 98       	cbi	0x08, 5	; 8
    1d0c:	3e 01       	movw	r6, r28
    1d0e:	8a e0       	ldi	r24, 0x0A	; 10
    1d10:	68 0e       	add	r6, r24
    1d12:	71 1c       	adc	r7, r1
    1d14:	89 e5       	ldi	r24, 0x59	; 89
    1d16:	91 e0       	ldi	r25, 0x01	; 1
    1d18:	9b 87       	std	Y+11, r25	; 0x0b
    1d1a:	8a 87       	std	Y+10, r24	; 0x0a
    1d1c:	3a 98       	cbi	0x07, 2	; 7
    1d1e:	81 e0       	ldi	r24, 0x01	; 1
    1d20:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1d24:	42 98       	cbi	0x08, 2	; 8
    1d26:	45 98       	cbi	0x08, 5	; 8
    1d28:	2e 01       	movw	r4, r28
    1d2a:	ee e0       	ldi	r30, 0x0E	; 14
    1d2c:	4e 0e       	add	r4, r30
    1d2e:	51 1c       	adc	r5, r1
    1d30:	81 e7       	ldi	r24, 0x71	; 113
    1d32:	91 e0       	ldi	r25, 0x01	; 1
    1d34:	9f 87       	std	Y+15, r25	; 0x0f
    1d36:	8e 87       	std	Y+14, r24	; 0x0e
    1d38:	3b 98       	cbi	0x07, 3	; 7
    1d3a:	81 e0       	ldi	r24, 0x01	; 1
    1d3c:	0e 94 42 0c 	call	0x1884	; 0x1884 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
    1d40:	43 98       	cbi	0x08, 3	; 8
    1d42:	45 98       	cbi	0x08, 5	; 8
    1d44:	4e 01       	movw	r8, r28
    1d46:	f2 e1       	ldi	r31, 0x12	; 18
    1d48:	8f 0e       	add	r8, r31
    1d4a:	91 1c       	adc	r9, r1
    1d4c:	84 01       	movw	r16, r8
    1d4e:	5e 01       	movw	r10, r28
    1d50:	82 e8       	ldi	r24, 0x82	; 130
    1d52:	a8 0e       	add	r10, r24
    1d54:	b1 1c       	adc	r11, r1
    1d56:	c8 01       	movw	r24, r16
    1d58:	0e 94 27 05 	call	0xa4e	; 0xa4e <_ZN16CObjectDetectionC1Ev>
    1d5c:	04 5e       	subi	r16, 0xE4	; 228
    1d5e:	1f 4f       	sbci	r17, 0xFF	; 255
    1d60:	a0 16       	cp	r10, r16
    1d62:	b1 06       	cpc	r11, r17
    1d64:	c1 f7       	brne	.-16     	; 0x1d56 <_ZN16CMeasurementTaskC1Ev+0xa8>
    1d66:	b7 01       	movw	r22, r14
    1d68:	c4 01       	movw	r24, r8
    1d6a:	0e 94 2b 05 	call	0xa56	; 0xa56 <_ZN16CObjectDetection4initEP14CI2C_Interface>
    1d6e:	8c 01       	movw	r16, r24
    1d70:	66 e0       	ldi	r22, 0x06	; 6
    1d72:	71 e0       	ldi	r23, 0x01	; 1
    1d74:	85 ed       	ldi	r24, 0xD5	; 213
    1d76:	91 e0       	ldi	r25, 0x01	; 1
    1d78:	0e 94 53 04 	call	0x8a6	; 0x8a6 <_ZN9CTerminal4putsEPKc>
    1d7c:	a8 01       	movw	r20, r16
    1d7e:	11 0f       	add	r17, r17
    1d80:	66 0b       	sbc	r22, r22
    1d82:	77 0b       	sbc	r23, r23
    1d84:	85 ed       	ldi	r24, 0xD5	; 213
    1d86:	91 e0       	ldi	r25, 0x01	; 1
    1d88:	0e 94 65 04 	call	0x8ca	; 0x8ca <_ZN9CTerminal4putiEl>
    1d8c:	63 e2       	ldi	r22, 0x23	; 35
    1d8e:	71 e0       	ldi	r23, 0x01	; 1
    1d90:	85 ed       	ldi	r24, 0xD5	; 213
    1d92:	91 e0       	ldi	r25, 0x01	; 1
    1d94:	0e 94 53 04 	call	0x8a6	; 0x8a6 <_ZN9CTerminal4putsEPKc>
    1d98:	b6 01       	movw	r22, r12
    1d9a:	ce 01       	movw	r24, r28
    1d9c:	8e 96       	adiw	r24, 0x2e	; 46
    1d9e:	0e 94 2b 05 	call	0xa56	; 0xa56 <_ZN16CObjectDetection4initEP14CI2C_Interface>
    1da2:	8c 01       	movw	r16, r24
    1da4:	66 e0       	ldi	r22, 0x06	; 6
    1da6:	71 e0       	ldi	r23, 0x01	; 1
    1da8:	85 ed       	ldi	r24, 0xD5	; 213
    1daa:	91 e0       	ldi	r25, 0x01	; 1
    1dac:	0e 94 53 04 	call	0x8a6	; 0x8a6 <_ZN9CTerminal4putsEPKc>
    1db0:	a8 01       	movw	r20, r16
    1db2:	11 0f       	add	r17, r17
    1db4:	66 0b       	sbc	r22, r22
    1db6:	77 0b       	sbc	r23, r23
    1db8:	85 ed       	ldi	r24, 0xD5	; 213
    1dba:	91 e0       	ldi	r25, 0x01	; 1
    1dbc:	0e 94 65 04 	call	0x8ca	; 0x8ca <_ZN9CTerminal4putiEl>
    1dc0:	63 e2       	ldi	r22, 0x23	; 35
    1dc2:	71 e0       	ldi	r23, 0x01	; 1
    1dc4:	85 ed       	ldi	r24, 0xD5	; 213
    1dc6:	91 e0       	ldi	r25, 0x01	; 1
    1dc8:	0e 94 53 04 	call	0x8a6	; 0x8a6 <_ZN9CTerminal4putsEPKc>
    1dcc:	b3 01       	movw	r22, r6
    1dce:	ce 01       	movw	r24, r28
    1dd0:	86 5b       	subi	r24, 0xB6	; 182
    1dd2:	9f 4f       	sbci	r25, 0xFF	; 255
    1dd4:	0e 94 2b 05 	call	0xa56	; 0xa56 <_ZN16CObjectDetection4initEP14CI2C_Interface>
    1dd8:	8c 01       	movw	r16, r24
    1dda:	66 e0       	ldi	r22, 0x06	; 6
    1ddc:	71 e0       	ldi	r23, 0x01	; 1
    1dde:	85 ed       	ldi	r24, 0xD5	; 213
    1de0:	91 e0       	ldi	r25, 0x01	; 1
    1de2:	0e 94 53 04 	call	0x8a6	; 0x8a6 <_ZN9CTerminal4putsEPKc>
    1de6:	a8 01       	movw	r20, r16
    1de8:	11 0f       	add	r17, r17
    1dea:	66 0b       	sbc	r22, r22
    1dec:	77 0b       	sbc	r23, r23
    1dee:	85 ed       	ldi	r24, 0xD5	; 213
    1df0:	91 e0       	ldi	r25, 0x01	; 1
    1df2:	0e 94 65 04 	call	0x8ca	; 0x8ca <_ZN9CTerminal4putiEl>
    1df6:	63 e2       	ldi	r22, 0x23	; 35
    1df8:	71 e0       	ldi	r23, 0x01	; 1
    1dfa:	85 ed       	ldi	r24, 0xD5	; 213
    1dfc:	91 e0       	ldi	r25, 0x01	; 1
    1dfe:	0e 94 53 04 	call	0x8a6	; 0x8a6 <_ZN9CTerminal4putsEPKc>
    1e02:	b2 01       	movw	r22, r4
    1e04:	ce 01       	movw	r24, r28
    1e06:	8a 59       	subi	r24, 0x9A	; 154
    1e08:	9f 4f       	sbci	r25, 0xFF	; 255
    1e0a:	0e 94 2b 05 	call	0xa56	; 0xa56 <_ZN16CObjectDetection4initEP14CI2C_Interface>
    1e0e:	ec 01       	movw	r28, r24
    1e10:	66 e0       	ldi	r22, 0x06	; 6
    1e12:	71 e0       	ldi	r23, 0x01	; 1
    1e14:	85 ed       	ldi	r24, 0xD5	; 213
    1e16:	91 e0       	ldi	r25, 0x01	; 1
    1e18:	0e 94 53 04 	call	0x8a6	; 0x8a6 <_ZN9CTerminal4putsEPKc>
    1e1c:	ae 01       	movw	r20, r28
    1e1e:	dd 0f       	add	r29, r29
    1e20:	66 0b       	sbc	r22, r22
    1e22:	77 0b       	sbc	r23, r23
    1e24:	85 ed       	ldi	r24, 0xD5	; 213
    1e26:	91 e0       	ldi	r25, 0x01	; 1
    1e28:	0e 94 65 04 	call	0x8ca	; 0x8ca <_ZN9CTerminal4putiEl>
    1e2c:	63 e2       	ldi	r22, 0x23	; 35
    1e2e:	71 e0       	ldi	r23, 0x01	; 1
    1e30:	85 ed       	ldi	r24, 0xD5	; 213
    1e32:	91 e0       	ldi	r25, 0x01	; 1
    1e34:	df 91       	pop	r29
    1e36:	cf 91       	pop	r28
    1e38:	1f 91       	pop	r17
    1e3a:	0f 91       	pop	r16
    1e3c:	ff 90       	pop	r15
    1e3e:	ef 90       	pop	r14
    1e40:	df 90       	pop	r13
    1e42:	cf 90       	pop	r12
    1e44:	bf 90       	pop	r11
    1e46:	af 90       	pop	r10
    1e48:	9f 90       	pop	r9
    1e4a:	8f 90       	pop	r8
    1e4c:	7f 90       	pop	r7
    1e4e:	6f 90       	pop	r6
    1e50:	5f 90       	pop	r5
    1e52:	4f 90       	pop	r4
    1e54:	0c 94 53 04 	jmp	0x8a6	; 0x8a6 <_ZN9CTerminal4putsEPKc>

00001e58 <main>:
    1e58:	cf 93       	push	r28
    1e5a:	df 93       	push	r29
    1e5c:	cd b7       	in	r28, 0x3d	; 61
    1e5e:	de b7       	in	r29, 0x3e	; 62
    1e60:	c2 58       	subi	r28, 0x82	; 130
    1e62:	d1 09       	sbc	r29, r1
    1e64:	0f b6       	in	r0, 0x3f	; 63
    1e66:	f8 94       	cli
    1e68:	de bf       	out	0x3e, r29	; 62
    1e6a:	0f be       	out	0x3f, r0	; 63
    1e6c:	cd bf       	out	0x3d, r28	; 61
    1e6e:	63 e1       	ldi	r22, 0x13	; 19
    1e70:	71 e0       	ldi	r23, 0x01	; 1
    1e72:	85 ed       	ldi	r24, 0xD5	; 213
    1e74:	91 e0       	ldi	r25, 0x01	; 1
    1e76:	0e 94 53 04 	call	0x8a6	; 0x8a6 <_ZN9CTerminal4putsEPKc>
    1e7a:	ce 01       	movw	r24, r28
    1e7c:	01 96       	adiw	r24, 0x01	; 1
    1e7e:	0e 94 57 0e 	call	0x1cae	; 0x1cae <_ZN16CMeasurementTaskC1Ev>
    1e82:	63 e1       	ldi	r22, 0x13	; 19
    1e84:	71 e0       	ldi	r23, 0x01	; 1
    1e86:	85 ed       	ldi	r24, 0xD5	; 213
    1e88:	91 e0       	ldi	r25, 0x01	; 1
    1e8a:	0e 94 53 04 	call	0x8a6	; 0x8a6 <_ZN9CTerminal4putsEPKc>
    1e8e:	ce 01       	movw	r24, r28
    1e90:	01 96       	adiw	r24, 0x01	; 1
    1e92:	0e 94 ea 0b 	call	0x17d4	; 0x17d4 <_ZN16CMeasurementTaskclEv>
    1e96:	fb cf       	rjmp	.-10     	; 0x1e8e <main+0x36>

00001e98 <__udivmodsi4>:
    1e98:	a1 e2       	ldi	r26, 0x21	; 33
    1e9a:	1a 2e       	mov	r1, r26
    1e9c:	aa 1b       	sub	r26, r26
    1e9e:	bb 1b       	sub	r27, r27
    1ea0:	fd 01       	movw	r30, r26
    1ea2:	0d c0       	rjmp	.+26     	; 0x1ebe <__udivmodsi4_ep>

00001ea4 <__udivmodsi4_loop>:
    1ea4:	aa 1f       	adc	r26, r26
    1ea6:	bb 1f       	adc	r27, r27
    1ea8:	ee 1f       	adc	r30, r30
    1eaa:	ff 1f       	adc	r31, r31
    1eac:	a2 17       	cp	r26, r18
    1eae:	b3 07       	cpc	r27, r19
    1eb0:	e4 07       	cpc	r30, r20
    1eb2:	f5 07       	cpc	r31, r21
    1eb4:	20 f0       	brcs	.+8      	; 0x1ebe <__udivmodsi4_ep>
    1eb6:	a2 1b       	sub	r26, r18
    1eb8:	b3 0b       	sbc	r27, r19
    1eba:	e4 0b       	sbc	r30, r20
    1ebc:	f5 0b       	sbc	r31, r21

00001ebe <__udivmodsi4_ep>:
    1ebe:	66 1f       	adc	r22, r22
    1ec0:	77 1f       	adc	r23, r23
    1ec2:	88 1f       	adc	r24, r24
    1ec4:	99 1f       	adc	r25, r25
    1ec6:	1a 94       	dec	r1
    1ec8:	69 f7       	brne	.-38     	; 0x1ea4 <__udivmodsi4_loop>
    1eca:	60 95       	com	r22
    1ecc:	70 95       	com	r23
    1ece:	80 95       	com	r24
    1ed0:	90 95       	com	r25
    1ed2:	9b 01       	movw	r18, r22
    1ed4:	ac 01       	movw	r20, r24
    1ed6:	bd 01       	movw	r22, r26
    1ed8:	cf 01       	movw	r24, r30
    1eda:	08 95       	ret

00001edc <__divmodsi4>:
    1edc:	05 2e       	mov	r0, r21
    1ede:	97 fb       	bst	r25, 7
    1ee0:	1e f4       	brtc	.+6      	; 0x1ee8 <__divmodsi4+0xc>
    1ee2:	00 94       	com	r0
    1ee4:	0e 94 85 0f 	call	0x1f0a	; 0x1f0a <__negsi2>
    1ee8:	57 fd       	sbrc	r21, 7
    1eea:	07 d0       	rcall	.+14     	; 0x1efa <__divmodsi4_neg2>
    1eec:	0e 94 4c 0f 	call	0x1e98	; 0x1e98 <__udivmodsi4>
    1ef0:	07 fc       	sbrc	r0, 7
    1ef2:	03 d0       	rcall	.+6      	; 0x1efa <__divmodsi4_neg2>
    1ef4:	4e f4       	brtc	.+18     	; 0x1f08 <__divmodsi4_exit>
    1ef6:	0c 94 85 0f 	jmp	0x1f0a	; 0x1f0a <__negsi2>

00001efa <__divmodsi4_neg2>:
    1efa:	50 95       	com	r21
    1efc:	40 95       	com	r20
    1efe:	30 95       	com	r19
    1f00:	21 95       	neg	r18
    1f02:	3f 4f       	sbci	r19, 0xFF	; 255
    1f04:	4f 4f       	sbci	r20, 0xFF	; 255
    1f06:	5f 4f       	sbci	r21, 0xFF	; 255

00001f08 <__divmodsi4_exit>:
    1f08:	08 95       	ret

00001f0a <__negsi2>:
    1f0a:	90 95       	com	r25
    1f0c:	80 95       	com	r24
    1f0e:	70 95       	com	r23
    1f10:	61 95       	neg	r22
    1f12:	7f 4f       	sbci	r23, 0xFF	; 255
    1f14:	8f 4f       	sbci	r24, 0xFF	; 255
    1f16:	9f 4f       	sbci	r25, 0xFF	; 255
    1f18:	08 95       	ret

00001f1a <__tablejump2__>:
    1f1a:	ee 0f       	add	r30, r30
    1f1c:	ff 1f       	adc	r31, r31
    1f1e:	05 90       	lpm	r0, Z+
    1f20:	f4 91       	lpm	r31, Z
    1f22:	e0 2d       	mov	r30, r0
    1f24:	09 94       	ijmp

00001f26 <malloc>:
    1f26:	0f 93       	push	r16
    1f28:	1f 93       	push	r17
    1f2a:	cf 93       	push	r28
    1f2c:	df 93       	push	r29
    1f2e:	82 30       	cpi	r24, 0x02	; 2
    1f30:	91 05       	cpc	r25, r1
    1f32:	10 f4       	brcc	.+4      	; 0x1f38 <malloc+0x12>
    1f34:	82 e0       	ldi	r24, 0x02	; 2
    1f36:	90 e0       	ldi	r25, 0x00	; 0
    1f38:	e0 91 d8 01 	lds	r30, 0x01D8	; 0x8001d8 <__flp>
    1f3c:	f0 91 d9 01 	lds	r31, 0x01D9	; 0x8001d9 <__flp+0x1>
    1f40:	30 e0       	ldi	r19, 0x00	; 0
    1f42:	20 e0       	ldi	r18, 0x00	; 0
    1f44:	b0 e0       	ldi	r27, 0x00	; 0
    1f46:	a0 e0       	ldi	r26, 0x00	; 0
    1f48:	30 97       	sbiw	r30, 0x00	; 0
    1f4a:	99 f4       	brne	.+38     	; 0x1f72 <malloc+0x4c>
    1f4c:	21 15       	cp	r18, r1
    1f4e:	31 05       	cpc	r19, r1
    1f50:	09 f4       	brne	.+2      	; 0x1f54 <malloc+0x2e>
    1f52:	4a c0       	rjmp	.+148    	; 0x1fe8 <malloc+0xc2>
    1f54:	28 1b       	sub	r18, r24
    1f56:	39 0b       	sbc	r19, r25
    1f58:	24 30       	cpi	r18, 0x04	; 4
    1f5a:	31 05       	cpc	r19, r1
    1f5c:	d8 f5       	brcc	.+118    	; 0x1fd4 <malloc+0xae>
    1f5e:	8a 81       	ldd	r24, Y+2	; 0x02
    1f60:	9b 81       	ldd	r25, Y+3	; 0x03
    1f62:	61 15       	cp	r22, r1
    1f64:	71 05       	cpc	r23, r1
    1f66:	89 f1       	breq	.+98     	; 0x1fca <malloc+0xa4>
    1f68:	fb 01       	movw	r30, r22
    1f6a:	93 83       	std	Z+3, r25	; 0x03
    1f6c:	82 83       	std	Z+2, r24	; 0x02
    1f6e:	fe 01       	movw	r30, r28
    1f70:	11 c0       	rjmp	.+34     	; 0x1f94 <malloc+0x6e>
    1f72:	40 81       	ld	r20, Z
    1f74:	51 81       	ldd	r21, Z+1	; 0x01
    1f76:	02 81       	ldd	r16, Z+2	; 0x02
    1f78:	13 81       	ldd	r17, Z+3	; 0x03
    1f7a:	48 17       	cp	r20, r24
    1f7c:	59 07       	cpc	r21, r25
    1f7e:	e0 f0       	brcs	.+56     	; 0x1fb8 <malloc+0x92>
    1f80:	48 17       	cp	r20, r24
    1f82:	59 07       	cpc	r21, r25
    1f84:	99 f4       	brne	.+38     	; 0x1fac <malloc+0x86>
    1f86:	10 97       	sbiw	r26, 0x00	; 0
    1f88:	61 f0       	breq	.+24     	; 0x1fa2 <malloc+0x7c>
    1f8a:	12 96       	adiw	r26, 0x02	; 2
    1f8c:	0c 93       	st	X, r16
    1f8e:	12 97       	sbiw	r26, 0x02	; 2
    1f90:	13 96       	adiw	r26, 0x03	; 3
    1f92:	1c 93       	st	X, r17
    1f94:	32 96       	adiw	r30, 0x02	; 2
    1f96:	cf 01       	movw	r24, r30
    1f98:	df 91       	pop	r29
    1f9a:	cf 91       	pop	r28
    1f9c:	1f 91       	pop	r17
    1f9e:	0f 91       	pop	r16
    1fa0:	08 95       	ret
    1fa2:	00 93 d8 01 	sts	0x01D8, r16	; 0x8001d8 <__flp>
    1fa6:	10 93 d9 01 	sts	0x01D9, r17	; 0x8001d9 <__flp+0x1>
    1faa:	f4 cf       	rjmp	.-24     	; 0x1f94 <malloc+0x6e>
    1fac:	21 15       	cp	r18, r1
    1fae:	31 05       	cpc	r19, r1
    1fb0:	51 f0       	breq	.+20     	; 0x1fc6 <malloc+0xa0>
    1fb2:	42 17       	cp	r20, r18
    1fb4:	53 07       	cpc	r21, r19
    1fb6:	38 f0       	brcs	.+14     	; 0x1fc6 <malloc+0xa0>
    1fb8:	a9 01       	movw	r20, r18
    1fba:	db 01       	movw	r26, r22
    1fbc:	9a 01       	movw	r18, r20
    1fbe:	bd 01       	movw	r22, r26
    1fc0:	df 01       	movw	r26, r30
    1fc2:	f8 01       	movw	r30, r16
    1fc4:	c1 cf       	rjmp	.-126    	; 0x1f48 <malloc+0x22>
    1fc6:	ef 01       	movw	r28, r30
    1fc8:	f9 cf       	rjmp	.-14     	; 0x1fbc <malloc+0x96>
    1fca:	90 93 d9 01 	sts	0x01D9, r25	; 0x8001d9 <__flp+0x1>
    1fce:	80 93 d8 01 	sts	0x01D8, r24	; 0x8001d8 <__flp>
    1fd2:	cd cf       	rjmp	.-102    	; 0x1f6e <malloc+0x48>
    1fd4:	fe 01       	movw	r30, r28
    1fd6:	e2 0f       	add	r30, r18
    1fd8:	f3 1f       	adc	r31, r19
    1fda:	81 93       	st	Z+, r24
    1fdc:	91 93       	st	Z+, r25
    1fde:	22 50       	subi	r18, 0x02	; 2
    1fe0:	31 09       	sbc	r19, r1
    1fe2:	39 83       	std	Y+1, r19	; 0x01
    1fe4:	28 83       	st	Y, r18
    1fe6:	d7 cf       	rjmp	.-82     	; 0x1f96 <malloc+0x70>
    1fe8:	20 91 d6 01 	lds	r18, 0x01D6	; 0x8001d6 <__brkval>
    1fec:	30 91 d7 01 	lds	r19, 0x01D7	; 0x8001d7 <__brkval+0x1>
    1ff0:	23 2b       	or	r18, r19
    1ff2:	41 f4       	brne	.+16     	; 0x2004 <malloc+0xde>
    1ff4:	20 91 02 01 	lds	r18, 0x0102	; 0x800102 <__malloc_heap_start>
    1ff8:	30 91 03 01 	lds	r19, 0x0103	; 0x800103 <__malloc_heap_start+0x1>
    1ffc:	30 93 d7 01 	sts	0x01D7, r19	; 0x8001d7 <__brkval+0x1>
    2000:	20 93 d6 01 	sts	0x01D6, r18	; 0x8001d6 <__brkval>
    2004:	20 91 00 01 	lds	r18, 0x0100	; 0x800100 <__malloc_heap_end>
    2008:	30 91 01 01 	lds	r19, 0x0101	; 0x800101 <__malloc_heap_end+0x1>
    200c:	21 15       	cp	r18, r1
    200e:	31 05       	cpc	r19, r1
    2010:	41 f4       	brne	.+16     	; 0x2022 <malloc+0xfc>
    2012:	2d b7       	in	r18, 0x3d	; 61
    2014:	3e b7       	in	r19, 0x3e	; 62
    2016:	40 91 04 01 	lds	r20, 0x0104	; 0x800104 <__malloc_margin>
    201a:	50 91 05 01 	lds	r21, 0x0105	; 0x800105 <__malloc_margin+0x1>
    201e:	24 1b       	sub	r18, r20
    2020:	35 0b       	sbc	r19, r21
    2022:	e0 91 d6 01 	lds	r30, 0x01D6	; 0x8001d6 <__brkval>
    2026:	f0 91 d7 01 	lds	r31, 0x01D7	; 0x8001d7 <__brkval+0x1>
    202a:	e2 17       	cp	r30, r18
    202c:	f3 07       	cpc	r31, r19
    202e:	a0 f4       	brcc	.+40     	; 0x2058 <malloc+0x132>
    2030:	2e 1b       	sub	r18, r30
    2032:	3f 0b       	sbc	r19, r31
    2034:	28 17       	cp	r18, r24
    2036:	39 07       	cpc	r19, r25
    2038:	78 f0       	brcs	.+30     	; 0x2058 <malloc+0x132>
    203a:	ac 01       	movw	r20, r24
    203c:	4e 5f       	subi	r20, 0xFE	; 254
    203e:	5f 4f       	sbci	r21, 0xFF	; 255
    2040:	24 17       	cp	r18, r20
    2042:	35 07       	cpc	r19, r21
    2044:	48 f0       	brcs	.+18     	; 0x2058 <malloc+0x132>
    2046:	4e 0f       	add	r20, r30
    2048:	5f 1f       	adc	r21, r31
    204a:	50 93 d7 01 	sts	0x01D7, r21	; 0x8001d7 <__brkval+0x1>
    204e:	40 93 d6 01 	sts	0x01D6, r20	; 0x8001d6 <__brkval>
    2052:	81 93       	st	Z+, r24
    2054:	91 93       	st	Z+, r25
    2056:	9f cf       	rjmp	.-194    	; 0x1f96 <malloc+0x70>
    2058:	f0 e0       	ldi	r31, 0x00	; 0
    205a:	e0 e0       	ldi	r30, 0x00	; 0
    205c:	9c cf       	rjmp	.-200    	; 0x1f96 <malloc+0x70>

0000205e <free>:
    205e:	cf 93       	push	r28
    2060:	df 93       	push	r29
    2062:	00 97       	sbiw	r24, 0x00	; 0
    2064:	e9 f0       	breq	.+58     	; 0x20a0 <free+0x42>
    2066:	fc 01       	movw	r30, r24
    2068:	32 97       	sbiw	r30, 0x02	; 2
    206a:	13 82       	std	Z+3, r1	; 0x03
    206c:	12 82       	std	Z+2, r1	; 0x02
    206e:	a0 91 d8 01 	lds	r26, 0x01D8	; 0x8001d8 <__flp>
    2072:	b0 91 d9 01 	lds	r27, 0x01D9	; 0x8001d9 <__flp+0x1>
    2076:	ed 01       	movw	r28, r26
    2078:	30 e0       	ldi	r19, 0x00	; 0
    207a:	20 e0       	ldi	r18, 0x00	; 0
    207c:	10 97       	sbiw	r26, 0x00	; 0
    207e:	a1 f4       	brne	.+40     	; 0x20a8 <free+0x4a>
    2080:	20 81       	ld	r18, Z
    2082:	31 81       	ldd	r19, Z+1	; 0x01
    2084:	82 0f       	add	r24, r18
    2086:	93 1f       	adc	r25, r19
    2088:	20 91 d6 01 	lds	r18, 0x01D6	; 0x8001d6 <__brkval>
    208c:	30 91 d7 01 	lds	r19, 0x01D7	; 0x8001d7 <__brkval+0x1>
    2090:	28 17       	cp	r18, r24
    2092:	39 07       	cpc	r19, r25
    2094:	09 f0       	breq	.+2      	; 0x2098 <free+0x3a>
    2096:	61 c0       	rjmp	.+194    	; 0x215a <free+0xfc>
    2098:	f0 93 d7 01 	sts	0x01D7, r31	; 0x8001d7 <__brkval+0x1>
    209c:	e0 93 d6 01 	sts	0x01D6, r30	; 0x8001d6 <__brkval>
    20a0:	df 91       	pop	r29
    20a2:	cf 91       	pop	r28
    20a4:	08 95       	ret
    20a6:	ea 01       	movw	r28, r20
    20a8:	ce 17       	cp	r28, r30
    20aa:	df 07       	cpc	r29, r31
    20ac:	e8 f5       	brcc	.+122    	; 0x2128 <free+0xca>
    20ae:	4a 81       	ldd	r20, Y+2	; 0x02
    20b0:	5b 81       	ldd	r21, Y+3	; 0x03
    20b2:	9e 01       	movw	r18, r28
    20b4:	41 15       	cp	r20, r1
    20b6:	51 05       	cpc	r21, r1
    20b8:	b1 f7       	brne	.-20     	; 0x20a6 <free+0x48>
    20ba:	e9 01       	movw	r28, r18
    20bc:	fb 83       	std	Y+3, r31	; 0x03
    20be:	ea 83       	std	Y+2, r30	; 0x02
    20c0:	49 91       	ld	r20, Y+
    20c2:	59 91       	ld	r21, Y+
    20c4:	c4 0f       	add	r28, r20
    20c6:	d5 1f       	adc	r29, r21
    20c8:	ec 17       	cp	r30, r28
    20ca:	fd 07       	cpc	r31, r29
    20cc:	61 f4       	brne	.+24     	; 0x20e6 <free+0x88>
    20ce:	80 81       	ld	r24, Z
    20d0:	91 81       	ldd	r25, Z+1	; 0x01
    20d2:	02 96       	adiw	r24, 0x02	; 2
    20d4:	84 0f       	add	r24, r20
    20d6:	95 1f       	adc	r25, r21
    20d8:	e9 01       	movw	r28, r18
    20da:	99 83       	std	Y+1, r25	; 0x01
    20dc:	88 83       	st	Y, r24
    20de:	82 81       	ldd	r24, Z+2	; 0x02
    20e0:	93 81       	ldd	r25, Z+3	; 0x03
    20e2:	9b 83       	std	Y+3, r25	; 0x03
    20e4:	8a 83       	std	Y+2, r24	; 0x02
    20e6:	f0 e0       	ldi	r31, 0x00	; 0
    20e8:	e0 e0       	ldi	r30, 0x00	; 0
    20ea:	12 96       	adiw	r26, 0x02	; 2
    20ec:	8d 91       	ld	r24, X+
    20ee:	9c 91       	ld	r25, X
    20f0:	13 97       	sbiw	r26, 0x03	; 3
    20f2:	00 97       	sbiw	r24, 0x00	; 0
    20f4:	b9 f5       	brne	.+110    	; 0x2164 <free+0x106>
    20f6:	2d 91       	ld	r18, X+
    20f8:	3c 91       	ld	r19, X
    20fa:	11 97       	sbiw	r26, 0x01	; 1
    20fc:	cd 01       	movw	r24, r26
    20fe:	02 96       	adiw	r24, 0x02	; 2
    2100:	82 0f       	add	r24, r18
    2102:	93 1f       	adc	r25, r19
    2104:	20 91 d6 01 	lds	r18, 0x01D6	; 0x8001d6 <__brkval>
    2108:	30 91 d7 01 	lds	r19, 0x01D7	; 0x8001d7 <__brkval+0x1>
    210c:	28 17       	cp	r18, r24
    210e:	39 07       	cpc	r19, r25
    2110:	39 f6       	brne	.-114    	; 0x20a0 <free+0x42>
    2112:	30 97       	sbiw	r30, 0x00	; 0
    2114:	51 f5       	brne	.+84     	; 0x216a <free+0x10c>
    2116:	10 92 d9 01 	sts	0x01D9, r1	; 0x8001d9 <__flp+0x1>
    211a:	10 92 d8 01 	sts	0x01D8, r1	; 0x8001d8 <__flp>
    211e:	b0 93 d7 01 	sts	0x01D7, r27	; 0x8001d7 <__brkval+0x1>
    2122:	a0 93 d6 01 	sts	0x01D6, r26	; 0x8001d6 <__brkval>
    2126:	bc cf       	rjmp	.-136    	; 0x20a0 <free+0x42>
    2128:	d3 83       	std	Z+3, r29	; 0x03
    212a:	c2 83       	std	Z+2, r28	; 0x02
    212c:	40 81       	ld	r20, Z
    212e:	51 81       	ldd	r21, Z+1	; 0x01
    2130:	84 0f       	add	r24, r20
    2132:	95 1f       	adc	r25, r21
    2134:	c8 17       	cp	r28, r24
    2136:	d9 07       	cpc	r29, r25
    2138:	61 f4       	brne	.+24     	; 0x2152 <free+0xf4>
    213a:	4e 5f       	subi	r20, 0xFE	; 254
    213c:	5f 4f       	sbci	r21, 0xFF	; 255
    213e:	88 81       	ld	r24, Y
    2140:	99 81       	ldd	r25, Y+1	; 0x01
    2142:	48 0f       	add	r20, r24
    2144:	59 1f       	adc	r21, r25
    2146:	51 83       	std	Z+1, r21	; 0x01
    2148:	40 83       	st	Z, r20
    214a:	8a 81       	ldd	r24, Y+2	; 0x02
    214c:	9b 81       	ldd	r25, Y+3	; 0x03
    214e:	93 83       	std	Z+3, r25	; 0x03
    2150:	82 83       	std	Z+2, r24	; 0x02
    2152:	21 15       	cp	r18, r1
    2154:	31 05       	cpc	r19, r1
    2156:	09 f0       	breq	.+2      	; 0x215a <free+0xfc>
    2158:	b0 cf       	rjmp	.-160    	; 0x20ba <free+0x5c>
    215a:	f0 93 d9 01 	sts	0x01D9, r31	; 0x8001d9 <__flp+0x1>
    215e:	e0 93 d8 01 	sts	0x01D8, r30	; 0x8001d8 <__flp>
    2162:	9e cf       	rjmp	.-196    	; 0x20a0 <free+0x42>
    2164:	fd 01       	movw	r30, r26
    2166:	dc 01       	movw	r26, r24
    2168:	c0 cf       	rjmp	.-128    	; 0x20ea <free+0x8c>
    216a:	13 82       	std	Z+3, r1	; 0x03
    216c:	12 82       	std	Z+2, r1	; 0x02
    216e:	d7 cf       	rjmp	.-82     	; 0x211e <free+0xc0>

00002170 <__do_global_dtors>:
    2170:	10 e0       	ldi	r17, 0x00	; 0
    2172:	c6 e3       	ldi	r28, 0x36	; 54
    2174:	d0 e0       	ldi	r29, 0x00	; 0
    2176:	04 c0       	rjmp	.+8      	; 0x2180 <__do_global_dtors+0x10>
    2178:	fe 01       	movw	r30, r28
    217a:	0e 94 8d 0f 	call	0x1f1a	; 0x1f1a <__tablejump2__>
    217e:	21 96       	adiw	r28, 0x01	; 1
    2180:	c7 33       	cpi	r28, 0x37	; 55
    2182:	d1 07       	cpc	r29, r17
    2184:	c9 f7       	brne	.-14     	; 0x2178 <__do_global_dtors+0x8>
    2186:	f8 94       	cli

00002188 <__stop_program>:
    2188:	ff cf       	rjmp	.-2      	; 0x2188 <__stop_program>
