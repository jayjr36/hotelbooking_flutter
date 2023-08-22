import 'package:flutter/material.dart';
import 'package:hotelbooking/hotel_booking/hotel_home_screen.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: w,
        height: h,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 1, 32, 2)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: h*0.3,
              width: w*0.7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/inviteImage.png"),
              ),
            ),
            
            SizedBox(
              height: h * 0.1,
            ),
            const Text(
              'Welcome to our Hotel\n      Booking App',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(
              height: h * 0.05,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HotelHomeScreen()));
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: w*0.2),
                  backgroundColor:const Color.fromARGB(255, 48, 227, 240),
              ),
                child: const Text(
                  'Get started',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
