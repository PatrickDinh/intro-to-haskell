-- One introduces, or declares, a type in Haskell via the data statement.
data Color = Red | Green | Blue | Yellow | Orange | Purple
         deriving (Show, Eq, Ord)

data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday   
           deriving (Eq, Ord, Show, Read, Enum)

-- type introduces a synonym for a type and uses the same data constructors
type Colors = [Color]

-- normal person
data NormalPerson = NormalPerson String String | Nemo
    deriving (Show)

fullName :: NormalPerson -> String
fullName (NormalPerson n _) = n

email :: NormalPerson -> String
email (NormalPerson _ e) = e

-- advanced person
data CoolerPerson = CoolerPerson { name :: String, emailAddress :: String } -- guess why I have name & emailAddress here 
    deriving (Show)
