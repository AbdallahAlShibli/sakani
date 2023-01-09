import "package:flutter/material.dart";

class TransModel {
  late final String phoneNo;
  late final String name;
  late String img;

  TransModel(this.phoneNo, this.name, this.img);

  //data sample

}

List<TransModel> dataListT1 = [
  TransModel("99688810", "نقليات احمد المعمري", "images/t11.jpg"),
  TransModel("94177708", " نقليات اسلام", "images/t12.jpg"),
  TransModel("97721687", "نقليات الياقوت", "images/t13.jpg"),
  TransModel("96604777", "نقليات العبري", "images/t14.jpg"),
  TransModel("79110101", "نقليات بركه الموز", "images/t15.jpg"),
];

List<TransModel> dataListT2 = [
  TransModel("93635022", "نقليات الجامودي", "images/t21.png"),
  TransModel("91808018", "نقليات الراحه", "images/t22.jpg"),
  TransModel("95677626", "نقليات المحاربي", "images/t23.jpg"),
  TransModel("95396662", "نقليات الهنائي", "images/t24.jpg"),
  TransModel("97714114", "نقليات النعماني1", "images/t25.jpg"),
];

List<TransModel> dataListT3 = [
  TransModel("94177708", "نقليات العلا 1", "images/t31.jpg"),
  TransModel("95605335", "نقليات العلا2", "images/t32.jpg"),
  TransModel("99767950", "نقليات العامري", "images/t33.jpg"),
  TransModel("25431132", "نقليات المحاربي2", "images/t34.jpg"),
  TransModel("25341680", "نقليات نزوى", "images/t35.jpg"),
];
