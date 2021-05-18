import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lesson24/components/block.dart';
import 'package:lesson24/components/button.dart';
import 'package:lesson24/components/gradient.dart';
import 'package:lesson24/components/tittle.dart';
import 'package:lesson24/constans/colors.dart';
import 'package:lesson24/constans/images.dart';

class MainPageInfo extends StatefulWidget {
  @override
  _MainPageInfoState createState() => _MainPageInfoState();
}

class _MainPageInfoState extends State<MainPageInfo> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
      child: Stack(
        children: [
          Image.asset(
            TaskImage.mainShape,
            width: width,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  height: height * 0.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: Text(
                          "Главная",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 90,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(color: AppColors.shadow, blurRadius: 14)
                          ],
                        ),
                        child: Center(
                          child: SizedBox(
                            width: 400,
                            child: ListTile(
                                leading: Image.asset(
                                  TaskImage.thunderIcon,
                                  height: 50,
                                  width: 50,
                                ),
                                visualDensity: VisualDensity.comfortable,
                                horizontalTitleGap: 20,
                                title: Text(
                                  'Начните зарабатывать!',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                subtitle: Text(
                                  'Приобретите тариф Behype-PRO \n и начните свою карьеру!',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                alignment: Alignment.center,
                width: width,
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(25))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Tittle(
                              tittle: "Категории",
                              fontsize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Block(
                                labelText: "Реклама",
                                scndText: "компаний",
                                count: 106,
                                image: Image.asset(TaskImage.handsIcon),
                              ),
                              Block(
                                labelText: "Взаимопиар",
                                scndText: "заявок",
                                count: 56,
                                image: Image.asset(TaskImage.telIcon),
                              ),
                              Block(
                                labelText: "Бартер",
                                scndText: "заявок",
                                count: 245,
                                image: Image.asset(TaskImage.likeIcon),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Tittle(
                                  tittle: "Рекламные кампании",
                                  fontsize: 18,
                                ),
                                Container(
                                  height: 18,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: AppColors.red,
                                      borderRadius: BorderRadius.circular(25)),
                                  child: FlatButton(
                                    onPressed: () {},
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    child: Text(
                                      "Все",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: AppColors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 34,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Block2(
                                label: "В новом обновлении",
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
