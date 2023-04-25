package spring.conf;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

//SpringConfiguration은 일반 java파일이 아니다
//applicationContext.xml와 같은 환경설정 파일이다.
@Configuration
@PropertySource("classpath:/db.properties")
@EnableTransactionManagement
public class SpringConfiguration {
	
	private @Value("${jdbc.driver}") String driver;
	
	private @Value("${jdbc.url}") String url;
	
	private @Value("${jdbc.username}") String username;
	
	private @Value("${jdbc.password}") String password;
	
	@Bean
	public BasicDataSource dataSource(){
		BasicDataSource basicDataSource = new BasicDataSource();
		
//		basicDataSource.setDriverClassName("oracle.jdbc.driver.OracleDriver");
//		basicDataSource.setUrl("jdbc:oracle:thin:@localhost:1521:xe");
//		basicDataSource.setUsername("c##java");
//		basicDataSource.setPassword("1234");
		
		basicDataSource.setDriverClassName(driver);
		basicDataSource.setUrl(url);
		basicDataSource.setUsername(username);
		basicDataSource.setPassword(password);
		return basicDataSource;
	}
	
	@Bean
	public SqlSessionFactory sqlSessionFactory() throws Exception {
		SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
		sqlSessionFactoryBean.setDataSource(dataSource());
		sqlSessionFactoryBean.setConfigLocation(new ClassPathResource("mybatis-config.xml"));

		sqlSessionFactoryBean.setMapperLocations(
				new ClassPathResource("history/dao/historyMapper.xml"),
				new ClassPathResource("member/dao/memberMapper.xml"),
				new ClassPathResource("board/dao/boardMapper.xml"),
				new ClassPathResource("video/dao/videoMapper.xml"),
				new ClassPathResource("channel/dao/channelMapper.xml"),
				new ClassPathResource("subscribe/dao/subscribeMapper.xml")
		);

/*
		sqlSessionFactoryBean.setMapperLocations(
				new Resource[]{
						new ClassPathResource("user/dao/userMapper.xml"),
						new ClassPathResource("history/dao/channelMapper.xml")
				}
		);
*/




		return sqlSessionFactoryBean.getObject();
	}
	
	@Bean
	public SqlSessionTemplate sqlSession() throws Exception {
		SqlSessionTemplate sqlSessionTemplate = new SqlSessionTemplate(sqlSessionFactory());
		return sqlSessionTemplate;
	}
	
	@Bean
	public DataSourceTransactionManager transactionManager() {
		return  new DataSourceTransactionManager(dataSource());
	}
}

/*
만약에 mapper.xml이 여러개일 경우

1.
sqlSessionFactoryBean.setMapperLocations(new ClassPathResource("user/dao/userMapper.xml"),
										 new ClassPathResource("member/dao/memberMapper.xml"),
										 new ClassPathResource("board/dao/boardMapper.xml"),
										 ...);
2.
필드	
@Autowired
private ApplicationContext context;
*/

//sqlSessionFactoryBean.setMapperLocations(context.getResources("classpath:*/dao/*Mapper.xml"));


