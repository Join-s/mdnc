package club.hellc.service;

import club.hellc.pojo.User;

/**
 * 用户、管理员、商家 业务层接口
 */
public interface UserService {
    /**
     * 根据id返回用户、商家、管理员信息
     * @param id
     * @return 用户、商家、管理员信息
     */
      User findById(Integer id);

    /**
     * 根据用户名和用户密码登陆验证
     * @param user
     * @return
     */
      int login(User user);

}
