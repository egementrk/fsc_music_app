import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

List<PageViewModel> getPages() {
  return [
    PageViewModel(
        image: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/600px-Google_%22G%22_Logo.svg.png'),
        title: 'Welcome to my App',
        body: 'Hello!',
        footer: Text("First Onboarding Screen")),
    PageViewModel(
        image: Image.network('https://static.vecteezy.com/system/resources/previews/001/207/404/non_2x/electric-guitar-png.png'),
        title: 'Welcome to my App',
        body: 'Hello',
        footer: Text("Second Onboarding Screen")),
  ];
}
