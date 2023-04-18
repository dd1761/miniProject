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

@Configuration //환경설정 파일 - xml과 같은 취급을 받는 환경설정 파일이다.
@PropertySource("classpath:spring/db.properties")	//클래스 파일의 경로
@EnableTransactionManagement // <tx:annotation-driven transaction-manager="transactionManager" /> 와 같은 문장
public class SpringConfiguration {
	@Value("${jdbc.driver}") //롬복 아님!! 아래만 아니면 어디다가 정의하던 상관없음.
	private String driver;
	
	
	private @Value("${jdbc.url}") String url;
	
	@Value("${jdbc.username}")
	private String username;
	
	@Value("${jdbc.password}")
	private String password;
	
	
	
	
	@Bean
	public BasicDataSource dataSource(){
		BasicDataSource basicDataSource = new BasicDataSource();
		
		//basicDataSource.setDriverClassName("oralce.jdbc.driver.ORacleDriver");
		// 이렇게 사용해도 된다.
		
		basicDataSource.setDriverClassName(driver);
		basicDataSource.setUrl(url);
		basicDataSource.setUsername(username);
		basicDataSource.setPassword(password);
		
		return basicDataSource;
	}
	
	@Bean
	public SqlSessionFactory sqlSessionFactory() throws Exception{
		
		SqlSessionFactoryBean sqlSessionFacotryBean = new SqlSessionFactoryBean();
		
		sqlSessionFacotryBean.setDataSource(dataSource());
		sqlSessionFacotryBean.setConfigLocation(new ClassPathResource("spring/mybatis-config.xml"));
		//setConfigLocation()함수는 resource를 넣어주어야 하기 때문에 ClassPathResource를 사용
		sqlSessionFacotryBean.setMapperLocations(new ClassPathResource("user/dao/userMapper.xml"));
		//ClassPathResource()함수는 한개의 경로밖에 넣어주지 못한다.
		
		return sqlSessionFacotryBean.getObject();
	}
	
	@Bean
	public SqlSessionTemplate sqlSession() throws Exception{
		
		SqlSessionTemplate sqlSessionTemplate = new SqlSessionTemplate(sqlSessionFactory());
		
		
		return sqlSessionTemplate;
	}
	
	@Bean
	public DataSourceTransactionManager transactionManager(){
		return new DataSourceTransactionManager(dataSource());
		
	}
	
}

//SpringConfiguration은 일반 자바 파일이 아니다
//applicationContext.xml과 같은 취급을 받는 환경설정 파일이다.

/*

1.
만약에 mapper.xml이 여러개일 경우
sqlSessionFacotryBean.setMapperLocations(new ClassPathResource("user/dao/userMapper.xml"),
										 new ClassPathResource("member/dao/memberMapper.xml"),
										 new ClassPathResource("board/dao/boardMapper.xml"),
										 ...
);


2.
필드
@Autowired
private ApplicationContext context;

 */
//sqlSessionFacotryBean.setMapperLocations(context.getResources("classpath:*/dao/*Mapper.xml"));




