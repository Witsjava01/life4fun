package life4fun.service.impl;

import java.sql.SQLException;
import java.util.List;

import life4fun.dao.MemberDao;
import life4fun.dao.OrderDao;
import life4fun.dao.OrderDetailsDao;
import life4fun.dao.impl.MemberDaoImpl;
import life4fun.dao.impl.OrderDaoImpl;
import life4fun.dao.impl.OrderDetailsDaoImpl;
import life4fun.dto.ServiceResult;
import life4fun.entity.Member;
import life4fun.entity.Order;
import life4fun.entity.OrderDetails;
import life4fun.exception.ServiceException;
import life4fun.service.MemberService;
import life4fun.utils.JdbcUtils;
import lombok.var;

public class MemberServiceImpl implements MemberService {
	public MemberDao memberDao = new MemberDaoImpl();
	public OrderDao orderDao = new OrderDaoImpl();
	public OrderDetailsDao orderDetailsDao = new OrderDetailsDaoImpl();
	@Override
	public ServiceResult<Member> findMemberById(Integer id) {
		// 獲取資料庫連接對象
		var conn = JdbcUtils.getConnection();
		Member member = null;
		ServiceResult<Member> result = new ServiceResult<>();
		try {
			// 事務開始
			member = memberDao.findMemberById(conn, id);
			result.setData(member);
			return result;
			// 事務結束，提交事務
		} catch (Exception e) { // SQL例外處理
			// 取得錯誤訊息
			e.printStackTrace();
			// 回滾事務
			throw new ServiceException(e);
		} finally {
			// 釋放資源<
			JdbcUtils.release(conn);
		}
		
	}
	
	@Override
	public Member findMemberByMemberId(Integer id) {
		// 獲取資料庫連接對象
		var conn = JdbcUtils.getConnection();
		Member member = null;
		try {
			// 事務開始
			member = memberDao.findMemberById(conn, id);
			
			return member;
			// 事務結束，提交事務
		} catch (Exception e) { // SQL例外處理
			// 取得錯誤訊息
			e.printStackTrace();
			// 回滾事務
			throw new ServiceException(e);
		} finally {
			// 釋放資源<
			JdbcUtils.release(conn);
		}
	}

	@Override
	public ServiceResult<Member> findMember(String phoneNumber, String password) {

		// 獲取資料庫連接對象
		var conn = JdbcUtils.getConnection();
		Member member = null;
		ServiceResult<Member> result = new ServiceResult<>();
		try {
			// 事務開始
			member = memberDao.findMember(conn, phoneNumber);
			// 如果用電話號碼甚麼都沒查到就回傳null>代表沒有這筆資料
			if (member == null) {
				result.setMsg("您輸入的會員帳號或密碼錯誤!");
				return result;
				// 如果有資料了
			} else {
				// 取DB的password 如果DB的password與輸入密碼值不相同
				if (!password.equals(member.getPassword())) {
					result.setMsg("您輸入的會員帳號或密碼錯誤!");
					return result;
				} else {
					result.setData(member);
					return result;
				}
			}
			// 事務結束，提交事務
		} catch (Exception e) { // SQL例外處理
			// 取得錯誤訊息
			e.printStackTrace();
			// 回滾事務
			throw new ServiceException(e);
		} finally {
			// 釋放資源<
			JdbcUtils.release(conn);
		}
	}
	
	@Override
	public String addMember(Member member) {
		String msg = "";
		// 獲取資料庫連接對象
		var conn = JdbcUtils.getConnection();
		try {
			// 事務開始
			JdbcUtils.beginTransaction(conn);
			// 執行insert DB的方法
			memberDao.addMember(conn, member);
			// 事務結束，提交事務
			JdbcUtils.commitTransaction(conn);
		} catch (SQLException e) { // SQL例外處理
			e.printStackTrace();
			// 取得錯誤訊息
			msg = e.getMessage();
			// 回滾事務
			JdbcUtils.rollbackTransaction(conn);
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
			msg = e.getMessage();
			JdbcUtils.rollbackTransaction(conn);
		} finally {
			// 釋放資源
			JdbcUtils.release(conn);
		}
		return msg;
	}
	@Override
	public boolean checkMember(String phoneNumber) {
		// 獲取資料庫連接對象
		var conn = JdbcUtils.getConnection();
		Member member = null;
		try {
			// 事務開始
			member = memberDao.findMember(conn, phoneNumber);
			// 如果查不到代表無重父資料
			if (member == null) {
				return true;
			// 如果查到這筆資料代表已存在
			} else {
				return false;
			}
		} catch (Exception e) { // SQL例外處理
			// 取得錯誤訊息
			e.printStackTrace();
			// 回滾事務
			throw new ServiceException(e);
		} finally {
			// 釋放資源
			JdbcUtils.release(conn);
		}
	}
	@Override
	public String updateMember(Member member) {
		String msg = "";
		// 獲取資料庫連接對象
		var conn = JdbcUtils.getConnection();
		try {
			// 事務開始
			JdbcUtils.beginTransaction(conn);
			// 執行insert DB的方法
			memberDao.updateMember(conn, member);
			// 事務結束，提交事務
			JdbcUtils.commitTransaction(conn);
		} catch (SQLException e) { // SQL例外處理
			e.printStackTrace();
			// 取得錯誤訊息
			msg = e.getMessage();
			// 回滾事務
			JdbcUtils.rollbackTransaction(conn);
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
			msg = e.getMessage();
			JdbcUtils.rollbackTransaction(conn);
		} finally {
			// 釋放資源
			JdbcUtils.release(conn);
		}
		return msg;
	}
	@Override
	public String updatePassword(String phoneNumber , String newPassword) {
		String msg = "";
		// 獲取資料庫連接對象
		var conn = JdbcUtils.getConnection();
		try {
			// 事務開始
			JdbcUtils.beginTransaction(conn);
			// 執行insert DB的方法
			memberDao.updatePassword(conn, phoneNumber, newPassword);
			// 事務結束，提交事務
			JdbcUtils.commitTransaction(conn);
		} catch (SQLException e) { // SQL例外處理
			e.printStackTrace();
			// 取得錯誤訊息
			msg = e.getMessage();
			// 回滾事務
			JdbcUtils.rollbackTransaction(conn);
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
			msg = e.getMessage();
			JdbcUtils.rollbackTransaction(conn);
		} finally {
			// 釋放資源
			JdbcUtils.release(conn);
		}
		return msg;
	}
	
	@Override
	public ServiceResult<List<Order>> findOrder(String phoneNumber) {
		String msg ="";
		// 獲取資料庫連接對象
		var conn = JdbcUtils.getConnection();
		List<Order> orderList = null;
		ServiceResult<List<Order>> result = new ServiceResult<>();
		try {
			// 事務開始
			orderList = orderDao.findOrder(conn, phoneNumber);
			result.setData(orderList);
			return result;
			// 事務結束，提交事務
		} catch (Exception e) { // SQL例外處理
			// 取得錯誤訊息
			e.printStackTrace();
			// 回滾事務
			throw new ServiceException(e);
		} finally {
			// 釋放資源<
			JdbcUtils.release(conn);
		}
	}
	
	@Override
	public ServiceResult<List<Order>> findOrder(String phoneNumber,Integer OrderId) {
		String msg ="";
		// 獲取資料庫連接對象
		var conn = JdbcUtils.getConnection();
		List<Order> orderList = null;
		ServiceResult<List<Order>> result = new ServiceResult<>();
		try {
			// 事務開始
			orderList = orderDao.findOrderFromSearch(conn, phoneNumber,OrderId);
			result.setData(orderList);
			return result;
			// 事務結束，提交事務
		} catch (Exception e) { // SQL例外處理
			// 取得錯誤訊息
			e.printStackTrace();
			// 回滾事務
			throw new ServiceException(e);
		} finally {
			// 釋放資源<
			JdbcUtils.release(conn);
		}
		
	}
	
	@Override
	public ServiceResult<List<Order>> findOrderToDetails(String phoneNumber,Integer OrderId) {
		String msg ="";
		// 獲取資料庫連接對象
		var conn = JdbcUtils.getConnection();
		List<Order> order = null;
		ServiceResult<List<Order>> result = new ServiceResult<>();
		try {
			// 事務開始
			order = orderDao.findOrderToDetails(conn, phoneNumber,OrderId);
			result.setData(order);
			return result;
			// 事務結束，提交事務
		} catch (Exception e) { // SQL例外處理
			// 取得錯誤訊息
			e.printStackTrace();
			// 回滾事務
			throw new ServiceException(e);
		} finally {
			// 釋放資源<
			JdbcUtils.release(conn);
		}
		
	}
	
	@Override
	public ServiceResult<List<OrderDetails>> findOrderetails(Integer OrderId) {
		String msg ="";
		// 獲取資料庫連接對象
		var conn = JdbcUtils.getConnection();
		List<OrderDetails> order = null;
		ServiceResult<List<OrderDetails>> result = new ServiceResult<>();
		try {
			// 事務開始
			order = orderDetailsDao.findOrderDetails(conn, OrderId);
			result.setData(order);
			return result;
			// 事務結束，提交事務
		} catch (Exception e) { // SQL例外處理
			// 取得錯誤訊息
			e.printStackTrace();
			// 回滾事務
			throw new ServiceException(e);
		} finally {
			// 釋放資源<
			JdbcUtils.release(conn);
		}
	}
}
