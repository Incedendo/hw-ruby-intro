# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.length() == 0
    return 0
  end
  
  @sum = 0
  arr.each do |val|
    @sum += val
  end
  return @sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length() == 0
    puts "empty array"
    return 0
  end

  if arr.length() == 1
    puts arr[0]
    return arr[0]
  end

  sorted = arr.sort
  @sum = 0

  last_idx = sorted.length()-1
  second_last_idx = last_idx-1
  @max1 = sorted[last_idx]
  @max2 = sorted[second_last_idx]

  #first loop to find max
  # sort.each do |val|
  #   if val == @max1
  #     @max2 = val
  #     next
  #   end
    
  #   if val > @max1
  #     if @max1 > @max2
  #       @max2 = @max1
  #     end
  #     @max1 = val
  #   end
  # end

  return @max1 + @max2
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  # if arr.length() == 0
  #   return false
  # end

  @sum = 0
  
  # if arr.length() == 1
  #   @sum = arr[0] * 2
  #   return @sum == n
  # end
  
  if arr.length() < 2
    return false
  end

  @sum = 0
  @len = arr.length()

  for i in 0...@len do
    # puts "------------"
    for k in i+1...@len do
      if arr[i] + arr[k] == n 
        # puts "found at ",i,k
        return true
      end
      # puts i,k
    end
  end

  return false
end

# Part 2

def hello(name)
  if name.length() == 0
    puts "Name cannot be null"
    return
  end 
  
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  # if ( s =~ /^[^aeiou\W]/i )
  if ( s =~ /^[^aeiou\W]/i )
    return true
  end

  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length() == 0
    return false
  end
  
  @sum = 0
  @pow = s.length() - 1
  
  s.split('').each { |c|
    if c != "0" and c != "1"
      puts "illegal char #{c}"
      return false
    end    
  }

  num = s.to_i(base=2)
   
  puts num

  return num.modulo(4) == 0
end

# Part 3
class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError, "No ISBN present" if isbn.empty?
    raise ArgumentError, "ISBN has to be a String" unless isbn.is_a?(String)
    
    raise ArgumentError, "Price has to be a number" if price.is_a?(String)
    raise ArgumentError, "Price has to be greater than 0.0" if price <= 0
    
    @isbn = isbn
    @price = price
  end

  # Classical get method
  def isbn
    @isbn
  end

  def price
    @price
  end

  # Classical set method
  def isbn=(isbn)
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end

  def price_as_string()
    test = sprintf "%.2f", @price
    return "$" + test
  end
end

# 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