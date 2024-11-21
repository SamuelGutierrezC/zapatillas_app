// Importamos el paquete de Material Design para usar los widgets predefinidos de Flutter.
import 'package:flutter/material.dart';
import 'package:zapatillas_app/nike_shoes_store_app/nike_shoes.dart';

// Definimos la clase principal de la aplicación que extiende de StatelessWidget.
class MainNikeShoesStore extends StatelessWidget {
  const MainNikeShoesStore({super.key});

  // Sobrescribimos el método build, que construye la interfaz de usuario.
  @override
  Widget build(BuildContext context) {
    // Retornamos un MaterialApp como contenedor principal de la aplicación.
    return MaterialApp(
      // Ocultamos el debug que aparece por defecto.
      debugShowCheckedModeBanner: false,
      // Establecemos el tema principal de la aplicación como tema claro.
      theme: ThemeData.light(),
      // Configuramos la pantalla inicial de la aplicación.
      home: const MainNikeShoesStore(), // Esto provoca un problema de recursión infinita.
    );
  }
}

// Creamos otra clase que representa la pantalla principal de la tienda Nike.
class NikeShoesStoreHome extends StatelessWidget {
  const NikeShoesStoreHome({super.key});

  // Sobrescribimos el método build para definir la estructura de la interfaz.
  @override
  Widget build(BuildContext context) {
    // Retornamos un Scaffold, que estructura la pantalla principal.
    return Scaffold(
      // Establecemos el color de fondo como blanco.
      backgroundColor: Colors.white,
      // Definimos el cuerpo de la pantalla como un widget Column.
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              // Estiramos los elementos a lo largo del eje horizontal.
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // Añadimos una lista de widgets hijos dentro de la columna.
              children: <Widget>[
                // Mostramos una imagen usando el widget Image.asset.
                Image.asset(
                  // Ruta del archivo de imagen en el proyecto.
                  'lib/nike_shoes_store/nike_logo.png',
                  // Establecemos la altura de la imagen en 40 píxeles.
                  height: 40,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: shoes.length,
                    itemBuilder: (context, index){
                      final shoesItem = shoes[index];
                      return NikeShoesItem(shoesItem: shoesItem);
                    },
                  ),
                )
              ],
            ),
          ),
          //para colocar en la parte de abajo
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            //el tamaño que tiene la barra de arriba
            height: kToolbarHeight,
            child: Container(
              color: Colors.white.withOpacity(0.7),              
              child: const Row(
                children: <Widget>[
                  //se añade el icono de casita
                  Expanded(
                    child: Icon(Icons.home),
                  ),
                  //se añade el icono de una lupita
                  Expanded(
                    child: Icon(Icons.search),
                  ),
                  //se añade el icono de favorito(un corazón)
                  Expanded(
                    child: Icon(Icons.favorite_border),
                  ),
                  //se añade un carrito
                  Expanded(
                    child: Icon(Icons.shopping_cart),
                  ),
                  //colocamos el avatar
                  Expanded(
                    child: Center(
                      child: CircleAvatar(
                        radius: 13,
                        backgroundImage: AssetImage('lib/nike_shoes_store/logo.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class NikeShoesItem extends StatelessWidget {
  const NikeShoesItem({super.key, 
  required this.shoesItem});

  final NikeShoes shoesItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned.fill(
            child: Container(
              color: Color(shoesItem.color),
            ),
          ),
        ],
      ),
    );
  }
}
