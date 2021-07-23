part of 'pages.dart';

class DetailMenu extends StatelessWidget {
  final MenuName menuList;
  DetailMenu({@required this.menuList});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 296,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(menuList.imgAsset),
              ),
            ),
          ),
          ListView(
            children: [
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
              SizedBox(
                height: 245,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(
                      14,
                    ),
                  ),
                  color: Color(0xffF8F8F8),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  menuList.name,
                                  style: titleText.copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Restaurant Menu ,',
                                  style: subTitletext,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 16,
                                color: mainColor,
                              ),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: mainColor,
                              ),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: mainColor,
                              ),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: mainColor,
                              ),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: mainColor.withOpacity(0.4),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 24,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Text(
                              'Menu Other Populer',
                              style: titleText.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                MenuPopulerDetail(
                                  imageUrl: 'assets/images/Food3.jpeg',
                                  name: 'Soup egg',
                                ),
                                MenuPopulerDetail(
                                  imageUrl: 'assets/images/Cake1.jpeg',
                                  name: 'Cake Creamy Brownies',
                                ),
                                MenuPopulerDetail(
                                  imageUrl: 'assets/images/Deserts1.jpeg',
                                  name: 'Donuts Wafers',
                                ),
                                MenuPopulerDetail(
                                  imageUrl: 'assets/images/Drink1.jpeg',
                                  name: 'Orange with Strawberry',
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                        top: 24,
                        left: 20,
                        right: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Description',
                            style: titleText.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            menuList.description,
                            style: subTitletext.copyWith(
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 24,
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Price',
                                  style: subTitletext.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.attach_money,
                                      color: mainColor,
                                    ),
                                    Text(
                                      menuList.price.toString(),
                                      style: titleText.copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: mainColor),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 196,
                            height: 50,
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor: mainColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27.5),
                                ),
                              ),
                              child: Text(
                                'Checkout',
                                style: titleText.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
