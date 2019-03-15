def three_sums(nums)
  nums.uniq!
  solutions = []
  nums.each_with_index do |numA, iA|
    nums.each_with_index do |numB, iB|
      nums.each_with_index do |numC, iC|
        if iA != iB && iA != iC && iB != iC && numA + numB + numC == 0
          solutions << [numA, numB, numC]
        end
      end
    end
  end
  return solutions
end

nums = [-1, 0, 1, 2, -1, -4]

print three_sums(nums)