package like.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import like.dao.LikeDAO;

@Service
public class LikeServiceImpl implements LikeService {
	
	@Autowired
	private LikeDAO likeDAO;

	@Override
	public void likeVideoPlus(Map<String, Object> map) {
		
		likeDAO.likeVideoPlus(map);
	}

}
