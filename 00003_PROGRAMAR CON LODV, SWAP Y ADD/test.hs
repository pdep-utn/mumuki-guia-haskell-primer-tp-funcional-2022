describe "Test Punto 3 - Tests de programa Suma" $ do
        it "LODV de 5 lo carga en acumulador A" $ do
            ((acumuladorA . lodv 5) xt8088) `shouldBe` 5
        
        it "SWAP cambia los valores de ambos acumuladores" $ do
            ((acumuladorA . swap) fp20) `shouldBe` 24
    
        it "SWAP cambia los valores de ambos acumuladores (acumulador A)" $ do
            ((acumuladorB . swap) fp20) `shouldBe` 7

        it "SWAP cambia los valores de ambos acumuladores (acumulador B)" $ do
            ((acumuladorA . swap) fp20) `shouldBe` 24

        it "Suma 10 + 22 da 32 en Acumulador A" $ do
            ((acumuladorA . add . lodv 22 . swap . lodv 10) at8086) `shouldBe` 32

        it "Suma 10 + 22 da 0 en Acumulador B" $ do
            ((acumuladorB . add . lodv 22 . swap . lodv 10) at8086) `shouldBe` 0

        it "Suma 10 + 22 deja 5 en Program Counter" $ do
            ((programCounter . add . lodv 22 . swap . lodv 10) at8086) `shouldBe` 4