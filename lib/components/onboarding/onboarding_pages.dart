import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

List<PageViewModel> getPages() {
  return [
    PageViewModel(
        image: Image.network('https://pbs.twimg.com/media/DnjOXc4XcAUc-5a.jpg:large'),
        title: 'First Page',
        body: 'Body Text',
        footer: Text("Footer")),
    PageViewModel(
        image: Image.network('https://hdwallpaperim.com/wp-content/uploads/2017/08/24/113030-Avenged_Sevenfold.jpg'),
        title: 'Second Page',
        body: 'Body Text',
        footer: Text("Footer")),
  ];
}
