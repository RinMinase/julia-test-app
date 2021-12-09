export custom_set

function custom_set()
  CustomSet = Set

  disjoint = isdisjoint
  complement = setdiff
  complement! = setdiff!

  set1 = CustomSet([1, 2, 3, 4])
  set2 = CustomSet([])

  print("disjoint: ")
  println(disjoint(set1, set2))

  set3 = complement(set1, 1:2:6)
  print("complement: ")
  println(set3)

  print("complement (mutation): ")
  println(complement!(set3, 1:3:6))
end
