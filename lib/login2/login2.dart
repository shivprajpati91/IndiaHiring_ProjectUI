import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _usernameAnimation;
  late Animation<double> _passwordAnimation;
  late Animation<double> _buttonAnimation;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    // Initialize animations after controller setup
    _usernameAnimation = Tween<double>(begin: 0, end: 300).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _passwordAnimation = Tween<double>(begin: 0, end: 300).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _buttonAnimation = Tween<double>(begin: -50, end: 0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.forward().then((value) {
      setState(() {
        _isVisible = true; // Show elements after animation starts
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Cat Animation or Icon
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: _isVisible ? 1 : 0,
              child: Container(
                height: 200,
                child: Icon(Icons.person, color: Colors.white, size: 100),
              ),
            ),
            SizedBox(height: 20),

            // Title
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: _isVisible ? 1 : 0,
              child: Column(
                children: [
                  Text(
                    'Welcome Back!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Login to continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.purple[200],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),

            // Animated Username Field
            AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              left: _usernameAnimation.value,
              right: _usernameAnimation.value,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                margin: EdgeInsets.symmetric(horizontal: 40),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [Colors.pinkAccent.withOpacity(0.3), Colors.purpleAccent.withOpacity(0.2)],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.purpleAccent.withOpacity(0.5),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.purple[50],
                    hintText: 'Username',
                    prefixIcon: Icon(Icons.person, color: Colors.pinkAccent),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Animated Password Field
            AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              left: _passwordAnimation.value,
              right: _passwordAnimation.value,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                margin: EdgeInsets.symmetric(horizontal: 40),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [Colors.pinkAccent.withOpacity(0.3), Colors.purpleAccent.withOpacity(0.2)],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pinkAccent.withOpacity(0.5),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.purple[50],
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock, color: Colors.pinkAccent),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 30),

            // Login Button with Animation
            AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              bottom: _buttonAnimation.value,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: ElevatedButton(
                  onPressed: () {
                    // Add login logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Social Login Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _socialLoginButton(FontAwesomeIcons.google, Colors.red, 'Gmail'),
                SizedBox(width: 20),
                _socialLoginButton(FontAwesomeIcons.facebook, Colors.blue, 'Facebook'),
                SizedBox(width: 20),
                _socialLoginButton(Icons.phone, Colors.green, 'Phone'),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _socialLoginButton(IconData icon, Color color, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: color,
          child: Icon(icon, color: Colors.white, size: 20),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ],
    );
  }
}
