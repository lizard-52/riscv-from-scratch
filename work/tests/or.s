.text
.global main
 main:


  #-------------------------------------------------------------
  # Logical tests
  #-------------------------------------------------------------

  test_2:
 li x1, 0xff00ff00
 li x2, 0x0f0f0f0f
 or x30, x1, x2
 li x29, 0xff0fff0f
 li gp, 2
 bne x30, x29, fail


  test_3:
 li x1, 0x0ff00ff0
 li x2, 0xf0f0f0f0
 or x30, x1, x2
 li x29, 0xfff0fff0
 li gp, 3
 bne x30, x29, fail


  test_4:
 li x1, 0x00ff00ff
 li x2, 0x0f0f0f0f
 or x30, x1, x2
 li x29, 0x0fff0fff
 li gp, 4
 bne x30, x29, fail


  test_5:
 li x1, 0xf00ff00f
 li x2, 0xf0f0f0f0
 or x30, x1, x2
 li x29, 0xf0fff0ff
 li gp, 5
 bne x30, x29, fail



  #-------------------------------------------------------------
  # Source/Destination tests
  #-------------------------------------------------------------

  test_6:
 li x1, 0xff00ff00
 li x2, 0x0f0f0f0f
 or x1, x1, x2
 li x29, 0xff0fff0f
 li gp, 6
 bne x1, x29, fail


  test_7:
 li x1, 0xff00ff00
 li x2, 0x0f0f0f0f
 or x2, x1, x2
 li x29, 0xff0fff0f
 li gp, 7
 bne x2, x29, fail


  test_8:
 li x1, 0xff00ff00
 or x1, x1, x1
 li x29, 0xff00ff00
 li gp, 8
 bne x1, x29, fail



  bne x0, gp, pass
 fail: li a0, 0
 li a7, 93
 ecall

 pass: li a0, 42
 li a7, 93
 ecall

