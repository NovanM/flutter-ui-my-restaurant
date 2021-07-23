part of 'models.dart';

class MenuName {
  String name;
  int price;
  String imgAsset;
  String description;

  MenuName({
    @required this.name,
    @required this.price,
    @required this.imgAsset,
    this.description,
  });
}

var menuNameList = [
  MenuName(
      name: 'Smoked Steak',
      price: 200,
      imgAsset: 'assets/images/Food5.jpg',
      description:
          'Smoked steak is an incredibly delicious way to prepare steak. The steak comes off the grill juicy and full of flavour. You don\'t need to get fancy with seasonings, as the smoke does most of the work for you'),
  MenuName(
    name: 'Spicy Salad',
    price: 199,
    imgAsset: 'assets/images/Food1.jpg',
    description:
        'This Sambharo: Indian Spiced Carrot and Cabbage Salad by Mira Manek is so healthy and loaded with fresh veggies! This light salad will add some heat to any entree!',
  ),
  MenuName(
      name: 'Salad Spring rolls',
      price: 110,
      imgAsset: 'assets/images/Food4.jpg',
      description:
          'Spring rolls are filled with minced vegetables, seafood, poultry, or meat, folded into a food wrapper made from dough or rice paper that is rolled after being folded and is then baked, deep fried, or steamed.'),
  MenuName(
      name: 'Sweet Fruits with Omelette',
      price: 200,
      imgAsset: 'assets/images/Food2.jpg',
      description:
          'Vary the filling – try adding strawberries and other berries to a few spoonfuls of Greek yoghurt. To make a savoury omelette simply omit the sugar and fill with cooked tomatoes and bacon'),
  MenuName(
      name: 'Soup egg',
      price: 100,
      imgAsset: 'assets/images/Food3.jpg',
      description:
          ' egg drop soup is a staple at Chinese restaurants across the United States. It\'s typically made with lightly-seasoned chicken or veggie broth, and filled with delicious egg \“ribbons\”, which are created by whisking raw eggs into the simmering broth'),
  MenuName(
      name: 'Orange with Strawberry',
      price: 50,
      imgAsset: 'assets/images/Drink1.jpg',
      description:
          'Strawberry Orange juice is a refreshing fresh fruit juice recipe perfect for breakfast, happy hour and parties too'),
  MenuName(
      name: 'StrawBerry Milk',
      price: 99,
      imgAsset: 'assets/images/Drink2.jpg',
      description:
          'Fruity, creamy, subtly sweet, it\'s pretty much all your strawberries and cream dreams come to life. And it\'s made entirely from scratch. No pink powder required. '),
  MenuName(
      name: 'Grape with Strawberry juice',
      price: 66,
      imgAsset: 'assets/images/Drink3.jpg',
      description:
          'Strawberry grapes live up their name with an intense, sweet taste with notes of, you guessed it, strawberries! While they are not entirely seedless, their flesh is soft, succulent and juicy.'),
  MenuName(
      name: 'Cake Creamy Brownies',
      price: 145,
      imgAsset: 'assets/images/Cake1.jpg',
      description:
          'This Brownie Ice Cream Cake is the perfect summertime treat! It has a chewy brownie bottom layer, hot fudge, vanilla ice cream, and a homemade whipped cream topping! '),
  MenuName(
      name: 'Creamy Strawberry Cake',
      price: 120,
      imgAsset: 'assets/images/Cake2.jpg',
      description:
          'Soft and fluffy this chiffon sponge cake is layered with lightly sweetened whipped cream and fresh strawberries.'),
  MenuName(
      name: 'Donuts Wafers',
      price: 50,
      imgAsset: 'assets/images/Deserts1.jpg',
      description:
          'The newest doughnut  reaching for her waffle iron to make delicious glazed waffle doughnuts with creamy wafers.')
];
