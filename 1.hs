elevator :: Int -> Int -> Bool -> String -> (Int, Int)
elevator position floor True [] = (position, floor)
elevator position floor False [] = (-1, floor)
elevator position floor basement (x:xs) =
  let fl = if x == '('
              then floor + 1
              else floor - 1
      fg = if basement then basement else fl == (-1)
      po = if fg == False
              then position + 1
              else position
  in elevator po fl fg xs
