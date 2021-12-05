# frozen_string_literal: true

# Extensions to Ruby's Range class
module RangeExtensions
  def each(warn_on_order_error: true)
    return super() if first <= last || first.class != last.class

    position = first
    while position >= last
      # We always attempt pred before yielding.
      prev_position = position.clone
      begin
        position = position.pred
      rescue NoMethodError
        raise ArgumentError, "#{first.class}s do not support backwards iteration." if warn_on_order_error

        return super()
      end

      yield(prev_position)
    end
  end

  def sort
    begin
      return self if first <= last
    rescue NoMethodError
      raise "#{first.class}s cannot be sorted"
    end

    (last..first)
  end
end

# Ruby's Range class
class Range
  prepend RangeExtensions
end
