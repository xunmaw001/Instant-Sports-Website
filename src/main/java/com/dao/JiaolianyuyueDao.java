package com.dao;

import com.entity.JiaolianyuyueEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.JiaolianyuyueVO;
import com.entity.view.JiaolianyuyueView;


/**
 * 教练预约
 * 
 * @author 
 * @email 
 * @date 2021-01-22 17:14:52
 */
public interface JiaolianyuyueDao extends BaseMapper<JiaolianyuyueEntity> {
	
	List<JiaolianyuyueVO> selectListVO(@Param("ew") Wrapper<JiaolianyuyueEntity> wrapper);
	
	JiaolianyuyueVO selectVO(@Param("ew") Wrapper<JiaolianyuyueEntity> wrapper);
	
	List<JiaolianyuyueView> selectListView(@Param("ew") Wrapper<JiaolianyuyueEntity> wrapper);

	List<JiaolianyuyueView> selectListView(Pagination page,@Param("ew") Wrapper<JiaolianyuyueEntity> wrapper);
	
	JiaolianyuyueView selectView(@Param("ew") Wrapper<JiaolianyuyueEntity> wrapper);
	
}
