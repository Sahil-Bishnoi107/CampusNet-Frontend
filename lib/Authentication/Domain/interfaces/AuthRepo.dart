abstract class IAuthRepo {

  Future<void> signInWithGoogle();
  Future<void> handleSupabaseLogin();
  Future<bool> isLoggedIn();
}