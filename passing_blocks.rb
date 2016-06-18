class Array
  def each_even(&was_a_block_now_a_proc)
    # We start with "true" because
    # arrays start with 0, which is even.
    is_even = true

    self.each do |object|
      if is_even
        was_a_block_now_a_proc.call(object)
      end
      # Toggle from even to odd, or odd to even.
      is_even = !is_even
    end
  end
end

fruits =['apple','bad apple', 'cherry', 'durain']
fruits.each_even do |fruit|
  puts "I love #{fruit} pies, don't you?"
end

[1,2,3,4,5].each_even do |odd|
  #Here every even index will be an odd number
  puts "#{odd} is an ODD number"
end

#=> I love apple pies, don't you?
#=> I love cherry pies, don't you?
#=> 1 is an ODD number
#=> 3 is an ODD number
#=> 5 is an ODD number
