import 'package:flutter/material.dart';

class MultiSelectCardDialog extends StatefulWidget {
  final List<Map<String, String>> items;
  final List<Map<String, String>> initialSelectedItems;
  final String? titulo;

  const MultiSelectCardDialog({
    super.key,
    required this.items,
    required this.initialSelectedItems,
    required this.titulo,
  });

  @override
  _MultiSelectCardDialogState createState() => _MultiSelectCardDialogState();
}

class _MultiSelectCardDialogState extends State<MultiSelectCardDialog> {
  late List<Map<String, String>> _selectedItems;

  @override
  void initState() {
    super.initState();
    _selectedItems = List.from(widget.initialSelectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.titulo!),
      content: Container(
        width: 800,
        height: 350, 
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, 
            crossAxisSpacing: 5, 
            mainAxisSpacing: 5, 
            childAspectRatio: 0.5, 
          ),
          itemCount: widget.items.length,
          itemBuilder: (context, index) {
            final item = widget.items[index];
            final isSelected = _selectedItems.contains(item);
            return GestureDetector(
              onTap: () {
                setState(() {
                  if (isSelected) {
                    _selectedItems.remove(item);
                  } else {
                    _selectedItems.add(item);
                  }
                });
              },
              child: Card(
                color: isSelected ? Colors.blue.withOpacity(0.5) : Colors.white,
                child: Column(
                  children: [
                    Image.asset(
                      item["imagen"]!,
                      fit: BoxFit.contain,
                      height: 100, 
                      width: double.infinity,
                    ),
                    const SizedBox(height: 5), 
                    Text(
                      item["nombre"]!,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center, 
                    ),
                    const SizedBox(height: 5), 
                    Text(
                      'Precio: \$${item["precio"]!}',
                      style: const TextStyle(
                        fontSize: 12, 
                      ),
                      textAlign: TextAlign.center, 
                    ),
                    const SizedBox(height: 5), 
                    Text(
                      'Stock: ${item["stock"]!}',
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.center, 
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(widget.initialSelectedItems);
          },
          child: const Text('Cancelar'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(_selectedItems);
          },
          child: const Text('Aceptar'),
        ),
      ],
    );
  }
}