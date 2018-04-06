

def factor?(number, possible_factor)
    return number % possible_factor == 0
end

def factors(number)
    array_of_factors = []
    for n in 1..number
     if factor?(number, n)  
         array_of_factors << n
     end
   end
     return array_of_factors    
end
#taditional tests.
print factor?(12, 4), "\n" #true
print factor?(12, 7), "\n" #false
print factors(12), "\n"
print factors(17), "\n"