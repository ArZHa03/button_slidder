import 'package:flutter/material.dart';

class ButtonSlider extends StatefulWidget {
  const ButtonSlider({Key? key}) : super(key: key);

  @override
  State<ButtonSlider> createState() => _ButtonSliderState();
}

class _ButtonSliderState extends State<ButtonSlider> {
  int _selectedButtonIndex = 1;
  late double _buttonWidth;
  double _leftOffset = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Slider'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              _buttonWidth = constraints.maxWidth * 0.325;

              return Stack(
                children: [
                  Positioned(
                    left: _leftOffset,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14.3, vertical: 8),
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: Colors.blue,
                        width: 2,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedButtonIndex = 0;
                              _leftOffset = 0.0;
                            });
                          },
                          child: SizedBox(
                            width: _buttonWidth,
                            height: 50,
                            child: Center(
                              child: Text(
                                'Pengeluaran',
                                style: TextStyle(
                                  color: _selectedButtonIndex == 0
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedButtonIndex = 1;
                              _leftOffset = _buttonWidth;
                            });
                          },
                          child: SizedBox(
                            width: _buttonWidth,
                            height: 50,
                            child: Center(
                              child: Text(
                                'Dompet Saya',
                                style: TextStyle(
                                  color: _selectedButtonIndex == 1
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedButtonIndex = 2;
                              _leftOffset = _buttonWidth * 2;
                            });
                          },
                          child: SizedBox(
                            width: _buttonWidth,
                            height: 50,
                            child: Center(
                              child: Text(
                                'Pemasukan',
                                style: TextStyle(
                                  color: _selectedButtonIndex == 2
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
