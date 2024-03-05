import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:get/get.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Sushi", 
          style: TextStyle(
            color: Colors.orange,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold 
          )
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 24, 18, 0),
        actions: [
          Stack(
            children: [
              IconButton(onPressed: () => {
                Get.toNamed(RouteName.routePage1)
              }, 
                icon: const Icon(Icons.notifications, color: Colors.orange,)
              ),
              Positioned(
                right: 5,
                top: 5,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red
                  ),
                  child: const Text(
                    "1",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      body: Container(
        color: Colors.black26,
        padding: const EdgeInsets.all(16.0),
        child: const Row(
        children: [
          Text("Morning, Tes1", style: TextStyle(color: Colors.grey),)
        ],
      ),
      )
    );
  }
}

  Widget stockInfo(String code, String name, String price, String change) {
    return ListTile(
      leading: CircleAvatar(child: Text(code)),
      title: Text(name),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            price,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),
          ),
          Text(change,
              style: TextStyle(
                    color: change.startsWith('-') ? Colors.red : Colors.green,
                    // fontWeight: FontWeight.w600,
                    fontSize: 14
                  )
              ),
        ],
      ),
    );
  }