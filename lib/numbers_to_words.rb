class Fixnum
    define_method(:to_words) do
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
     teens_hash = {
       1 => 'eleven',
       2 => 'twelve',
       3 => 'thirteen',
       4 => 'fourteen',
       5 => 'fifteen',
       6 => 'sixteen',
       7 => 'seventeen',
       8 => 'eighteen',
       9 => 'nineteen'
     }
     numbers_array = self.to_s.split('')
     count = 0
     first_word = ''
     second_word = ''
     third_word = ''
     fourth_word = ''
     fifth_word = ''
     sixth_word = ''
     seventh_word = ''
     words = ''
     if numbers_array.length > 4 && numbers_array[0].to_i == 1 && numbers_array[1].to_i != 0
       first_word = teens_hash[numbers_array[1].to_i]
       second_word = "thousand"
       third_word = ones_hash[numbers_array[2].to_i]
       if numbers_array[2].to_i != 0
         fourth_word = "hundred"
       end
       fifth_word = tens_hash[numbers_array[3].to_i]
       sixth_word = ones_hash[numbers_array[4].to_i]

     elsif numbers_array.length == 1
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
     elsif numbers_array.length == 4
       numbers_array.each do |num|
         count += 1
         if count == 1
           first_word = ones_hash[num.to_i]
           second_word = "thousand"
         elsif count == 2
           third_word = ones_hash[num.to_i]
           fourth_word = "hundred" unless num.to_i == 0
         elsif count == 3
           fifth_word = tens_hash[num.to_i]
         elsif count == 4
           sixth_word = ones_hash[num.to_i]
         end
       end
     else
       numbers_array.each do |num|
         count += 1
         if count == 1
           first_word = tens_hash[num.to_i]
         elsif count == 2
           second_word = ones_hash[num.to_i]
           if numbers_array.length == 5
             third_word = 'thousand'
           end
         elsif count == 3
           fourth_word = ones_hash[num.to_i]
           if num.to_i != 0
             fifth_word = 'hundred'
           end
         elsif count == 4
           sixth_word = tens_hash[num.to_i]

         elsif count == 5
            seventh_word = ones_hash[num.to_i]

         end
       end
     end
     #binding.pry
     if first_word != ''
       words.concat "#{first_word} "
     end
     if second_word != ''
       words.concat "#{second_word} "
     end
     if third_word != ''
       words.concat "#{third_word} "
     end
     if fourth_word != ''
       words.concat "#{fourth_word} "
     end
     if fifth_word != ''
       words.concat "#{fifth_word} "
     end
     if sixth_word != ''
       words.concat "#{sixth_word} "
     end
     if seventh_word != ''
       words.concat "#{seventh_word} "
     end
    #words = "#{first_word}" + " " + "#{second_word}" + " " + "#{third_word}" + " " + "#{fourth_word}"  + " " + "#{fifth_word}"  + " " + "#{sixth_word}"
    words.gsub!(/\s+/, ' ').rstrip
    end
end

def hundreds(numbers_array)

end
