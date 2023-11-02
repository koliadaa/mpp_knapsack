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
