class Test < Flower::Job

  every '1m' do |flower|
    puts "HELLO 1m"
    flower.say "hello test every 1 minute"
  end
  
end
