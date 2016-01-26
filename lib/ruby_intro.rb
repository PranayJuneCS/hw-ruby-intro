# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  x = 0
  arr.each {
    |a| x += a
  }
  return x
end

def max_2_sum arr
  # YOUR CODE HERE
  x = 0
  if arr.size == 1 
    x = arr[0]
  elsif arr.size > 1
    x += arr.max
    maxIndex = arr.find_index(x)
    arr.delete_at(maxIndex)
    x += arr.max
  end
  return x
end

def sum_to_n? arr, n
  if arr.size < 2
    return false
  else
    diff = n - arr.shift
    for i in arr
      if diff - i == 0
        return true
      end
    end
    return sum_to_n? arr, n
  end
end


# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  s = s.downcase
  return s.length > 0 && s[0].match(/[a-z]/) && !s.start_with?("a", "e", "i", "o", "u")
end

def binary_multiple_of_4? s
  if s.match(/^[01]+$/)
    if s.length == 1
      return s.end_with?("0")
    else
      return s.end_with?("00")
    end
  end
  return false
end

# Part 3

class BookInStock
  
  attr_writer :price, :isbn
  attr_reader :price, :isbn
  
  def initialize(isbn, price)
    if (isbn.length < 1 or price <= 0)
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    x = @price.to_s
    if (x.match(/\./))
      if x[-1] == "."
        x = x + "00"
      elsif x[-2] == "."
        x = x + "0"
      end
    else
      x = x + ".00"
    end
    return "$" + x
  end
    
end
