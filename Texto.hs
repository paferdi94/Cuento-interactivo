module Texto where

import Metodos
import Imagenes
	
textoSi = do
	putStrLn (" ")
	escribeLinea ("Te preguntaras quien soy, pero eso no importa ahora.")
	escribeLinea ("Quiero jugar a un juego ")
	escribeLinea ("Sabes que no has llevado las cosas al día ")
	escribeLinea ("Pero te  voy otorgar una nueva y última oportunidad")
	escribeLinea ("¡Tu misión sera entregar el trabajo de LTP!")

textoNo = do
	putStrLn ("\t¿Seguro?")
	putStrLn""
	getLine
	escribeLinea ("MMMmmm es mi mundo y mando yo")
	escribeLinea ("Vas a jugar, no importa lo que opines")

textoHistoria = do
	imagenTitulo
	getLine
	clear
	putStrLn ("")
	putStrLn ("\tTe encuentras en una habitación")
	putStrLn ""
	getLine
	escribeLinea ("Esta se comprime a medida que pasa el tiempo")
	escribeLinea ("Miras a tu alrededor")
	escribeLinea ("Solo encuentras unos explosivos, un destornillador y una escoba")
	escribeLinea ("Tienes que elejir una herramienta ¿Qué elijes?")
	escribeResp ("a) Destornillador")
	escribeResp ("b) Explosivos")
	escribeResp ("c) Escoba")
	putStr "\t"

textoHistoria2 = do
	putStrLn ("\tLos ogros te cogen del pescuezo enfadados")
	putStrLn""
	getLine
	escribeLinea ("Te lanzan de nuevo por la trampilla de la que has caido")
	clear
	escribeLinea ("Te encuentras de nuevo en la habitación")
	escribeLinea ("¿Que escogemos ahora?")
	escribeResp ("a) Explosivos")
	escribeResp ("b) Escoba")
	putStr "\t"

textoDestornillador = do
	escribeLinea ("Has elejido el destornillador ¿Qué hacemos con él?")
	escribeResp ("a) Quitar los dos tornillos a la trampilla y salir")
	escribeResp ("b) Quitar los ocho tornillos a la puerta y salir")
	putStr "\t"

textoExplosivos = do
	escribeLinea ("Has elejido los explosivos ¿Qué hacemos con ellos?")
	escribeResp ("a) Rebentemos la pared de enfrente y salgamos ")
	escribeResp ("b) Explotamos la puerta")
	putStr "\t"

textoReconsiderar = do
	escribeLinea (" Estas en una sala no muy grande...")
	escribeLinea (" ¿Seguro que quieres usar los explosivos?")
	putStrLn ("\t a) Si, claro ¿Por qué no ?")
	putStrLn""
	putStrLn ("\tMe gustan los fuegos artificiales jijiji")
	putStrLn ""
	getLine
	putStrLn ("\t b) No, mejor será desactivar los explosivos ")
	putStrLn""
	putStrLn ("\tY busquemos otra salida por si las moscas")
	putStrLn ""
	putStr "\t"
	
textoAbierta = do
	putStrLn ("\tUff por los pelos...")
	putStrLn""
	getLine
	escribeLinea ("Unos segundos mas y no sabemos lo que hubiese pasado")
	escribeLinea ("Las paredes se siguen estrechando y no sabes que hacer") 
	escribeLinea ("Pero te fijas en la puerta")
	escribeLinea ("Vaya solo había que girar el pomo, estaba abierta")
	escribeLinea ("Premio a la inteligencia")
	clear
	escribeLinea("Abres la puerta y sales")

textoChimenea = do
	putStrLn ("\tPones los explosivos en la pared de enfrente")
	putStrLn""
	getLine
	escribeLinea ("Corres hasta la chimenea y te ocultas en ella")
	clear
	escribeEsp 10
	putStr("3........")
	sleep 1
	putStr "2........"
	sleep 1
	putStr "1........"
	sleep 1
	escribeEsp 5
	putStrLn("PUUUUM")
	clear
	escribeLinea ("La onda expansiva te ha alcanzado")
	escribeLinea ("Sales lanzado por el tiro de la chimena")
	escribeLinea "Has salido algo negro de la chimenea pero sigues vivo"
	clear
	imagenChimenea
	getLine
	
	
textoMagico = do
	clear
	putStrLn "\tMiras a tu alrededor y ves nubes rosas y un arcoiris"
	putStrLn""
	getLine
	escribeLinea "Estas en el mundo de... "
	putStrLn "\n\t\t\t****************"
	putStrLn	 "\t\t\t** HADALANDIA **"
	putStrLn "\t\t\t****************"
	putStrLn""
	getLine
	
textoJusto = do
	putStrLn "\tSe te acercan dos amables hadas "
	putStrLn""
	getLine
	escribeLinea "Les preguntas cómo puedes volver a tu mundo"
	escribeLinea "Según parece"
	escribeLinea "La única forma de volver es participando en su juego favorito"
	clear
	imagenJusto
	getLine
	clear

	
textoJuego = do
	putStrLn "\tQue comience el juego"
	putStrLn""
	getLine
	
textoObjeto1 = do
	putStrLn "\t1º objeto"
	putStrLn""
	getLine
	escribeLinea "Minino oriental con movimiento de pata izquierda de 45º"
	escribeLinea "Y que no te engañe, no es una maquina tragaperras"
	putStrLn "\t¿Cual crees que es su precio justo?"
	
textoObjeto2 = do
	putStrLn "\tSII!! Parece mentira que un gato valga tanto..."
	putStrLn""
	getLine
	escribeLinea "Entre tu y yo... concede deseos... a veces"
	escribeLinea "Continuemos con el segundo objeto"
	clear
	escribeLinea "Oro parece, plata no es.... y no es un platano"
	putStrLn "\t¿Cuanto crees que es el precio justo de este colgante dorado?"	

textoObjeto3 = do
	putStrLn "\tPara ti"
	putStrLn""
	getLine
	escribeLinea "Tal vez se lo puedas vender a alguno y timarle jeje"
	escribeLinea "Pasemos al siguiente y ultimo objeto"
	clear
	escribeLinea "Este pedazo cochazo, con cuatro ruedas y mp3"
	escribeLinea "Te llevara mas lejos que cualquier otro coche"
	escribeLinea "Siempre que tengas fuerzas para pedalear"
	putStrLn "\t¿Cuál crees que es su precio justo?"

textoFinal = do
	putStrLn "\tHas pasado la prueba de las hadas"
	putStrLn""
	getLine
	escribeLinea "Las hadas te devuelven a tu mundo"
	escribeLinea "Pero antes, entregan tu trabajo de LTP"
	sleep 2
	clear
	escribeLinea " Has acabado tu aventura "
	escribeLinea " ¡¡Felicidades!! "
	putStrLn "\t¿Quieres volver a empezar la partida? (escribe si o no) "
	correccionEXE

textoDesactivar1 = do
	putStrLn ("\tDe acuerdo, tienes que desactivar la bomba")
	putStrLn""
	getLine
	escribeLinea ("Para desactivarla, tendrás que introducir la combinación correcta.")
	escribeLinea ("Te voy a hechar una mano.")
	escribeLinea ("Existe un metodo que transforma números binarios en decimales")
	escribeLinea ("Ejecutalo en la terminal paralela que te aparecerá a continuación")
	escribeLinea ("Luego introduce la respuesta correcta aquí")
	escribeLinea ("Úsa dicho método para averiguar cual es el número en binario ")
	escribeLinea ("Así conseguirás desactivar la bomba")
	escribeLinea ("Supongo que sabrás que si fallas te irás a fer punyetes ¿no?")
	escribeLinea ("Te recuerdo que la cabecera del método es la siguiente:")
	escribeLinea (" decBin :: [Int] -> Int ")
	escribeLinea ("El numero es : 717")
	escribeLinea ("¡¡Date prisa!!")
	abrePrograma "Operaciones.hs"
	putStrLn ("\t¿Qué número introduces?")
	putStr "\t"

textoDesactivar2 = do
	putStrLn ("\tDe acuerdo, tienes que desactivar la bomba")
	putStrLn""
	getLine
	escribeLinea ("Para desactivarla, tendrás que introducir la combinación correcta.")
	escribeLinea ("Te voy a hechar una mano.")
	escribeLinea ("Existe un metodo que transforma números binarios en decimales")
	escribeLinea ("Ejecutalo en la terminal paralela que te aparecerá a continuación")
	escribeLinea ("Luego introduce la respuesta correcta aquí")
	escribeLinea ("Úsa dicho método para averiguar cual es el número en binario ")
	escribeLinea ("Así conseguirás desactivar la bomba")
	escribeLinea ("Supongo que sabrás que si fallas te irás a fer punyetes ¿no?")
	escribeLinea ("Te recuerdo que la cabecera del método es la siguiente:")
	escribeLinea (" decBin :: [Int] -> Int ")
	escribeLinea ("El numero es : 992")
	escribeLinea ("¡¡Date prisa!!")
	abrePrograma "Operaciones.hs"
	putStrLn("\t¿Qué número introduces?")
	putStr "\t"
textoError = do
	putStrLn("\tMEEEEC")
	putStrLn""
	getLine
	escribeLinea("Has fallado, explota la bomba")
	clear
	escribeEsp 10
	putStr("3,")
	sleep 1
	putStr(" 2,")
	sleep 1
	putStr(" 1")
	sleep 1
	escribeEsp 5
	escribeLinea("PUUUUM")
	clear
	escribeLinea("Logras escapar.   ( Todos nos preguntamos como es eso posible )")
	sleep 2
	
textoEscoba = do
	putStrLn ("\tHas elejido la escoba ¿Qué hacemos con ella?")
	putStrLn ""
	getLine
	escribeResp ("a) Salgamos por la ventana volando")
	escribeResp ("b) Miremosla fijamente")
	putStr "\t"

textoMirar = do
	putStrLn "\tTe sientas y te pones a mirar fijamente la escoba"
	putStrLn""
	getLine
	escribeLinea "Despues te das cuenta que es una tonteria mirar una escoba fijamente"
	escribeLinea "Pero ves un conejo huyendo antes de que las paredes lo espachurren"
	escribeLinea "Lo sigues y ves que se mete por una minipuerta..."
	clear
	escribeLinea "Acercas tu cara para ver si ves algo"
	escribeLinea "Derepente te ves engullido por una espiral"
	escribeLinea "Apereces en un lugar un tanto raro"
	escribeLinea "Ummm"
	escribeLinea "Escuchas una musica de fondo que dice..."
	escribeLinea "Que bueno que estoy"
	escribeLinea "Que bueno que estoy"
	escribeLinea "Que bueno que estoy"
	escribeLinea "Que bueno que estoy"
	escribeLinea "No tengo artrosis"
	escribeLinea "No tengo reuma"
	escribeLinea "No tengo colesterol"
	escribeLinea "Por eso a todos los sitios donde voy me dicen..."
	escribeLinea "Que bueno que estoy"
	imagenGuitarra
	clear
	escribeLinea ""
	escribeLinea "..............."
	escribeLinea "..............."
	escribeLinea "Reconoces esa voz..."
	escribeLinea "Es tu profesor de ETC, quien si no? jeje"
	clear
	escribeLinea "Te acercas a él y le preguntas por tu profesor de LTP"
	escribeLinea "Hola, disculpa.. perdón por interrumpirte"
	escribeLinea "Sabe dónde se encuentra el profesor de LTP del grupo 2A?"
	escribeLinea "Ummm"
	escribeLinea "Crec que esta confiscant telefons mòvils"
	escribeLinea "Proba en les escales de baix"
	escribeLinea "Esta ahí, confiscant mòvils "
	escribeLinea "¿Qué?"
	escribeLinea "Sí, dels alumnes que baixen llegint-ho i no miren les escales"
	clear
	escribeLinea "Bajas por las escaleras"
	escribeLinea "Ves que está al final de éstas"
	escribeLinea "Te acercas a él y le entregas el trabajo de LTP"
	escribeLinea "Felicidades le has entregado el trabajo"
	escribeLinea "Pero te has quedado sin móvil"
	putStr "\t¿Quieres volver a empezar la partida? (escribe si o no) "
	correccionEXE

textoVolar = do
	putStrLn "\tEscapas volando por la ventana"
	putStrLn""
	getLine
	escribeLinea "Divisas tu aula de LTP"
	escribeLinea "¿Demasiado fácil no?"
	escribeLinea "Te falla la dirección de la escoba y empiezas a volar sin sentido"
	escribeLinea "Acabas chocando"
	escribeLinea "Ostión terrible que te has dado"

textoBosque= do	
	putStrLn ("\tTras salir por la trampilla de debajo de tus pies ")
	putStrLn""
	getLine
	escribeLinea ("Has aparecido en un bosque ")
	escribeLinea ("Pero rodeado de ogros, que mala suerte tienes.")
	escribeLinea ("Tienes que escapar de ellos ¿Qué haces?")
	escribeResp ("a) Intentar dialogar para que me dejen continuar")
	escribeResp ("b) Escabullirte por un tunel")
	putStr "\t"

textoKitkat = do
	imagenCalavera
	putStrLn""
	putStrLn ("\tEres tonto? los Ogros no dialogan y odian los kitkat! ")
	putStrLn""
	getLine
	escribeLinea ("No has llegado muy lejos la verdad....Das pena")
	putStr "\t¿Quieres volver a empezar la partida? (escribe si o no) "
	correccionEXE

textoCascada = do
	imagenCalavera
	putStrLn""
	escribeLinea ("A quien se le ocurre tirarse con un flotador por una cascada?")
	escribeLinea ("Tu trabajo se ha mojado, pero tienes un 10 por tu valentia")
	putStr "\t¿Quieres volver a empezar la partida? (escribe si o no) "
	correccionEXE

textoCompletada = do
	putStrLn("\tTu misión ha sido completada.")
	putStrLn""
	getLine
	escribeLinea("Tu trabajo ha sorprendido gratamente a tu profesor.")
	escribeLinea ("Tienes un 10!!")
	putStr "\t¿Quieres volver a empezar la partida? (escribe si o no) "
	correccionEXE

textoCorriendo = do
	putStrLn ("\tSe ha ido corriendo.")
	putStrLn""
	getLine
	escribeLinea ("Es una pena, podrias haber acabado ya, espero que hayas aprendido.")
	escribeLinea ("Te has quedado sin trabajo.")
	putStr "\t¿Quieres volver a empezar la partida? (escribe si o no) "
	correccionEXE

textoRodeado = do
	putStrLn ("\tLos ogros te rodean.")
	putStrLn ""
	getLine
	escribeLinea ("Te meas en los pantalones")
	escribeLinea ("Ellos te proponen que aciertes una adivinanza que te dirán")
	escribeLinea ("Si la aciertas, continuarás, sino, te comerán.")
	escribeResp ("a) Contestaré la adivinanza, hoy estoy que me salgo!!")
	escribeResp ("b) Les doy un kitkat")
	putStr "\t"

textoAdivinanza = do
	putStrLn ""
	putStrLn ("\t¿Cuarg erg la rergpuestarg? (Sí, así hablan los ogros por si no lo sabias)")
	putStrLn""
	getLine
	escribeResp ("a)  Las lentejas")
	escribeResp ("b)  Una baraja")
	escribeResp ("c)  Las servilletas")
	putStr "\t"

textoLentejas = do
	imagenCalavera
	putStrLn""
	putStrLn "\tOhh, no eran las lentejas cariño.... "
	putStrLn""
	getLine
	escribeLinea "Si tenías hambre te podrías haber comido el kitkat de tu bolsillo"
	escribeLinea "\tUps              "
	escribeLinea "Has muerto, los ogros te han comido a ti jeje"
	putStr "\t¿Quieres volver a empezar la partida? (escribe si o no) "
	correccionEXE

textoBaraja = do
	putStrLn "\t¡¡Bravoo!! La has adivinado, los ogros te dejan marchar."
	putStrLn""
	escribeLinea "Después de andar durante cinco horas"
	putStr "\t"
	

textoEmpezar = do
	putStr "\t¿Quieres volver a empezar la partida? (escribe si o no) "
	correccionEXE

textoServilletas = do
	putStrLn "\tNo eran las servilletas..."
	putStrLn ""
	getLine
	escribeLinea "Los ogros no usan servilletas"
	escribeLinea "Igual que tú... según parece "
	escribeLinea "Esas manchas de tomate del pantalón te delatan"
	

textoBarco = do
	putStrLn ("\tExplotan los explosivos ")
	putStrLn ""
	getLine
	escribeLinea ("Pero ocurre algo raro... se ha distorsionado el espacio-tiempo")
	escribeLinea ("Apareces en un barco.")
	escribeLinea ("Un barco que va a la deriba hacia una cascada...")
	escribeLinea ("¿Tienes que salir del barco, que haces?")
	escribeResp ("a) Saltar por la borda con un flotador ")
	escribeResp ("b) Abrir una botella de Ron")
	putStr "\t"

textoMierda = do 
	putStrLn ("\tHas logrado escapar de los Ogros.")
	putStrLn""
	getLine
	escribeLinea ("El túnel te lleva hasta el aula de LTP.")
	escribeLinea ("Por cierto, has chafado una mierda de koala...No se quien la habrá puesto ahí.")
	putStr "\t"
	

textoCampanilla = do
	escribeLinea ("\tAl abrir la botella, has liberado a Campanilla.")
	escribeLinea ("La cual con sus polvos mágicos te lleva hasta la clase de LTP.")

textoFolios = do
	putStrLn ("\t¿Enserio?")
	putStrLn""
	getLine
	escribeLinea ("¿Un trabajo de HASKELL en folios?")
	escribeLinea ("No se entrega un trabajo de programación en folios")
	escribeLinea ("Y menos aún con borrones!!")
	escribeLinea ("Además, no hay nadie en el aula.")
	escribeLinea ("Pero ves que hay un duende escarbando en una esquina ¿Se lo das?")
	escribeResp ("a) Sí, confio en el")
	escribeResp ("b) No, es feo, me da mala espina...")
	putStr "\t"

textoDesconfiado = do
	putStrLn ("\tHas hecho bien en no darselo, creo que se lo hubiese comido")
	putStrLn""
	getLine
	escribeLinea ("Ves que hay un cartel de un locutorio y te diriges a el")
	escribeLinea ("Te piden un euro, que es el coste de enviar tu trabajo a tu profesor")
	escribeLinea ("Pero no tienes dinero encima")
	escribeLinea ("Da la casualidad de que la mierda que habías pisado.")
	escribeLinea ("La cual ya esta seca y se cae a cachos")
	escribeLinea ("Se desprende una moneda de dos euros")
	escribeLinea ("Un euro para el hombre del locutorio")
	escribeLinea ("Y otra para ti para que te lo gastes en golosinas")
	escribeLinea ("¡¡Felicidades!! Has entregado el trabajo, tienes un 10!!")
	putStr "\t¿Quieres volver a empezar la partida? (escribe si o no) "
	correccionEXE

textoMuerto = do
	imagenCalavera
	putStrLn""
	escribeLinea ("Las paredes te han hecho papilla, eres un poco lento")
	putStr "\t¿Quieres volver a empezar la partida? (escribe si o no) "
	correccionEXE

textoEleccion = do
	putStrLn ("\tHas conseguido llegar al aula de LTP.")
	putStrLn""
	getLine
	escribeLinea ("Por fin vas a poder entregar tu trabajo.")
	escribeLinea ("Pero antes vas a tener que hacer una ultima elección.")
	escribeLinea ("Tu nota dependera de ella.")
	escribeResp ("a) Se lo envias por mail")
	escribeResp ("b) Se lo entregas hecho a mano")
	putStr "\t"

--textoOportunidad = do
--	escribeLinea ("Has perdido pero como no la has palmado tienes una última oportunidad")
--	escribeLinea (" Responde esta pregunta ")
--	escribeLinea ("¿Cual de estos años es bisiesto?")
--	escribeLinea (" a) 1994")
--	escribeLinea (" a) 2027")
--	escribeLinea (" a) 1982")
--	escribeLinea (" a) 392")
--	putStr "\t"
	