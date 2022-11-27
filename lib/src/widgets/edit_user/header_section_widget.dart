import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inova/src/pages/user/user_page.dart';
import 'package:inova/src/utils/functions/functions.dart';
import 'package:inova/src/utils/variables/variables.dart';
import 'package:inova/src/utils/variables/list_variables.dart';

class HeaderSectionWidget extends StatefulWidget {
  const HeaderSectionWidget({Key? key}) : super(key: key);

  @override
  HeaderSectionWidgetState createState() => HeaderSectionWidgetState();
}

class HeaderSectionWidgetState extends State<HeaderSectionWidget> {
  File? _image;

  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;

    final imageTemporary = File(image.path);

    setState(
      () {
        _image = imageTemporary;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double circleHeight = 450;

    return Container(
      color: Colors.transparent,
      child: Stack(
        children: [
          Positioned(
            top: -260,
            right: width / 2 - ((circleHeight) / 2),
            child: Center(
              child: Container(
                height: circleHeight,
                width: circleHeight,
                decoration: BoxDecoration(
                  color: const Color(0xFF3B64FA),
                  borderRadius: BorderRadius.circular(360),
                ),
              ),
            ),
          ),
          Container(
            height: height * userScreenComponentsSize[0]["size"],
            width: width,
            decoration: const BoxDecoration(color: Colors.transparent),
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 60),
                    child: Icon(
                      Icons.arrow_back,
                      color: getColor("white"),
                      size: iconHeaderSize,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: width / 2 - ((circleHeight * 0.25) / 2),
            top: (circleHeight * 0.54) / 2,
            child: GestureDetector(
              onTap: getImage,
              child: Container(
                height: circleHeight * 0.25,
                width: circleHeight * 0.25,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(1000),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(150),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.black,
                        ),
                        child: _image != null
                            ? Image.file(_image!)
                            : const Center(
                                child: Text('Adicione a imagem'),
                              ),
                      ),
                    ),
                    const Center(
                      child: Opacity(
                        opacity: .60,
                        child: Icon(
                          Icons.camera_alt,
                          size: 45,
                          color: Color(0xFFE8ECFF),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: width / 2 - ((circleHeight * 0.45) / 2),
            top: (circleHeight * 1.1) / 2,
            child: Row(
              children: [
                SizedBox(
                  height: 50,
                  width: circleHeight * 0.35,
                  child: ListView(
                    children: const [
                      Center(
                        child: Text(
                          'Emanuel Vilela',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          '@emanuelvsz',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF808080),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.edit,
                  size: 24,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
