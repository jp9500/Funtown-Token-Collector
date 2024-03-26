package employeemvc.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import employeemvc.dto.Employee;
import net.bytebuddy.asm.Advice.Return;
@Component
public class EmployeeDao {
	
	@Autowired
	EntityManager em;
	
	public Employee saveEmp(Employee emp) {
		em.getTransaction().begin();
		em.persist(emp);
		em.getTransaction().commit();
		return emp;
	}
	
	public Employee findById(int empId) {
		 return em.find(Employee.class, empId);
	}
	
	public Employee deleteById(int id) {
		Employee emp = findById(id);
		if(emp!=null) {
			em.getTransaction().begin();
			em.remove(emp);
			em.getTransaction().commit();
			return emp;
		}
		return null;
		
	}
	
	public Employee updateEmp(Employee emp, int id) {
		Employee exEmp = findById(id);
		if(exEmp!=null) {
			emp.setEmpId(id);
			em.getTransaction().begin();
			Employee updated = em.merge(emp);
			em.getTransaction().commit();
			return updated;
		}
		return null;
	}
	
	public Employee findByEmail(String email) {
		Query query = em.createQuery("select e from Employee e where e.empEmail=?1");
		query.setParameter(1, email);
		Employee emp = (Employee) query.getSingleResult();
		if(emp != null) {
			return emp;
		}
		return null;
	}
}
