import 'package:flutter/material.dart';

class Seleccion extends StatefulWidget {
  final List<String> items;
  final String? titulo;

  const Seleccion({
    super.key,
    required this.items,
    required this.titulo,
  });

  @override
  _SeleccionState createState() => _SeleccionState();
}

class _SeleccionState extends State<Seleccion> {
  String? _selectedItem;

  @override
  void initState() {
    super.initState();
    _selectedItem = widget.items.isNotEmpty ? widget.items[0] : null;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.titulo!),
      content: SingleChildScrollView(
        child: ListBody(
          children: widget.items.map((item) {
            return RadioListTile<String>(
              value: item,
              groupValue: _selectedItem,
              title: Text(item),
              onChanged: (String? value) {
                setState(() {
                  _selectedItem = value;
                });
              },
            );
          }).toList(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancelar'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(_selectedItem);
          },
          child: const Text('Aceptar'),
        ),
      ],
    );
  }
}