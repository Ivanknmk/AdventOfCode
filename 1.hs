elevator :: String -> Int
elevator [] = 0
elevator (x:xs) = if x == '(' then  elevator xs + 1
                  else              elevator xs - 1
