# dotfiles
---
高效开发环境(zsh+tmux+vim)配置，也包含一些使用习惯，用来方便的在其它机器上快速配置, 也可在此基础上根据自己爱好，添加自定义配置, 建议读完readme再进行安装

## 目录介绍
---
```
├── envron_check.sh 环境检查脚本
├── install.sh 安装脚本
├── tmux.conf 复合终端配置
├── vim php开发的vimide配置
│   ├── conf.d 插件配置
│   ├── doc 中文文档
│   ├── mydoc 自定义文档
│   ├── script 扩展脚本
│   ├── sessions 工作环境保存
└── zshrc zsh自定义配置
```

## 安装
---
安装部分比较简单，安装程序会检查需要的环境，按照提示安装就可以
**在安装其它项目，由于github比较慢，需耐心等待**
**如果vim插件安装失败后，直接进入vim中，执行:BundleInstall即可**
```
git clone https://github.com/lidongshengluck/dotfiles.git
chmod +x install.sh
./install.sh
```

## vim使用
---
在使用vim之前以下几个映射非常重要，甚至会影响到你的vim正常使用
* jk         退出编辑模式
* <leader>eh 常用vim快捷键
* <leader>ev 基础vim配置
### 自定义vim <leader>
```
vi ~/.vimrc
let mapleader = ","  可修改为自己喜欢的热键
let maplocalleader = ","
```

## zsh使用
---
*zsh*的强大就不用多说了，默认安装了git、autojump扩展

### 常用配置文件
---
* ~/.tmux.conf tmux常用配置文件
* ~/.zshrc     zsh配置
* ~/.vimrc     vim基础配置
