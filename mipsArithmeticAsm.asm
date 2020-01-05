# Zhenia Steger
# MIPS Arithmetic
# Cal State San Marcos

	.data	# Data declaration section
	str: .asciiz "Please enter an integer\n"
	str1: .asciiz "\nYour number was:\n"
	str2: .asciiz "\nThe sum is :"
	str3: .asciiz "\nThe difference is :"
	str4: .asciiz "\nThe product is: "
	str5: .asciiz "\nThe quotient is: "
	str6: .asciiz "\nThe remainder is: "
	.text

main:		# Start of code section
	#Code below prints the string str.
	li $v0, 4
	la $a0, str
	syscall
	
	#Code below asks for a number from the user.
	li $v0, 5
	syscall
	
	#Code below stores that value into register s0.
	add $s0, $0, $v0
	#Code below repeats that number back to the user for accuracy.
	add $a0, $0, $v0
	li $v0, 1
	syscall
	
	#Code below asks for another number.
	li $v0, 4
	la $a0, str
	syscall
	
	li $v0, 5
	syscall
	
	#Code below stores that value into register s1.
	add $s1, $0, $v0
	#Code below repeats that number back to the user for accuracy.
	add $a0, $0, $v0
	li $v0, 1
	syscall
	
	#================================ADDITION
	#Code below adds the two numbers
	add $s3, $s0, $s1
	li $v0, 4
	la $a0, str2
	syscall
	
	add $a0, $0, $s3  #Prints the number.
	li $v0, 1
	syscall
	
	#================================SUBTRACTION
	#Code below subtracts the two numbers.
	sub $s4, $s0, $s1
	li $v0, 4
	la $a0, str3
	syscall
	
	add $a0, $0, $s4  #Prints the number.
	li $v0, 1
	syscall
	
	#================================PRODUCT
	#Code below multiplies the two numbers.
	mult $s0, $s1
	li $v0, 4
	la $a0, str4
	syscall
	mflo $a0
	li $v0, 1
	syscall
	
	#================================QUOTIENT
	#Code below gets the quotient and remainder of the two numbers.
	div $s0, $s1
	li $v0, 4
	la $a0, str5
	syscall
	mflo $a0
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, str6
	syscall
	mfhi $a0
	li $v0, 1
	syscall
	
	li $v0, 10
	syscall

# END OF PROGRAM