import System.Exit
import Texto
import Metodos
import Imagenes

-- IMPORTANTE: antes de hacer un .exe ves a Metodos.hs y cambia la funcion correccionEXE

main = do
	cambiaColorNormal
	clear
	putStrLn "\tAcabas de iniciar la aventura de LTP\n\n\t¿Preparado para adentrarse en la aventura? (escribe si o no) "
	correccionEXE
	opcion <- leeSiNo
	if (opcion) then nombre else no
	
nombre = do
	clear
	putStrLn ""
	putStrLn "\n\tBienvenido, ¿Cómo te llamas? "
	correccionEXE
	name <- leeNombre
	putStrLn ("\n\tFelicidades "++name		)
	si

si = do
	cambiaColorNormal
	textoSi
	titulo
	
titulo = do
	cambiaColorNormal
	clear
	historia


historia = do
	textoHistoria
	siguiente <- leeOpciones3
	if (siguiente == 0) then destornillador else
		if(siguiente == 1) then explosivos else escoba

historia2 = do
	textoHistoria2
	siguiente <- leeOpciones2
	if (siguiente) then explosivos else escoba
		

destornillador = do
	clear
	textoDestornillador
	siguiente <- leeOpciones2
	if (siguiente) then bosque else muerto

explosivos = do
	clear
	textoExplosivos
	siguiente <- leeOpciones2
	if (siguiente) then reconsiderar2 else reconsiderar1

escoba = do
	clear
	textoEscoba
	siguiente <- leeOpciones2
	if (siguiente) then volar else mirar

mirar = do
	clear
	textoMirar
	vuelveAEmpezar

volar = do
	clear
	textoVolar
	textoMagico
	hadalandia2


reconsiderar1 = do
	clear
	textoReconsiderar
	siguiente <- leeOpciones2
	if(siguiente) then barco else desactivar1
	
reconsiderar2 = do
	clear
	textoReconsiderar
	siguiente <- leeOpciones2
	if(siguiente) then chimenea else desactivar2
	
desactivar1 = do
	clear
	textoDesactivar1
	correccionEXE
	codigo <- getLine
	if (codigo == "1011001101") then abierta else error1
					
desactivar2 = do
	clear
	textoDesactivar2
	correccionEXE
	codigo <- getLine
	if (codigo == "1111100000") then abierta else error2
						
error1 = do
	clear
	textoError
	bosque
	
error2 = do
	clear
	textoError
	barco
	
chimenea = do
	clear
	textoChimenea
	hadalandia

hadalandia2 = do
	clear
	textoJusto
	textoJuego
	clear
	textoObjeto1
	cantidad 12.95
	clear
	textoObjeto2
	cantidad 3.50
	clear
	textoObjeto3
	cantidad 49.80
	clear
	textoFinal
	vuelveAEmpezar

hadalandia = do
	clear
	textoMagico
	clear
	textoJusto
	textoJuego
	clear
	textoObjeto1
	cantidad 12.95
	clear
	textoObjeto2
	cantidad 3.50
	clear
	textoObjeto3
	cantidad 49.80
	clear
	textoFinal
	vuelveAEmpezar
	

finalb = do
	clear
	textoFinal
	
	
abierta = do
	clear
	textoAbierta
	eleccion
	
muerto = do
	cambiaColorMuerte
	clear
	textoMuerto
	vuelveAEmpezar


bosque = do
	clear
	textoBosque
	siguiente <- leeOpciones2
	if (siguiente) then rodeado else mierda
    
kitkat = do
	cambiaColorMuerte
	clear
	textoKitkat
	vuelveAEmpezar
	
cascada = do
	cambiaColorMuerte
	clear
	textoCascada
	vuelveAEmpezar
	
completada = do
	clear
	textoCompletada
	vuelveAEmpezar
	
corriendo = do
	clear
	textoCorriendo
	vuelveAEmpezar
	
rodeado = do
	clear
	textoRodeado
	siguiente <- leeOpciones2
	if (siguiente) then adivinanza else kitkat

adivinanza = do	
	clear
	imagenBaraja
	sleep 2
	textoAdivinanza
	siguiente <- leeOpciones3
	if (siguiente == 0) then lentejas else
		if(siguiente == 1) then baraja else servilletas
	
lentejas = do
	clear
	textoLentejas
	vuelveAEmpezar
	
baraja = do
	clear
	textoBaraja
	eleccion
	
servilletas = do
	textoServilletas
	historia2
	
	
barco = do
	clear
	textoBarco
	siguiente <- leeOpciones2
	if (siguiente) then cascada else campanilla
	
mierda = do
	clear
	textoMierda
	eleccion
	
campanilla = do
	clear
	textoCampanilla
	eleccion
	
eleccion = do
	clear
	textoEleccion
	siguiente <- leeOpciones2
	if (siguiente) then completada else folios

folios = do
	clear
	textoFolios
	siguiente <- leeOpciones2
	if (siguiente) then corriendo else desconfiado

desconfiado = do
	clear
	textoDesconfiado
	vuelveAEmpezar

	
no = do
	clear
	textoNo
	si
	
vuelveAEmpezar = do
	lectura <- leeSiNo
	if (lectura) then titulo else exitSuccess