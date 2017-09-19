require "minitest/autorun"
require_relative "isbn_class.rb"

class TestISBN < Minitest::Test

    def test_valid_ten_digit_isbn_returns_true
        assert_equal(true, valid_isbn?("0471958697"))
    end

                def test_valid_thirteen_digit_isbn_returns_true
                    assert_equal(true, valid_isbn?("9780470059029"))
                end

    def test_empty_string_returns_false
        assert_equal(false, valid_isbn?(""))
    end

    def test_valid_ten_isbn_with_spaces_returns_true
        assert_equal(true, valid_isbn?("0 471 95869 7"))
    end

                def test_valid_thirteen_isbn_with_spaces_returns_true
                    assert_equal(true, valid_isbn?("9 780 4700 5902 9"))
                end

    def test_valid_isbn_ten_with_dashes_returns_true
        assert_equal(true, valid_isbn?("0-471-95869-7"))
    end

                def test_valid_isbn_thirteen_with_dashes_returns_true
                    assert_equal(true, valid_isbn?("9-780-4700-5902-9"))
                end

    def test_valid_isbn_ten_with_dashes_and_spaces_returns_true
        assert_equal(true, valid_isbn?("0-471-958 69 7"))
    end

                def test_valid_isbn_thirteen_with_dashes_and_spaces_returns_true
                    assert_equal(true, valid_isbn?("9-780-4700 5902 9"))
                end

    def test_invalid_isbn_10_returns_false
        assert_equal(false, valid_isbn?("0471958699"))
    end

                def test_invalid_isbn_13_returns_false
                    assert_equal(false, valid_isbn?("9780470059028"))
                end

    def test_valid_isbn_10_returns_true
        assert_equal(true, valid_isbn?("2471958699"))
    end

    def test_valid_isbn_10_spaces_dashes_returns_true
        assert_equal(true, valid_isbn?("2-471-95 86 9-9"))
    end

    def test_valid_isbn_10_with_x_at_end_returns_true
        assert_equal(true, valid_isbn?("877195869x"))
    end

    def test_valid_isbn_10_with_X_at_end_returns_true
        assert_equal(true, valid_isbn?("877195869X"))
    end

    def test_valid_isbn_10_with_letter_returns_false
        assert_equal(false, valid_isbn?("877a95869X"))
    end

                def test_valid_isbn_13_with_letter_returns_false
                    assert_equal(false, valid_isbn?("97804d0059028"))
                end

end