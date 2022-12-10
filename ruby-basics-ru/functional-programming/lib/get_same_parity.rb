# frozen_string_literal: true

# BEGIN
def get_same_parity(coll)
  coll.filter { |item| item.even? == coll.first.even? }
end
# END
