# frozen_string_literal: true

# Extensions to Ruby's Set class
class Set
  def pop
    temp = to_a.pop
    delete(temp)
    temp
  end
end
