import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskez/Values/values.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SearchTaskCard extends StatelessWidget {
  const SearchTaskCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: Container(
          width: double.infinity,
          height: 100,
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              color: HexColor.fromHex("262A34"),
              borderRadius: BorderRadius.circular(10)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(children: [
              Container(
                width: 50,
                height: 50,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                child: ClipOval(
                  child: Center(
                    child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.pink,
                                  HexColor.fromHex("C395FC")
                                ]),
                            shape: BoxShape.circle),
                        child: Center(
                            child: Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle),
                                child: Center(
                                    child: Container(
                                        width: 12,
                                        height: 12,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle)))))),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Unity Dashboard",
                        style: GoogleFonts.lato(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18)),
                    Text('in UI Design Kit',
                        style:
                            GoogleFonts.lato(color: HexColor.fromHex("5A5E6D")))
                  ])
            ]),
            Text('Dec 2',
                style: GoogleFonts.lato(color: HexColor.fromHex("F5A3FF")))
          ])),
      secondaryActions: <Widget>[
        IconSlideAction(
          //caption: 'More',
          color: HexColor.fromHex("B1FEE2"),
          icon: Icons.share,

          // onTap: () => _showSnackBar('More'),
        ),
        IconSlideAction(
          //caption: 'Delete',
          iconWidget: Icon(Icons.delete, size: 35),
          color: HexColor.fromHex("F5A3FF"),

          // onTap: () => _showSnackBar('Delete'),
        ),
      ],
    );
  }
}
