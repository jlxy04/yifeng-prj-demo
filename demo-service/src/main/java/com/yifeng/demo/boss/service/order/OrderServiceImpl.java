/**
 * 
 */
package com.yifeng.demo.boss.service.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.yifeng.demo.boss.api.order.detail.OrderDetail;
import com.yifeng.demo.boss.api.order.query.OrderQuery;
import com.yifeng.demo.boss.api.order.service.OrderService;
import com.yifeng.demo.boss.dal.order.dao.OrderDao;
import com.yifeng.demo.boss.dal.order.data.OrderDataDo;

import next.rapid.RapidService;
import next.rapid.page.Pagination;

/**
 * 订单服务实现类
 * @author Administrator
 *
 */
@Service("/boss/orderService")
public class OrderServiceImpl extends RapidService implements OrderService {
	
	@Autowired
	private OrderDao orderDao;
	
	@Override
	public List<OrderDetail> listOrderByPage(OrderQuery orderQuery, Pagination pagination) {
		PageHelper.startPage(pagination);
		Page<OrderDataDo> orderDataList = (Page<OrderDataDo>) orderDao.selectByPage(copy(orderQuery, com.yifeng.demo.boss.dal.order.query.OrderQuery.class));
		return copyList(orderDataList, OrderDetail.class);
	}
}
