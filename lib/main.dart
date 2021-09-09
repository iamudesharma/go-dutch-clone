import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_dutch_clone/controller/controller.dart';
import 'package:go_dutch_clone/pages/add_people_page.dart';
import 'package:go_dutch_clone/pages/main_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(MainPageController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueGrey[100],
        primarySwatch: Colors.purple,
        textTheme: GoogleFonts.aBeeZeeTextTheme(),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = Get.find<MainPageController>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // drawer: const Drawer(),
        endDrawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DrawerHeader(
                  child: Row(
                // mainAxisAlignment: ,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 35,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text('Your name'),
                      const Text('Your Phone Number'),
                      const Text(
                        "Upi ID not add",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Edit Profile'),
                      ),
                    ],
                  ),
                ],
              )),
            ],
          ),
        ),
        key: controller.scaffoldKey,
        backgroundColor: Colors.blueGrey[100],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
            height: kToolbarHeight,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {
                      controller.page.value = 0;
                    },
                    child: Obx(
                      () => Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: controller.page.value == 0
                              ? Colors.purple.withOpacity(0.4)
                              : Colors.transparent,
                        ),
                        child: Text(
                          'Balance',
                          style: TextStyle(
                            color: controller.page.value == 0
                                ? Colors.purple
                                : Colors.grey,
                            fontSize: controller.page.value == 0 ? 14 : 13,
                          ),
                        ),
                      ),
                    )),
                GestureDetector(
                  onTap: () {
                    controller.page.value = 1;
                  },
                  child: Obx(
                    () => Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: controller.page.value == 1
                            ? Colors.purple.withOpacity(0.4)
                            : Colors.transparent,
                      ),
                      child: Text(
                        'Transaction',
                        style: TextStyle(
                          color: controller.page.value == 1
                              ? Colors.purple
                              : Colors.grey,
                          fontSize: controller.page.value == 1 ? 14 : 13,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),

        body: const MainPage(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(
              () => const AddPeoplePage(),
              curve: Curves.fastLinearToSlowEaseIn,
              transition: Transition.downToUp,
            );
          },
          // onPressed: _incrementCounter,
          tooltip: 'Add',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}

class AppBarWidget extends GetView<MainPageController> {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            AppBarIconWidget(
              icon: const Icon(
                Icons.person,
                size: 20,
              ),
              onTap: () {},
            ),
            const Expanded(
              flex: 3,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            AppBarIconWidget(
              icon: const Icon(Icons.menu),
              onTap: () {
                // ScaffoldMessenger.of(context).mounted
                controller.scaffoldKey.currentState?.openEndDrawer();
              },
            )
          ],
        ),
      ),
    );
  }
}

class AppBarIconWidget extends StatelessWidget {
  const AppBarIconWidget({
    Key? key,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  final Icon icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
        ),
        child: Center(child: icon),
      ),
    );
  }
}
