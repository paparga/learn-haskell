module TandR where

import Utils (isAdult)

data Tuple a b = Tuple a b

first :: Tuple a b -> a
first (Tuple x _) = x

second :: Tuple a b -> b
second (Tuple _ y) = y

setFirst :: a -> Tuple a b -> Tuple a b
setFirst x (Tuple _ y) = Tuple x y

setSecond :: b -> Tuple a b -> Tuple a b
setSecond y (Tuple x _ ) = Tuple x y

data Gender = Male | Female

data Person = Person
    { name :: String
    , age :: Int
    , gender :: Gender
    }

johnDoe :: Person
johnDoe = Person "John Doe" 30 Male

janeDoe :: Person
janeDoe = Person
    { name = "Jane Doe"
    , age = 27
    , gender = Female
    }

happyBirthday :: Person -> Person
happyBirthday x = x {age = age x + 1}

janeDoe2 :: Person
janeDoe2 = happyBirthday janeDoe


-- Ejercicios

-- utilizar la funcion isAdult (isAdult 17 == False, isAdult 18 == True)
-- Si una persona es mayor a 18 decir: "Puede entrar", caso contrario "No puede entrar" 

canEnterBar :: Person -> String
canEnterBar x = ""


-- crear funcion si es mujer bajar la edad en 1 año
makeYounger :: Person -> Person
makeYounger x = x