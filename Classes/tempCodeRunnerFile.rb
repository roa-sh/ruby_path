
  def sum
    total = 0
    self.each { |e| total+=e if e.is_a?(Numeric) }
    total
  end
end