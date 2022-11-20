# frozen_string_literal: true

# BEGIN
def fizz_buzz(start, stop)
  return if start > stop

  (start..stop).map do |i|
    result = i
    result = 'Fizz' if (i % 3).zero?
    result = 'Buzz' if (i % 5).zero?
    result = 'FizzBuzz' if (i % 15).zero?
    result
  end.join(' ')
end
# END
