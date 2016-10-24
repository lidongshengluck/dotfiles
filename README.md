# dotfiles
---
我常用开发环境配置，也包含一些使用习惯，用来方便的在其它机器上快速配置, 也可在此基础上根据自己爱好，添加自定义配置

## 目录介绍
---
```
├── envron_check.sh
├── install.sh 安装脚本
├── oh-my-zsh zsh的快速配置
├── tmux.conf 复合终端配置
├── vim php开发的vimide配置
│   ├── bundle 插件
│   ├── conf.d 插件配置
│   ├── doc 中文文档
│   ├── mydoc 自定义文档
│   ├── script 扩展脚本
│   ├── sessions 工作环境保存
├── zsh zsh命令高级提示
│   └── zsh-autosuggestions
└── zshrc zsh自定义配置
```

## 环境
---
基本的环境要求如下
* zsh 全新的shell运行环境
* tmux 复合终端
* autojump, autojump-zsh 目录自动跳转和zsh插件支持

## 安装
---
```
git clone git@github.com:lidongshengluck/dotfiles.git
chmod +x install.sh
./install.sh
```

## 常用配置介绍
---
### vim中的leader修改
```
vi ~/.vimrc
let mapleader = ","  可修改为自己喜欢的热键
let maplocalleader = ","
```

### 常用的vim快捷键使用
---
```
在vim normal模式下输入 <leader>eh
```

### zsh的常用扩展
---
* autojump
* git

### 常用配置文件
---
更多的操作可以查看相关的配置文件
