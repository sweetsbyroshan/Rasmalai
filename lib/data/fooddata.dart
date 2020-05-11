class FoodData {
  static List<Food> snacks = [
    Food(
        name: 'Samosa [4 Pcs]',
        desc:
            'Samosas are typically a famous Indian delicacy but you get them fresh onto your plate in Nepal as well. It is a spicy dish and is a mixture of mashed potato and spices stuffed in a triangular envelope made of white flour.',
        price: '50',
        image: 'assets/img/samosa.png',
        type: FoodType.VEG,
        choices: [
          ['4 Pcs', '50'],
          ['8 Pcs', '85'],
        ]),
    Food(
        name: 'Sel Roti [4 Pcs]',
        desc:
            'A fusion of doughnut and bagel, Sel Roti is one of the most sought after snack in Nepal during festivals like Tihar and Dashain.It is a circular rice flour bread which is deeply fried to make it crunchy on the outside and soft on the inside. ',
        price: '150',
        type: FoodType.VEG,
        image: 'assets/img/selroti.png',
        choices: [
          ['4 Pcs', '150'],
        ]),
    Food(
        name: 'Wo [14 Pcs]',
        desc:
            'Wo is a kind of pancakes made by the Newari people of Nepal. The Newaris are an indigenous group of locals in the Kathmandu valley. Wo is made with ground lentil (green or black) batter during the \'Sithi Nakha\', a Newari festival. ',
        price: '350',
        type: FoodType.VEG,
        image: 'assets/img/wo.png',
        choices: [
          ['Serves 4', '350'],
          ['Serves 8', '500'],
        ]),
  ];

  static List<Food> thali = [
    Food(
        name: 'Veg Thali',
        desc:
            '3 Tarkari/ Dal Fry/ 3 Spl. Chapatis or 2 Tandoori Roti. Rice or Pulao /Chaas Glass / Gulab Jamun / Papad',
        price: '200',
        type: FoodType.VEG,
        image: 'assets/img/vegthali.png',
        choices: null),
    Food(
        name: 'Non Veg Thali',
        desc:
            '3 Tarkari/ Dal Fry/ 3 Spl. Chapatis or 2 Tandoori Roti. Rice or Pulao /Chaas Glass / Gulab Jamun / Papad',
        price: '350',
        type: FoodType.NONVEG,
        image: 'assets/img/nonvegthali.png',
        choices: null),
  ];

  static List<Food> masu = [
    Food(
        name: 'Kachilā',
        desc:
            'The meat is minced and combined with garlic, coriander, chili, salt, and fenugreek seeds, which are fried in oil with turmeric',
        price: '200',
        type: FoodType.NONVEG,
        image: 'assets/img/kachila.png',
        choices: null),
    Food(
        name: 'Khasi ko masu',
        desc: 'A flavorful Nepalese curry made with goat meat',
        price: '250',
        type: FoodType.NONVEG,
        image: 'assets/img/khasikomasu.png',
        choices: null),
    Food(
        name: 'Choila',
        desc:
            'Choila is a specialty of the Nepalese Newari, and it consists of grilled meat - either water buffalo, chicken, or mutton',
        price: '320',
        type: FoodType.NONVEG,
        image: 'assets/img/choila.png',
        choices: null),
    Food(
        name: 'Sukuti',
        desc:
            'Sukuti is a unique Nepalese dish consisting of dried meat such as lamb which is cut into thin slices and marinated in cumin, turmeric, black pepper, coriander, chili, and ginger, garlic, and onion paste. ',
        price: '220',
        type: FoodType.NONVEG,
        image: 'assets/img/sukuti.png',
        choices: null),
  ];

  static List<Food> tarkari = [
    Food(
        name: 'Misayko Tarkari',
        desc:
            'Gumbo beet greens corn soko endive gumbo gourd. Parsley shallot courgette tatsoi pea sprouts fava bean collard greens dandelion okra wakame tomato.',
        price: '100',
        type: FoodType.VEG,
        image: 'assets/img/misaykotarkari.png',
        choices: null),
    Food(
        name: 'Aloo Sibi',
        desc: 'Dandelion cucumber earthnut pea peanut soko zucchini.',
        price: '85',
        type: FoodType.VEG,
        image: 'assets/img/aloosibi.png',
        choices: null),
    Food(
        name: 'Aloo Gobi',
        desc:
            'Turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale.',
        price: '95',
        type: FoodType.VEG,
        image: 'assets/img/aloogobi.png',
        choices: null),
  ];

  static List<Food> noodle = [
    Food(
        name: 'Gyathuk',
        desc:
            'Gyathuk is a type of Thukpa, a Tibetan delicacy, noodle soup in layman\'s language.',
        price: '130',
        type: FoodType.VEG,
        image: 'assets/img/gyathuk.png',
        choices: null),
    Food(
        name: 'Thenthuk',
        desc:
            'Thenthuk or hand-pulled noodle soup, is a very common noodle soup in Tibetan cuisine, especially in Amdo, Tibet where it is served as dinner and sometimes lunch. ',
        price: '185',
        type: FoodType.VEG,
        image: 'assets/img/thenthuk.png',
        choices: null),
    Food(
        name: 'Chicken Thukpa',
        desc: 'Heartwarming chicken soup from the Himalayas',
        price: '195',
        type: FoodType.NONVEG,
        image: 'assets/img/chickenthukpa.png',
        choices: null),
  ];

  static List<Food> mcourse = [
    Food(
        name: 'Dal',
        desc:
            'Dal fry is a popular Nepali lentil recipe made with pigeon pea lentils, onions, tomatoes and spices. ',
        price: '80',
        type: FoodType.VEG,
        image: 'assets/img/dal.png',
        choices: null),
    Food(
        name: 'Bhat',
        desc: 'Steamed Rice',
        price: '30',
        type: FoodType.VEG,
        image: 'assets/img/bhat.png',
        choices: null),
    Food(
        name: 'Roti',
        desc:
            'Roti is a round flatbread native to the Indian subcontinent made from stoneground wholemeal flour, traditionally known as atta, and water that is combined into a dough.',
        price: '12',
        type: FoodType.VEG,
        image: 'assets/img/roti.png',
        choices: null),
  ];

  static List<Food> beverages = [
    Food(
        name: 'Aila',
        desc: 'most potent of any alcoholic beverage found in Nepal.',
        price: '120',
        type: FoodType.VEG,
        image: 'assets/img/aila.png',
        choices: [
          ['2 Glasses', '120'],
          ['4 Glasses', '220'],
          ['8 Glasses', '500'],
        ]),
    Food(
        name: 'Tongba',
        desc:
            'Commonly pronounced as tum-baa by locals this is the most popular alcoholic beverage in cooler parts of eastern Nepal.',
        price: '120',
        type: FoodType.VEG,
        image: 'assets/img/tongba.png',
        choices: [
          ['2 Glasses', '120'],
          ['4 Glasses', '220'],
          ['8 Glasses', '500'],
        ]),
    Food(
        name: 'Chyang',
        desc:
            'Made of fermented rice and hence a little cloudy in color and has a mild sour taste, much like a mild cider.',
        price: '120',
        type: FoodType.VEG,
        image: 'assets/img/chyang.png',
        choices: [
          ['2 Glasses', '120'],
          ['4 Glasses', '220'],
          ['8 Glasses', '500'],
        ]),
  ];
  static List<Food> test = [];
  static List<Food> getFav() {
    test.addAll(beverages);
    test.addAll(noodle);
    test.addAll(snacks);
    test.shuffle();
    return test;
  }
}

class Food {
  final String name, desc, price, image;
  final List<dynamic> choices;
  final FoodType type;
  Food({this.name, this.desc, this.price, this.image, this.type, this.choices});
}

enum FoodType { VEG, NONVEG }
