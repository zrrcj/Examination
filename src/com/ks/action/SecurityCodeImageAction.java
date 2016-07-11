package com.ks.action;

import java.io.ByteArrayInputStream;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.stereotype.Controller;

import com.ks.common.BaseAction;
import com.ks.common.SecurityCode;
import com.ks.common.SecurityImage;

/**
 * 提供图片验证码
 * @version 1.0 2012/08/22
 * @author dongliyang
 */
@SuppressWarnings("serial")
// bean的生成方式
@Controller
// spring注解
@ParentPackage("default")
// sruts默认继承包
@Namespace("/")
// 命名空间
public class SecurityCodeImageAction extends BaseAction{

    //图片流
    private ByteArrayInputStream imageStream;
    public ByteArrayInputStream getImageStream() {
        return imageStream;
    }
    public void setImageStream(ByteArrayInputStream imageStream) {
        this.imageStream = imageStream;
    }

    @Action(value = "image", results = { @Result(name = "success",type="stream",params={"contentType","image/jpeg","inputName","imageStream","bufferSize","2048"}) })
    public String image() throws Exception {
        //如果开启Hard模式，可以不区分大小写
//        String securityCode = SecurityCode.getSecurityCode(4,SecurityCodeLevel.Hard, false).toLowerCase();
        
        //获取默认难度和长度的验证码
        String securityCode = SecurityCode.getSecurityCode();
        imageStream = SecurityImage.getImageAsInputStream(securityCode);
        //放入session中
        session.put("SESSION_SECURITY_CODE", securityCode);
        return SUCCESS;
    }
}