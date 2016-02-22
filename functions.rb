def name_retrieve(stock, position)
  for product in stock
    if position == product[:position]
      return product[:name]
    end
  end
end

def bay_retrieve(stock, name)
  for product in stock
    if name == product[:name]
      return product[:position]
    end
  end
end

def multi_bay(stock,positions)
  new_bay = []
    for product in stock
      if positions.include?(product[:position])
       new_bay << product[:name]
      end
    end
    return new_bay.reverse
end

def multi_names(stock,names)
  result= []
  for product in stock
    if names.include?(product[:name])
      result<<product[:position]
    end
  end
  return result.reverse
end

# def two_appart(stock, items)
  
# end
 

 # def test_bay_gap
 #   names =["nail filer","tooth paste","cookie jar"]
 #   result = bay_gap(@stock, names)
 #   assert_equal(5,result)
 # end
 

