import 'package:ebusiness/screen/dashboard/component/popular_product_text.dart';
import 'package:ebusiness/screen/dashboard/component/product_card.dart';
import 'package:get/get.dart';

import '../../../../const/export.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        Container(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FittedBox(
                child: Row(
                  children: [
                    DashboardCard(
                        text: 'Product',
                        image: 'assets/icons/products.png',
                        number: 50),
                    DashboardCard(
                        text: 'Order',
                        image: 'assets/icons/orders.png',
                        number: 30),
                  ],
                ),
              ),
              FittedBox(
                child: Row(
                  children: [
                    DashboardCard(
                        text: 'Rating',
                        image: 'assets/icons/star.png',
                        number: 45),
                    DashboardCard(
                        text: 'Total Sell',
                        image: 'assets/icons/account.png',
                        number: 64),
                  ],
                ),
              ),
            ],
          ),
        ),
        PopularProductText(text:  'Popular Products',),
        Container(
          height: Get.height,
          child: ListView.builder(
            itemCount: 30,
            itemBuilder: (context, index) => ProductCard(image: 'assets/product.jpg',name: 'Product Name',price: 33.0),
          ),
        ),
      ],
    );
  }
}
