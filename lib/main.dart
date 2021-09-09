import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_dutch_clone/controller/controller.dart';
import 'package:go_dutch_clone/pages/main_page.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueGrey[200],
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
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}

class AddPeoplePage extends StatelessWidget {
  const AddPeoplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'Add People',
          style: TextStyle(color: Colors.black),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Create Group',
              style: TextStyle(
                color: Colors.purple,
              ),
            ),
            const Text(
              'or',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                context.width,
                50,
              )),
              onPressed: () {
                Get.to(
                  () => const CreateExpensePage(),
                  curve: Curves.fastLinearToSlowEaseIn,
                  transition: Transition.downToUp,
                );
              },
              child: const Text(
                'CREATE EXPENSE',
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: const [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                ),
                border: OutlineInputBorder(),
                hintText: 'Scarch contacts or phone number',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CreateExpensePage extends StatelessWidget {
  const CreateExpensePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var _selectedLocation;
    var _locations = ["Equally", "Unqually"];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'Expense Details',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Amount',
            style: TextStyle(
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                hintText: '',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Description',
            style: TextStyle(
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                hintText: '',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Paid',
            style: TextStyle(
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                hintText: '',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Row(
            children: [
              Row(
                children: [
                  const Text('Split'),
                  DropdownButton<String>(
                    value: 'hello',
                    // value: _selectedLocation,
                    onChanged: (_) {
                      // _selectedLocation = ;
                    },
                    items: _locations.map((String location) {
                      return DropdownMenuItem<String>(
                        child: Text(location),
                      );
                    }).toList(),
                  ),
                ],
              )
            ],
          ),
        ]),
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
