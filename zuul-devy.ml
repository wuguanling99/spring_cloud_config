server:
  port: 9000
spring:
  rabbitmq:
    host: localhost
    port: 5672
    username: wgl
    password: 123456
zuul:
  ignoredServices: '*'
  routes:
  #myProduct是规则的名字,只要不重复就好了
    myProduct:
    #将myProduct的请求路由到product服务下 -- /myproduct/* --》 /product/*
      path: /myProduct/**
      service-id: product
      #设置敏感头为空，这样cookie可以传递过来
      sensitiveHeaders: 
     myOrder:
    #将myProduct的请求路由到product服务下 -- /myOrder/* --》 /order/*
      path: /myOrder/**
      service-id: order
      #设置敏感头为空，这样cookie可以传递过来
      sensitiveHeaders: 
  # 简洁写法 product服务被自定义路由到myProduct
  #  product: /myProduct/** 
  #  order: /myOrder/**
