import 'package:card_app/electricitypage.dart';
import 'package:card_app/gaspage.dart';
import 'package:card_app/waterpage.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  static String id = 'SecondScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color.fromARGB(255, 4, 69, 122),
          title: Text(
            'Notification Center',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),

          // ------------------- pop menu to show gas,electicity,water //---------------
          actions: [
            PopupMenuButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: GestureDetector(
                          child: Text('WATER'),
                          onTap: () {
                            Navigator.pushNamed(context, WaterPage.id);
                          },
                        ),
                      ),
                      PopupMenuItem(
                        child: GestureDetector(
                          child: Text('GAS'),
                          onTap: () {
                            Navigator.pushNamed(context, GasPage.id);
                          },
                        ),
                      ),
                      PopupMenuItem(
                        child: GestureDetector(
                          child: Text('Electricity'),
                          onTap: () {
                            Navigator.pushNamed(context, ElectricityPage.id);
                          },
                        ),
                      ),
                    ]),
          ],
        ),
        body: Center(
          child: Text(
            'No Older Notification',
            style: TextStyle(fontSize: 25, color: Colors.black38),
          ),
        ));
  }
}
