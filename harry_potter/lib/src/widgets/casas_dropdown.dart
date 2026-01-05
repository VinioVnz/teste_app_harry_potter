import 'package:flutter/material.dart';

class CasasDropdown extends StatelessWidget {
  final String value;
  final ValueChanged<String> onChanged;

  const CasasDropdown({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: value,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Casa',
        labelStyle: TextStyle(color: Color(0xff440719)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff440719)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff440719), width: 2),
        ),
      ),
      items: const [
        DropdownMenuItem(value: 'all', child: Text('Todas')),
        DropdownMenuItem(value: 'Gryffindor', child: Text('Gryffindor')),
        DropdownMenuItem(value: 'Slytherin', child: Text('Slytherin')),
        DropdownMenuItem(value: 'Ravenclaw', child: Text('Ravenclaw')),
        DropdownMenuItem(value: 'Hufflepuff', child: Text('Hufflepuff')),
      ],
      onChanged: (value) {
        if (value != null) onChanged(value);
      },
    );
  }
}
