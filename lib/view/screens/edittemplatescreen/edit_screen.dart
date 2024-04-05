import 'package:festival_post_app/utils/festivallist.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/global_var.dart';

class EditTemplateScreen extends StatefulWidget {
  const EditTemplateScreen({super.key});

  @override
  State<EditTemplateScreen> createState() => _EditTemplateScreenState();
}

int index = 0;

class _EditTemplateScreenState extends State<EditTemplateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.grey,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15),
            child: Icon(
              Icons.download,
              size: 28,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(50),
            height: 380,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.black12,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(festivalList[postImageIndex]['img']),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/edit');
            },
            child: Container(
              height: 70,
              width: 400,
              decoration: BoxDecoration(
                color: Color(0xff31B196),
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              child: Text(
                'Edit Template',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 27,
          ),
          Container(
            height: 290,
            alignment: Alignment.bottomRight,
            decoration: const BoxDecoration(
              color: Color(0xffEEEEEE),
              borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(220, 220),
                topRight: Radius.elliptical(220, 220),
              ),
            ),
            child: Container(
              height: 250,
              decoration: const BoxDecoration(
                color: Color(0xff31B196),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(220, 220),
                  topRight: Radius.elliptical(220, 220),
                ),
              ),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 45),
                    child: Text(
                      'Festivals',
                      style: GoogleFonts.sacramento(
                        color: Colors.white,
                        letterSpacing: 4,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,),
                    ),
                  ),
                  Text(
                    'Edit Your Template With Us',
                    style: GoogleFonts.sacramento(
                        letterSpacing: 2,
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
