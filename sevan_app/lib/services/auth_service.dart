class AuthService {
  bool isLoggedIn = false;

  Future<bool> login(String email, String password) async {
    // Simulate a login operation with mock data
    await Future.delayed(Duration(seconds: 2)); // Simulate some delay
    if (email == 'user@example.com' && password == 'password') {
      isLoggedIn = true;
      return true; // Login successful
    } else {
      isLoggedIn = false;
      return false; // Login failed
    }
  }

  Future<bool> signup(String email, String password) async {
    // Simulate a signup operation with mock data
    await Future.delayed(Duration(seconds: 2)); // Simulate some delay
    if (email.isNotEmpty && password.isNotEmpty) {
      isLoggedIn = true;
      return true; // Signup successful
    } else {
      isLoggedIn = false;
      return false; // Signup failed
    }
  }
}
