package com.ks.dao;

import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.ks.pojo.Hn09Answer;
import com.ks.pojo.Hn09QstpaperDtl;
 @Scope("prototype")
@Repository
// spring注解数据层
public class DataProvider {
	private static SessionFactory sf = null; 
	private Session session = null;
	private Query query;
	private List<DataParameter> params = new LinkedList<DataParameter>();

	public List<DataParameter> getParams() {
		return params;
	}
	public void setParams(List<DataParameter> params) {
		this.params = params;
	}

	/**
	 * // 使用本地线程保存Session会话信息
	 */
	private static final ThreadLocal<Session> thLocal = new ThreadLocal<Session>();
	// 静态代码块
	static {
		// 1通过配置对象,Hibernate3中的写法
		// sf=new Configuration().configure().buildSessionFactory();
		// 2 Hibernate4中的写法
		Configuration cfg = new Configuration().configure();
		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder()
				.applySettings(cfg.getProperties()).build();
		// 3获取session会话，给sessionFactory赋值
		sf = cfg.buildSessionFactory(ssr);
	}

	/**
	 * // 重新加载会话工厂
	 */
	public void rebuildSessionFactory() {
		// 1通过配置对象,Hibernate3中的写法
		// sf=new Configuration().configure().buildSessionFactory();
		// 2 Hibernate4中的写法
		Configuration cfg = new Configuration().configure();
		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder()
				.applySettings(cfg.getProperties()).build();
		// 3获取session会话，给sessionFactory赋值
		sf = cfg.buildSessionFactory(ssr);
	}
	/**
	 * 默认构造函数
	 */
	public DataProvider() {
		// 判断会话工厂是否存在或者已经关闭
		if (sf == null || sf.isClosed()) {
			rebuildSessionFactory();
		}
		session = (Session) thLocal.get();
		if (session == null || !session.isOpen()) {
			session = sf.openSession();
		}
		thLocal.set(session);
	}

	public boolean getSessionIng() {
        return session.isOpen();  
	}
	/**
	 * 泛型方法格式： 限定修饰符 <T> 返回来的类型 方法名 返回一个表数据，T代表一个受 Hibernate映射管理的实体
	 * 返回多个表数据，返回类型为 List Map(推荐，使用别名) 自定义类(要求有对应的构造函数)
	 * 使用join查询必须配置对应关系，可以使用where代替on，可不用配置对应关系 left|right join 必须配置关系(OneToMany
	 * ManyToOne)
	 * */
	@SuppressWarnings("unchecked")
	public <T> List<T> EntityList(String hql) {
		query = session.createQuery(hql);
		setParameter();
		return query.list();
	}

	/**
	 * 泛型方法格式： 限定修饰符 <T> 返回来的类型 方法名 返回一个表数据，T代表一个受 Hibernate映射管理的实体
	 * 返回多个表数据，返回类型为 List Map(推荐，使用别名) 自定义类(要求有对应的构造函数)
	 * 使用join查询必须配置对应关系，可以使用where代替on，可不用配置对应关系 left|right join 必须配置关系(OneToMany
	 * ManyToOne)
	 * */
	@SuppressWarnings("unchecked")
	public <T> List<T> EntityList(String hql,Class<T> t) {
		query = session.createSQLQuery(hql).addEntity(t);
		setParameter();
		return query.list();
	}
	
	/**
	 * @param hql
	 * @param pageindex
	 *            页码
	 * @param pagesize
	 *            页面大小
	 * @return 返回分页数据
	 */
	@SuppressWarnings("unchecked")
	public <T> List<T> EntityList(String hql, Integer pageindex,Integer pagesize) {
		query = session.createQuery(hql);
		setParameter();
		query.setFirstResult((pageindex - 1) * pagesize).setMaxResults(pagesize);
		return query.list();
	}

	/**
	 * @param hql
	 * @return 返回分页总条数
	 */
	public long EntityListSize(String hql) {
		Query query = session.createQuery(hql);
		setParameter();
		long m = (long) query.uniqueResult();
		return m;
	}

	/**
	 * @param hql
	 * @return 返回一个实体
	 */
	@SuppressWarnings("unchecked")
	public <T> T SingleEntity(String hql) {
		query = session.createQuery(hql);
		setParameter();
		@SuppressWarnings("rawtypes")
		List list=query.list();
		if (list.size()>0) {
			T m=(T)list.get(0);
			return m;
		}else {
			return null;
		}
		

	}

	/**
	 * @param hql
	 *            数据库语句
	 * @param name
	 *            用户名
	 * @param pwd
	 *            密码
	 * @return 返回一个任意实体
	 */
	public <T> Object creataSql(String hql) {
		 query = session.createQuery(hql);
		setParameter();
		return query.executeUpdate();
	}

	/**
	 * 添加增加或修改一个实体
	 * 
	 * @param obj
	 */
	public boolean SaveEntity(Object obj) {
		boolean flg=false;
		try {
			//session.clear();
			session.saveOrUpdate(obj);
			flg=true;
		} catch (UnknownError e) {
			System.out.println(e.getMessage());
			throw e;
		}
		return flg;
	}
	
	public boolean SaveEntitys(List<Hn09Answer> list) {
		boolean flg=false;
		try {
			for (Object obj : list) {
				session.saveOrUpdate(obj);
			}
			flg=true;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return flg;
	}
	
	public boolean SaveEntitySet(Set<Hn09QstpaperDtl> qstpaperDtls) {
		boolean flg=false;
		try {
			for (Object obj : qstpaperDtls) {
				session.saveOrUpdate(obj);
			}
			flg=true;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return flg;
	}
	/**
	 * @param obj
	 *            删除一个实体
	 */
	public void DeleteEntity(Object obj) {
		//session.clear();
		session.delete(obj);
	}

	/**
	 * // 删除多个实体
	 * 
	 * @param objs
	 */
	public void DeleteEntity(List<Object> objs) {
		for (Object obj : objs) {
			DeleteEntity(obj);
		}
	}

	/**
	 * 开启事物
	 */
	public void beginTrans() {
		session.beginTransaction();
	}

	/**
	 * // 回滚事物
	 */
	public void rollbackTrans() {
		session.getTransaction().rollback();
	}

	/**
	 * 提交事物
	 */
	public void commitTrans() {
		session.getTransaction().commit();
	}

	private void setParameter() {
		if (params!=null) {
			for (DataParameter param : params) {
				query.setParameter(param.getParamName(), param.getParamVale());
			}
		}
		
	}
	/**
	 * 关闭session会话
	 */
	public void closedb() {
		if (session != null ) {
			session.close();
			thLocal.set(null);
		}
	}

}
