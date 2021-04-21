class Message {
    String actionUrl;
    String content;
    int date;
    String icon;
    int id;
    bool ifPush;
    int pushStatus;
    String title;
    Object uid;
    bool viewed;

    Message({this.actionUrl, this.content, this.date, this.icon, this.id, this.ifPush, this.pushStatus, this.title, this.uid, this.viewed});

    factory Message.fromJson(Map<String, dynamic> json) {
        return Message(
            actionUrl: json['actionUrl'], 
            content: json['content'], 
            date: json['date'], 
            icon: json['icon'], 
            id: json['id'], 
            ifPush: json['ifPush'], 
            pushStatus: json['pushStatus'], 
            title: json['title'], 
            uid: json['uid'] != null ? Message.fromJson(json['uid']) : null,
            viewed: json['viewed'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['actionUrl'] = this.actionUrl;
        data['content'] = this.content;
        data['date'] = this.date;
        data['icon'] = this.icon;
        data['id'] = this.id;
        data['ifPush'] = this.ifPush;
        data['pushStatus'] = this.pushStatus;
        data['title'] = this.title;
        data['viewed'] = this.viewed;
        if (this.uid != null) {
            data['uid'] = this.uid.toString();
        }
        return data;
    }
}