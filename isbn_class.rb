def valid_isbn?(isbn)
    isbn = remove_spaces(isbn) # passes to remove_spaces function
    isbn = remove_dashes(isbn) # passes to remove_dashes function
    if valid_isbn_ten_length?(isbn) && valid_isbn_ten_check_sum?(isbn) # checks if length of isbn is 10 digits and is a valid isbn then returns true or false
        true
    elsif
        valid_isbn_thirteen_length?(isbn) && valid_isbn_thirteen_check_sum?(isbn) # checks if length of isbn is 13 digits and is a valid isbn then returns true or false
        true
    else
        false
    end
end

def valid_isbn_ten_length?(isbn)
    isbn.length == 10 # checks to see if isbn length is equal to 10
end

                    def valid_isbn_thirteen_length?(isbn)
                        isbn.length == 13 # checks to see if isbn length is equal to 13
                    end

def valid_isbn_ten_check_sum?(isbn)
    sum = 0 # sets value of sum to 0
    ten_digit_array = isbn.chars.map!(&:to_i) # splits the string into an array of individual characters as intigers
    ten_digit_array.each_with_index do |value, index| # iterates through the array setting the value and index position to a variable
        break if index == 9 # stops the do loop at position 9 of the array
        sum += (index + 1) * value # sets sum to the index position + 1 * the current value
    end
    check_sum = sum % 11 # sets the value of check_sum to sum modulo 11 
    if check_sum == 10 # it looking to see if the check_sum is equal to 10
        check_sum = "X" # if check_sum is equal to 10, set the value of check_sum to "X"
    end
    check_sum_string = check_sum.to_s # turns the check_sum into a string while seting it equal to check_sum_string
    if check_sum_string == isbn[-1].upcase # looks to see if check_sum_string is equal to isbn position -1 which has been changed to uppercase and returns true or false
        true
    else
        false
    end
end

                    def valid_isbn_thirteen_check_sum?(isbn)
                        sum = 0 # sets value of sum to 0
                        thirteen_digit_array = isbn.chars.map!(&:to_i) # splits the string into an array of individual characters as intigers
                        thirteen_digit_array.each_with_index do |value, index| # iterates through the array setting the value and index position to a variable
                            break if index == 12 # stops the do loop at position 12 of the array
                            if index % 2 == 0 # looks to see if the index modulo 2 is equal to 0
                                sum += value * 1 # sets sum equal to the sum plus the value times 1
                            else
                                sum += value * 3 # sets sum equal to the sum plus the value times 3
                            end
                        end
                        pre_check_sum = sum % 10 # sets pre_check_sum equal to sum modulo 10
                        check_sum = 10 - pre_check_sum # sets check_sum equal to ten minus pre_check_sum
                        end_check_sum = check_sum % 10
                        end_check_sum_string = end_check_sum.to_s
                            if end_check_sum_string == isbn[-1] # looks to see if check_sum is equal to position 12 of thirteen_digit_array and returns true or false
                                true
                            else
                                false
                            end
                    end

def remove_spaces(isbn)
    isbn = isbn.delete(" ") # delete spaces
end

def remove_dashes(isbn)
    isbn = isbn.delete("-") # delete dashes
end