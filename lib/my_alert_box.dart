import 'package:flutter/material.dart';
import 'package:fruits/fruit_model.dart';

class MyAlertBox extends StatelessWidget {
  final FruitModel fruit;

  const MyAlertBox({required this.fruit, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AlertDialog(
      title: Row(
        children: [
          Image.asset(
            fruit.photo,
            height: size.height / 9.8,
            width: size.width / 6.1,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(fruit.name),
        ],
      ),
      content: Text(fruit.description),
      actions: [
        TextButton(
          onPressed: Navigator.of(context).pop,
          child: const Text('Закрыть'),
        ),
      ],
    );
  }
}
