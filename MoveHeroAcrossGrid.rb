# Description:

# Create the hero move method

# Create a move method for your hero to move through the level.

# Adjust the hero's position by changing the position attribute. 
# The level is a grid with the following values.

# 00	01	02	03	04
# 10	11	12	13	14
# 20	21	22	23	24
# 30	31	32	33	34
# 40	41	42	43	44
# The dir argument will be a string

# up
# down
# left
# right
# If the position is not inside the level grid the method should throw an error and not move the hero


# class Hero # re-opening class from "Terminal Game #1 kata"
  
  
  def move(dir)
 
    position = self.position.to_i
    
    if dir == "up"
      position-=10
    elsif dir == "right"
      position +=1
    elsif dir == "down"
      position +=10
    else
      position -=1
    end
    
    raise Exception("There be dragons!") unless position.between?(0, 44) && position % 10 <= 4
    self.position = "%.2d" % position.to_s
   end

end