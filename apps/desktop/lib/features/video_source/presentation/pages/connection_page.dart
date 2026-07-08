import 'package:flutter/material.dart';

class ConnectionPage extends StatefulWidget {
  const ConnectionPage({super.key});

  @override
  State<ConnectionPage> createState() => _ConnectionPageState();
}

class _ConnectionPageState extends State<ConnectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nexora')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Server Address',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 12),
              const TextField(
                decoration: InputDecoration(
                  hintText: '192.168.1.100',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 24),

              Text('Username', style: Theme.of(context).textTheme.titleLarge),

              const SizedBox(height: 12),

              const TextField(
                decoration: InputDecoration(
                  hintText: 'admin',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 24),

              Text('Password', style: Theme.of(context).textTheme.titleLarge),

              const SizedBox(height: 12),

              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: '••••••••',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 32),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Connect'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
