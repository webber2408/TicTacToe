flag = 1
		  i=0
		  while i<@size
		  	j=0
		  	val=@a[i][j]
		  	#puts val
		  	puts i
		  	while j<@size
		  		puts j
		  		puts @a[i][j]

		         if(val == @a[i][j])
		         	flag = 1
		         else
		         	flag  = 0
		         	#puts v
		             next
		         end
		         j=j+1
		    end
		    i=i+1
		  end


		  #case 2 vertical 
		  flag = 0
		  j=0
		  while j<@size
		  	i=0
		  	val=@a[i][j]
		  	while i<@size

		         if(val == @a[i][j])
		         	flag  = 1
		         else
		         	flag = 0
		         	break
		         end
		         i=i+1
		    end
		    j=j+1
		  end
         
         #case 3 diagonal starting from top left corner  
		  flag = 0
		  i=0
		  j=0
		  val=@a[i][j]
		  while i<@size && j<@size
		         if(val == @a[i][j])
		         	flag  = 1
		         else
		         	flag = 0
		         	break
		         end
		         i=i+1
		         j=j+1
		  end

		  #case 3 diagonal starting from top right corner  
		  flag = 0
		  i=0
		  j=@size-1
		  val=@a[i][j]
		  while i<@size && j>=0
		         if(val == @a[i][j])
		         	flag  = 1
		         else
		         	flag = 0
		         	break
		         end
		         i=i+1
		         j=j-1
		  end
		   def check
   	#check start
 	   i=0
 	   while i<@size
 	   	j=0
 	   	while j<@size
 	   		@a[i][j]= "3"
 	   		#puts @a[i][j]
 	   		j=j+1
 	   	end
 	   	i=i+1
 	   end
#check end
end