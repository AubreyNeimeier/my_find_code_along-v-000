require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    yield(collection[i])
    #when the yield(1) is hit, it sends the 1 to the block, evaluates it, 
    # and then sends the return value back to yeild. In this case, the block is sending
    #true or false based on the element and the comparative/boolean evaluation statement 
    #in the block. see ex block below
    
    i += 1
  end

end


#example block
# my_find(collection) { |1| 1 % 3 ==0 and 1 % 5 ==0}
#=> evaluates to false