# frozen_string_literal: true

# BEGIN
def reverse(string)
  result = ''
  string.split '' do |char|
    result = "#{char}#{result}"
  end
  result
end
# END
