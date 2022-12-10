# frozen_string_literal: true

# BEGIN
def build_query_string(params)
  params.sort.map do |key, value|
    "#{key}=#{value}"
  end.join('&')
end
# END
