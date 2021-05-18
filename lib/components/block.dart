import 'package:flutter/material.dart';
import 'package:lesson24/components/tittle.dart';
import 'package:lesson24/constans/colors.dart';
import 'package:lesson24/constans/images.dart';

class Block extends StatefulWidget {
  final String labelText;
  final int count;
  final String scndText;
  final Image image;
  Block({this.labelText = "", this.scndText = "", this.count, this.image});

  @override
  _BlockState createState() => _BlockState();
}

class _BlockState extends State<Block> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
      child: Container(
        height: height * 0.166,
        width: width * 0.273,
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: AppColors.shadow3, blurRadius: 10)],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.firstGradient, AppColors.scndGradient],
          ),
          border: Border.all(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(0.5),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(color: AppColors.white),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 5, left: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50, width: 90, child: widget.image),
                  SizedBox(
                    height: 15,
                  ),
                  Tittle(
                    tittle: widget.labelText,
                    fontsize: 13,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "${widget.count} ${widget.scndText}",
                    style: TextStyle(fontSize: 10, color: AppColors.grey2),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Block2 extends StatefulWidget {
  final String label;
  Block2({this.label = ""});

  @override
  _Block2State createState() => _Block2State();
}

class _Block2State extends State<Block2> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: AppColors.shadow3, blurRadius: 10)]),
        width: width * 0.4,
        child: Column(
          children: [
            Container(
                alignment: Alignment.center,
                height: height * 0.16,
                width: width * 0.4,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                    gradient: LinearGradient(
                        colors: [
                          AppColors.firstGradient2,
                          AppColors.scndGradient2
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: Image.asset(TaskImage.penIcon)),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20))),
              width: width,
              height: height * 0.044,
              alignment: Alignment.center,
              child: Tittle(
                tittle: widget.label,
              ),
            )
          ],
        ),
      ),
    );
  }
}
