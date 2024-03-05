import 'package:flutter_application_1/page1.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:get/get.dart';

class AppPages {
  static List<GetPage> getPages() {
    return [
      GetPage(
        name: RouteName.routePage1, 
        page: () => const MyPage()
      ),
      // GetPage(
      //   name: RouteName.page3, 
      //   page: () => const Page3()
      // )
    ];
  }
}