require "minitest/autorun"
require_relative "isbn.rb"

class TestISBN < Minitest::Test

	def test_valid_10_digit_isbn_returns_valid
		number = "0471958697"
		assert_equal("true", isbnlength(number))
	end

	def test_valid_13_digit_isbn_returns_valid
		number = "0471958697245"
		assert_equal("true", isbnlength(number))
	end

	def test_valid_10_digit_check_digit_returns_valid
		number = "0-13609181-4"
		assert_equal(true, isbnvalidator10(number))
	end

	def test_valid_10_digit_check_digit_returns_invalid
		number = "817525766-7"
		assert_equal(false, isbnvalidator10(number))
	end

	def test_valid_10_digit_check_digit_with_X_returns_valid
		number = "0-76458572-X"
		assert_equal(true, isbnvalidator10(number))
	end

	def test_valid_13_digit_check_digit_returns_valid
		number = "978-3-16-148410-0"
		assert_equal(true, isbnvalidator13(number))
	end

	def test_valid_13_digit_check_digit_returns_invalid
		number = "345-3-16-148410-0"
		assert_equal(false, isbnvalidator13(number))
	end

end