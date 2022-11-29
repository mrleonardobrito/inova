import 'package:flutter/material.dart';

class BottomSectionWidget extends StatefulWidget {
  const BottomSectionWidget({Key? key}) : super(key: key);

  @override
  BottomSectionWidgetState createState() => BottomSectionWidgetState();
}

class BottomSectionWidgetState extends State<BottomSectionWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          width: width,
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xFF3B64FA),
            borderRadius: BorderRadius.circular(15),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Center(
              child: Text(
                'Salvar alterações',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
