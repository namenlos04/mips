addi $t1, $0, 0x10010000
addi $t2, $0, 2
addi $t3, $0, 4
mult $t3, $t2
sw $t4, ($t1)
lw $t2, ($t1)
