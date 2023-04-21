package history.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import history.bean.HistoryDTO;
import history.dao.HistoryDAO;

import java.util.List;

@Service
public class HistoryServiceImpl implements HistoryService {
    @Autowired
    private HistoryDAO historyDAO;

    @Override
    public List<HistoryDTO> getVideoHistory(int page, int count) {
        System.out.println("service1");
        int start = ((page-1) * count)+1;
        count = count * page;
        List<HistoryDTO> list = historyDAO.getVideoHistory(start, count);
        System.out.println("service2");
        System.out.println(list);
        return list;
    }
}
