class Set
    def pop
      temp = self.to_a.pop
      self.delete(temp)
      temp
    end
end