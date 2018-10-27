.data
	fizz: .asciiz "Fizz"
	buzz: .asciiz "Buzz"
	newline: .asciiz "\n"
	three: .byte 0x03  #number 3
	five: .byte 0x05 #number 5
	
.text
	main:
		addi $sp, $sp, -12	#Grow the stack by 3 words
		sw $ra, 8($sp)	#Push the return address to the stack
		sw $s0, 4($sp)	#Save the value of $s0
		sw $s1, 0($sp)	#Save the value of $s1
		
		li $s0, 101 #s0 is a constant
		li $t1, 1 #t1 is the counter
		
		lb $t2, three
		lb $t4, five 
		
		#jal loop
				
	loop:		
		beq  $t1, $s0, exit #if counter == 101 we are done
		
		li $s1, 0 #flag (indicates whether "Fizz" or "Buzz" have been printed for current counter value)
		
		#j dividebythree
		
	dividebythree:
		div $t1, $t2 #Divide counter by 3
		mfhi $t3 #Store division remainder into $t3
		beq $t3, 0, print_fizz
	
	dividebyfive:
		div $t1, $t4 #Divide counter by 5
		mfhi $t5 #Store division remainder into $t5
		beq $t5, 0, print_buzz
		
	checkifnull:
		beq $s1, 0, print_num #if flag == 0 {print_num}
		
		#j addonetocounter
	
	addonetocounter:
		addi $t1, $t1, 1 #counter = counter + 1
		
		#Print a newline character
		la $a0, newline
		li $v0, 4
		syscall
		
		j loop  #Jump back to the top (execute for block for counter = counter + 1)
		
	print_fizz:
		li $s1, 1 #flag (if "Fizz" has been printed we do not print the number)
		la $a0, fizz
		li $v0, 4
		syscall
		
		j dividebyfive
	
	print_buzz:
		li $s1, 1 #flag (if "Buzz" has been printed we do not print the number)
		la $a0, buzz
		li $v0, 4
		syscall

		j checkifnull
		
	print_num:
		move $a0, $t1
		li $v0, 1
		syscall

		j addonetocounter
	
	exit:
		lw $s1, 0($sp)	#Restore the value of $s1
		lw $s0, 4($sp)	#Restore the value of $s0
		lw $ra, 8($sp)	#Pop the return address from the stack
		addi $sp, $sp, 12 #Shrink the stack by 3 words
		
		#Exit
		li $v0, 10
		syscall
	
