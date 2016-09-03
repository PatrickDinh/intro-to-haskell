humanize :: [String] -> String
humanize [] = ""
humanize [x] = x
humanize (x:xs:[]) = x ++ " and " ++ xs
humanize (x:xs) = x ++ ", " ++ (humanize xs)