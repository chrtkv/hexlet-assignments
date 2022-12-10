# frozen_string_literal: true

# BEGIN
def compare_versions(version1, version2)
  version1.split('.').zip(version2.split('.')).each do |v1, v2|
    return v1.to_i <=> v2.to_i if v1 != v2
  end
  0
end
# END
