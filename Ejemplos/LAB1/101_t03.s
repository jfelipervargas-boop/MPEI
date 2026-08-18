_start:
    mov r1, #0                 // sum = 0
    ldr r2, =Data
    ldr r3, =_Data

    ldr r0, [r2], #4            // lee primer elemento, avanza r2
    add r1, r1, r0               // sumarlo
    mov r6, r0                   // min = primer elemento
    mov r7, r0                   // max = primer elemento

Loop:
    cmp r3, r2
    beq _stop                    // si ya no quedan elementos, termina antes de leer

    ldr r0, [r2], #4
    add r1, r1, r0
    cmp r0, r7
    movgt r7, r0
    cmp r0, r6
    movlt r6, r0
    cmp r3, r2
    bne Loop

_stop:
    b _stop
.data
.align
Data:
.word 4,5,-9,0,3,0,8,-7,12 	// The list of data
_Data: 						// End of list address
.end