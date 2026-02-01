import 'package:flutter/material.dart';

class EditCartBar extends StatelessWidget {
  const EditCartBar({
    super.key,
    required this.isCheckAll,
    required this.onCheckAll,
    required this.onDelete,
  });

  final bool isCheckAll;
  final ValueChanged<bool> onCheckAll;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                onCheckAll(!isCheckAll);
              },
              child: Row(
                children: [
                  Checkbox(
                    value: isCheckAll,
                    onChanged: (value) {
                      if (value != null) {
                        onCheckAll(value);
                      }
                    },
                  ),
                  Text('全选'),
                ],
              ),
            ),
          ),
          FilledButton(
            onPressed: () {
              onDelete();
            },
            style: FilledButton.styleFrom(backgroundColor: Colors.red),
            child: Text('删除'),
          ),
        ],
      ),
    );
  }
}
