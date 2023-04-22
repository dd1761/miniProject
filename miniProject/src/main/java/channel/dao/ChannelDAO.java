package channel.dao;


import channel.bean.ChannelDTO;

import java.util.List;

public interface ChannelDAO {
    List<ChannelDTO> getChannelForm(int user_id, int channel_id);
}
