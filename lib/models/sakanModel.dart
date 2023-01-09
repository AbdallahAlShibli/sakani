import "package:flutter/material.dart";

class SkanatModel {
  late final String phoneNo;
  late final String name;
  late List<String> imgsList;

  SkanatModel(this.phoneNo, this.name, this.imgsList);

  //data sample

}

List<SkanatModel> dataListS1 = [
  SkanatModel("97744571", "سكنات الثقة والتميز1", imgList1),
  SkanatModel("95272040", "سكن السندباد (1)", imgList2),
];

List<SkanatModel> dataListS2 = [
  SkanatModel("99252220", "سكنات البحري للطالبات", imgList3),
  SkanatModel("92255580", "سكنات السعادة للطالبات ", imgList4),
  SkanatModel("96665430", "سكنات خليل الشكيلي للطالبات", imgList5),
  SkanatModel("91733713", "سكن السمو", imgList6),
  SkanatModel("97717848", "سكنات العطاء", imgList7),
];

List<String> imgList1 = ["images/s11.jpg", "images/s12.jpg", "images/s13.jpg"];

List<String> imgList2 = ["images/s14.jpg", "images/s15.jpg"];
List<String> imgList3 = ["images/s221.jpg", "images/s222.jpg", "images/s223.jpg"];

List<String> imgList4 = ["images/s231.jpg", "images/s232.jpg"];

List<String> imgList5 = ["images/s241.jpg", "images/s242.jpg"];

List<String> imgList6 = ["images/s251.jpg", "images/s252.jpg"];

List<String> imgList7 = ["images/s261.jpg", "images/s262.jpg", "images/s263.jpg"];
