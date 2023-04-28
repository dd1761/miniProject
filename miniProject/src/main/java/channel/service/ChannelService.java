package channel.service;


import channel.bean.ChannelDTO;

import java.util.List;
import java.util.Map;

public interface ChannelService {

    List<ChannelDTO> getChannelForm(int userId, int channelId);

	ChannelDTO myChannel(int user_id);
	
	public void insertChannelMember(Map<String, Object> map);
}
