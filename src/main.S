.syntax unified
.global main

.type main, %function
main:
  nop
  movs r2, #3
  movs r3, #1
  subs r1, r2, r3
  hops:
  .ascii "HOPS"

  @ load "COPE" into r1
  ldr r2, hops
  add r2, r1, 5
  ror r3, r2, 24
  add r3, 14
  ror r3, r3, 8

loop:
  nop
  b loop
  b main
.size main, .-main