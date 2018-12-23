package club.hellc.service.impl;

import club.hellc.mapper.UserMapper;
import club.hellc.pojo.User;
import club.hellc.pojo.UserExample;
import club.hellc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 用户、管理员、商家 业务层接口实现类
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    /**
     * 根据id返回用户、商家、管理员信息
     *
     * @param id
     * @return 用户、商家、管理员信息
     */
    @Override
    public User findById(Integer id) {
        return userMapper.selectByPrimaryKey(id);
    }

    @Override
    public int login(User user) {
        UserExample example =new UserExample();
        UserExample.Criteria c=example.createCriteria();
        c.andUnameEqualTo(user.getUname());
        c.andPwdEqualTo(user.getPwd());
       List<User> ulist= userMapper.selectByExample(example);
        if(ulist!=null && ulist.size()>0)
            return ulist.get(0).getId();//登陆成功
        return 0;
    }
}
