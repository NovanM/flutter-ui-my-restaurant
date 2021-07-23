part of 'widgets.dart';

Widget detailBox({Icon icon, String textTitle, String text}) {
  return Material(
    elevation: 3,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            elevation: 3,
            child: Container(
              child: icon,
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: greyColor.withOpacity(0.3),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textTitle,
                style: titleText.copyWith(color: Colors.grey, fontSize: 14),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                text,
                style: titleText.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}

Widget menuBox({String menuImg, String menuName, String menuPrice}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10.0),
    width: 143,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              menuImg,
            ),
          ),
        ),
        Text(
          menuName,
          style: subTitletext..copyWith(fontSize: 20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.attach_money,
              color: mainColor,
            ),
            Text(
              menuPrice,
              style: titleText,
            ),
          ],
        )
      ],
    ),
  );
}
