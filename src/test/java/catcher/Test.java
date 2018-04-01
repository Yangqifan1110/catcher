package catcher;

import java.io.IOException;

import org.apache.ibatis.session.SqlSession;
import org.junit.After;
import org.junit.Before;

import com.oracle.service.CusService;
import com.oracle.vo.Goods;

public class Test {

	private SqlSession session;

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@org.junit.Test
	public void test() throws IOException {
//		Photographer pho=CusService.check(1);
		Goods good=CusService.checkGoods(1);
		
//			SqlSessionFactory factory=new SqlSessionFactoryBuilder().build(Resources.getResourceAsReader("configuration.xml"));
//			SqlSession session=factory.openSession();
//			CusDao dao=session.getMapper(CusDao.class);
			System.out.println(good);
	}

}
