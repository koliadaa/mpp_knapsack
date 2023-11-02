
def knapsack_(weights, values, w)
  n = weights.length

  temp = Array.new(n + 1) { Array.new(w + 1, 0) }

  (1..n).each { |i|
    (0..w).each { |c|
      if weights[i - 1] <= c
        temp[i][c] = [temp[i - 1][c], temp[i - 1][c - weights[i - 1]] + values[i - 1]].max
      else
        temp[i][c] = temp[i - 1][c]
      end
    }
  }

  temp[n][w]
end


def knapsack_approximate(weights, values, w)
  price = 0
  counter = 0
  while w.to_i > 0

    (0..(weights.length)).each{ |i|
      if weights[i].to_i <= w.to_i
        counter = counter+1
      end
      if w.to_i-weights[counter].to_i==0
        return price
      elsif  w.to_i-weights[counter].to_i<=0
        return price
        end
        w = w-weights[counter]
        price += values[counter]
        counter = 0
  }
    end
  price
  end

weights = [1, 3, 4, 5, 6, 10, 50, 90, 100]
values =  [3, 4, 5, 6, 9, 10, 80, 100, 200]

load_cap = 10

result = knapsack_approximate(weights, values, load_cap)
puts "Максимальна вартість: #{result}"

result = knapsack_approximate(weights, values, load_cap)
puts "Максимальна вартість: #{result}"