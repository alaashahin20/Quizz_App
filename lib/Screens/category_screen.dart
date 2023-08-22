import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp1/widget/category_container.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         for(int i=0 ; i<3 ; i++)
         CategoryContainer(index: i,)
        ],
      ),
    );
  }
}