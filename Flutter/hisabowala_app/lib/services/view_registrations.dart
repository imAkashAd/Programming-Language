import 'package:flutter/material.dart';
import 'package:hisabowala_app/services/database_helper.dart';

class ViewRegistrationPage extends StatefulWidget {
  static const String routeName = '/view-registrations';
  
  const ViewRegistrationPage({super.key});

  @override
  State<ViewRegistrationPage> createState() => _ViewRegistrationPageState();
}

class _ViewRegistrationPageState extends State<ViewRegistrationPage> {
  List<Map<String, dynamic>> _registrations = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadRegistrations();
  }

  Future<void> _loadRegistrations() async {
    final data = await DatabaseHelper.instance.getAllRegistrations();
    setState(() {
      _registrations = data;
      _isLoading = false;
    });
  }

  Future<void> _deleteRegistration(int id) async {
    await DatabaseHelper.instance.deleteRegistration(id);
    _loadRegistrations(); // Refresh the list after deletion
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('রেজিস্ট্রেশন তালিকা'),
        centerTitle: true,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _registrations.isEmpty
              ? const Center(child: Text('কোন রেজিস্ট্রেশন পাওয়া যায়নি'))
              : ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: _registrations.length,
                  itemBuilder: (context, index) {
                    final reg = _registrations[index];
                    return Card(
                      elevation: 3,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        title: Text(
                          reg['store_name'],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('মালিক: ${reg['owner_name']}'),
                            Text('মোবাইল: ${reg['mobile']}'),
                            Text('ধরণ: ${reg['category']}'),
                            Text('ঠিকানা: ${reg['address']}'),
                          ],
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => _deleteRegistration(reg['id']),
                        ),
                      ),
                    );
                  },
                ),
    );
  }
} 