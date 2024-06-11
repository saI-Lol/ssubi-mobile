import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  bool _isEditing = false;
  String _fullName = 'Greg Ssebakijje';
  final String _email = 'greg.ssebakijje@email.com';

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _toggleEditing() {
    setState(() {
      _isEditing = !_isEditing;
    });
  }

  void _saveProfile() {
    if (_formKey.currentState!.validate()) {
      // Remove leading and trailing whitespaces and convert to sentence case
      String firstName = _firstNameController.text.trim();
      String lastName = _lastNameController.text.trim();
      firstName = _toSentenceCase(firstName);
      lastName = _toSentenceCase(lastName);

      setState(() {
        _fullName = '$firstName $lastName';
        _isEditing = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Profile updated')),
      );
    }
  }

  String _toSentenceCase(String str) {
    if (str.isEmpty) return '';
    return str[0].toUpperCase() + str.substring(1).toLowerCase();
  }

  void _cancelEditing() {
    setState(() {
      _isEditing = false;
    });
    _formKey.currentState!.reset();
    _firstNameController.clear();
    _lastNameController.clear();
    _phoneController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFEFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFCFEFF),
        elevation: 0,
        title: const Text('Profile',
            style: TextStyle(
                fontSize: 24.0,
                color: Color(0xFF32313A),
                fontWeight: FontWeight.w500)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              // Profile card
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 24.0),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF6F7FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      // Profile image
                      const CircleAvatar(
                        radius: 32,
                        backgroundColor: Color(0xFFE7E8EC),
                        child: Icon(
                          Icons.person,
                          color: Color(0xFFA5A5A5),
                          size: 48.0,
                        ),
                      ),
                      const SizedBox(width: 16),
                      // Column with full name and email
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // User Name
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              _fullName,
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF32313A),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Text(
                            _email,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFF999999),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // Edit Profile widget
              Container(
                padding: const EdgeInsets.fromLTRB(12, 16, 12, 0),
                decoration: BoxDecoration(
                  color: const Color(0xFFF6F7FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: InkWell(
                        onTap: _toggleEditing,
                        child: const Row(
                          children: [
                            Icon(Icons.edit, color: Color(0xFF32313A)),
                            SizedBox(width: 16),
                            Text(
                              'Edit Profile',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF32313A),
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    if (_isEditing)
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            // First name
                            TextFormField(
                              autofocus: false,
                              controller: _firstNameController,
                              decoration: const InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF467AFF)),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF999999)),
                                ),
                                focusColor: Color(0xFF467AFF),
                                labelText: 'First Name',
                                labelStyle: TextStyle(color: Color(0xFF999999)),
                              ),
                              cursorColor: const Color(0xFF467AFF),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your first name';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 16),
                            // Last name
                            TextFormField(
                              autofocus: false,
                              controller: _lastNameController,
                              decoration: const InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF467AFF)),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF999999)),
                                ),
                                focusColor: Color(0xFF467AFF),
                                labelText: 'Last Name',
                                labelStyle: TextStyle(color: Color(0xFF999999)),
                              ),
                              cursorColor: const Color(0xFF467AFF),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your last name';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 16),
                            // Phone
                            TextFormField(
                              autofocus: false,
                              controller: _phoneController,
                              decoration: const InputDecoration(
                                hintText: 'E.g. 0712345678',
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF467AFF)),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xFF999999)),
                                ),
                                hintStyle: TextStyle(
                                    color: Color(0xFF999999),
                                    fontWeight: FontWeight.normal),
                                labelText: 'Phone',
                                labelStyle: TextStyle(color: Color(0xFF999999)),
                              ),
                              keyboardType: TextInputType.phone,
                              cursorColor: const Color(0xFF467AFF),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your phone number';
                                }
                                if (!RegExp(r'^\d+$').hasMatch(value)) {
                                  return 'Please enter a valid phone number';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 24),
                            // Row with buttons
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // Cancel
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: _cancelEditing,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      side: const BorderSide(
                                          color: Color(0xFF467AFF)),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 48.0, vertical: 12.0),
                                      elevation: 0,
                                    ),
                                    child: const Text(
                                      'Cancel',
                                      style:
                                          TextStyle(color: Color(0xFF467AFF)),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 24.0),
                                // Save
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: _saveProfile,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF467AFF),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 48.0, vertical: 12.0),
                                      elevation: 0,
                                    ),
                                    child: const Text(
                                      'Save',
                                      style:
                                          TextStyle(color: Color(0xFFFCFEFF)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 12.0,
                            )
                          ],
                        ),
                      ),
                  ],
                ),
              ),

              // Log out tile
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF6F7FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.logout, color: Color(0xFFF5564A)),
                      SizedBox(width: 16),
                      Text(
                        'Logout',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFFF5564A),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 64.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
