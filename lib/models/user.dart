class User {
  final String nom;
  final String prenom;
  final String telephone;
  final String email;
  final String age;
  final String adresse;
  final String photo;
  User(this.nom, this.prenom, this.telephone, this.email, this.age, this.adresse, this.photo,);



 getUserInfos() {
var a = [nom.toString(),prenom.toString(),photo.toString()] ;
return a.toList();
}

 isConnectedUser() {
   const List a = ['ROLE_USER','ROLE_SIDIMI'];
  const bool con = false;
    if(con){
      print('User is connected');
      return true;
    }
    else{
      print('User  not connected');
      return false;
    }
}

}
