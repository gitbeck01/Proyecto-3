CREATE DATABASE trailerflix
default character set utf8mb4;

USE trailerflix;


-- Crear tabla `contenido`
CREATE TABLE contenido (
  id INT NOT NULL AUTO_INCREMENT,
  poster VARCHAR(255) NOT NULL,
  titulo VARCHAR(255) NOT NULL,
  resumen TEXT NOT NULL,
  temporadas INT NOT NULL,
  trailer VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

-- Crear tabla `categoria`
CREATE TABLE categoria (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

-- Crear tabla intermedia `contenido_categoria`
CREATE TABLE contenido_categoria (
  contenido_id INT NOT NULL,
  categoria_id INT NOT NULL,
  PRIMARY KEY (contenido_id, categoria_id),
  FOREIGN KEY (contenido_id) REFERENCES contenido (id),
  FOREIGN KEY (categoria_id) REFERENCES categoria (id)
);

-- Crear tabla `genero`
CREATE TABLE genero (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

-- Crear tabla `contenido_genero`
CREATE TABLE contenido_genero (
  contenido_id INT NOT NULL,
  genero_id INT NOT NULL,
  PRIMARY KEY (contenido_id, genero_id),
  FOREIGN KEY (contenido_id) REFERENCES contenido (id),
  FOREIGN KEY (genero_id) REFERENCES genero (id)
);

-- Crear tabla `actores`
CREATE TABLE actores (
  id INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

-- Crear tabla intermedia `contenido_actor`
CREATE TABLE contenido_actor (
  contenido_id INT NOT NULL,
  actor_id INT NOT NULL,
  PRIMARY KEY (contenido_id, actor_id),
  FOREIGN KEY (contenido_id) REFERENCES contenido (id),
  FOREIGN KEY (actor_id) REFERENCES actores (id)
);
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(1,"/posters/1.jpg","The Crown", "Este drama narra las rivalidades políticas y el romance de la reina Isabel II, así como los sucesos que moldearon la segunda mitad del siglo XX.",4,"");
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(2,"/posters/2.jpg","Riverdale" ,"El paso a la edad adulta incluye sexo, romance, escuela y familia. Para Archie y sus amigos, también hay misterios oscuros.",5,""); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(3,"/posters/3.jpg","The Mandalorian", "Ambientada tras la caída del Imperio y antes de la aparición de la Primera Orden, la serie sigue los pasos de un pistolero solitario en las aventuras que protagoniza en los confines de la galaxia, donde no alcanza la autoridad de la Nueva República.",2,"https://www.youtube.com/embed/aOC8E8z_ifw"); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(4,"/posters/4.jpg","The Umbrella Academy", "La muerte de su padre reúne a unos hermanos distanciados y con extraordinarios poderes que descubren impactantes secretos y una amenaza que se cierne sobre la humanidad.",1,""); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(5,"/posters/5.jpg","Gambito de Dama", "En los cincuenta, una joven de un orfanato descubre que tiene un increíble don para el ajedrez y recorre el arduo camino a la fama mientras lucha contra las adicciones.",1,""); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(6,"/posters/6.jpg","Enola Holmes", "La hermana menor de Sherlock, descubre que su madre ha desaparecido y se dispone a encontrarla. En su búsqueda, saca a relucir el sabueso que corre por sus venas y se encuentra con una conspiración que gira en torno a un misterioso lord, demostrando que su ilustre hermano no es el único talento en la familia.",0,""); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(7,"/posters/7.jpg","Guasón", "Arthur Fleck (Phoenix) es un hombre ignorado por la sociedad, cuya motivación en la vida es hacer reír. Pero una serie de trágicos acontecimientos le llevarán a ver el mundo de otra forma. Película basada en el popular personaje de DC Comics Joker, conocido como archivillano de Batman, pero que en este film tomará un cariz más realista y oscuro.",0,"https://www.youtube.com/embed/zAGVQLHvwOY"); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(8,"/posters/8.jpg","Avengers: End Game", "Después de los devastadores eventos de los Vengadores: Infinity War (2018), el universo está en ruinas. Con la ayuda de los aliados restantes, los Vengadores se reúnen una vez más para revertir las acciones de Thanos y restaurar el equilibrio del universo.",0,""); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(9,"/posters/9.jpg","Juego de tronos", "En un mundo fantástico y en un contexto medieval varias familias, relativas a la nobleza, se disputan el poder para dominar el territorio ficticio de Poniente (Westeros) y tomar el control de los Siete Reinos desde el Trono de Hierro, lugar donde el rey ejerce el poder.",8,""); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(10,"/posters/10.jpg","The Flash", "Sigue las veloces aventuras de Barry Allen, un joven común y corriente con el deseo latente de ayudar a los demás. Cuando una inesperada partícula aceleradora golpea por accidente a Barry, de pronto se encuentra cargado de un increíble poder para moverse a increíbles velocidades. Mientras Barry siempre ha tenido el alma de un héroe, sus nuevos poderes le han dado la capacidad de actuar como tal.",6,""); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(11,"/posters/11.jpg","The Big Bang Theory", "Leonard y Sheldon son dos físicos que comparten trabajo y apartamento. La serie comienza con la mudanza de Penny, su nueva y atractiva vecina, y hace hincapié en la dificultad de los físicos para relacionarse con personas fuera de su entorno para dar lugar a situaciones cómicas.",12,"https://www.youtube.com/embed/WBb3fojgW0Q"); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(12,"/posters/12.jpg","Friends", "'Friends' narra las aventuras y desventuras de seis jóvenes de Nueva York: Rachel, Monica, Phoebe, Ross, Chandler y Joey. Ellos forman una unida pandilla de amigos que viven en Manhattan y que suelen reunirse en sus apartamentos o en su bar habitual cafetería, el Central Perk. A pesar de los numerosos cambios que se producen en sus vidas, su amistad es inquebrantable en la dura batalla por salir adelante en sus periplos profesionales y personales.",10,""); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(13,"/posters/13.jpg","Anne with an 'E'", "Anne Shirley es una niña huérfana que vive en un pequeño pueblo llamado Avonlea que pertenece a la Isla del Príncipe Eduardo, en el año 1890. Después de una infancia difícil, donde fue pasando de orfanato a hogares de acogida, es enviada por error a vivir con una solterona y su hermano. Cuando cumple 13 años, Anne va a conseguir transformar su vida y el pequeño pueblo donde vive gracias a su fuerte personalidad, intelecto e imaginación. Basada en la inolvidable novela.",2,""); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(14,"/posters/14.jpg","Expedientes Secretos 'X'", "Fox Mulder y Dana Scully son dos investigadores del FBI que investigan casos sin resolución ni explicación, ya sea por razones paranormales (espíritus, criaturas extrañas, aliens...) ya porque el gobierno se ha encargado de ocultar todo tipo de pruebas. Cuando Mulder tenía doce años, su hermana pequeña fue secuestrada por unos desconocidos, aunque él cree que, en realidad, fue abducida por extraterrestres. Tras acabar sus estudios en la universidad de Oxford, ingresó en la Academia de Quantico, donde se ganó el apodo de 'siniestro'",11,"https://www.youtube.com/embed/KKziOmsJxzE"); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(15,"/posters/15.jpg","Chernobyl", "Sigue «la verdadera historia de una de las peores catástrofes provocadas por el hombre y habla de los valientes hombres y mujeres que se sacrificaron para salvar a Europa de un desastre inimaginable. La miniserie se centra en el desgarrador alcance del desastre de la planta nuclear que ocurrió en Ucrania en abril de 1986, revelando cómo y por qué ocurrió, además contando las sorprendentes y notables historias de los héroes que lucharon y cayeron.",1,"https://www.youtube.com/embed/s9APLXM9Ei8"); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(16,"/posters/16.jpg","Westworld", "'Westworld' es una oscura odisea acerca del amanecer de la conciencia artificial y la evolución del pecado. Situada en la intersección del futuro cercano y el pasado reimaginado, explora un mundo donde cada apetito humano, sin importar cuán noble o depravado, puede ser saciado. Está ambientada en un parque temático futurista dirigido por el Dr. Robert Ford (Anthony Hopkins). Las instalaciones cuentan con androides caracterizados del western americano, y gracias a ellos los visitantes pueden introducirse en cualquier tipo de fantasía por muy oscura que sea.",3,"https://www.youtube.com/embed/qLFBcdd6Qw0"); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(17,"/posters/17.jpg","Halt and Catch Fire", "Situada en los inicios de la década de 1980, un visionario ficticio, un ingeniero electrónico y una prodigiosa ingeniera, se alían a una programadora de software para confrontar con las corporaciones informáticas dominantes de la época. El Personal de la firma y sus socios de negocio, comenzarán una carrera que cambiará la cultura en el Estado de Texas, cuna de las empresas de tecnología, casi de la misma forma que lo es hoy Silicon Valey. 
 Esta historia ficticia emula el trabajo realizado, en su momento, por la firma Compaq, cuando clonó el BIOS de las Computadoras Personales IBM, dando vida así al económico mercado de los clones. Mostrando también, a lo largo de sus 4 temporadas, el nacimiento de la arquitectura abierta de hardware, los videojuegos online, las salas de chat y de trueque de productos físicos, los BBS, y las primeras nubes computacionales, hasta la llegada de Internet (sin dejar afuera la guerra de los web browsers).",4,"https://www.youtube.com/embed/pWrioRji60A"); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(18,"/posters/18.jpg","Ava", "Ava es una mortífera asesina a sueldo que trabaja para una organización de operaciones encubiertas, que viaja por todo el mundo acabando con aquellos objetivos que nadie más puede derribar. Cuando uno de sus encargos sale mal, Ava tendrá que luchar por una vida.",0,""); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(19,"/posters/19.jpg","Aves de presa y la fantabulosa emancipación de una Harley Quinn", "Después de separarse de Joker, Harley Quinn y otras tres heroínas (Canario Negro, Cazadora y Renée Montoya) unen sus fuerzas para salvar a una niña (Cassandra Cain) del malvado rey del crimen Máscara Negra.",0,""); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(20,"/posters/20.jpg","Archivo", "2038: George Almore está trabajando en una verdadera IA equivalente a la humana. Su último prototipo está casi listo. Esta fase sensible también es la más arriesgada. Especialmente porque tiene un objetivo que debe ocultarse a toda costa: reunirse con su esposa muerta.",0,"https://www.youtube.com/embed/VHSoCnDioAo"); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(21,"/posters/21.jpg","Jumanji - The next level", "Las aventuras continúan en el fantástico mundo del video juego Jumanji, donde nada es lo que parece. En esta ocasión, los jugadores vuelven al juego, pero sus personajes se han intercambiado entre sí, lo que ofrece un curioso plantel: los mismos héroes con distinta apariencia y habilidades. Pero, ¿dónde está el resto de la gente?",0,"https://www.youtube.com/embed/rBxcF-r9Ibs"); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(22,"/posters/22.jpg","3022", "La película está ambientada en una estación espacial en el futuro. La tripulación sufre un estrés traumático y considera abandonar su misión después de observar lo que creen que es la destrucción de la Tierra. La película se muestra como una serie de flashbacks y flash-forward.",0,"https://www.youtube.com/embed/AGQ7OkmIx4Q"); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(23,"/posters/23.jpg","IT - Capítulo 2", "En este segundo capitulo Han pasado 27 años desde que el 'Club de los Perdedores', formado por Bill, Berverly, Richie, Ben, Eddie, Mike y Stanley, se enfrentaran al macabro y despiadado Pennywise (Bill Skarsgård). En cuanto tuvieron oportunidad, abandonaron el pueblo de Derry, en el estado de Maine, que tantos problemas les había ocasionado. Sin embargo, ahora, siendo adultos, parece que no pueden escapar de su pasado. Todos deberán enfrentarse de nuevo al temible payaso para descubrir si de verdad están preparados para superar sus traumas de la infancia.",0,"https://www.youtube.com/embed/hZeFeYSmBcg"); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(24,"/posters/24.jpg","Pantera Negra", "T’Challa (Chadwick Boseman) regresa a su hogar en la apartada nación africana de Wakanda para servir como líder de su país. Tras suceder a su padre en el trono, pasa a convertirse en Pantera Negra, una sigilosa criatura de la noche, con agudos sentidos felinos y otras habilidades como súper fuerza e inteligencia, agilidad, estrategia o maestro del combate sin armas. Es bajo el liderazgo de T’Challa como Wakanda consigue convertirse en una de las naciones más ricas y tecnológicamente avanzadas del planeta.",0,"https://www.youtube.com/embed/BE6inv8Xh4A"); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(25,"/posters/25.jpg","Contra lo imposible (Ford versus Ferrari)", "Los ganadores del Premio de la Academia® Matt Damon y Christian Bale protagonizan CONTRA LO IMPOSIBLE, basada en la historia real del visionario diseñador americano de automóviles Carroll Shelby (Damon) y el intrépido piloto británico Ken Miles (Bale). Juntos construyen un nuevo coche de carreras para Ford Motor Company y así enfrentar a Enzo Ferrari en las 24 Horas de Le Mans en Francia en 1966.",0,"https://www.youtube.com/embed/SOVb0-2g1Q0"); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(26,"/posters/26.jpg","Centígrados", "Una joven pareja estadounidense viaja a las montañas árticas de Noruega. Después de detenerse durante una tormenta de nieve, se despiertan atrapados en su SUV, enterrados bajo capas de nieve y hielo.",0,""); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(27,"/posters/27.jpg","DOOM: Aniquilación", "Doom: Aniquilación sigue a un grupo de marines espaciales que han respondido a una llamada de alerta de una base en la luna marciana, solo para descubrir que ha sido tomada por criaturas demoníacas que amenazan con desatar el infierno en la tierra.",0,"https://www.youtube.com/embed/nat3u3gAVLE"); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(28,"/posters/28.jpg","Contagio", "De repente, sin saber cuál es su origen, aunque todo hace sospechar que comienza con el viaje de una norteamericana a un casino de Hong Kong, un virus mortal comienza a propagarse por todo el mundo. En pocos días, la enfermedad empieza a diezmar a la población. El contagio se produce por mero contacto entre los seres humanos. Un thriller realista y sin efectos especiales sobre los efectos de una epidemia.",0,"https://www.youtube.com/embed/4sYSyuuLk5g"); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(29,"/posters/29.jpg","Viuda Negra", "Primera pelicula individual de la Viuda Negra en el universo cinematografico de Marvel, contando su historia desde que se inició como doble agente rusa, su niñez, sus misiones, y su actualidad, después de Avengers.",0,"https://www.youtube.com/embed/BIn8iANwEog"); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(30,"/posters/30.jpg","The Martian", "Durante una misión a Marte de la nave tripulada Ares III, una fuerte tormenta se desata dando por desaparecido y muerto al astronauta Mark Watney (Matt Damon), sus compañeros toman la decisión de irse pero él ha sobrevivido. Está solo y sin apenas recursos en el planeta. Con muy pocos medios deberá recurrir a sus conocimientos, su sentido del humor y un gran instinto de supervivencia para lograr sobrevivir y comunicar a la Tierra que todavía está vivo esperando que acudan en su rescate.",0,"https://www.youtube.com/embed/XvB58bCVfng"); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(31,"/posters/31.jpg","Ex-Machina", "Un programador multimillonario selecciona a Caleb, un joven empleado de su empresa, para que pase una semana en un lugar remoto con el objetivo de que participe en un test en el que estará involucrada su última creación: un robot-mujer en el que inteligencia artificial lo es todo.",0,"https://www.youtube.com/embed/XRYL5spvEcI"); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(32,"/posters/32.jpg","Jurassic World", "Veintidós años después de lo ocurrido en Jurassic Park, la isla Nublar ha sido transformada en un enorme parque temático, Jurassic Wold, con versiones «domesticadas» de algunos de los dinosaurios más conocidos. Cuando todo parece ir sobre ruedas y ser el negocio del siglo, un nuevo dinosaurio de especie desconocida, pues ha sido creado manipulando genéticamente su ADN, y que resulta ser mucho más inteligente de lo que se pensaba, se escapa de su recinto y comienza a causar estragos entre los visitantes del Parque.",0,""); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(33,"/posters/33.jpg","Soy leyenda", "Años después de que una plaga mate a la mayoría de la humanidad y transforme al resto en monstruos, el único superviviente en la ciudad de Nueva York lucha valientemente para encontrar una cura.",0,"https://www.youtube.com/embed/dtKMEAXyPkg"); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(34,"/posters/34.jpg","El primer hombre en la luna", "Cuenta la historia de la misión de la NASA que llevó al primer hombre a la luna, centrada en Neil Armstrong (interpretado por Ryan Gosling) y el periodo comprendido entre los años 1961 y 1969. Un relato en primera persona, basado en la novela de James R. Hansen, que explora el sacrificio y el precio que representó, tanto para Armstrong como para Estados Unidos, una de las misiones más peligrosas de la historia.",0,""); 
insert into contenido(id,poster,titulo,resumen,temporadas,trailer) values(35,"/posters/35.jpg","Titanes del pacífico - La insurrección", "Han pasado 10 años tras la primera invasión que sufrió la humanidad, pero la lucha aún no ha terminado. El planeta vuelve a ser asediado por los Kaiju, una raza de alienígenas colosales, que emergen desde un portal interdimensional con el objetivo de destruir a la raza humana. Ante esta nueva amenaza, los Jaegers, robots gigantes de guerra pilotados por dos personas para sobrellevar la inmensa carga neuronal que conlleva manipularlos, ya no están a la altura de lo que se les viene encima. Será entonces cuando los supervivientes de la primera invasión, además de nuevos personajes como el hijo de Pentecost, tendrán que idear la manera de sorprender al enorme enemigo, apostando por nuevas estrategias defensivas y de ataque. Con la Tierra en ruinas e intentando reconstruirse, esta nueva batalla puede ser decisiva para el futuro.",0,""); 

INSERT INTO categoria(id,nombre)
VALUES (NULL, "serie"),
       (NULL, "serie"),
       (NULL, "serie"),
       (NULL, "serie"),
       (NULL, "serie"),
       (NULL, "película"),
       (NULL, "película"),
       (NULL, "película"),
       (NULL, "serie"),
       (NULL, "serie"),
       (NULL, "serie"),
       (NULL, "serie"),
       (NULL, "serie"),
       (NULL, "serie"),
       (NULL, "serie"),
       (NULL, "serie"),
       (NULL, "serie"),
       (NULL, "pelicula"),
       (NULL, "pelicula"),
       (NULL, "pelicula"),
       (NULL, "pelicula"),
       (NULL, "pelicula"),
       (NULL, "pelicula"),
       (NULL, "pelicula"),
       (NULL, "pelicula"),
       (NULL, "pelicula"),
       (NULL, "pelicula"),
       (NULL, "pelicula"),
       (NULL, "pelicula"),
       (NULL, "pelicula"),
       (NULL, "pelicula"),
       (NULL, "pelicula"),
       (NULL, "pelicula"),
       (NULL, "pelicula"),
       (NULL, "pelicula");
       
INSERT INTO actores(id, nombre)
VALUES (NULL,  "Claire Fox, Olivia Colman, Matt Smith, Tobias Menzies, Vanesa Kirby, Helena Bonham Carter"),
       (NULL,  "Lili Reinhart, Casey Cott, Camila Mendes, Marisol Nichols, Madelaine Petsch, Mädchen Amick"),
       (NULL,  "Pedro Pascal, Carl Weathers, Misty Rosas, Chris Bartlett, Rio Hackford, Giancarlo Esposito"),
       (NULL,  "Tom Hopper, David Castañeda, Emmy Raver-Lampman, Robert Sheehan, Aidan Gallagher, Elliot Page"),
       (NULL,  "Anya Taylor-Joy, Thomas Brodie-Sangster, Harry Melling, Moses Ingram, Chloe Pirrie, Janina Elkin"),
       (NULL,  "Millie Bobby Brown, Henry Cavill, Sam Claflin, Helena Bonham Carter, Louis Partridge, Adeel Akhtar"),
       (NULL,  "Joaquin Phoenix, Robert De Niro, Zazie Beetz, Frances Conroy, Brett Cullen, Shea Whigham"),
       (NULL,  "Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner"),
       (NULL,  "Emilia Clarke, Lena Headey, Sophie Turner, Kit Harington, Peter Dinklage, Nikolaj Coster-Waldau"),
       (NULL,  "Grant Gustin, Carlos Valdes, Danielle Panabaker, Candice Patton, Jesse L. Martin, Tom Cavanagh"),
       (NULL,  "Jim Parsons, Johnny Galecki, Kaley Cuoco, Simon Helberg, Kunal Nayyar, Melissa Rauch, Mayim Bialik"),
       (NULL,  "Jennifer Aniston, Courteney Cox, Lisa Kudrow, David Schwimmer, Matthew Perry, Matt LeBlanc"),
       (NULL,  "Amybeth McNulty, Geraldine James, R. H. Thomson, Corrine Koslo, Dalila Bela, Lucas Jade Zumann"),
       (NULL,  "Gillian Anderson, David Duchovny, Mitch Pileggi, Robert Patrick, Tom Braidwood, Bruce Harwood"),
       (NULL,  "Jared Harris, Stellan Skarsgård, Emily Watson, Paul Ritter, Jessie Buckley, Adam Nagaitis"), 
       (NULL,  "Evan Rachel Wood, Thandie Newton, Jeffrey Wright, Tessa Thompson, Ed Harris, Luke Hemsworth"),
       (NULL,  "Lee Pace, Scoot McNairy, Mackenzie Davis, Kerry Bishé, Toby Huss, Alana Cavanaugh"),
       (NULL,  "Jessica Chastain, John Malkovich, Colin Farrell, Common, Geena Davis, Ioan Gruffudd"),
       (NULL,  "Margot Robbie, Ewan McGregor, Mary Elizabeth Winstead, Jurnee Smollett, Rosie Perez, Chris Messina"),
       (NULL,  "Stacy Martin, Rhona Mitra, Theo James, Peter Ferdinando, Lia Williams, Toby Jones"),
       (NULL,  "Dwayne Johnson, Kevin Hart, Jack Black, Karen Gillan, Awkwafina, Nick Jonas"),
       (NULL,  "Miranda Cosgrove, Kate Walsh, Omar Epps, Angus Macfadyen, Jorja Fox, Enver Gjokaj"),
       (NULL,  "Bill Skarsgård, Jessica Chastain, Bill Hader, James McAvoy, Isaiah Mustafa, Jay Ryan"),
       (NULL,  "Chadwick Boseman, Michael B. Jordan, Lupita Nyong'o, Danai Gurira, Martin Freeman, Daniel Kaluuya"),
       (NULL,  "Christian Bale, Matt Damon, Caitriona Balfe, Josh Lucas, Noah Jupe, Jon Bernthal"),
       (NULL,  "Génesis Rodríguez, Vincent Piazza, Benjamin Sokolow, Emily Bayiokos"),
       (NULL,  "Amy Manson, Luke Allen-Gale, Nina Bergman, Dominic Mafham, James Weber Brown, Lorina Kamburova"),
       (NULL,  "Marion Cotillard, Matt Damon, Laurence Fishburne, Jude Law, Kate Winslet, Jennifer Ehle, Gwyneth Paltrow"),
       (NULL,  "Scarlett Johansson, Florence Pugh, David Harbour, O.T. Fagbenle, Rachel Weisz, William Hurt, Ray Winstone"),
       (NULL,  "Matt Damon, Jessica Chastain, Kristen Wiig, Jeff Daniels, Michael Peña, Sean Bean, Kate Mara"),
       (NULL,  "Alicia Vikander, Domhnall Gleeson, Oscar Isaac, Sonoya Mizuno, Corey Johnson, Claire Selby, Gana Bayarsaikhan"),
       (NULL,  "Bryce Dallas Howard, Chris Pratt, Irrfan Khan, Vincent D'Onofrio, Omar Sy, Nick Robinson, Judy Greer"),
       (NULL,  "Will Smith, Alice Braga, Charlie Tahan, Dash Mihok, Salli Richardson-Whitfield, Willow Smith, Emma Thompson"),
       (NULL,  "Ryan Gosling, Claire Foy, Jason Clarke, Kyle Chandler, Corey Stoll, Patrick Fugit"),
       (NULL,  "John Boyega, Scott Eastwood, Cailee Spaeny, Jing Tian, Rinko Kikuchi, Burn Gorman"); 
       
INSERT INTO genero (id, nombre)
VALUES (NULL, "Drama, Hechos verídicos"),
       (NULL, "Drama, Misterio, Ficción"),
       (NULL, "Sci-Fi, Fantasía"),
       (NULL, "Sci-Fi, Fantasía"),
       (NULL, "Drama, Ficción, Sucesos"),
       (NULL, "Ficción, Drama, Misterio"),
       (NULL, "Crimen, Suspenso, Drama"),
       (NULL, "Aventura, Sci-Fi, Acción"),
       (NULL, "Aventura, Fantasía, Drama"),
       (NULL, "Sci-Fi, Fantasía"),
       (NULL, "Comedia, Fantasía, Ficción"),
       (NULL, "Comedia, Familia, Drama"),
       (NULL, "Drama, Familia, Western"),
       (NULL, "Drama, Sci-Fi"),
       (NULL, "Drama, Hechos verídicos"),
       (NULL, "Western, Sci-Fi"),
       (NULL, "Ficción, Drama, Tecnología"),
       (NULL, "Acción, Drama, Suspenso"),
       (NULL, "Acción, Ficción, Comedia"),
       (NULL, "Acción, Sci-Fi, Suspenso"),
       (NULL, "Comedia, Ficción, Aventura"),
       (NULL, "Sci-Fi, Suspenso"),
       (NULL, "Terror, Suspenso, Fantasía"),
       (NULL, "Acción, Aventura, Fantasía"),
       (NULL, "Drama, Historia, Aventura"),
       (NULL, "Drama, Suspenso, Intriga"),
       (NULL, "Acción, Sci-Fi, Terror"),
       (NULL, "Drama, Suspenso, Ficción"),
       (NULL, "Drama, Acción, Aventura"),
       (NULL, "Drama, Sci-Fi, Aventura"),
       (NULL, "Drama, Sci-Fi, Suspenso"),
       (NULL, "Suspenso, Aventura, Ficción"),
       (NULL, "Drama, Terror, Ficción"),
       (NULL, "Drama, Hechos verídicos"),
       (NULL, "Acción, Fantasía, Sci-Fi");  
       
INSERT INTO contenido_categoria (contenido_id, categoria_id)    
VALUES (1,1),
       (2,2),
       (3,3),
       (4,4),
       (5,5),
       (6,6),
       (7,7),
       (8,8),
       (9,9),
       (10,10),
       (11,11),
       (12,12),
       (13,13),
       (14,14),
       (15,15),
       (16,16),
       (17,17),
       (18,18),
       (19,19),
       (20,20),
       (21,21),
       (22,22),
       (23,23),
       (24,24),
       (25,25),
       (26,26),
       (27,27),
       (28,28),
       (29,29),
       (30,30),
       (31,31),
       (32,32),
       (33,33),
       (34,34),
       (35,35);
       
       
INSERT INTO contenido_genero (contenido_id, genero_id)
VALUES (1,1),
       (2,2),
       (3,3),
       (4,4),
       (5,5),
       (6,6),
       (7,7),
       (8,8),
       (9,9),
       (10,10),
       (11,11),
       (12,12),
       (13,13),
       (14,14),
       (15,15),
       (16,16),
       (17,17),
       (18,18),
       (19,19),
       (20,20),
       (21,21),
       (22,22),
       (23,23),
       (24,24),
       (25,25),
       (26,26),
       (27,27),
       (28,28),
       (29,29),
       (30,30),
       (31,31),
       (32,32),
       (33,33),
       (34,34),
       (35,35);

INSERT INTO contenido_actor (contenido_id, actor_id)    
VALUES (1,1),
       (2,2),
       (3,3),
       (4,4),
       (5,5),
       (6,6),
       (7,7),
       (8,8),
       (9,9),
       (10,10),
       (11,11),
       (12,12),
       (13,13),
       (14,14),
       (15,15),
       (16,16),
       (17,17),
       (18,18),
       (19,19),
       (20,20),
       (21,21),
       (22,22),
       (23,23),
       (24,24),
       (25,25),
       (26,26),
       (27,27),
       (28,28),
       (29,29),
       (30,30),
       (31,31),
       (32,32),
       (33,33),
       (34,34),
       (35,35);

       CREATE VIEW obtenervistageneral AS
SELECT
  c.id,
  c.poster,
  c.titulo,
  c.temporadas,
  c.trailer,
  a.nombre AS actor
FROM contenido c
INNER JOIN contenido_actor ca ON c.id = ca.contenido_id
INNER JOIN actores a ON ca.actor_id = a.id;
