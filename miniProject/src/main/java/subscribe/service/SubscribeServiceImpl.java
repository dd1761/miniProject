package subscribe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import subscribe.bean.SubscribeDTO;
import subscribe.dao.SubscribeDAO;

@Service
public class SubscribeServiceImpl implements SubscribeService {

	@Autowired
	SubscribeDAO subscribeDAO;
	
	@Override
	public List<SubscribeDTO> subscribelist(int user_id) {
		
		return subscribeDAO.subscribelist(user_id);
	}

	@Override
	public void subscribeOff(int userId ,int channelId) {
		subscribeDAO.subscribeOff(userId,channelId);
	}

	@Override
	public void subscribeOn(int userId ,int channelId) {
		subscribeDAO.subscribeOn(userId,channelId);
	}

}
