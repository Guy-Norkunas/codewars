def pick_peaks(arr)
  solution = {"pos" => [], "peaks" => []}
  temp = []
  index_store = []
  i = 1
  solution["peaks"] = []
  solution["pos"] = []

  arr.each_with_index { |num, index| 
    if temp != num
      index_store << index
      temp = num
    end
  }

  while i < index_store.length - 1
    if (arr[index_store[i]] > arr[index_store[i-1]]) && (arr[index_store[i]] > arr[index_store[i+1]])
      solution["peaks"] << arr[index_store[i]]
      solution["pos"] << index_store[i]
    end
    i += 1
  end

  return solution
end


p pick_peaks([-2, 13, 7, 4, 11, -1, 20, 4])
p pick_peaks([2,1,3,1,2,2,2,2])
p pick_peaks([10,3,2,3,6,4,1,2,3,2,1,2,3])
p pick_peaks([3,2,3,3,6,3,3,4,1,2,3,2,1,2,2,2,1])
