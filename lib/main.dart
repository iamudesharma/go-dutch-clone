import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:go_dutch_clone/controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(MainPageController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
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
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.blueGrey[100],
        statusBarBrightness: Brightness.dark,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // drawer: const Drawer(),
        endDrawer: const Drawer(),
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

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const AppBarWidget(),
              const SizedBox(
                height: 10,
              ),
              Obx(
                () => mainPageList[controller.page.value],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          // onPressed: _incrementCounter,
          tooltip: 'Increment',
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
