/// It's one class and two properties so it's better not to read
/// So User The Other Way
class UserManager {
  bool authUserProfile(String userName, String profile) {
    return true;
  }

  void updateUserProfile(String userName, Map<String, dynamic> profile) {
    print(userName);
  }
}

/// Other Way
/// Create Two Class And Two Propity. Simple ......
class AuthManager {
  bool authUserProfile(String userName, String profile) {
    return true;
  }
}

class UpdateProfile {
  void updateUserProfile(String userName, Map<String, dynamic> profile) {
    print(userName);
  }
}
