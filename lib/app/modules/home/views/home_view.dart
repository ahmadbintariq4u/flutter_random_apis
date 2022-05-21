import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:random_apis/app/theme/constants.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Random API'),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            childAspectRatio: 5,
            children: [
              ...List.generate(
                  100,
                  (index) => PersonCard(
                        title: "$index .Ahmad Tariq",
                        imageLocation: 'asdf',
                      ))
            ],
          ),
        ));
  }
}

class PersonCard extends StatelessWidget {
  final String title;
  final String imageLocation;
  const PersonCard({Key? key, required this.title, required this.imageLocation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
