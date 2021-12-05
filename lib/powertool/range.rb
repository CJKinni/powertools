module RangeExtensions
    def each
        return super if self.first <= self.last
        
        position = self.first
        while position >= self.last
            yield(position)
            position = position.pred
        end
    end
    
    def each(warn_on_order_error: true)
        return super() if self.first <= self.last
        
        position = self.first
        prev_position = nil
        while position >= self.last
            # We always attempt pred before yielding.
            prev_position = position.clone
            begin
                position = position.pred
            rescue NoMethodError
                if warn_on_order_error
                    raise ArgumentError.new "#{self.first.class}s do not support backwards iteration."
                else
                    return super()
                end
            end

            yield(prev_position)
        end
    end

    def sort
        begin
            return self if self.first <= self.last
        rescue NoMethodError
            raise "#{self.first.class}s cannot be sorted"
        end

        (self.last..self.first)
    end
end

class Range
    prepend RangeExtensions
end