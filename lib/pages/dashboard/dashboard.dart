import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxbottom/pages/dashboard/controller.dart';

class Dashboard extends GetView<DashboardController> {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: controller.tabIndex,
          children: [
            Container(color: Colors.red),
            Container(color: Colors.blue),
            Container(color: Colors.purple),
            Container(color: Colors.deepOrange),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.redAccent,
        onTap: controller.updateTabIndex,
        currentIndex: controller.tabIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.sportscourt), label: 'News'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bell), label: 'Alert'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), label: 'Person'),
        ],
      ),
    );
  }
}
