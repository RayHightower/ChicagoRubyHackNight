# x = 5
# puts x
# 
# y = {j: 4, k: "mashed potatoes"}
# puts y[:j]
# puts y[:k]


# def cook(food, *recipients, options, lastone)
#   # puts food
#   # puts options
#   puts recipients
#   puts lastone[:verbose]
#   
# end
# 
# cook('apples','spinach','califlower','oranges','tomatoes','ice cream', 'stuff', verbose: true)
# 
# e = [1,2,3].each
# puts e


MyFirstFiber = Fiber.new do
  thing1 = thing2 = 1
  loop do
    Fiber.yield thing1
    thing1, thing2 = thing2, thing1+thing2
  end
end

20.times { print MyFirstFiber.resume, ' ' }


ChicagoRuby = Fiber.new do
  invoicenumber = 1987
  loop do
    Fiber.yield invoicenumber
    invoicenumber = invoicenumber + 1
  end
end

10.times {print "\n", ChicagoRuby.resume }


def get_invoice_number
  print "\n", ChicagoRuby.resume
end

get_invoice_number



print "\n"
print "\n"

def run_it(&blockhead)
 names = ["sneezy", "dopey", "sleepy", "happy"]

 names.each do |name|
   blockhead.call(name)
 end
end

#old version
test = lambda do |x|
 puts "hello #{x}"
end

#new version
testnew = ->(x) do
 puts "hello from #{x}"
end

run_it(&testnew)





