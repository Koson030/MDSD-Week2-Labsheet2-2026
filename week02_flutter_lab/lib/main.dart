import 'package:flutter/material.dart';

// จุดเริ่มต้นของ App ทุกตัว
void main() {
  runApp(const MyApp());
}

// Root Widget ของแอป
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Week 02 Lab',
      // ปิด Banner "DEBUG" ที่มุมขวาบน
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

// หน้าแรก
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Week 02 Flutter Lab'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Column(
        // mainAxisAlignment จัดวางตามแกนหลัก (แนวตั้งสำหรับ Column)
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment จัดวางตามแกนรอง (แนวนอนสำหรับ Column)
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Container — กล่องที่ปรับแต่งได้
          Container(
            width: 200,
            height: 100,
            color: Colors.indigo.shade100,
            child: const Center(
              child: Text('Container', style: TextStyle(fontSize: 18)),
            ),
          ),

          // SizedBox — ช่องว่างระหว่าง Widget
          const SizedBox(height: 16),

          // Row — จัดเรียงแนวนอน
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 80,
                height: 80,
                color: Colors.red.shade200,
                child: const Center(child: Text('A')),
              ),
              const SizedBox(width: 8),
              Container(
                width: 80,
                height: 80,
                color: Colors.green.shade200,
                child: const Center(child: Text('B')),
              ),
              const SizedBox(width: 8),
              Container(
                width: 80,
                height: 80,
                color: Colors.blue.shade200,
                child: const Center(child: Text('C')),
              ),
              const SizedBox(width: 8),
              Container(
                width: 80,
                height: 80,
                color: Colors.purple.shade200,
                child: const Center(child: Text('D')),
              ),
            ],
          ),

          const SizedBox(height: 16),
          const Text(
            'Column + Row + Container',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
