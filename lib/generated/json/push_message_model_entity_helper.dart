import 'package:douban/page/notice/push/push_message_model_entity.dart';

pushMessageModelEntityFromJson(PushMessageModelEntity data, Map<String, dynamic> json) {
	if (json['messageList'] != null) {
		data.messageList = (json['messageList'] as List).map((v) => PushMessageModelMessageList().fromJson(v)).toList();
	}
	if (json['updateTime'] != null) {
		data.updateTime = json['updateTime'] is String
				? int.tryParse(json['updateTime'])
				: json['updateTime'].toInt();
	}
	if (json['nextPageUrl'] != null) {
		data.nextPageUrl = json['nextPageUrl'].toString();
	}
	return data;
}

Map<String, dynamic> pushMessageModelEntityToJson(PushMessageModelEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['messageList'] =  entity.messageList?.map((v) => v.toJson())?.toList();
	data['updateTime'] = entity.updateTime;
	data['nextPageUrl'] = entity.nextPageUrl;
	return data;
}

pushMessageModelMessageListFromJson(PushMessageModelMessageList data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['content'] != null) {
		data.content = json['content'].toString();
	}
	if (json['date'] != null) {
		data.date = json['date'] is String
				? int.tryParse(json['date'])
				: json['date'].toInt();
	}
	if (json['actionUrl'] != null) {
		data.actionUrl = json['actionUrl'].toString();
	}
	if (json['icon'] != null) {
		data.icon = json['icon'].toString();
	}
	if (json['viewed'] != null) {
		data.viewed = json['viewed'];
	}
	if (json['ifPush'] != null) {
		data.ifPush = json['ifPush'];
	}
	if (json['pushStatus'] != null) {
		data.pushStatus = json['pushStatus'] is String
				? int.tryParse(json['pushStatus'])
				: json['pushStatus'].toInt();
	}
	if (json['uid'] != null) {
		data.uid = json['uid'];
	}
	return data;
}

Map<String, dynamic> pushMessageModelMessageListToJson(PushMessageModelMessageList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['title'] = entity.title;
	data['content'] = entity.content;
	data['date'] = entity.date;
	data['actionUrl'] = entity.actionUrl;
	data['icon'] = entity.icon;
	data['viewed'] = entity.viewed;
	data['ifPush'] = entity.ifPush;
	data['pushStatus'] = entity.pushStatus;
	data['uid'] = entity.uid;
	return data;
}