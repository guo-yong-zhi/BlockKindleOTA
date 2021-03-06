## 使用方法
* 阅读下文的重要说明
* 克隆项目，将项目文件夹复制到Kindle根目录下的extensions目录中
* 打开`KUAL`，依次选择`Tools` -> `Block OTA` -> `Block`。设备片刻后会重启
## 重要说明
该插件参考的是这个帖子的方法：https://www.mobileread.com/forums/showthread.php?t=327879 ，即通过移除（重命名）升级功能相关二进制文件的方法来阻止升级服务启动。该方法只适用于越狱后的设备。这种方法尝试保证在屏蔽后不会下载新的升级文件，但通过在屏蔽前就已经下载好的升级文件或屏蔽后手动放置的升级文件依然可以升级。而且，为了保证已经启动的升级服务被完全关闭，插件会重启一次设备，而这时**如果存在已经下载好的固件就会进入升级流程**。虽然插件会尝试删除已经下载好的升级文件，但是情况多样，为安全计，请  
> * **务必保证在点击"Block OTA"前Kindle设置里“更新我的Kindle”按钮是灰色的（即不可点击状态）**

可以连接电脑，检查kindle磁盘根目录下有没有一两百兆的升级文件（名为譬如`updatexxxxxxxx.bin），如果存在，将其删除可以使升级按钮变灰。另外为了使风险最小化，还有如下建议：
> * 设备成功越狱后先安装hotfix（强烈建议）。这在极端情况下可防止越狱失效
> * 屏蔽升级前减少连接WiFi的时间。这降低了在完成屏蔽前就下载好了升级文件的可能
> * 屏蔽升级后一段时间里连接WiFi，并关注“更新我的Kindle”按钮状态（应该是灰色），验证屏蔽有效。此间需防止设备意外重启