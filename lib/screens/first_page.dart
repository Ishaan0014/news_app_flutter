import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/bmiresult.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

calcBMI({double height = 0.0, double weight = 0.0}) {
  double bmi = weight / (height * height);
  return bmi * 10000;
}

class _FirstPageState extends State<FirstPage> {
  double sliderValue = 100.0;
  double weight = 50.0;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.orange,
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.2,
                child: const Column(
                  children: [
                    Icon(
                      Icons.male,
                      size: 100,
                      color: Colors.black,
                    ),
                    Text(
                      'MALE',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.orange,
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.2,
                child: const Column(
                  children: [
                    Icon(
                      Icons.female,
                      size: 100,
                      color: Colors.black,
                    ),
                    Text(
                      'FEMALE',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
              color: Colors.red,
              width: MediaQuery.of(context).size.width * 0.87,
              height: MediaQuery.of(context).size.height * 0.25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'HEIGHT',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    sliderValue.toString().substring(0, 5),
                    style: const TextStyle(color: Colors.white, fontSize: 60),
                  ),
                  // Row(
                  //   children: [
                  //     const Text(
                  //       '180',
                  //       style: TextStyle(color: Colors.white, fontSize: 60),
                  //     ),
                  //     const Text(
                  //       'cm',
                  //       style: TextStyle(color: Colors.white, fontSize: 30),
                  //     ),
                  Slider(
                      min: 100.0,
                      max: 250.0,
                      value: sliderValue,
                      onChanged: (value) {
                        sliderValue = value;
                        setState(() {});
                      })
                ],
              )
              // ],
              ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.orange,
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Column(
                  children: [
                    const Text(
                      'WEIGHT',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      weight.toStringAsFixed(1),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 60,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 20),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            icon: const Icon(Icons.add_circle_outline_rounded,
                                size: 60),
                            color: Colors.black,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            icon: const Icon(
                                Icons.remove_circle_outline_rounded,
                                size: 60),
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.orange,
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Column(
                  children: [
                    const Text(
                      'AGE',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      age.toStringAsFixed(0),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 60,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, bottom: 20),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            icon: const Icon(Icons.add_circle_outline_rounded,
                                size: 60),
                            color: Colors.black,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            icon: const Icon(
                                Icons.remove_circle_outline_rounded,
                                size: 60),
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // )
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
              color: Colors.red,
              width: MediaQuery.of(context).size.width * 0.87,
              height: MediaQuery.of(context).size.height * 0.10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      double finalBMI =
                          calcBMI(height: sliderValue, weight: weight);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => RESULTPAGE(
                                    bmivalue: finalBMI,
                                  )));
                    },
                    child: const Text(
                      'CALCULATE BMI',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
              // ],
              ),
        ],
      ),
    ));
  }
}
