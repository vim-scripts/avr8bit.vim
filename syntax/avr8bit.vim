" Vim syntax file
" Language:     Avr 8bit Assembler (Atmel's microcontroller)
" Maintainer:   Alfred Hell <alhell@gmx.net>
" Last Change:  2011 Apr 26
" Revision:     0.6
" for M8, M16, M162, M48, M88, M168, 4434, 8535
" M164 M324 M644 M1284 M165 M325 M3250 M645 M6450
" M32 M64 M128
" Tiny26 Tiny10 Tiny11 Tiny12 Tiny13
" Tiny24 Tiny44 Tiny84 ATTiny2313

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn keyword avrTodo NOTE TODO XXX contained

syn case ignore

" Directives
syn match avrDirective		"\.[a-z]\+"

syn match avrIdentifier 	"[a-z_$][a-z0-9_$]*"
syn match avrLabel      	"^[A-Z_$][A-Z0-9_$]*:"

syn match decNumber		"0\+[1-7]\=[\t\n$,; ]"
syn match decNumber		"[1-9]\d*"
syn match octNumber		"0[oO][0-7]\+"
syn match octNumber		"0[0-7][0-7]\+"
syn match hexNumber		"0[xX][0-9A-Fa-f]\+"
syn match hexNumber     	"\$[0-9A-Fa-f]\+\>"
syn match binNumber		"0[bB][0-1]*"

syn match avrComment    	";.*" contains=avrTodo

syn region avrString    	start=+"+ end=+"+

" REGISTER
syn keyword avrRegister		SREG SPH SPL SPMCR ASSR WDTCR SMCR XDIV
syn keyword avrRegister		MCUCR MCUCSR OSCCAL OCDR SFIOR ACSR EMCUCR
syn keyword avrRegister		SPMCSR MCUSR CLKPR DIDR DIDR0 DIDR1 XMCRA
syn keyword avrRegister		GTCCR  GPIOR2 GPIOR1 GPIOR0 SP DWDR XMCRB
syn keyword avrRegister		RAMPZ

" EEPROM
syn keyword avrRegister         EEARH EEARL EEDR EECR EEAR

" PORT
syn match avrRegister           "PORT[A-J]" 
syn match avrRegister           "DDR[A-J]" 
syn match avrRegister           "PIN[A-J]" 

" INT
syn keyword avrRegister         GICR GIFR TIMSK TIFR TWCR EIFR PCMSK TIMSK2 EICRA
syn keyword avrRegister         PCMSK3 PCMSK2 PCMSK1 PCMSK0 TIMSK0 TIMSK1 PCICR
syn keyword avrRegister		EIMSK PCIFR TIFR0 TIFR1 TIFR2 ETIMSK ETIFR EICRB

" TiCou
syn keyword avrRegister         TCCR1A TCCR1B TCNT1H TCNT1L OCR1AH OCR1AL OCR1BH 
syn keyword avrRegister         OCR1BL ICR1H ICR1L TCCR2 TCNT2 OCR2 TCCR0 TCNT0 
syn keyword avrRegister         GIMSK ICR1H ICR1L TCCR0B TCCR0A TCCR1C OCR0 
syn keyword avrRegister         OCR0B OCR0A OCR2A OCR2B TCCR2A TCCR2B OCR1C
syn keyword avrRegister         OCR3BH OCR3AH OCR3AL OCR3BL TCCR3A TCCR3B TCCR3C
syn keyword avrRegister         TCNT3H TCNT3L ICR3H ICR3L OCR3CL OCR3CH OCR1CH OCR1CL

" UART
syn keyword avrRegister         UDR UDR1 UDR0 UCSRA UCSRB UBRRL UCSRC UBRRH UBRR1H
syn keyword avrRegister         UBRR1L UCSR1A UCSR1B UCSR1C UBRR0H UBRR0L UCSR0C
syn keyword avrRegister		UCSR0B UCSR0A

" ADC
syn keyword avrRegister         ADMUX ADCSRA ADCSRB ADCH ADCL 

" USI
syn keyword avrRegister         USIDR USISR USICR USIBR

" SPI
syn keyword avrRegister         SPDR SPSR SPCR 

" TWI
syn keyword avrRegister         TWDR TWAR TWSR TWBR TWAMR TWCR 

" Rx
syn match avrRegister           "\<[Rr]\([0-9]\|[0-2][0-9]\|30\|31\)\>" 
syn keyword avrRegister 	ZL ZH YL YH XL XH


" REGISTER BITS
syn match avrRegisterPart	"PCINT[0-9]"
syn match avrRegisterPart	"PCINT[1-2][0-9]"
syn match avrRegisterPart	"PCINT3[0-1]"
syn match avrRegisterPart	"CAL[0-7]"
syn match avrRegisterPart	"TWA[0-6]"
syn match avrRegisterPart	"TWS[0-7]"
syn match avrRegisterPart	"TWAM[0-6]"
syn match avrRegisterPart	"PORT[A-J][0-7]"
syn match avrRegisterPart	"DDR[A-J][0-7]"
syn match avrRegisterPart	"PIN[A-J][0-7]"
syn match avrRegisterPart	"P[A-J][0-7]"
syn match avrRegisterPart	"ADC[0-7]D"
syn match avrRegisterPart	"MUX[0-5]"
syn match avrRegisterPart	"CLKPS[0-3]"
syn match avrRegisterPart	"EEAR[0-8]"
syn match avrRegisterPart	"XDIV[0-6]"
syn match avrRegisterPart	"ISC[0-7][0-1]"
syn match avrRegisterPart	"INT[0-7]"
syn match avrRegisterPart	"INTF[0-7]"

" eeprom
syn keyword avrRegisterPart     EERIE EEMWE EEWE EERE 
syn keyword avrRegisterPart     EEPE EEMPE EEPM1 EEPM0  

" UART
syn keyword avrRegisterPart     RXC TXC UDRE FE OR DOR PE U2X MPCM RXCIE TXCIE UDRIE 
syn keyword avrRegisterPart     RXEN TXEN UCSZ2 RXB8 TXB8 UMSEL01 UMSEL00 CHR9 UPE
syn keyword avrRegisterPart     UPM01 UPM00 USBS0 UDORD0 UCPHA0 UCPOL0 RXCIE0 TXCIE0
syn keyword avrRegisterPart     UDRIE0 RXEN0 TXEN0 UCSZ02 RXB80 TXB80 RXC0 TXC0 UDRE0 
syn keyword avrRegisterPart     FE0 DOR0 UPE0 U2X0 MPCM0 URSEL UMSEL UPM1 UPM0 USBS
syn keyword avrRegisterPart	UCSZ11 UCSZ10 UCPOL1 RXCIE1 TXCIE1 UDRIE1 RXEN1 TXEN1
syn keyword avrRegisterPart	UCSZ12 RXB81 TXB81 RXC1 TXC1 UDRE1 FE1 DOR1 UPE1 U2X1
syn keyword avrRegisterPart	MPCM1 UCSZ01 UCSZ00

" On Chip Debug Register
syn keyword avrRegisterPart     ACD ACBG ACO ACI ACIE ACIC ACIS1 ACIS0 

" ADC
syn keyword avrRegisterPart     REFS1 REFS0 ADLAR BIN
syn keyword avrRegisterPart     ADEN ADSC ADATE ADIF ADIE ADPS2 ADPS1 ADPS0 
syn keyword avrRegisterPart     ADTS2 ADTS1 ADTS0  

" TWI				
syn keyword avrRegisterPart     TWGCE TWPS1 TWPS0 SPIF WCOL SPI2X WCOL0 CPHA0
syn keyword avrRegisterPart     SPIE SPE DORD MSTR CPOL CPHA SPR1 SPR0 CPOL0
syn keyword avrRegisterPart     TWSTO TWWC TWEN TWIE SPIE0 SPE0 DORD0 MSTR0
syn keyword avrRegisterPart     TWINT TWEA TWSTA TWSTO TWWC TWEN TWIE SPR00 SPR01


" TimerCounter
syn keyword avrRegisterPart     OCIE2 OCIE3C FOC1C
syn keyword avrRegisterPart     TOIE2 TICIE1 OCIE1A OCIE1B TOIE1 OCIE0 TOIE0 OCF2
syn keyword avrRegisterPart     TOV2 ICF1 OCF1A OCF1B TOV1 OCF0 TOV0 TICIE3 TOIE3
syn keyword avrRegisterPart     FOC0 COM01 COM00 CS02 CS01 CS00 PSR10 PSR0 PSR1
syn keyword avrRegisterPart     COM1A0 COM1B1 COM1B0 FOC1A FOC1B WGM11 WGM10 COM1A1
syn keyword avrRegisterPart     ICNC1 ICES1 WGM13 WGM12 CS12 CS11 CS10 CS13 OCIE3A
syn keyword avrRegisterPart     FOC2 WGM20 COM21 COM20 WGM21 CS22 CS21 CS20 OCIE3B
syn keyword avrRegisterPart     AS2 TCN2UB OCR2UB TCR2UB PSR2 FOC2A FOC2B WGM22 ICF3
syn keyword avrRegisterPart     TWINT TWEA TWSTA SPMIE RWWSB PWM1A PWM1B CTC1 TOV3
syn keyword avrRegisterPart     ICIE1 OCIE0A OCIE0B OCF0A OCF0B RFLB FOC0B WGM02 
syn keyword avrRegisterPart     WGM01 WGM00 COM0A1 COM0A0 COM0B0 COM0B1 PCIE0 PCIE
syn keyword avrRegisterPart     CLKPCE FOC0A OCIE2B OCIE2A PCIE2 PCIE1 FOC3A FOC3B FOC3C
syn keyword avrRegisterPart     TCN2UB OCR2AUB OCR2BUB TCR2AUB TCR2BUB OCF2B OCF2A
syn keyword avrRegisterPart	COM2A1 COM2A0 COM2B1 COM2B0 COM3A1 COM3A0 COM3B1 COM3B0
syn keyword avrRegisterPart	WGM31 WGM30 WGM32 WGM33 ICNC3 ICES3 CS32 CS31 CS30
syn keyword avrRegisterPart	OCF3A OCF3B COM3C0 COM3C1 OCF3C OCF1C OCF2C OCIE1C

" other
syn keyword avrRegisterPart     SM2 SE SM1 SM0 PCKE PLLE PLOCK SM AINBG
syn keyword avrRegisterPart     JTD ISC2 JTRF WDRF BORF EXTRF PORF PRR
syn keyword avrRegisterPart     ADTS2 ADTS1 ADTS0 ADHSM ACME PUD CTPB SRL2 SRL1 SRL0
syn keyword avrRegisterPart     WDTOE WDE WDP2 WDP1 WDP0 UCSZ1 UCSZ0 UCPOL RSIG 
syn keyword avrRegisterPart     PCIF RFLB WDIF WDIE WDP3 RWWSRE BLBSET PGWRT PGERS SPMEN 
syn keyword avrRegisterPart     WDCE USISF USIOIF USIPF USIDC JRTF USISIF 
syn keyword avrRegisterPart     USICNT3 USICNT2 USICNT1 USICNT0 USISIE USIOIE USIWM1
syn keyword avrRegisterPart     USIWM0 USICS1 USICS0 USICLK USITC AIN1D AIN0D PRUSI
syn keyword avrRegisterPart     TWS3 TWPS1 TWPS0 EXCLK AS2 TWBR TWSR TWGCEADFR
syn keyword avrRegisterPart     PRTWI PRTIM2 PRTIM0 PRTIM1 PRSPI PRUSART0 SIGRD
syn keyword avrRegisterPart     PRADC WDIF WDIE WDP3 WDCE WDE WDP2 WDP1 WDP0 SELFPRGEN
syn keyword avrRegisterPart     IVSEL IVCE TSM PSRASY PSRSYNC JDT BODS BODSE PCIF3
syn keyword avrRegisterPart     PCIF2 PCIF1 PCIF0 RAMPZ0
syn keyword avrRegisterPart     SRW00 SRW01 SRW11 ICS2 XMBK XMM2 XMM1 XMM0 XDIVEN



" OpCodes...
syn keyword avrOpcode  		ADD ADC ADIW SUB SUBI SBC SBCI SBIW AND ANDI OR ORI EOR
syn keyword avrOpcode  		COM NEG SBR CBR INC DEC TST CLR SER MUL MULS MULSU FMUL
syn keyword avrOpcode  		FMULS FMULSU RJMP IJMP EJMP JMP RCALL ICALL EICALL CALL
syn keyword avrOpcode  		RET RETI CPSE CP CPC CPI SBRC SBRS SBIC SBIS BRBS BRBC
syn keyword avrOpcode  		BREQ BRNE BRCS BRCC BRSH BRLO BRMI BRPL BRGE BRLT BRHS
syn keyword avrOpcode  		BRHC BRTS BRTC BRVS BRVC BRIE BRID SBI CBI LSL LSR ROL 
syn keyword avrOpcode  		ROR ASR SWAP BSET BCLR BST BLD SEC CLC SEN CLN SEZ CLZ 
syn keyword avrOpcode  		SEI CLI SES CLS SEV CLV SET CLT SEH CLH MOV MOVW LDI LD 
syn keyword avrOpcode  		LDD LDS ST STD STS LPM ELPM SPM IN OUT PUSH POP 
syn keyword avrOpcode  		NOP SLEEP WDR BREAK


syn case match

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_avr_syntax_inits")
  if version < 508
    let did_avr_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink avrTodo		Todo
  HiLink avrComment		Comment
  HiLink avrDirective		PreProc
  HiLink avrLabel		Label
  HiLink avrString		String
  HiLink avrOpcode		Statement
  HiLink avrRegister		StorageClass
  HiLink avrRegisterPart	Special
  HiLink hexNumber		Number
  HiLink decNumber		Number
  HiLink octNumber		Number
  HiLink binNumber		Number
  HiLink avrIdentifier		Identifier

  delcommand HiLink
endif

let b:current_syntax = "avr8bit"

" vim: ts=8
