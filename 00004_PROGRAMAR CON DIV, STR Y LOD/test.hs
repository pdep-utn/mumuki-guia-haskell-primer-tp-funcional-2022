 describe "Test Punto 4 - Tests de programa División" $ do
        it "STR 2 5 para la memoria" $ do
            ((memoria . str 2 5) at8086) `shouldBe` [1, 5, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

        it "LOD 2 de una memoria vacía debe dar 0" $ do
            (acumuladorA $ lod 2 xt8088) `shouldBe` 0

        it "Division por cero da error" $ do
            (mensajeError $ divisionPorCero xt8088) `shouldBe` "DIVISION BY ZERO"
    
        it "Division por cero aumenta program counter" $ do
            (programCounter $ divisionPorCero xt8088) `shouldBe` 6
            
        it "Division de 12 por 4 se resuelve bien en Acumulador A" $ do
            (acumuladorA $ division12Por4 xt8088) `shouldBe` 3

        it "Division de 12 por 4 blanquea Acumulador B" $ do
            (acumuladorB $ division12Por4 xt8088) `shouldBe` 0

        it "Division de 12 por 4 no deja el mensaje de error porque funciona bien" $ do
            (mensajeError $ division12Por4 xt8088) `shouldBe` ""
        