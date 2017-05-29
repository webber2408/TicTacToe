class Board
  attr_accessor  :size 
  def initialize(size)
  	@size = size
  	@a = Array.new(@size){ Array.new(@size) }
  end
  def issafe x,y
  	    if (x>@size || y>@size)
			puts "Invalid Entry"
			return false
		end
	    if(@a[x][y] != nil)
	    	return false
		else
			return true
		end
   end
  
 def make x,y,symbol
 	
		if (x>@size || y>@size)
			puts "Invalid Entry"
			return false
	    elsif (@a[x][y] == nil)
	    	@a[x][y]=symbol
	    elsif(@a[x][y] != nil)
	    	puts "occupied"
	    	return false
	    end
 end
  def makeboard 
  
      i=0
      while(i<@size)
      	  j=0
	      	while (j<@size)
	      		print "  |",@a[i][j],"|"
	      		j=j+1
	      	end
        	puts ""
        	i=i+1
        end  
  end

  def checkwin symbol
		  #case 1 horizontal 
		  #puts symbol
		  i=0
		  flag=0
		  while i<@size
		  	#puts i
		  	j=0
		  	if(@a[i][j]==symbol)
		  		#puts @a[i][j]
		  		while j<@size
		  			#puts "h"
		  			if(@a[i][j]==symbol)
		  				flag=1
		  			else
		  				flag=0
		  				j=j+1
		  				break
		  			end
		  			j=j+1
		  		end
		  	end
		  	i=i+1
		  end

		  if flag == 1
		     	return true
		     end


		  	#puts flag
         
         #case 2 vertical 
		  #puts symbol
		  i=0
		  flag=0
		  while i<@size
		  	#puts i
		  	j=0
		  	if(@a[j][i]==symbol)
		  		#puts @a[i][j]
		  		while j<@size
		  			#puts "h"
		  			if(@a[j][i]==symbol)
		  				flag=1
		  			else
		  				flag=0
		  				j=j+1
		  				break
		  			end
		  			j=j+1
		  		end
		  	end
		  	i=i+1
		  end
		 
		     if flag == 1
		     	return true
		     end

		     #case 3 diagonal starting from top left  
		  #puts symbol
		  i=0
		  j=0
		  flag=0
		  while i<@size && j<@size
		  		
		  			if(@a[j][i]==symbol)
		  				flag=1
		  			else
		  				flag=0
		  				break
		  			end		  		
		  	
		  	j=j+1
		  	i=i+1
		  end
		 
		     if flag == 1
		     	return true
		     end


           #case 3 diagonal starting from top right 
		  #puts symbol
		  i=0
		  j=@size-1
		  flag=0
		  while i<@size && j>0
		  		
		  			if(@a[j][i]==symbol)
		  				flag=1
		  			else
		  				flag=0
		  				break
		  			end		  		
		  	
		  	j=j-1
		  	i=i+1
		  end
		 
		     if flag == 1
		     	return true
		     end


   end

end

=begin
puts "Enter size of maze :"
size = gets.to_i
board1 = Board.new(size)
board1.makeboard
=end