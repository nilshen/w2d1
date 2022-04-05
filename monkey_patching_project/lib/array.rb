# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array

  def span
    return nil if self.length == 0
    self.max - self.min 
  end

  def average
    return nil if self.empty?
    self.sum / self.length.to_f
  end


  def median
    return nil if self.empty?
    n = self.length 
    if n.odd?
    return self.sort![(n-1)/2.0] 
    else return (self.sort![n/2] + self.sort![n/2-1])/2.0 
    end
  end

  def counts 
    hash = Hash.new(0)
        self.each do |el|
            hash[el] += 1
        end
    hash
  end

  def my_count(el)
    count = 0
    self.each do |char|
        if el == char
            count += 1
        end
    end
    count
  end

  def my_index(el)
    self.each.with_index do |char, i|
        if el == self[i]
            return i
        end
    end
    nil
  end

  def my_uniq
    hash = Hash.new(0)
    self.each do |char|
        hash[char] += 1
    end
  hash.keys
  end

  def my_transpose
    h = self.map(&:length).max
    w = self.length
    new_arr = Array.new(h) {Array.new(w)}
    (0...h).each do |row|
        (0...w).each do |column|
            new_arr[row][column] = self[column][row]
        end
    end
  new_arr
  end 
end
