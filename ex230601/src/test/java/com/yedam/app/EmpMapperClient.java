package com.yedam.app;

import static org.junit.Assert.assertNotNull;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yedam.app.emp.mapper.EmpMapper;
import com.yedam.app.emp.service.EmpVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class EmpMapperClient {
	
	@Autowired
	EmpMapper empMapper;	// 인터페이스를 상속받은 구현클래스를 주입받음

//	@Test
//	public void getEmpInfo() {
//		EmpVO findEmp = empMapper.selectOne(100);
//		assertEquals(findEmp.getFirstName(), "Steven");
//	}
		
	//@Test
	public void 전체조회() {
		EmpVO param = new EmpVO();
		param.setDepartmentId("50,60");
		//param.setFirstName("e");
		param.setOrderColumn("department_id, first_name");
		List<EmpVO> list = empMapper.selectList(param);
		int cnt = empMapper.selectCount(param);
		for(EmpVO emp : list) {
			System.out.println(emp);
		}
		//assertEquals(list.get(0).getEmployeeId(), "100");
	}
	
	//@Test
	public void 추가() {
		EmpVO vo = new EmpVO();
		vo.setLastName("Kang");
		vo.setEmail("ass@a.com");
		vo.setJobId("IT_PROG");
		empMapper.insertEmp(vo);
		//등록 후에 id를 사용할 경우 selectkey 이용
		System.out.println(vo.getEmployeeId());
		//assertEquals(addEmp, 1);
	}
	
	@Test
	public void selectJobs() {
		List<Map<String, Object>> list = empMapper.selectJobs();
		assertNotNull(list);
	}
	
}
