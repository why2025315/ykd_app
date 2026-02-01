import 'package:flutter/material.dart';

class SearchBarCustom extends StatefulWidget {
  const SearchBarCustom({super.key});

  @override
  State<SearchBarCustom> createState() => _SearchBarCustomState();
}

class _SearchBarCustomState extends State<SearchBarCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        spacing: 10,
        children: [
          Icon(Icons.search, size: 24, color: Colors.grey[500]),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: '搜索商品',
                border: InputBorder.none,
              ),
            ),
          ),
          TextButton(onPressed: () {}, child: Text('搜索')),
        ],
      ),
    );
  }
}
