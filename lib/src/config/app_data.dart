import 'package:starbucks_app/src/models/item_model.dart';

ItemModel apple = ItemModel(
  description:
      'Dive into an adventure! Follow the Fantasy Tail Frappuccino® Blended Beverage.',
  imgUrl: 'assets/images/coffee/coffee_1.png',
  itemName: 'Fantasy Tail',
  price: 5.5,
  unit: 'kg',
);

ItemModel grape = ItemModel(
  imgUrl: 'assets/images/coffee/coffee_5.png',
  itemName: 'Frappuccino Avelã',
  price: 13.90,
  unit: 'kg',
  description:
      'Preparado com café, leite, essência de avelã e gelo batidos; a bebida é finalizada com chantilly e calda mocha.',
);

ItemModel guava = ItemModel(
  imgUrl: 'assets/images/coffee/coffee_2.png',
  itemName: 'Strawberry Cheesecake',
  price: 13.90,
  unit: 'kg',
  description:
      'Preparado com café, leite, essência de avelã e gelo batidos; a bebida é finalizada com chantilly e calda mocha.',
);

ItemModel kiwi = ItemModel(
  imgUrl: 'assets/images/coffee/coffee_1.png',
  itemName: 'Coffee Latte Unicorn',
  price: 2.5,
  unit: 'un',
  description:
      'O melhor kiwi da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel mango = ItemModel(
  imgUrl: 'assets/images/coffee/coffee_4.png',
  itemName: 'Manga',
  price: 2.5,
  unit: 'un',
  description:
      'A melhor manga da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel papaya = ItemModel(
  imgUrl: 'assets/images/coffee/coffee_3.png',
  itemName: 'Mamão papaya',
  price: 8,
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
