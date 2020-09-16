package com.sikiedu.web;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import sun.misc.BASE64Decoder;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.UUID;

/**
 * @author Administrator
 * @date 2020/9/15 0015 19:09:50
 * @description
 */
public class ImageAction extends ActionSupport {
      //文件
      private File upload;
      //文件类型
      private String uploadContentType;
      //文件名称
      private String uploadFileName;

      private String base64;

      private String upName;

      private InputStream inputStream;

      public String getImage() throws Exception{

        //base64编码保存图片
          HttpServletRequest request = ServletActionContext.getRequest();
          String dir = request.getRealPath("/upload");
          File fileLocation = new File(dir);
          if(!fileLocation.exists())
          {
              fileLocation.mkdir();
          }
          //有了一个空白文件
          if(base64.indexOf("jpeg")!=-1){
             base64 = base64.replaceFirst("jpeg","jpg");
          }
       upName = UUID.randomUUID().toString()+System.currentTimeMillis()+"."+base64.substring(11,14);
       //将文件有用的数据保存下来
       String iconBase64=base64.substring(22);
       //将base64换为64字节数组
       byte[] buffer  = new BASE64Decoder().decodeBuffer(iconBase64);
       FileOutputStream out = new FileOutputStream(dir+"/"+upName);
       out.write(buffer);
       out.close();
       System.out.println(dir);

       //图片下载
       inputStream = ServletActionContext.getServletContext().getResourceAsStream("/upload/"+upName);











       return "success";
      }

      //保存图片
      public String saveImage() throws Exception{

        //System.out.println("我已经到达这里! !");
//        System.out.println(upload);
//        System.out.println(uploadContentType);
//        System.out.println(uploadFileName);

        //将文件保存在项目部署的位置
          //保存的路径
        String path = ServletActionContext.getServletContext().getRealPath("/image");
        //如果路径不存在，手动创建一下这个路径
        File file = new File(path);
        if(!file.exists())
        {
            file.mkdir();
        }
        System.out.println(path);
        //保存的文件(以文件拷贝的形式)
          FileUtils.copyFile(upload,new File(file,uploadFileName));

          return null;
      }

    public File getUpload() {
        return upload;
    }

    public void setUpload(File upload) {
        this.upload = upload;
    }

    public String getUploadContentType() {
        return uploadContentType;
    }

    public void setUploadContentType(String uploadContentType) {
        this.uploadContentType = uploadContentType;
    }

    public String getUploadFileName() {
        return uploadFileName;
    }

    public void setUploadFileName(String uploadFileName) {
        this.uploadFileName = uploadFileName;
    }

    public String getBase64() {
        return base64;
    }

    public void setBase64(String base64) {
        this.base64 = base64;
    }

    public String getUpName() {
        return upName;
    }

    public void setUpName(String upName) {
        this.upName = upName;
    }

    public InputStream getInputStream() {
        return inputStream;
    }

    public void setInputStream(InputStream inputStream) {
        this.inputStream = inputStream;
    }

}
