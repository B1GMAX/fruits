import 'package:flutter/material.dart';
import 'package:fruits/initial_data.dart';

import 'fruit_model.dart';
import 'my_alert_box.dart';

class FruitsScreen extends StatefulWidget {
  const FruitsScreen({Key? key}) : super(key: key);

  @override
  State<FruitsScreen> createState() => _FruitsScreenState();
}

class _FruitsScreenState extends State<FruitsScreen> {
  final List<FruitModel> fruits = [];

  TextEditingController fruitTextController = TextEditingController();

  int? editFruit;

  @override
  void initState() {
    for (final fruit in initialFruits) {
      fruits.add(FruitModel(
          name: fruit,
          description:
              initialFruitsMap[fruit]?['description'] ?? 'Описание не создано',
          photo: initialFruitsMap[fruit]?['photo'] ?? 'assets/miss_photo.png'));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(fruits[index].name),
            onDismissed: (direction) {
              setState(
                () {
                  fruits.removeAt(index);
                },
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              height: size.height / 9.8,
              width: size.width / 1.1,
              child: ElevatedButton(
                onLongPress: () {
                  setState(() {
                    editFruit = index;
                    fruitTextController.text = fruits[index].name;
                  });
                },
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => MyAlertBox(
                      fruit: fruits[index],
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                      side: const BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      fruits[index].photo,
                      height: size.height / 12,
                      width: size.width / 6.1,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    editFruit != index
                        ? Text(
                            fruits[index].name,
                            style: const TextStyle(color: Colors.black),
                          )
                        : Expanded(
                            child: TextField(
                              controller: fruitTextController,
                              onSubmitted: (text) {
                                editFruit = null;
                                updateFruitsList(index);
                              },
                            ),
                          ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void updateFruitsList(int index) {
    fruits[index] = FruitModel(
        name: fruitTextController.text.trim(),
        description: fruits[index].description,
        photo: fruits[index].photo);
    setState(() {});
  }
}
