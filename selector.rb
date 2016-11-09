class Selector

  def initialize(hash)
    @hash = hash
    @hash = {
      1 => 2,
      2 => 4,
      3 => 5,
      4 => 8
    }
  end

  def value_from_hash(key)
    for keys, value in @hash do
      return  value if keys == key
    end
  end
end