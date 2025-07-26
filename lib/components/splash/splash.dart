import 'package:flutter/material.dart';
import 'start.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // Navigate to Start screen after 4 seconds
    Future.delayed(const Duration(seconds: 4), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Start()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xff4CAF50), // Green background
        child: SafeArea(
          child: SingleChildScrollView(
            // Ensures scrollability if needed
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: screenWidth * 0.2), // Top padding
                  Image.asset(
                    'assets/logo.png',
                    width: screenWidth * 0.8,
                    height: screenWidth * 0.8,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: screenWidth * 0.05),
                  Text(
                    "St. Joseph University",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.07,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: screenWidth * 0.03),
                  Text(
                    "Final Year MCA Project",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.051,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: screenWidth * 0.2), // Bottom padding
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'start.dart';

// class Splash extends StatefulWidget {
//   const Splash({super.key});

//   @override
//   _SplashState createState() => _SplashState();
// }

// class _SplashState extends State<Splash> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(const Duration(seconds: 4), () {
//       if (mounted) {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => const Start()),
//         );
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final Size screenSize = MediaQuery.of(context).size;
//     final double screenWidth = screenSize.width;

//     return Scaffold(
//       body: Center(
//         child: Container(
//           decoration: const BoxDecoration(
//             color: Color(0xff4CAF50),
//           ),
//           child: Stack(
//             children: <Widget>[
//               Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.asset(
//                       'assets/logo.png',
//                       width: screenWidth * 0.8,
//                       height: screenWidth * 0.8,
//                     ),
//                     SizedBox(width: screenWidth * 0.0),
//                     Text(
//                       "St. Joseph University",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: screenWidth * 0.07,
//                         fontWeight: FontWeight.w600,
//                         fontStyle: FontStyle.italic,
//                       ),
//                     ),
//                     SizedBox(height: screenWidth * 0.03),
//                     Text(
//                       "Final Year MCA Project",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: screenWidth * 0.051,
//                         fontWeight: FontWeight.w600,
//                         fontStyle: FontStyle.normal,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
