import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _showPassword = true;
  final TextEditingController _namacontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Center(
          child: Image.asset(
            "asset/Logo.png",
            width: 120,
          ),
        ),
        const SizedBox(height: 10),
      
            const Text(
              "Sign In",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "Enter your ID and password to sign in!",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 24),

            //Email
            const Text("Email"),
            TextField(
              controller: _namacontroller,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_2),
                labelText: "Email",
                hintText: "email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),

            const SizedBox(height: 12),

            //password
            const Text("Password"),
            TextField(
              controller: _passwordcontroller,
              obscureText: _showPassword,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _showPassword = !_showPassword;
                    });
                  },
                  icon: Icon(
                    _showPassword
                        ? Icons.remove_red_eye
                        : Icons.visibility_off,
                  ),
                ),
                labelText: "Min. 8 characters",
                hintText: "Password",
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),
            const SizedBox(height: 16),

            Row(
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                const Text("Keep me logged in"),
              ],
            ),
            const SizedBox(height: 12),

            // Tombol Untuk Login 
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  colors: [Color(0xFF3A7BD5), Color(0xFF3A6073)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueAccent.withOpacity(0.4),
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  )
                ],
              ),
              child: ElevatedButton(
                onPressed: () {
                  print(_namacontroller.text);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 16,color: Colors.white, 
    fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Tombol dibawah login
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Belum punya akun? ",
                  style: const TextStyle(color: Colors.black54),
                  children: [
                    TextSpan(
                      text: "Daftar di sini",
                      style: const TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
