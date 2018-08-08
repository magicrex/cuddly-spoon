个人简历网站
========

背景：
-----
    因为听老师说在简历上有一个博客链接，或者个人网站链接会提高自己的简历质量，所以就决定自己实现一个较为简单的个人网页及后台服务。

环境：
-----
    Linux(centos7),火狐浏览器（其他浏览器可能不兼容）。
功能：
-----
    * 为多个用户提供基本的登录、注册及修改密码等功能。
    * 为用户提供一个存储，上传和下载的平台，方便用户进行多版本的简历管理
    * 为用户提供一个个人网址方便展示比简历更加丰富的内容。
文件：
-----
     * 数据库.txt(搭建数据库文档)            * util.hpp(工具类)
     * DBoperate.hpp(操作数据库)            * log.txt(日志文件)
     * Makefile                            * upfile_cgi.cpp(上传文件)
     * httpserver.h(TCP连接头文件)          * delfile_cgi(删除文件)
     * httpserver.cpp(HTTP请求处理)         * modimess_cgi.cpp(修改简介)
     * httpserver_main.cpp(程序入口函数)    * addstu_cgi.cpp(添加笔记链接)
     * regist_cgi.cpp(注册文件)             * delnote_cgi.cpp(删除笔记链接)
     * login_cgi.cpp(登录文件)              * addpro_cgi.cpp(添加项目简介)
     * update_cgi.cpp(修改密码文件)         * delproj_cgi.cpp(删除项目简介) 
     * select_cgi.cpp(查询文件)             * set_cgi.cpp(设置展示内容)    
流程：
-----
    

依赖：
-----
    Mysql数据库，Mysql++(Mysql官网提供的API),boost(c++库)，MDUI(开源前端框架，直接百度即可)/<br>
    google Ctemplate(谷歌的第三方库，主要用来成网页)，jQuery(支持ajax，实现异步网页刷新)
  
