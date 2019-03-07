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

loop:
  nop
  b loop
  b main
.size main, .-main