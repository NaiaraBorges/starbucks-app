import 'package:starbucks_app/src/models/cart_item_model.dart';
import 'package:starbucks_app/src/models/item_model.dart';

ItemModel apple = ItemModel(
  description:
      'Dive into an adventure! Follow the Fantasy Tail Frappuccino® Blended Beverage.',
  imgUrl: 'assets/images/coffee/coffee_2.png',
  itemName: 'Strawberry Cheesecake',
  price: 19.5,
  unit: 'un',
);

ItemModel grape = ItemModel(
  imgUrl: 'assets/images/coffee/coffee_5.png',
  itemName: 'Frappuccino Unicorn',
  price: 21.5,
  unit: 'ml',
  description:
      'Preparado com café, leite, essência de avelã e gelo batidos; a bebida é finalizada com chantilly e calda mocha.',
);

ItemModel guava = ItemModel(
  imgUrl: 'assets/images/coffee/coffee_3.png',
  itemName: 'Strawberry Cheesecake',
  price: 23.50,
  unit: 'kg',
  description:
      'Preparado com café, leite, essência de avelã e gelo batidos; a bebida é finalizada com chantilly e calda mocha.',
);

ItemModel kiwi = ItemModel(
  imgUrl: 'assets/images/coffee/coffee_6.png',
  itemName: 'Coffee Latte Unicorn',
  price: 19.5,
  unit: 'un',
  description:
      'O melhor kiwi da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel mango = ItemModel(
  imgUrl: 'assets/images/coffee/coffee_4.png',
  itemName: 'Sakura Frappuccino',
  price: 21.5,
  unit: 'un',
  description:
      'Nesse frappuccino, pedacinhos de shiratama são rosa claro e aparecem na calda, que é combinada com uma base de leite feita com pó de flor de cerejeira e suco de morango e então misturada com gelo.',
);

ItemModel papaya = ItemModel(
  imgUrl: 'assets/images/coffee/coffee_1.png',
  itemName: 'Matcha Frappuccino',
  price: 23.50,
  unit: 'kg',
  description:
      'O melhor mamão da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

// Lista de produtos
List<ItemModel> items = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya,
];

List<String> categories = [
  'Frappuccino',
  'Café',
  'Chá',
  'Drinks',
  'Breakfast',
];

List<CartItemModel> cartItems = [
  CartItemModel(
    item: apple,
    quantity: 2,
  ),
  CartItemModel(
    item: grape,
    quantity: 1,
  ),
  CartItemModel(
    item: kiwi,
    quantity: 2,
  ),
];
