greeting :: String -> String
greeting name = "Hey " ++ name ++ ", you rock!" 

main = do  
    putStrLn "Hello, what's your name?"  
    name <- getLine  
    let greetingMessage = greeting name
    putStrLn (greetingMessage)