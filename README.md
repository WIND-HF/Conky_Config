Conky_Config
===============

   My conky configure file.


## Screenshot

   ![ShowDesktop_v9](https://github.com/LittleKey/gallery/blob/master/ShowDesktop_v9.png?raw=true)

   ![ShowDesktop_v8](https://github.com/LittleKey/gallery/blob/master/ShowDesktop_v8.png?raw=true)

## Requirements

   conky 1.9(or more later) # 也许只要大于1.8 rc2就行了
   
   Ruby 2.1 # 我只测试了这个

## Usage

    ln -s Conky_Config ~/.conky && cd ~/.conky
    nohup ./conky conkyrc &

   conkyrc: 生成的配置文件名(如果存在同名文件会备份到当前文件价下并加上old前缀)

## Docments

   配置可以随意修改, 修改之后执行./conky conkyrc更新.
   

### Settings

   全局配置, 全都写在了settings文件夹里.

##### color

   各种颜色的自定义设置, 不包含graph的颜色, 想修改的话需要在TEXT手动撸
   
   
-------------------------------------------------------

### TEXT

   主要就是TEXT之后的内容, 写在了TEXT文件夹里.

##### main

   所有信息的整体顺序(大概就是个简单排版), 以及..."上条当麻保护协会"
   
   
-------------------------------------------------------

### tool

   包含一些不是很重要的小工具...

##### getBasename

   用于给SongInfo的mocp提供正在播放文件的基础(base)文件名.

##### update

   用于更新所有配置.

   读取参数里的所有文件(可以使用bash的通配符输入多个文件),
   并输出到标准输出(自己重定向去吧~)
   
   在这里用来读取所有全局设置, 以及main.conf(这个文件控制所有TEXT的整体顺序),
   并重定向输出到某文件, 作为conky的配置文件.

   *p.s: 可参考conky.sh*
