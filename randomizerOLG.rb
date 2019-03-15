def numbers()
  range = (1..48).to_a
  range.shuffle!
  range = range.take(7)
  range.sort!
end

choice = numbers()
win = numbers()
count = 0

while choice != win do
  win = numbers()
  count += 1
  puts count
end

print win
print choice