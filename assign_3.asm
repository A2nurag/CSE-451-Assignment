.data
	str1 : .asciiz "Enter num1 : "
	str2 : .asciiz "Enter num2 : "
	str3 : .asciiz "Sum : "
	
.text
.globl main

main :
	#print str1
	li $v0, 4
	la $a0, str1
	syscall
	
	#input(num1)
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	#print str2
	li $v0, 4
	la $a0, str2
	syscall
	
	#input(num2)
	li $v0, 5
	syscall
	
	move $t1, $v0
	
	j sum
	
sum :
	add $t3, $t1, $t0
	j print
	
	
print :
	#print str3
	li $v0, 4
	la $a0, str3
	syscall
	
	#print t3
	li $v0, 1
	move $a0, $t3
	syscall
	
	j exit
	
exit:
	li $v0, 10
	syscall