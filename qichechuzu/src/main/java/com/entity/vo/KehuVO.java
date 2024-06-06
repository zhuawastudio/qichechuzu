package com.entity.vo;

import com.entity.KehuEntity;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * 客户
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 */
@TableName("kehu")
public class KehuVO implements Serializable {
    private static final long serialVersionUID = 1L;


    /**
     * 主键
     */

    @TableField(value = "id")
    private Integer id;


    /**
     * 账户
     */

    @TableField(value = "username")
    private String username;


    /**
     * 密码
     */

    @TableField(value = "password")
    private String password;


    /**
     * 客户姓名
     */

    @TableField(value = "kehu_name")
    private String kehuName;


    /**
     * 客户手机号
     */

    @TableField(value = "kehu_phone")
    private String kehuPhone;


    /**
     * 客户身份证号
     */

    @TableField(value = "kehu_id_number")
    private String kehuIdNumber;


    /**
     * 客户头像
     */

    @TableField(value = "kehu_photo")
    private String kehuPhoto;


    /**
     * 客户地址
     */

    @TableField(value = "kehu_address")
    private String kehuAddress;


    /**
     * 客户职业
     */

    @TableField(value = "kehu_zhiye")
    private String kehuZhiye;


    /**
     * 性别
     */

    @TableField(value = "sex_types")
    private Integer sexTypes;


    /**
     * 地区
     */

    @TableField(value = "diqu_types")
    private Integer diquTypes;


    /**
     * 电子邮箱
     */

    @TableField(value = "kehu_email")
    private String kehuEmail;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "create_time")
    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：账户
	 */
    public String getUsername() {
        return username;
    }


    /**
	 * 获取：账户
	 */

    public void setUsername(String username) {
        this.username = username;
    }
    /**
	 * 设置：密码
	 */
    public String getPassword() {
        return password;
    }


    /**
	 * 获取：密码
	 */

    public void setPassword(String password) {
        this.password = password;
    }
    /**
	 * 设置：客户姓名
	 */
    public String getKehuName() {
        return kehuName;
    }


    /**
	 * 获取：客户姓名
	 */

    public void setKehuName(String kehuName) {
        this.kehuName = kehuName;
    }
    /**
	 * 设置：客户手机号
	 */
    public String getKehuPhone() {
        return kehuPhone;
    }


    /**
	 * 获取：客户手机号
	 */

    public void setKehuPhone(String kehuPhone) {
        this.kehuPhone = kehuPhone;
    }
    /**
	 * 设置：客户身份证号
	 */
    public String getKehuIdNumber() {
        return kehuIdNumber;
    }


    /**
	 * 获取：客户身份证号
	 */

    public void setKehuIdNumber(String kehuIdNumber) {
        this.kehuIdNumber = kehuIdNumber;
    }
    /**
	 * 设置：客户头像
	 */
    public String getKehuPhoto() {
        return kehuPhoto;
    }


    /**
	 * 获取：客户头像
	 */

    public void setKehuPhoto(String kehuPhoto) {
        this.kehuPhoto = kehuPhoto;
    }
    /**
	 * 设置：客户地址
	 */
    public String getKehuAddress() {
        return kehuAddress;
    }


    /**
	 * 获取：客户地址
	 */

    public void setKehuAddress(String kehuAddress) {
        this.kehuAddress = kehuAddress;
    }
    /**
	 * 设置：客户职业
	 */
    public String getKehuZhiye() {
        return kehuZhiye;
    }


    /**
	 * 获取：客户职业
	 */

    public void setKehuZhiye(String kehuZhiye) {
        this.kehuZhiye = kehuZhiye;
    }
    /**
	 * 设置：性别
	 */
    public Integer getSexTypes() {
        return sexTypes;
    }


    /**
	 * 获取：性别
	 */

    public void setSexTypes(Integer sexTypes) {
        this.sexTypes = sexTypes;
    }
    /**
	 * 设置：地区
	 */
    public Integer getDiquTypes() {
        return diquTypes;
    }


    /**
	 * 获取：地区
	 */

    public void setDiquTypes(Integer diquTypes) {
        this.diquTypes = diquTypes;
    }
    /**
	 * 设置：电子邮箱
	 */
    public String getKehuEmail() {
        return kehuEmail;
    }


    /**
	 * 获取：电子邮箱
	 */

    public void setKehuEmail(String kehuEmail) {
        this.kehuEmail = kehuEmail;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}
