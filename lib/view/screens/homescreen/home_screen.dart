import 'package:festival_post_app/utils/festivallist.dart';
import 'package:festival_post_app/view/screens/edittemplatescreen/edit_screen.dart';
import 'package:festival_post_app/view/screens/homescreen/components/grid_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/global_var.dart';
import 'components/list_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Festy',
          style: GoogleFonts.sacramento(
            letterSpacing: 2,
            color: Colors.black,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: const Icon(Icons.menu_outlined),
        elevation: 5,
        shadowColor: Colors.grey,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isList = !isList;
              });
            },
            icon: (isList)
                ? const Icon(
                    Icons.grid_view_rounded,
                    color: Colors.black,
                  )
                : const Icon(
                    Icons.list,
                    color: Colors.black,
                  ),
          ),
        ],
      ),
      body: (isList)
          ? Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: ListView.builder(
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    setState(() {
                      postImageIndex = index;
                      Navigator.of(context).pushNamed('/template');
                    });
                  },
                  child: containerBox(
                    festivalList[index]['name'],
                    festivalList[index]['content'],
                    festivalList[index]['img'],
                  ),
                ),
                itemCount: festivalList.length,
              ),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    setState(() {
                      postImageIndex = index;
                      Navigator.of(context).pushNamed('/template');
                    });
                  },
                  child: gridviewBox(
                    festivalList[index]['img'],
                    festivalList[index]['name'],
                  ),
                ),
                itemCount: festivalList.length,
              ),
            ),
    );
  }
}