import 'package:flutter/material.dart';

void main() {
  runApp(const Usuarios());
}

class Usuarios extends StatelessWidget {
  const Usuarios({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xFF022044), Color(0xFF01021E)],
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {},
                    ),
                    const Text(
                      'Usuarios',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: const Color(0xFF0665A4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset('images/PICNITO LOGO.jpeg',fit: BoxFit.contain,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    border: TableBorder.all(
                        color: Colors.grey), 
                    headingTextStyle: const TextStyle(
                        color: Colors.white), 
                    dataTextStyle: const TextStyle(
                        color: Colors.white),
                    columns: const <DataColumn>[
                      DataColumn(label: Text('NOMBRE COMPLETO')),
                      DataColumn(label: Text('DEPARTAMENTO')),
                      DataColumn(label: Text('TELÉFONO')),
                      DataColumn(label: Text('USUARIO')),
                      DataColumn(label: Text('CONTRASEÑA')),
                      DataColumn(label: Text('FECHA REGISTRO')),
                      DataColumn(label: Text('RFC')),
                      DataColumn(label: Text('OPCIONES')),
                    ],
                    rows: <DataRow>[
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('Ricardo Axel Contreras Morales')),
                          DataCell(Text('Taquilla')),
                          DataCell(Text('8333000055')),
                          DataCell(Text('Ricky.empleado')),
                          DataCell(Text('********')),
                          DataCell(Text('23-02-2025')),
                          DataCell(Text('MIK...')),
                          DataCell(
                            Row(
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.edit,
                                      color: Colors.white),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete,
                                      color: Colors.white),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff14AE5C),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                    ),
                    child: const Row(
                      mainAxisSize:
                          MainAxisSize.min,
                      children: [
                        Icon(Icons.person_add_alt_1_sharp,
                            color: Color(0xffF5F5F5),
                            size: 20),
                        SizedBox(
                            width:
                                8), 
                        Text(
                          'Nuevo Usuario',
                          style: TextStyle(
                              color: Color(0xffF5F5F5),
                              fontSize: 14), 
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
