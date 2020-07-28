def stringy(n)
  str = '1'

  until str.length == n
    if str[str.length - 1] == '1'
      str = str + '0'
    else 
      str = str + '1'
    end
  end

  return str
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'