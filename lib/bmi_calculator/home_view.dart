import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:prog1/bmi_calculator/colors.dart';
import 'package:prog1/bmi_calculator/result_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int height = 170;
  int weight = 70;
  int Age = 23;
  bool isMale = true;

  TextStyle styal1 = TextStyle(
      color: AppColors.white, fontSize: 33, fontWeight: FontWeight.bold);

  TextStyle styal2 = TextStyle(color: AppColors.white, fontSize: 14);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Text(
          'BMI CALCULATUR',
          style: TextStyle(color: AppColors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          //MALE  AND FEMALE
          Expanded(
            child: Row(
              children: [
                //malef
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: (isMale)
                              ? AppColors.primary
                              : AppColors.ContainerBg,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male_rounded,
                              size: 70,
                              color: AppColors.white,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Male',
                              style: styal2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                //female
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: (isMale)
                              ? AppColors.ContainerBg
                              : AppColors.primary,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female_rounded,
                              size: 70,
                              color: AppColors.white,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'female',
                              style: styal2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          //HEIGHT
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: AppColors.ContainerBg,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: styal2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: styal1,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          'CM',
                          style: styal2,
                        ),
                      ],
                    ),
                    Slider(
                      activeColor: AppColors.primary,
                      inactiveColor: AppColors.btnColor,
                      min: 120,
                      max: 210,
                      value: height.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          height = value.toInt();
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
          ),

          //WEIGHT AND AGE
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.ContainerBg,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'weight',
                            style: styal2,
                          ),
                          Text(
                            weight.toString(),
                            style: styal1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  style: IconButton.styleFrom(
                                    backgroundColor: AppColors.btnColor,
                                    foregroundColor: Colors.white,
                                  ),
                                  onPressed: () {
                                    if (weight > 0)
                                      setState(() {
                                        weight--;
                                      });
                                  },
                                  icon: const Icon(Icons.remove)),
                              IconButton(
                                  style: IconButton.styleFrom(
                                    backgroundColor: AppColors.btnColor,
                                    foregroundColor: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: const Icon(Icons.add)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.ContainerBg,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: styal2,
                          ),
                          Text(
                            Age.toString(),
                            style: styal1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  style: IconButton.styleFrom(
                                    backgroundColor: AppColors.btnColor,
                                    foregroundColor: Colors.white,
                                  ),
                                  onPressed: () {
                                    if (Age > 0)
                                      setState(() {
                                        Age--;
                                      });
                                  },
                                  icon: const Icon(Icons.remove)),
                              IconButton(
                                  style: IconButton.styleFrom(
                                    backgroundColor: AppColors.btnColor,
                                    foregroundColor: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      Age++;
                                    });
                                  },
                                  icon: const Icon(Icons.add)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),

          //CALCULATE BUTTON
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: AppColors.primary,
                    foregroundColor: AppColors.white),
                onPressed: () {
                  double result = weight / ((height / 100) * (height / 100));
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ResultView(
                      result: result,
                    ),
                  ));
                },
                child: const Text('CALCULATE')),
          )
        ]),
      ),
    );
  }
}
