test = "Y"
i = 4
z =[]
def translate(test, i)
     z = (test.ord+i-26).chr
     
    puts z
end

translate(test, i)
