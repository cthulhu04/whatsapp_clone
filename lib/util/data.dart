class Data {
  String name;
  String lastName;
  String lastMessage;
  String userImg;
  String date;
  List message;

  Data(
      {this.name,
      this.lastName,
      this.lastMessage,
      this.userImg,
      this.date,
      this.message});
}

final List<Data> users = [
  Data(
      name: 'eva',
      lastName: 'green',
      lastMessage: 'hello',
      userImg: '10',
      date: '15:00PM',
      message: [
        'hello',
        'how are you',
        'how do you doing today',
        'what are you doing there...?',
        '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut \nlabore et dolore magna \naliqua. Ut enim ad minim veniam, \nquis nostrud exercitation ',
        'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium dolor',
        'quia consequuntur magni eos qui ratione voluptatem',
        'vel illum qui dolorem eum ugiat quo voluptas nulla pariatur?',
        'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis',
        'praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati ',
        '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut \nlabore et dolore magna \naliqua. Ut enim ad minim veniam, \nquis nostrud exercitation ',
      ]),
  Data(
      name: 'jennifer',
      lastName: 'wood',
      lastMessage: 'Call me',
      userImg: '12',
      date: '02:00PM',
      message: [
        'hello',
        'how are you',
      ]),
  Data(
      name: 'joe',
      lastName: 'doe',
      lastMessage: 'Dinner tonight...?',
      userImg: '17',
      date: '9/12/20',
      message: [
        'how are you',
        'how do you doing today',
      ]),
  Data(
      name: 'lisa',
      lastName: 'ann',
      lastMessage: 'dont forget to bring that to work..?',
      userImg: '91',
      date: '05:00PM',
      message: [
        'how do you doing today',
        'hey you gonna play tonight...?',
      ]),
  Data(
      name: 'ian',
      lastName: 'smith',
      lastMessage: 'happy birthday',
      userImg: '76',
      date: '8/12/20',
      message: ['how do you doing today', 'tomorrow meeting']),
  Data(
      name: 'kate',
      lastName: 'leonheart',
      lastMessage: 'birthday boy',
      userImg: '77',
      date: '7/12/20',
      message: [
        'how are you',
        'how do you doing today',
        'happy birthday',
        'have a good night'
      ]),
];

class Group {
  String image;
  String title;
  Group({this.image, this.title});
}

List<String> groups = [
  './images/65535_50433897778_3ee8414717_320_240_nofilter.jpg',
  './images/meetings-practice.jpg',
  './images/oaxiuha2zfwgghn8fji0.jpg',
  './images/Cover-for-Places-to-hangout-in-Mumbai-with-friends_16th-Apr.jpg',
  './images/meetings-practice.jpg',
  './images/oaxiuha2zfwgghn8fji0.jpg',
  './images/Cover-for-Places-to-hangout-in-Mumbai-with-friends_16th-Apr.jpg',
  './images/meetings-practice.jpg',
  './images/oaxiuha2zfwgghn8fji0.jpg',
  './images/Cover-for-Places-to-hangout-in-Mumbai-with-friends_16th-Apr.jpg',
  './images/meetings-practice.jpg',
  './images/oaxiuha2zfwgghn8fji0.jpg',
  './images/meetings-practice.jpg',
  './images/oaxiuha2zfwgghn8fji0.jpg',
  './images/Cover-for-Places-to-hangout-in-Mumbai-with-friends_16th-Apr.jpg',
  './images/meetings-practice.jpg',
  './images/oaxiuha2zfwgghn8fji0.jpg',
];
