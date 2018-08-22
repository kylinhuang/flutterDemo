
class LoginRes {

  final String messageCode;
  final String info;
  final String description;
  final String jsessionid;
  final String nick_name;
  final String profile_path;
  final String appServerAddr;
  final String ucenterAddr;
  final int snapServiceMinVerison;
  final int ifCheckSessionid;

  LoginRes({this.messageCode, this.info, this.description, this.jsessionid ,this.nick_name,this.profile_path,this.appServerAddr,this.ucenterAddr,this.snapServiceMinVerison,this.ifCheckSessionid });

  factory LoginRes.fromJson(Map<String, dynamic> json) {
    return new LoginRes(
      messageCode: json['messageCode'],
      info: json['info'],
//      title: json['title'],
//      body: json['body'],
    );
  }


}
