import 'package:app_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders && Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            value: _sliderValue,
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            onChanged: _sliderEnable
                ? (value) {
                    _sliderValue = value;
                    print(value);
                    setState(() {});
                  }
                : null,
          ),
          /*   Checkbox(
            value: _sliderEnable,
            onChanged: ((value) {
              _sliderEnable = value ?? !_sliderEnable;
              setState(() {});
            }),
          ),
          Switch(
            value: _sliderEnable,
            activeColor: AppTheme.primary,
            onChanged: ((value) {
              _sliderEnable = value;
              setState(() {});
            }),
          ), */
          CheckboxListTile(
            value: _sliderEnable,
            title: const Text('Habilitar Slider'),
            activeColor: AppTheme.primary,
            onChanged: ((value) {
              _sliderEnable = value ?? !_sliderEnable;
              setState(() {});
            }),
          ),
          SwitchListTile.adaptive(
            value: _sliderEnable,
            title: const Text('Habilitar Slider'),
            activeColor: AppTheme.primary,
            onChanged: ((value) {
              _sliderEnable = value;
              setState(() {});
            }),
          ),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://i.pinimg.com/474x/1e/28/fd/1e28fdeb608851905d82c6b7acdd57de--character-art-character-design.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
