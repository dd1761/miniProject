package channel.service;


import channel.bean.ChannelDTO;

import java.util.List;
import java.util.Map;

public interface ChannelService {

    List<ChannelDTO> getChannelForm(int user_Id, int channe_lId);

	public void insertChannelMember(Map<String, Object> map);
}
