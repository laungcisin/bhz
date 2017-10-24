项目结构讲解：
    bhz-com：公共模块；
    bhz-parent：基础模块，maven公共配置；
    bhz-sys：系统运行支撑模块（Web）项目；
    bhz-sys-facade：api-interface层，提供entity、interface，外系统通过facade获取服务；
    bhz-sys-service：facade层的实现，提供数据库等功能访问；
    

1、
windows调用linux的zookeeper报超时
解决方案：
http://blog.csdn.net/lfz_carlos/article/details/51278567

2、在CentOS下运行 bhz-sys-service.jar 报一下错误：
	java.lang.RuntimeException: java.io.IOException: invalid constant type: 15
解决方案：
http://blog.csdn.net/w980994974/article/details/77507459
升级javassist包，升级到3.20.0-GA
