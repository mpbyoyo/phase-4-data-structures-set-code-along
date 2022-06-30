class MySet
  def initialize(enumerable = [])
    @hash = {}
    enumerable.each {|v| @hash[v] = true}
  end

  def self.[](*args)
    new(args)
  end

  def include?(v)
    @hash[v] != nil
    # @hash.has_key?(v)
  end

  def add(v)
    @hash[v] = true
    self
  end

  def delete(v)
    @hash.delete v
    self
  end

  def size
    @hash.size
  end

  def clear
    @hash = {}
    self
  end

  def each
    size.times {|v| v}
    self
  end

  def inspect
    @hash.keys
  end
end