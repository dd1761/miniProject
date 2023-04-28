package channel.dao;


import channel.bean.ChannelDTO;

import java.util.List;
import java.util.Map;

public interface ChannelDAO {
    List<ChannelDTO> getChannelForm(int user_id, int channel_id);

	ChannelDTO myChannel(int user_id);
	
	public void insertChannelMember(Map<String, Object> map);
}
