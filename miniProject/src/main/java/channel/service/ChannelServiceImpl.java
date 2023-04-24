package channel.service;


import channel.dao.ChannelDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import channel.bean.ChannelDTO;
import video.bean.VideoDTO;

import java.util.List;

@Service
public class ChannelServiceImpl implements ChannelService {
    @Autowired
    private ChannelDAO channelDAO;


    @Override
    public List<ChannelDTO> getChannelForm(int user_id, int channel_id) {
        List<ChannelDTO> list = channelDAO.getChannelForm(user_id, channel_id);
        return list;
    }
}
