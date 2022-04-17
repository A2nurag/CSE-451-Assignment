.data 
	array: .space 20
	str1: .asciiz "Enter 5 numbers :\n"
	str2: .asciiz "Sum : "

.text 
.globl main
    
main:
	#print str1
	li $v0, 4
	la $a0, str1
	syscall
	
	j input
	
input:
	beq $t0, 20, sum_start
		
	#input(num)
	li $v0, 5
	syscall
	move $t1, $v0
			
	#array[i] = input
	sw $t1, array($t0)
		
	#increment
	addi  $t0, $t0, 4
	
	j input
	
sum_start:
	#set loop variable to 0
	la $t0, 0
	j sum	

sum:
	beq $t0, 20, print
	
	# t1 = arr[t0]
	lw $t1, array($t0)
		
	add $t2, $t2, $t1
			
	#increment
	add  $t0, $t0, 4
	
	j sum
			
print:
	li $v0, 4
	la $a0, str2
	syscall
	
	li $v0, 1
	move $a0, $t2
	syscall
	
	j exit
	
exit:
	li $v0, 10
	syscall
