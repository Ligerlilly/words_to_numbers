class Fixnum
    define_method(:to_w) do
    ones_hash = {
      1 => 'one',
      2 => 'two',
      3 => 'three',
      4 => 'four',
      5 => 'five',
      6 => 'six',
      7 => 'seven',
      8 => 'eight',
      9 => 'nine'
     }
     tens_hash = {
       1 => 'ten',
       2 => 'twenty',
       3 => 'thirty',
       4 => 'fourty',
       5 => 'fifty',
       6 => 'sixty',
       7 => 'seventy',
       8 => 'eighty',
       9 => 'ninety'
     }
     numbers_array = self.to_s.split('')
     count = 0
     first_word = ''
     second_word = ''
     third_word = ''
     fourth_word = ''
     if numbers_array.length == 1
       first_word = ones_hash[numbers_array[0].to_i]
     elsif numbers_array.length == 3
       numbers_array.each do |num|
         count += 1
         if count == 1
           first_word = ones_hash[num.to_i]
         elsif count == 2
           third_word = tens_hash[num.to_i]
         elsif count == 3
           fourth_word = ones_hash[num.to_i]
         end
       end
       second_word = "hundred"
     else
       numbers_array.each do |num|
         count += 1
         if count == 1
           first_word = tens_hash[num.to_i]
         elsif count == 2
           second_word = ones_hash[num.to_i]
         end
       end
     end
    words = "#{first_word}" + " " + "#{second_word}" + " " + "#{third_word}"  + " " + "#{fourth_word}"
    words.rstrip
    end
end
