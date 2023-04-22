package channel.service;


import channel.bean.ChannelDTO;

import java.util.List;

public interface ChannelService {

    List<ChannelDTO> getChannelForm(int userId, int channelId);
}
