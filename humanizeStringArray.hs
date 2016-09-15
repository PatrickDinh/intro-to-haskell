-- input ["First", "Second", "Last"]
-- output "First, Second and Last"
humanize :: [String] -> String
humanize [] = ""
humanize [x] = x
humanize [x, y] = x ++ " and " ++ y
humanize (x:xs) = x ++ ", " ++ (humanize xs)