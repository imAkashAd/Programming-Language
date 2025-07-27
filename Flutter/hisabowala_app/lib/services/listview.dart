import 'package:flutter/material.dart';
import 'package:hisabowala_app/services/database_helper.dart';

class RegistrationListPage extends StatefulWidget {
  static String routeName = '/registration-list';
  const RegistrationListPage({super.key});

  @override
  State<RegistrationListPage> createState() => _RegistrationListPageState();
}

class _RegistrationListPageState extends State<RegistrationListPage> {
  List<Map<String, dynamic>> _registrations = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _refreshRegistrations();
  }

  Future<void> _refreshRegistrations() async {
    final data = await DatabaseHelper.instance.getAllRegistrations();
    setState(() {
      _registrations = data;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration List'),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _registrations.length,
              itemBuilder: (context, index) {
                final registration = _registrations[index];
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    title: Text(registration['store_name']),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Owner: ${registration['owner_name']}'),
                        Text('Mobile: ${registration['mobile']}'),
                        Text('Category: ${registration['category']}'),
                      ],
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () async {
                        await DatabaseHelper.instance
                            .deleteRegistration(registration['id']);
                        _refreshRegistrations();
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }
}