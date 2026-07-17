import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, color: Color(0xff76520E)),
          hint: Text(
            'search',
            style: TextStyle(
              color: Color(0xffB3B3B3).withValues(alpha: 0.8),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Color(0xff76520E)),
          ),
        ),
      ),
    );
  }
}
