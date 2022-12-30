package life4fun.dao.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import life4fun.dao.BaseDao;
import life4fun.dao.OrderDao;
import life4fun.entity.Order;

public class OrderDaoImpl extends BaseDao<Order> implements OrderDao<Order> {
	@Override
	public List<Order> findOrder(Connection conn,String phoneNumber) throws SQLException {
		String selectSql = 
		"SELECT od.order_id as orderId , od.created_time as createdTime, os.order_status_details as orderStatus, od.order_amount as orderAmount, od.shipping_type as shippingType, od.payment_type as paymentType "
		+ "FROM life4fun.order as od "
		+ "left join life4fun.order_status as os "
		+ "ON od.order_status = os.order_status "
		+ "WHERE od.phoneNumber=?";
		return findAll(conn,selectSql,phoneNumber);
		
	}
}