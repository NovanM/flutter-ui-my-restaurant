part of 'pages.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int priceNow = 0;
  int items = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          child: Row(
            children: [
              Text('Checkout'),
              SizedBox(
                width: 5,
              ),
              Text((items == 0) ? '' : items.toString()),
              SizedBox(
                width: 3,
              ),
              Text('Items'),
              Spacer(),
              Icon(
                Icons.attach_money,
                color: mainColor,
              ),
              Text(priceNow.toString())
            ],
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            primary: Colors.amber,
            onPrimary: Colors.black,
            minimumSize: Size(200, 50),
            shape: StadiumBorder(),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20)),
                  child: Image.asset('assets/images/bg.jpeg'),
                ),
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: Icon(Icons.arrow_back),
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ),
                      FovoriteButton(),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 3,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  width: 315,
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Menu - The Restaurant',
                              style: titleText,
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'Menu - The Restaurant',
                              style: subTitletext,
                            )
                          ],
                        ),
                        Material(
                          elevation: 3,
                          child: Container(
                            decoration: BoxDecoration(
                                color: greyColor.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(5)),
                            width: 34,
                            height: 34,
                            child: Icon(
                              Icons.restaurant_menu,
                              color: mainColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 58,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: detailBox(
                        icon: Icon(
                          Icons.star,
                          color: mainColor,
                        ),
                        textTitle: 'Ratings',
                        text: '4.8',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: detailBox(
                        icon: Icon(
                          Icons.timelapse,
                          color: mainColor,
                        ),
                        textTitle: 'Opening hours',
                        text: '7 AM - 8 PM',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: detailBox(
                        icon: Icon(
                          Icons.add_location_alt,
                          color: mainColor,
                        ),
                        textTitle: 'Distance',
                        text: '< 0.2km',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                height: 30,
                child: Text(
                  'Top Populer',
                  style: titleText,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  menuBox(
                    menuImg: 'assets/images/splash_pic.jpeg',
                    menuName: 'Hamburger Steak',
                    menuPrice: '110',
                  ),
                  Column(
                    children: [
                      menuBox(
                        menuImg: 'assets/images/Food4.jpeg',
                        menuName: 'Salad Spring rolls',
                        menuPrice: '110',
                      ),
                      menuBox(
                          menuImg: 'assets/images/Drink2.jpeg',
                          menuName: 'Strawberry Milk',
                          menuPrice: '110'),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                child: Text(
                  'Menu',
                  style: titleText,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: SizedBox(
                child: new ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final MenuName menuName = menuNameList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailMenu(
                                      menuList: menuName,
                                    )));
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Card(
                          elevation: 2,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    menuName.imgAsset,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                flex: 1,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Center(
                                      child: Text(
                                        menuName.name,
                                        style: titleText,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.attach_money,
                                          color: mainColor,
                                        ),
                                        Text(
                                          menuName.price.toString(),
                                          style: titleText,
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: OutlinedButton(
                                            onPressed: () {
                                              setState(() {
                                                priceNow =
                                                    priceNow + menuName.price;
                                                items += 1;
                                              });
                                            },
                                            child: Text('Add'),
                                            style: OutlinedButton.styleFrom(
                                              primary: mainColor,
                                              side:
                                                  BorderSide(color: mainColor),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: menuNameList.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
