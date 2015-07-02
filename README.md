# devices-superior
机型适配
* 标准流程
按照如下步骤，完成一个新机型的适配：

$ flyme config      # 生成机型配置文件Makefile
$ flyme newproject  # 生成新机型目录
该源码已经做完上面2步
$ flyme patchall    # 自动插桩
$ flyme fullota     # 生成适配完成的ROM包
* 冲突处理

自动插桩可能会造成代码合并冲突。冲突会以下面的形式标注出来, 开发者需要在厂商的文件中手工解决这些冲突。

<<<<<<< VENDOR
  原厂的代码块
=======
  Flyme的代码块
>>>>>>> BOSP
* 版本升级

可以跟随官方发布的最新ROM包，将已经是适配完成的机型升级到最新版本：

$ flyme cleanall
$ flyme upgrade

by wwbhl push

更多信息交流讨论：

QQ :8489216
BBS:http://www.baohailong.cn/bbs
QQ群 :196960536
