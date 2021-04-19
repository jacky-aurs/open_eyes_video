import 'package:douban/generated/json/base/json_convert_content.dart';

class PushMessageModelEntity with JsonConvert<PushMessageModelEntity> {
	List<PushMessageModelMessageList> messageList;
	int updateTime;
	String nextPageUrl;
}

class PushMessageModelMessageList with JsonConvert<PushMessageModelMessageList> {
	int id;
	String title;
	String content;
	int date;
	String actionUrl;
	String icon;
	bool viewed;
	bool ifPush;
	int pushStatus;
	dynamic uid;
}
