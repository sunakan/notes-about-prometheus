class Integer
  def prime?
    return true  if self == 2
    return false if self < 2
    return false if (self%2).zero?
    3.upto(self-1) do |num|
      return false if (self%num).zero?
    end
    true
  end
end

# 大体20秒
num = (ARGV[0]||50000).to_i
count = 1

3.upto(num-1) do |c|
  count += 1 if c.prime?
end

puts count
