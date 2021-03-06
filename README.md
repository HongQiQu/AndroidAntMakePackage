# Ant批量打包APK
以下步骤均在MAC系统下完成

##批量打包步骤：##
 1. 安装Ant等发开工具
 2. 复制 AndroidManifest.xml 并命名为 AndroidManifest.xml.temp ；
 3. 修改 AndroidManifest.xml.temp 中渠道好为 AndroidManifest.xml.temp ；
 4. 添加签名信息
 
 ```java
sdk.dir=/Users/zhenguo/Documents/develop/adt-bundle-mac-x86_64-20140702/sdk

key.store=/Users/zhenguo/Documents/develop/key/package.keystore
key.alias=aname
key.store.password=123456
key.alias.password=123456
 ```
 
 5. 修改打包程序配置

 
 ```java
/**
 * 要打包的项目根目录
 */
 private final static String projectBasePath = "/Users/zhenguo/Documents/develop/github/AndroidAntMakePackage/MakePackageDemo";
/**
 * 保存打包之后的apk的根目录
 */
private final static String copyApkPath = "/Users/zhenguo/Documents/develop/apks";
/**
 * 这里的文件名必须是准确的项目名！就是Project工程的bin目录下面的apk安装包的名字
 */
private final static String signApk = "MakePackageDemo-release.apk";
/**
 * 重命名之后的项目名称前缀(地图项目不用改)
 */
private final static String reNameApk = "Project_";
/**
 * 需要修改manifest文件的地方(占位符)
 */
private final static String placeHolder = "@market@";
 ```
 
 6. 在 market.txt 中添加渠道信息，每个渠道占一行
 
 7. 运行 MakePackages ；
 
## 工程介绍 ##

 * MakePackageDemo Android项目 需要批量打包的源码
 * MakePackages Java项目 实现批量打包的程序

## 开发者(Developer) ##

* [Zhenguo Jin](http://ihongqiqu.com) - <jinzhenguo1990@gmail.com>


## License ##

    Copyright 2014 Zhenguo Jin

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

