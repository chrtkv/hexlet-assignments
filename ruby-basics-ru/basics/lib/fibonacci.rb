# frozen_string_literal: true

# BEGIN
def fibonacci(num)
  return 0 if num.zero?

  first = 0
  second = 1
  result = first + second

  2.upto(num) do
    result = first + second
    first = second
    second = result
  end

  result
end

# def fibonacci(num)
#   return nil if num.negative?
#   return 0 if num.zero?
#   return 1 if num == 1

#   fibonacci(num - 1) + fibonacci(num - 2)
# end

# END
