import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  final TextEditingController _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
            ),
            const SizedBox(height: 24,),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Find your \nFavorite Food",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _search,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search, size: 16, color: Colors.black),
                  fillColor: const Color(0xfff1f4fa),
                  filled: true,
                  hintText: "What do you want to order",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12,),
            const Row(
              children: [
                SizedBox(width: 12,),
                Text(
                  'Type',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                ),
              ],
            ),

            const SizedBox(height: 12,),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: const Size(100, 36),
                      backgroundColor: const Color(0xfff1f4fa)),
                  child: const Text('Restaurant', style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                const SizedBox(width: 25,),
                TextButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: const Size(100, 36),
                      backgroundColor: const Color(0xfff1f4fa)),
                  child: const Text(
                    'Menu',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12,),

            const Row(
              children: [
                SizedBox(width: 12,),
                Text(
                  'Location',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: const Size(60, 16),
                      backgroundColor: const Color(0xfff1f4fa)),
                  child: const Text('1 km', style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                const SizedBox(width: 25,),
                TextButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: const Size(72, 24),
                      backgroundColor: const Color(0xfff1f4fa)),
                  child: const Text(
                    '> 10 km',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                const SizedBox(width: 25,),
                TextButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: const Size(72, 24),
                      backgroundColor: const Color(0xfff1f4fa)),
                  child: const Text(
                    '< 10 km',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12,),

            const Row(
              children: [
                SizedBox(width: 12,),
                Text(
                  'Food',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: const Size(60, 16),
                      backgroundColor: const Color(0xfff1f4fa)),
                  child: const Text('Cake', style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                const SizedBox(width: 25,),
                TextButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: const Size(72, 24),
                      backgroundColor: const Color(0xfff1f4fa)),
                  child: const Text(
                    'Soup',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                const SizedBox(width: 25,),
                TextButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: const Size(100, 36),
                      backgroundColor: const Color(0xfff1f4fa)),
                  child: const Text(
                    'Main Course',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12,),

            Row(
              children: [
                const SizedBox(width: 20,),
                TextButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: const Size(100, 36),
                      backgroundColor: const Color(0xfff1f4fa)),
                  child: const Text(
                    'Appetizer',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
                SizedBox(width: 25,),
                TextButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minimumSize: const Size(100, 36),
                      backgroundColor: const Color(0xfff1f4fa)),
                  child: const Text(
                    'Dessert',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(height: 36,),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    backgroundColor: Colors.green,
                    fixedSize: const Size(320, 60),
                    elevation: 4),
                onPressed: () {},
                child: const Text(
                  'Search',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}