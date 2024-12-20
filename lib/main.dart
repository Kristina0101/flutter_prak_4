import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),

      initialRoute: '/',
      routes: {
        '/page2': (context) => const Page2(),
        '/page3': (context) => const Page3(),
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF039EA2),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Image.asset(
                  'assets/medinow.png',
                  width: 184.1,
                  height: 30.78,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Meditate With Us',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/page2');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  minimumSize: const Size(342, 50),
                ),
                child: const Text(
                  'Sign in with Apple',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(height: 14),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/page3');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFCDFDFE),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  minimumSize: const Size(342, 50),
                ),
                child: const Text(
                  'Continue with Email or Phone',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Continue With Google',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              Image.asset(
                'assets/image_3.png',
                width: 377.48,
                height: 284.34,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}


class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Image.asset(
                'assets/Component_1.png',
                width: 500,
                height: 350,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Peter Mach',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Mind Deep Relax',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Join the Community as we prepare over 33 days to relax and feel joy with the mind and happiness session across the World.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF1E1E1E),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/page3');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF039EA2),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  minimumSize: const Size(342, 60),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/play.png',
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Play Next Session',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              _buildSession(
                colorButton: 'assets/blue_button.png',
                title: 'Sweet Memories',
                subtitle: 'December 29 Pre-Launch',
              ),
              _buildSession(
                colorButton: 'assets/green_button.png',
                title: 'A Day Dream',
                subtitle: 'December 29 Pre-Launch',
              ),
              _buildSession(
                colorButton: 'assets/orange_button.png',
                title: 'Mind Explore',
                subtitle: 'December 29 Pre-Launch',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSession({
    required String colorButton,
    required String title,
    required String subtitle,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          const SizedBox(width: 20),
          Image.asset(
            colorButton,
            width: 42,
            height: 42,
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 17,
                  color: Color(0xFF1E1E1E),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          const Spacer(),
          Image.asset(
            'assets/dots.png',
            width: 6,
            height: 6,
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meditate'),
        backgroundColor: const Color(0xFF039EA2),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/search.png',
              width: 34,
              height: 34,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildButton('All', const Color(0xFF039EA2), Colors.white),
                    const SizedBox(width: 15),
                    _buildButton('Bible In a Year', const Color(0xFFE6FEFF), const Color(0xFF039EA2)),
                    const SizedBox(width: 15),
                    _buildButton('Dailies', const Color(0xFFE6FEFF), const Color(0xFF039EA2)),
                    const SizedBox(width: 15),
                    _buildButton('Minutes', const Color(0xFFE6FEFF), const Color(0xFF039EA2)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Image.asset(
                  'assets/AppClip.png',
                  height: 285,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/card1.png', height: 192, width: 166.57),
                    const SizedBox(width: 10),
                    Image.asset('assets/card2.png', height: 192, width: 166.57),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/card3.png', height: 192, width: 166.57),
                    const SizedBox(width: 10),
                    Image.asset('assets/card4.png', height: 192, width: 166.57),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(String text, Color backgroundColor, Color textColor) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: 15),
      ),
    );
  }
}