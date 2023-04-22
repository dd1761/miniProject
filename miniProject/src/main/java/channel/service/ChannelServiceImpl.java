package channel.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import channel.bean.ChannelDTO;

import java.util.List;

@Service
public class ChannelServiceImpl implements ChannelService {
    @Autowired
    private ChannelDTO channelDTO;


}
