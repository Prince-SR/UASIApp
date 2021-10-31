class constants{
    final String uid;
    final String vid;
    final String txnid;
    final String otp;
    constants({required this.uid,required this.vid,required this.txnid,required this.otp});

    factory constants.fromJson(final json){
        return constants(
            uid: json["uid"],
            vid: json["vid"],
            txnid: json["txnid"],
            otp: json["otp"]
        );
    }
}
