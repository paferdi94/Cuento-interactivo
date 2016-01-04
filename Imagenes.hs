module Imagenes where

import System.IO

imagenCalavera = do
	withFile "calavera.txt" ReadMode (\handle -> do
        contents <- hGetContents handle
        putStr contents)

imagenBaraja = do
	withFile "Baraja.txt" ReadMode (\handle -> do
        contents <- hGetContents handle
        putStr contents)

imagenTitulo = do
	withFile "titulo.txt" ReadMode (\handle -> do
		contents <- hGetContents handle
		putStr contents)

imagenTitulo2 = do
	withFile "titulo2.txt" ReadMode (\handle -> do
		contents <- hGetContents handle
		putStr contents)
		
imagenChimenea = do
	withFile "Chimenea.txt" ReadMode (\handle -> do
		contents <- hGetContents handle
		putStr contents)
		
imagenJusto = do
	withFile "justo.txt" ReadMode (\handle -> do
		contents <- hGetContents handle
		putStr contents)

imagenGuitarra = do
	withFile "Guitarra.txt" ReadMode (\handle -> do
		contents <- hGetContents handle
		putStr contents)


