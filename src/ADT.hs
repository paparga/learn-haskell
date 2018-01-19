module ADT where

fiveOrCero :: Bool -> Int
fiveOrCero x = case x of
    True -> 5
    False -> 0

data Task
    = ToDo
    | Doing
    | Done

isFinished :: Task -> Bool
isFinished x = case x of
    Done -> True
    _ -> False
    

data SafeCounter
    = Idle
    | Current Int
    | Finished

checkStatus :: SafeCounter -> String
checkStatus x = case x of
    Idle -> "No iniciado"
    Current y -> "Llevan: " ++ show y
    Finished -> "Terminó"

toCounter :: Task -> SafeCounter
toCounter x = case x of
    ToDo -> Idle
    Doing -> Current 0
    Done -> Finished

-- Ejercicios

-- Componer toCounter con checkStatus
taskToStatus :: Task -> String
taskToStatus x = ""

-- Aumentar el contador solo cuando esté en Current
increaseCounter :: SafeCounter -> SafeCounter
increaseCounter x = x