# finding all permutations of a number without official modules
# intended to take an array of unique numbers
def permutations(arr)
  answer = []
  until answer.length == (1..(arr.length)).inject(:*) do
    answer << arr.map.to_a.shuffle.join.to_i
    answer.uniq!
  end
  # returns an array of permutations
  answer
end
