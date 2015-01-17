class Rotation

  NONE = Matrix[[1, 0], [0, 1]]
  RIGHT_90 = Matrix[[0, -1], [1, 0]]
  RIGHT_180 = Matrix[[-1, 0], [0, -1]]
  RIGHT_270 = Matrix[[0, 1], [-1, 0]]

  def self.next(current)
    current * RIGHT_90
  end

  #v = Vector.[](3,4)
  #m1 = Matrix.column_vector(v)
  #m2 = Matrix[[0,-1],[1,0]]
  #result = m2 * m1
  #puts result.column(0)

end