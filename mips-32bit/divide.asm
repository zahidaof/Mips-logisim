.data
#macro for division
.macro divide(%N, %D, %Q, %R)

	andi %Q, %Q, 0
	andi %R, %R, 0
	li $a1, 0x80
	li $k0, 1
notzero:
	sub %N, %N, %D
	addi %Q, %Q, 1
	andi $a0, %N, 0x80
	bne $a0, $a1, notzero
	nop            
	nop            
	add %R, %N, %D
	sub %Q, %Q, $k0

	
.end_macro
.text
#take inputs
#example use in editor un comment these three lines
#li $fp, 10
#li $sp, 3
#li $v0, 0

li $t3, 0
or $t3, $t3, $fp#big
li $t4, 0
or $t4, $t4, $sp#small
li $t5, 0

#show input on screen

#division for the three screens binary to bcd
li $s2, 10
divide($t3, $s2, $s3, $s4)#bigR
or $t2, $s4, $t2
divide($s3, $s2, $s5, $s6)#bigL
or $t1, $s6, $t1


divide($t4, $s2, $s7, $k1)#small
or $t0, $k1, $t0
nop
nop
j input_show #jump to 7segment for the inputs
nop
nop
input_still:
nop
nop
bne $v0, $v1, input_still #check button state
nop
nop

#every register becomes zero except of the inputs

li $1,0
li $2,0
li $3,0
li $4,0
li $5,0
li $6,0
li $7,0
li $8,0
li $9,0
li $10,0
li $11,0
li $12,0
li $13,0
li $14,0
li $15,0
li $16,0
li $17,0
li $18,0
li $19,0
li $20,0
li $21,0
li $22,0
li $23,0
li $24,0
li $25,0
li $26,0
li $27,0
li $28,0
li $31,0

#continue the normal code
li $t3, 0
or $t3, $t3, $fp#big
li $t4, 0
or $t4, $t4, $sp#small
li $t5, 0

divide($t3,$t4,$s1,$t5) #divide inputs



#division for the three screens binary to bcd
li $s2, 10
divide($s1, $s2, $s3, $s4)#q1
or $t2, $s4, $t2
divide($s3, $s2, $s5, $s6)#q2
or $t1, $s6, $t1


divide($t5, $s2, $s7, $k1)#R
or $t0, $k1, $t0



 #comapre t0 and store at a3
zero:			#if not zero it will skip to the next number
#intialize the 0-9 for the bne compare
li $t3, 0
bne $t0, $t3, one   #if zero it will store the 7segement binary to $a3 reg
nop  			#nop to deal with the delay this will prevent errors
nop
ori $a3, $a3, 0x3F         
j second		#after the first regester got the number it will go immidiatley for the second screen
nop  
nop

one:
li $t3, 1
bne $t0, $t3, two
nop  
nop
ori $a3, $a3, 0x06         
j second
nop  
nop


two:
li $t3, 2
bne $t0, $t3, three
nop  
nop
ori $a3, $a3, 0x5b        
j second
nop  
nop
 

three:
li $t3, 3   
bne $t0, $t3, four
nop  
nop
ori $a3, $a3, 0x4f       
j second
nop  
nop


four:
li $t3, 4
bne $t0, $t3, five
nop  
nop
ori $a3, $a3, 0x66        
j second
nop  
nop


five:
li $t3, 5
bne $t0, $t3, six
nop  
nop
ori $a3, $a3, 0x6d         
j second
nop  
nop


six:
li $t3, 6 
bne $t0, $t3, seven
nop  
nop
ori $a3, $a3, 0x7d    
j second
nop  
nop

seven:
li $t3, 7  

bne $t0, $t3, eight
nop  
nop
ori $a3, $a3, 0x07        
j second
nop  
nop


eight:
li $t3, 8  
bne $t0, $t3, nine
nop  
nop
ori $a3, $a3, 0x7f         
j second
nop  
nop


nine:
li $t3, 9
bne $t0, $t3, zero
nop  
nop
ori $a3, $a3, 0x67         
j second
nop  
nop     
 #comapre t1 and store at a2
second:

zero2:
li $t3, 0
bne $t1, $t3, one2
nop  
nop
ori $a2, $a2, 0x3F         
j third
nop  
nop

one2:
li $t3, 1
bne $t1, $t3, two2
nop  
nop
ori $a2, $a2, 0x06         
j third
nop  
nop

two2:
li $t3, 2
bne $t1, $t3, three2
nop  
nop
ori $a2, $a2, 0x5b        
j third
nop  
nop    

three2:
li $t3, 3
bne $t1, $t3, four2
nop  
nop
ori $a2, $a2, 0x4f       
j third
nop  
nop     

four2:
li $t3, 4
bne $t1, $t3, five2
nop  
nop
ori $a2, $a2, 0x66        
j third
nop  
nop     

five2:
li $t3, 5
bne $t1, $t3, six2
nop  
nop
ori $a2, $a2, 0x6d         
j third
nop  
nop    

six2:
li $t3, 6
bne $t1, $t3, seven2
nop  
nop
ori $a2, $a2, 0x7d    
j third
nop  
nop     

seven2:
li $t3, 7
bne $t1, $t3, eight2
nop  
nop
ori $a2, $a2, 0x07        
j third
nop  
nop     

eight2:
li $t3, 8
bne $t1, $t3, nine2
nop  
nop
ori $a2, $a2, 0x7f         
j third
nop  
nop    

nine2:
li $t3, 9
bne $t1, $t3, zero2
nop  
nop
ori $a2, $a2, 0x67         
j third
nop  
nop     
 #comapre t2 and store at ra
third:
   
zero3:
li $t3, 0  
bne $t2, $t3, one3
nop  
nop
ori $ra, $ra, 0x3F         
j end
nop  
nop

one3:
li $t3, 1
bne $t2, $t3, two3
nop  
nop
ori $ra, $ra, 0x06         
j end
nop  
nop

two3:
li $t3, 2
bne $t2, $t3, three3
nop  
nop
ori $ra, $ra, 0x5b        
j end
nop  
nop     

three3:
li $t3, 3
bne $t2, $t3, four3
nop  
nop
ori $ra, $ra, 0x4f       
j end
nop  
nop     

four3:
li $t3, 4
bne $t2, $t3, five3
nop  
nop
ori $ra, $ra, 0x66        
j end
nop  
nop    

five3:
li $t3, 5
bne $t2, $t3, six3
nop  
nop
ori $ra, $ra, 0x6d         
j end
nop  
nop    

six3:
li $t3, 6
bne $t2, $t3, seven3
nop  
nop
ori $ra, $ra, 0x7d    
j end
nop  
nop     

seven3:
li $t3, 7
bne $t2, $t3, eight3
nop  
nop
ori $ra, $ra, 0x07        
j end
nop  
nop     

eight3:
li $t3, 8
bne $t2, $t3, nine3
nop  
nop
ori $ra, $ra, 0x7f         
j end
nop  
nop    

nine3:
li $t3, 9
bne $t2, $t3, zero3
nop  
nop
ori $ra, $ra, 0x67         
j end
nop  
nop     


#======================================================================================================================================================
#the same thing but it will be triggerd by the button
#======================================================================================================================================================
input_show:
 #comapre t0 and store at a3
izero:			#if not zero it will skip to the next number
#intialize the 0-9 for the bne compare
li $t3, 0
bne $t0, $t3, ione   #if zero it will store the 7segement binary to $a3 reg
nop  			#nop to deal with the delay this will prevent errors
nop
ori $a3, $a3, 0x3F         
j isecond		#after the first regester got the number it will go immidiatley for the second screen
nop  
nop

ione:
li $t3, 1
bne $t0, $t3, itwo
nop  
nop
ori $a3, $a3, 0x06         
j isecond
nop  
nop


itwo:
li $t3, 2
bne $t0, $t3, ithree
nop  
nop
ori $a3, $a3, 0x5b        
j isecond
nop  
nop
 

ithree:
li $t3, 3   
bne $t0, $t3, ifour
nop  
nop
ori $a3, $a3, 0x4f       
j isecond
nop  
nop


ifour:
li $t3, 4
bne $t0, $t3, ifive
nop  
nop
ori $a3, $a3, 0x66        
j isecond
nop  
nop


ifive:
li $t3, 5
bne $t0, $t3, isix
nop  
nop
ori $a3, $a3, 0x6d         
j isecond
nop  
nop


isix:
li $t3, 6 
bne $t0, $t3, iseven
nop  
nop
ori $a3, $a3, 0x7d    
j isecond
nop  
nop

iseven:
li $t3, 7  

bne $t0, $t3, ieight
nop  
nop
ori $a3, $a3, 0x07        
j isecond
nop  
nop


ieight:
li $t3, 8  
bne $t0, $t3, inine
nop  
nop
ori $a3, $a3, 0x7f         
j isecond
nop  
nop


inine:
li $t3, 9
bne $t0, $t3, izero
nop  
nop
ori $a3, $a3, 0x67         
j isecond
nop  
nop     
 #comapre t1 and store at a2
isecond:

izero2:
li $t3, 0
bne $t1, $t3, ione2
nop  
nop
ori $a2, $a2, 0x3F         
j ithird
nop  
nop

ione2:
li $t3, 1
bne $t1, $t3, itwo2
nop  
nop
ori $a2, $a2, 0x06         
j ithird
nop  
nop

itwo2:
li $t3, 2
bne $t1, $t3, ithree2
nop  
nop
ori $a2, $a2, 0x5b        
j ithird
nop  
nop    

ithree2:
li $t3, 3
bne $t1, $t3, ifour2
nop  
nop
ori $a2, $a2, 0x4f       
j ithird
nop  
nop     

ifour2:
li $t3, 4
bne $t1, $t3, ifive2
nop  
nop
ori $a2, $a2, 0x66        
j ithird
nop  
nop     

ifive2:
li $t3, 5
bne $t1, $t3, isix2
nop  
nop
ori $a2, $a2, 0x6d         
j ithird
nop  
nop    

isix2:
li $t3, 6
bne $t1, $t3, iseven2
nop  
nop
ori $a2, $a2, 0x7d    
j ithird
nop  
nop     

iseven2:
li $t3, 7
bne $t1, $t3, ieight2
nop  
nop
ori $a2, $a2, 0x07        
j ithird
nop  
nop     

ieight2:
li $t3, 8
bne $t1, $t3, inine2
nop  
nop
ori $a2, $a2, 0x7f         
j ithird
nop  
nop    

inine2:
li $t3, 9
bne $t1, $t3, izero2
nop  
nop
ori $a2, $a2, 0x67         
j ithird
nop  
nop     
 #comapre t2 and store at ra
ithird:
   
izero3:
li $t3, 0  
bne $t2, $t3, ione3
nop  
nop
ori $ra, $ra, 0x3F         
j input_still
nop  
nop

ione3:
li $t3, 1
bne $t2, $t3, itwo3
nop  
nop
ori $ra, $ra, 0x06         
j input_still
nop  
nop

itwo3:
li $t3, 2
bne $t2, $t3, ithree3
nop  
nop
ori $ra, $ra, 0x5b        
j input_still
nop  
nop     

ithree3:
li $t3, 3
bne $t2, $t3, ifour3
nop  
nop
ori $ra, $ra, 0x4f       
j input_still
nop  
nop     

ifour3:
li $t3, 4
bne $t2, $t3, ifive3
nop  
nop
ori $ra, $ra, 0x66        
j input_still
nop  
nop    

ifive3:
li $t3, 5
bne $t2, $t3, isix3
nop  
nop
ori $ra, $ra, 0x6d         
j input_still
nop  
nop    

isix3:
li $t3, 6
bne $t2, $t3, iseven3
nop  
nop
ori $ra, $ra, 0x7d    
j input_still
nop  
nop     

iseven3:
li $t3, 7
bne $t2, $t3, ieight3
nop  
nop
ori $ra, $ra, 0x07        
j input_still
nop  
nop     

ieight3:
li $t3, 8
bne $t2, $t3, inine3
nop  
nop
ori $ra, $ra, 0x7f         
j input_still
nop  
nop    

inine3:
li $t3, 9
bne $t2, $t3, izero3
nop  
nop
ori $ra, $ra, 0x67         
j input_still

end:
