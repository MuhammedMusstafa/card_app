import 'package:flutter/material.dart';

class GasPage extends StatelessWidget {
  const GasPage({super.key});
  static String id = 'GasPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar//---------------------------------------------------------------
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 4, 69, 122),
        title: Text(
          'Gas Test',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      //------------------------------------------------------------------//
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/gas.jpg'), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(top: 170),
          child: Center(
            child: Column(
              children: [
                // BUTTON ADD PEICE//-----------------------------------------

                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      // TEXT WATER TEST//------------------------------------
                      Text(
                        'Gas Test',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          //TEXT FIELD OF VALUE HERE(ده المفروض يتشال ويتحط مكانو التيست والقيمه الافتراضيه مكان زرار الinput) //-------------------------
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Value Here',
                              labelStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 23,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: const BorderSide(
                                  color: Colors.orange,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(
                                    color: const Color.fromARGB(
                                        255, 207, 199, 187)),
                              ),
                            ),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
