def compute_area(a, b, c, d, e, f, g, h)
  # first rectangle area
  area1 = (c - a).abs * (d - b).abs

  # second rectangle area
  area2 = (g - e).abs * (h - f).abs

  bottom_left_x = [a, e].max
  bottom_left_y = [b, f].max
  top_right_x = [c, g].min
  top_right_y = [d, h].min

  # intersection area
  area3 = (top_right_x - bottom_left_x).abs * (top_right_y - bottom_left_y)

  if bottom_left_x > c || top_right_y < b || top_right_x < a || bottom_left_y > d
    area1 + area2
  else
    area1 + area2 - area3
  end

end

p compute_area(-2, -2, 2, 2, -4, 3, -3, 4) #17
p compute_area(-2, -2, 2, 2, 3, 3, 4, 4) #17
p compute_area(-3, 0, 3, 4, 0, -1, 9, 2) #45

# 4*4 = 16
# 1 * 1 = 1
