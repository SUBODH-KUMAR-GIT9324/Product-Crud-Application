package springmvc_project_productcrud.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import springmvc_project_productcrud.model.Product;

//it create object automatically, we do not create property name and reference in xml.
//This class method can be use in other classes by Autowired.
@Component
public class ProductDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;

	//create 
	
	@Transactional
	public void createProduct(Product product) {
		
		
		//if product has a id which is already exist in database the Update method call.
		
		this.hibernateTemplate.saveOrUpdate(product);
		
	}
	
	//get all product
	
	public List<Product> getProducts(){
		
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		
		return products;
	}
	
	
	//delete the single product
	
	@Transactional
	public void deleteProduct(int pid) {
		
		Product p = this.hibernateTemplate.load(Product.class,pid);
		this.hibernateTemplate.delete(p);
	}
	
	
	// get single product
	
	public Product getProduct(int pid) {
		
		return this.hibernateTemplate.get(Product.class,pid);
	}
	
	
	
	
}
