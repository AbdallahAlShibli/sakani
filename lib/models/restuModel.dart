import "package:flutter/material.dart";

class RestuModel {
  late final String phoneNo;
  late final String name;
  late String img;

  RestuModel(this.phoneNo, this.name, this.img);

  //data sample

}

List<RestuModel> dataList1 = [
  RestuModel("99688810", "مطعم روابي الشرقيه", "images/r11.jpg"),
  RestuModel("94177708", "مطعم خط النيل", "images/r12.jpg"),
  RestuModel("97721687", "كوخ انطاليا", "images/r13.jpg"),
  RestuModel("96604777", "السفره البحرينيه", "images/r14.jpg"),
  RestuModel("79110101", "مطعم كاريبونني", "images/r15.jpg"),
];

List<RestuModel> dataList2 = [
  RestuModel("93635022", "مطعم روابي الشرقيه", "images/r21.jpg"),
  RestuModel("91808018", "سفرة الضيافة العربية", "images/r22.jpg"),
  RestuModel("95677626", "نروى الخير", "images/r23.jpg"),
  RestuModel("95396662", "راحة االمبراطور", "images/r24.jpg"),
  RestuModel("97714114", "البرجر العجيب", "images/r25.jpg"),
  RestuModel("79612000", "اشراقة مدينة التاريخ", "images/r26.jpg"),
];

List<RestuModel> dataList3 = [
  RestuModel("94177708", "خط النيل", "images/r31.jpg"),
  RestuModel("95605335", "المشارف لالكالت التركية", "images/r32.jpg"),
  RestuModel("25431132", "فرق الجديد", "images/r33.jpg"),
  RestuModel("25341680", "العالم العربي", "images/r34.jpg"),
  RestuModel("99767950", "المطعم الذهبي", "images/r35.jpg"),
  RestuModel("94854786", "مطعم الغواص", "images/r36.jpg"),
];
