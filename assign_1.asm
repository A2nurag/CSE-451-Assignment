.data
	str_1 : .asciiz "Enter type of value \n1. Integer \n2. Double \nEnter Choice: "
	str_2 : .asciiz "Enter Value: "
	str_3 : .asciiz "Result : "
	num2: .double 2.0
	num6 : .double 6.0
	num4 : .double 4.0
.text
.globl main
main:
	#print str1
	li $v0,4
	la $a0, str_1
	syscall

	#input t0 (choice)
	li $v0, 5   
    	syscall
    move $t0, $v0
    	
    	#branching
    	beq $t0, 1, integer
   	j double
    	
integer:
	#print str2
    	li $v0, 4
	la $a0, str_2
	syscall
	
	# input t2
	li $v0, 5   
    	syscall
    	move $t2, $v0
	
    	#the multiplication
    	li $t6, 2
    	li $t7, 6
    	li $t8, 4
    	
    	mul $t3, $t2, $t2
    	mul $t3, $t3, $t6
    	mul $t4, $t7, $t2
    	
    	add $t6, $t3, $t4
    	add $t6, $t6, $t8
    	
    	#printing
    	li $v0, 1
	move  $a0, $t6
	syscall
	
	j exit
    	
double :
	#print str2
    	li $v0, 4
	la $a0, str_2
	syscall
	
	#user input value
	li $v0,  7   
    	syscall
    	
    	#value in $f0
    	
    	#the multiplication
    	l.d $f6, num2
    	l.d $f8, num6
    	l.d $f10, num4
    	
    	mul.d $f2, $f0, $f0
    	mul.d $f2, $f2, $f6
    	mul.d $f4, $f8, $f0
    	add.d $f4, $f4, $f2
    	add.d $f4, $f4, $f10
    	
    	#printing
    	li $v0 , 3
	mov.d  $f12, $f4
	syscall 
	
	j exit
	
exit:
	li $v0, 10
	syscall
