package subscribe.dao;

import java.util.List;

import subscribe.bean.SubscribeDTO;

public interface SubscribeDAO {

	List<SubscribeDTO> subscribelist(int user_id);


	void subscribeOff(int userId,int channelId);
	void subscribeOn(int userId,int channelId);
}
