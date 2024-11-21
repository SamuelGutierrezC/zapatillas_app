//creamos los atributos
class NikeShoes {
  NikeShoes({
    required this.model, 
    required this.oldPrice, 
    required this.currentPrice, 
    required this.images, 
    required this.modelNumber,
    required this.color,
    });
  final String model;
  final double oldPrice;
  final double currentPrice;
  final List<String> images;
  final int modelNumber;
  final int color;

}
//vamos a crear una variable que almacene todos los datos en memoria
final shoes = <NikeShoes>[
  //valores de cada zapatilla, se va a repetir para cada una
  NikeShoes(
    model: 'AIR MAX 90 EZBLACK', 
    oldPrice: 149, 
    currentPrice: 299, 
    images: [
      'lib/nike_shoes_store/shoes1_1.png'
      'lib/nike_shoes_store/shoes1_2.png'
      'lib/nike_shoes_store/shoes1_3.png'
      ], 
    modelNumber: 90,
    //el color en hexadecimal
    color: 0xFFF6F6F6,
  ),
  NikeShoes(
    model: 'AIR MAX 270 Gold', 
    oldPrice: 199, 
    currentPrice: 349, 
    images: [
      'lib/nike_shoes_store/shoes2_1.png'
      'lib/nike_shoes_store/shoes2_2.png'
      'lib/nike_shoes_store/shoes2_3.png'
      ], 
    modelNumber: 270,
    //el color en hexadecimal
    color: 0xFFFCF5EB,
  ),
    NikeShoes(
    model: 'AIR MAX 95 Red', 
    oldPrice: 299, 
    currentPrice: 399, 
    images: [
      'lib/nike_shoes_store/shoes3_1.png'
      'lib/nike_shoes_store/shoes3_2.png'
      'lib/nike_shoes_store/shoes3_3.png'
      ], 
    modelNumber: 96,
    //el color en hexadecimal
    color: 0xFFFEEFEF,
  ),

    NikeShoes(
    model: 'AIR MAX 98 FREE', 
    oldPrice: 149, 
    currentPrice: 299, 
    images: [
      'lib/nike_shoes_store/shoes4_1.png'
      'lib/nike_shoes_store/shoes4_2.png'
      'lib/nike_shoes_store/shoes4_3.png'
      ], 
    modelNumber: 98,
    //el color en hexadecimal
    color: 0xFFEDF3FE,
  ),
];