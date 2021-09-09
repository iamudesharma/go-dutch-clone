import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:go_dutch_clone/controller/controller.dart';
import 'package:go_dutch_clone/model.dart/data.dart';

class BalancePage extends GetView<MainPageController> {
  const BalancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BalanceCardWidget(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.blueGrey.shade200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Flexible(
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      onTap: () {
                        controller.friendandgrouppage.value = 0;
                      },
                      child: Container(
                          width: context.width * 0.44,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: controller.friendandgrouppage.value == 0
                                  ? Colors.grey[200]
                                  : Colors.transparent),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(child: Text('Friends')),
                          )),
                    ),
                  ),
                ),
                Obx(
                  () => Flexible(
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      onTap: () {
                        controller.friendandgrouppage.value = 1;
                      },
                      child: Container(
                        // width: context.width * 0.435,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: controller.friendandgrouppage.value == 1
                                ? Colors.grey[200]
                                : Colors.transparent),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                            child: Text('Gruops'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Obx(
          () => SingleChildScrollView(
            child: SizedBox(
              height: context.height / 2,
              child: friendandgruops
                  .elementAt(controller.friendandgrouppage.value),
            ),
          ),
        ),
      ],
    );
  }
}

class BalanceCardWidget extends StatelessWidget {
  const BalanceCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Card(
        color: Colors.grey.shade200,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Net Balance',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '\$206',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('settle >')
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.redAccent.shade200.withOpacity(0.4),
                            Colors.redAccent.shade200.withOpacity(0.1)
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10.0)),
                    // width: 100,
                    child: RichText(
                      text: const TextSpan(
                          text: 'You will pay',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                          children: [
                            TextSpan(
                                text: '\$200',
                                style: TextStyle(
                                  color: Colors.redAccent,
                                ))
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.greenAccent.shade200.withOpacity(0.4),
                            Colors.greenAccent.shade200.withOpacity(0.1)
                          ],
                        ),
                        borderRadius: BorderRadius.circular(10.0)),
                    // width: 100,
                    child: RichText(
                      text: const TextSpan(
                          text: 'You will pay',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                          children: [
                            TextSpan(
                                text: '\$200',
                                style: TextStyle(
                                  color: Colors.greenAccent,
                                ))
                          ]),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
