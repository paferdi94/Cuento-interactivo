module Metodos where

import System.Process
import Control.Concurrent
import Control.Exception
import Data.Char

correccionEXE = putStrLn ""			                       --Poner putStrLn si se va a hacer un .exe, sino putStr

sleep n = threadDelay (n*1000000)                          --Sleep
	
clear = system ("cls")                                     --Limpia Terminal

abrePrograma str = system ("start ghci " ++ str)

cambiaColorNormal = system ("color F0")	-- F0 para fondo blanco letra negra
cambiaColorMuerte = system ("color 0C")	-- 0C para fondo negro letra roja
cambiaColorRestablecer = system ("color OF") --Restablecer colores terminal
 
escribeLinea str = do
	putStrLn("\t"++str)
	putStrLn ""
	getLine

escribeResp str = do
	putStrLn("\t"++str)
	putStrLn("")
	

escribeEsp 1 = putStrLn("")
escribeEsp n = do
	putStrLn("")
	escribeEsp (n-1)

cantidad num = do
	putStr "\n\tIntroduce una cantidad: "
	correccionEXE
	linea <- getLine
	let guess = read linea :: Float
	result <- try (evaluate (compare guess num)) :: IO (Either SomeException Ordering)
	case result of
		Left ex -> do
			putStrLn "\n\tDebes poner un numero decimal con punto (por ejemplo 1.23)"
			cantidad num
		Right LT -> do
			putStrLn "\n\tTe has quedado corto... intentalo de nuevo "
			cantidad num
		Right GT -> do
			putStrLn "\n\tTe has pasado, vuelve a probar"
			cantidad num
		Right EQ -> do
			putStrLn "\n\tFelicidades, has dado con el precio JUUSTOOO!"
			
		
leeNombre = do
	nombre <- getLine
	return nombre
	

--Mayúsculas en Lectura
leeSiNo = do
	lectura <- getLine
	let opcion = map toUpper lectura
	if (opcion == "SI" || opcion == "S") then return True else
		if (opcion == "NO" || opcion == "N") then return False else do
			putStr "\n\tTienes que escribir si o no: "
			correccionEXE
			leeSiNo
			
leeOpciones2 = do
	lectura <- getLine
	let opcion = map toUpper lectura
	if (opcion == "A") then return True else
		if (opcion == "B") then return False else do
			putStr "\n\tTienes que escribir A o B: "
			correccionEXE
			leeOpciones2
			
leeOpciones3 = do
	lectura <- getLine
	let opcion = map toUpper lectura
	if (opcion == "A") then return 0 else
		if (opcion == "B") then return 1 else
			if (opcion == "C") then return 2 else do
				putStr "\n\tTienes que escribir A, B o C: "
				correccionEXE
				leeOpciones3
				
				
leeOpciones4 = do
	lectura <- getLine
	let opcion = map toUpper lectura
	if (opcion == "A") then return 0 else
		if (opcion == "B") then return 1 else
			if (opcion == "C") then return 2 else 
				if (opcion == "D") then return 3 else do
					putStr "\n\tTienes que escribir A, B ,C o D: "
					correccionEXE
					leeOpciones4