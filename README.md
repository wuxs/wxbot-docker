# wxbot-docker 

用于 v3.9.8.25 版本

## 免责声明
本仓库发布的内容，仅用于学习研究，请勿用于非法用途和商业用途！如因此产生任何法律纠纷，均与作者无关！  
使用此项目可能会造成封号等后果。请自行承担风险。仅用于学习研究，请勿于非法用途。

## 项目介绍
本项目是参考 [thinker007/wxhelper-docker](https://github.com/thinker007/wxhelper-docker) 制作的 [wxbot](https://github.com/jwping/wxbot) 的 docker 一键部署版本，自动完成微信的安装并注入。

关于 wxbot 的具体使用方法可以参考 [wxbot](https://github.com/jwping/wxbot) 的README或对应分支的文档。


## 项目使用

运行镜像

```
docker run -d --rm -p 80:80 -p 8080:8080 --name wxbot-docker wuxs/wxbot:latest
```
浏览器访问 http://127.0.0.1:8080/vnc.html 扫码登录


## 特别注意
- 只支持AMD64架构，不支持ARM
- 如果你不了解docker的网络架构也不想了解，使用host模式启动可能是更好的方案。但是注意只有Linux支持host模式

## 特别感谢
感谢下列项目,记得给大佬们点🌟  
https://github.com/ttttupup/wxhelper  
https://github.com/furacas/DllInjector  
https://github.com/tom-snow/wechat-windows-versions
https://github.com/hxrbunny/wxhelper-docker
https://github.com/thinker007/wxhelper-docker
https://github.com/jwping/wxbot