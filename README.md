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
     wwwroot
     * css(MDUI开源框架的css文件)                * show.tpl(展示页面)
     * fonts(MDUI开源框架的字体文件)             * regist_cgi.tpl(注册界面，同步刷新)
     * icons(MDUI开源框架的图标文件)             * update_cgi.tpl(修改密码，同步刷新)
     * images(背景图片)                         * login_cgi.tpl(登录失败，同步刷新)
     * js(MDUI开源框架的css文件和jQuery库)       * resume_cgi.tpl(简历界面，异步刷新)
     * favicon.ico(网页图标，百度即可)           * note_cgi.tpl(笔记界面，异步刷新)
     * AllFile(所有用户的简历存储，Git中没有)     * project_cgi.tpl(项目界面，异步刷新)
     * cache(缓存文件目录，Git中没有)            * set_cgi.tpl(设置界面，异步刷新)
     * index.tpl(首页文件)                      * error.tpl(错误提示，异步刷新)
     * personal.tpl(用户界面)       
流程：
------
 * 服务器的启动，通过调用系统API创建套接字，并进行端口绑定，监听，等待用户建立一个TCP连接，采用多线程方式处理请求。
 * 服务器的处理，首先是进行解析，根据HTTP请求，解析出方法及参数，根据参数判断文件是否存在及是否可执行，而允许文件是否可以以该方法请求放
   在后面的CGI程序中。其次处理由CGI程序完成。最终，对处理结果进行读取，并构造响应发送回浏览器端。
 * 多个CGI程序，对每一个功能都存在一个CGI程序进行处理，根据不同的CGI对数据进行多种处理方式。同时运用了Cookie的基本功能来进行用户的自动
 识别，并借助Mysql++对数据库进行操作，进行一系列的增删查改。
 总结：
 -----
 对项目进行总结，分析，思考缺陷，思考改进。
 链接：
 
