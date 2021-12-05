# frozen_string_literal: true

# A private helper for MaybeChain
class PowertoolMaybeChain
  def self.maybe_chain(caller, args)
    args.each_with_index do |a, _i|
      return nil if caller[a].nil? || ![Hash, Array, Range].include?(caller.class)

      caller = a.instance_of?(Range) ? a.map { |i| caller[i] } : caller[a]
    end
    caller
  end
end

# Ruby's Hash class
class Hash
  def maybe_chain(args = [])
    return nil unless self

    PowertoolMaybeChain.maybe_chain(self, args)
  end
end

# Ruby's Array class
class Array
  def maybe_chain(args = [])
    return nil unless self

    PowertoolMaybeChain.maybe_chain(self, args)
  end
end
