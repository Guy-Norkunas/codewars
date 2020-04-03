def validSolution(board)
  arr = [[],[],[],[],[],[],[],[],[]]
  temp = []
  temp2 = [[],[],[],[],[],[],[],[],[]]

  #loops through the rows of the board also sets temp = board. Simultaneosly gets all the values are between 1 and 9 and checks the the rows contain unique values, sum to 45 and the difference between in and max values is no more than 8
  temp = board.each { |stuff|
    i = 0
    j = 0

    #this if checks the row for total sum of the row, whether all the values in the row are unique and that the difference between the min and max values in the row are equal to 8
    if stuff == [] || stuff.sum != 45 || (stuff.uniq.length != 9)
      return false
    end

    #makes sure that every value on the board is between 1 and 9
    stuff.each{ |val|
      if (val < 1) || (val > 9)
        return false
      end
    }
  }

  k = 0

  #this loop takes the long, unformatted array containing all the sudoku entries and converts it into sub arrays that represent the 3x3 boxes of a sudoku board
  while k < temp.length

    #whacky formulas to increase x every time k increases by 3, going from 3 to 6 to 9
    x = ((k/3)+1)*3

    #whacky stuff to get the arrays into nice sub arrays that represent the boxes
    temp2[x - 3] << temp[k][0]
    temp2[x - 3] << temp[k][1]
    temp2[x - 3] << temp[k][2]
    temp2[x - 2] << temp[k][3]
    temp2[x - 2] << temp[k][4]
    temp2[x - 2] << temp[k][5]
    temp2[x - 1]  << temp[k][6]
    temp2[x - 1]  << temp[k][7]
    temp2[x - 1]  << temp[k][8]
    k += 1
  end

  m = 0

  #iterates through all the elements in the new array that has sub arrays representing the boxes of the sudoku board
  while m < temp2.length
    
    # checks that the boxes of the board complies with all the standard rules of a sudoku game
    if temp2[m].sum != 45 || (temp2[m].uniq.length != 9) || (temp2[m].max - temp2[m].min != 8)
      return false
    end
    m += 1
  end

  #a nested loop that converts the array storing the rows of the sudoku board into an array that stores the columns of the sudoku baord
  i = 0
  while i < 9
    j = 0
    while j < 9
      arr[i] << temp[j][i]
      j += 1
    end

    #after every column of the sudoku board is put into a sub array of the variable arr it is then checked against the conditions for a valid sudoku solution
    if arr[i].sum != 45 || (arr[i].uniq.length != 9) || (arr[i].max - arr[i].min != 8)
      return false
    end
    i += 1
  end

  return true
end

p validSolution([[5, 3, 4, 6, 7, 8, 9, 1, 2], 
                [6, 7, 2, 1, 9, 5, 3, 4, 8],
                [1, 9, 8, 3, 4, 2, 5, 6, 7],
                [8, 5, 9, 7, 6, 1, 4, 2, 3],
                [4, 2, 6, 8, 5, 3, 7, 9, 1],
                [7, 1, 3, 9, 2, 4, 8, 5, 6],
                [9, 6, 1, 5, 3, 7, 2, 8, 4],
                [2, 8, 7, 4, 1, 9, 6, 3, 5],
                [3, 4, 5, 2, 8, 6, 1, 7, 9]])

p validSolution([[5, 5, 5, 5, 5, 5, 5, 5, 5], 
                [5, 5, 5, 5, 5, 5, 5, 5, 5],
                [5, 5, 5, 5, 5, 5, 5, 5, 5],
                [5, 5, 5, 5, 5, 5, 5, 5, 5],
                [5, 5, 5, 5, 5, 5, 5, 5, 5],
                [5, 5, 5, 5, 5, 5, 5, 5, 5],
                [5, 5, 5, 5, 5, 5, 5, 5, 5],
                [5, 5, 5, 5, 5, 5, 5, 5, 5],
                [5, 5, 5, 5, 5, 5, 5, 5, 5]])

p validSolution([[10, 3, 4, 6, 7, 8, 9, 1, -3], 
                [6, 7, 2, 1, 9, 5, 3, 4, 8],
                [1, 9, 8, 3, 4, 2, 5, 6, 7],
                [8, 5, 9, 7, 6, 1, 4, 2, 3],
                [4, 2, 6, 8, 5, 3, 7, 9, 1],
                [7, 1, 3, 9, 2, 4, 8, 5, 6],
                [9, 6, 1, 5, 3, 7, 2, 8, 4],
                [2, 8, 7, 4, 1, 9, 6, 3, 5],
                [-2, 4, 5, 2, 8, 6, 1, 7, 14]])

p validSolution([[5, 3, 0, 6, 7, 8, 9, 1, 2], 
                [6, 7, 2, 1, 9, 5, 3, 4, 8],
                [1, 9, 8, 3, 4, 2, 5, 6, 7],
                [8, 5, 9, 7, 6, 1, 4, 2, 3],
                [4, 0, 6, 8, 5, 3, 7, 9, 1],
                [7, 1, 3, 9, 2, 4, 8, 5, 6],
                [9, 6, 1, 5, 3, 0, 2, 8, 4],
                [2, 8, 7, 4, 1, 9, 6, 3, 5],
                [3, 4, 5, 2, 8, 6, 1, 7, 9]])
                
p validSolution([[45],[45],[45],[45],[45],[45],[45],[45],[45]])

p validSolution([[-5, -3, -4, -6, -7, -8, -9, -1, -2], 
                [-6, -7, -2, -1, -9, -5, -3, -4, -8],
                [-1, -9, -8, -3, -4, -2, -5, -6, -7],
                [-8, -5, -9, -7, -6, -1, -4, -2, -3],
                [-4, -2, -6, -8, -5, -3, -7, -9, -1],
                [-7, -1, -3, -9, -2, -4, -8, -5, -6],
                [-9, -6, -1, -5, -3, -7, -2, -8, -4],
                [-2, -8, -7, -4, -1, -9, -6, -3, -5],
                [-3, -4, -5, -2, -8, -6, -1, -7, -9]])

p validSolution([[],
                [],
                [],
                [],
                [],
                [],
                [],
                [],
                []])

p validSolution([[6, 3, 9, 5, 7, 4, 1, 8, 2],
                [5, 4, 1, 8, 2, 9, 3, 7, 6],
                [7, 8, 2, 6, 1, 3, 9, 5, 4],
                [1, 9, 8, 4, 6, 7, 5, 2, 3],
                [3, 6, 5, 9, 8, 2, 4, 1, 7],
                [4, 2, 7, 1, 3, 5, 8, 6, 9],
                [9, 5, 6, 7, 4, 8, 2, 3, 1],
                [8, 1, 3, 2, 9, 6, 7, 4, 5],
                [2, 7, 4, 3, 5, 1, 6, 9, 8]])

p validSolution([[1, 2, 3, 4, 5, 6, 7, 8, 9], 
                [2, 3, 4, 5, 6, 7, 8, 9, 1], 
                [3, 4, 5, 6, 7, 8, 9, 1, 2], 
                [4, 5, 6, 7, 8, 9, 1, 2, 3], 
                [5, 6, 7, 8, 9, 1, 2, 3, 4], 
                [6, 7, 8, 9, 1, 2, 3, 4, 5], 
                [7, 8, 9, 1, 2, 3, 4, 5, 6], 
                [8, 9, 1, 2, 3, 4, 5, 6, 7], 
                [9, 1, 2, 3, 4, 5, 6, 7, 8]])