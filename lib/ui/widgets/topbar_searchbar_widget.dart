import 'package:flutter/material.dart';

class TopbarSearchBarWidget extends StatelessWidget {
  const TopbarSearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Color(0xFFEBEBEB)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(color: Color(0xFFEBEBEB)),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: 'Search here',
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFF969BA0),
          ),
          suffixIconColor: Color(0xFFA4A4A4),
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
