import 'package:finst/constants.dart';
import 'package:flutter/material.dart';

class Login {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Widget build(BuildContext context, BoxConstraints constraints) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: constraints.copyWith(maxWidth: 500),
              child: TextField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
            ),
            ConstrainedBox(
              constraints: constraints.copyWith(maxWidth: 500),
              child: TextField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Senha'),
                obscureText: true,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => authController.login(
                  _emailController.text, _passwordController.text),
              child: const Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }
}
