import Test.Hspec
import Functions
import ADT
import TandR

main :: IO ()
main = hspec $ do
    -- functionTest
    -- adtTest
    tupAndRec


-- INTERNO

functionTest =
    describe "Functions" $ do        
        describe "myFunc2" $ do 
            it "x = 5 y = 2" $
                myFunc2 5 2 `shouldBe` (15 :: Int)
            it "x = 3 y = 6" $
                myFunc2 3 6 `shouldBe` (23 :: Int)
        describe "addNMultFive" $ do 
            it "x = 4 " $
                addNMultFive 4  `shouldBe` (45 :: Int)

adtTest =
    describe "ADT" $ do
        describe "taskToStatus" $ do 
            it "ToDo" $
                taskToStatus ToDo `shouldBe` "No iniciado"
            it "Doing" $
                taskToStatus Doing `shouldBe` "Llevan: 0"
            it "Done" $
                taskToStatus Done `shouldBe` "Terminó"
        describe "increaseCounter" $ do 
            it "Idle -> Idle" $
                checkStatus (increaseCounter Idle) `shouldBe` "No iniciado"
            it "Current 0 -> Current 1" $
                checkStatus (increaseCounter $ Current 0) `shouldBe` "Llevan: 1"
            it "Finished -> Finished" $
                checkStatus (increaseCounter Finished) `shouldBe` "Terminó"


tupAndRec =
    describe "TandR" $ do
        describe "canEnterBar" $ do 
            let young = Person "Juan" 10 Male
            let old = Person "Maria" 18 Female
            it "young" $
                canEnterBar young `shouldBe` "No puede entrar"
            it "old" $
                canEnterBar old `shouldBe` "Puede entrar"
        describe "makeYounger" $ do 
            let male = Person "Juan" 10 Male
            let female = Person "Maria" 18 Female
            it "male" $
                age (makeYounger male) `shouldBe` age male
            it "female" $
                age (makeYounger female) `shouldBe` (age female) - 1
           
