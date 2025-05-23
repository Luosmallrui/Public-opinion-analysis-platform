package com.example.springboot_tieba.mapper;


import com.example.springboot_tieba.pojo.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface UserMapper {

    /**
     * 新增账号
     *
     * @param user
     * @return
     */
    @Insert("INSERT INTO userlogin ( email, password, salt, confirm_code, activation_time, is_valid ) " +
            " VALUES ( #{email}, #{password}, #{salt}, #{confirmCode}, #{activationTime}, #{isValid} )")
    int insertUser(User user);

    /**
     * 根据确认码查询用户
     *
     * @param confirmCode
     * @return
     */
    @Select("SELECT email, activation_time FROM userlogin WHERE confirm_code = #{confirmCode} AND is_valid = 0")
    User selectUserByConfirmCode(@Param("confirmCode") String confirmCode);

    /**
     * 根据确认码查询用户并修改状态值为 1（可用）
     *
     * @param confirmCode
     * @return
     */
    @Update("UPDATE userlogin SET is_valid = 1 WHERE confirm_code = #{confirmCode}")
    int updateUserByConfirmCode(@Param("confirmCode") String confirmCode);

    /**
     * 根据邮箱查询用户
     *
     * @param email
     * @return
     */
    @Select("SELECT email, password, salt FROM userlogin WHERE email = #{email} AND is_valid = 0")
    List<User> selectUserByEmail(@Param("email") String email);

}
