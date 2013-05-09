#RoadMap 
## 概述
wxfSkinUI 是一组快速可定制UI的实现。由如下部分组成：

* 核心库 （1）
* 编辑器  （2）
* 应用内实现 （3）

其中（1）定义了整体的wxfSkinUI所用到的一些概念和逻辑。（2）提供了一个快捷编辑和输出的工具，（3）就是在实际应用中使用和操作的Best pratices。

目前，这三者都是基于as3构建。



## 版本设定

* Ver0.24 
	* 三国列传runtime 版本

* Ver1.0 improve
	* wxfSkinUI 核心库 
	  - 重新定义ViewObject 类型
	  - 重新定义素材类型
	  - 高度兼容v0.24 
	* 编辑器优化
	  - 代码结构
	  - 用户体验	

* Ver1.1 fix improve
	* 编辑器大幅度优化
	 	- 性能
	 	- 操作可用性
	 	- 兼容v1.0的wxfSkinUI 核心库
	 * 核心库、编辑器支持三国列传主版本
	 	
* Ver2.0 wxfSkinUI 核心库大幅度进化
	* 核心库使用as3
	* 素材（json描述+ 平台差异的二进制）
	* 使用插件形式实现 在不同平台下的 
		- 应用内自启动实现
		- 不同的素材格式

* Ver2.1 
	* 支持不同环境
		- staring as3/js
		- pure as3/ mxml
	* 编辑器进化
		- 支持 v2.0 wxfSkinUI 核心库
		- 平台差异 二进制文件支持输出
		