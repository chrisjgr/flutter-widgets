import 'package:flutter/material.dart';

import 'package:app_components/themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: const Text('Soy un titulo'),
            subtitle: const Text(
                'Occaecat Lorem Lorem cillum in nostrud sit aliquip sint fugiat et ullamco do sit sint.'),
            leading: Icon(Icons.phone_callback, color: AppTheme.primary),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancelar')),
                TextButton(onPressed: () {}, child: const Text('Ok')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
