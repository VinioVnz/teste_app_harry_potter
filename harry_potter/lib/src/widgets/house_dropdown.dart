import 'package:flutter/material.dart';

class HouseDropdown extends StatelessWidget {
  final String value;
  final ValueChanged<String> onChanged;

  const HouseDropdown({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: value,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Casa',
        labelStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary, width: 2),
        ),
      ),
      items: const [
        DropdownMenuItem(value: 'all', child: Text('Todas')),
        DropdownMenuItem(value: 'Gryffindor', child: Text('Grifnória')),
        DropdownMenuItem(value: 'Slytherin', child: Text('Sonserina')),
        DropdownMenuItem(value: 'Ravenclaw', child: Text('Cornival')),
        DropdownMenuItem(value: 'Hufflepuff', child: Text('Lufa-Lufa')),
      ],
      onChanged: (value) {
        if (value != null) onChanged(value);
      },
    );
  }
}
