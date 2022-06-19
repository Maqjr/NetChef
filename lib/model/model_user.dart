class UserModel{
  String? uid;
  String? email;
  String? firstName;
  String? phonenumber;

  UserModel({this.uid, this.email, this.firstName, this.phonenumber});


  // data from server
     factory UserModel.fromMap(map){
      return UserModel(uid: map['uid'], email: map['email'], firstName: map['first name'], phonenumber: map['phone number']);
    }



    //sending data
    Map<String, dynamic> toMap(){
       return {
         'uid' : uid,
         'email' : email,
         'first name': firstName,
         'phone number': phonenumber
       };
    }

}