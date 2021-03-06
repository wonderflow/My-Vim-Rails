# MY Vim Rails

-----------------------

我根据DCCMX的nixfile项目里面的.vimrc文件修改了.vimrc里面的配置，插件使用依旧如下。

***

## 目标：
1. 维护自己的VIM插件及配置文件
2. 对新手友好，帮助新手在几分钟内建立一个可以用于开发Rails的VIM环境，不用慢慢找插件
3. 与他人分享插件

## 安装：
### 新手：
1. 先确认自己$HOME下没有.vim文件夹了，有就删了
2. $cd ~
3. $git clone https://github.com/wonderflow/My-Vim-Rails  .vim
4. cd .vim
5. git submodule init
6. git submodule update
7. ln $PWD/.vimrc ~

### 老手：
如果也喜欢，clone一个项目 ，把autoload  bundle目录拷过来就可以了。我用Pathogen来管理，大侠您就随便了

## 建议
自己fork一个分支

vim最强大的地方就是可以自己改，想要什么有什么，配合github，您还有了"云vim"啦！

## 插件列表：

	pathogen.vim		插件管理
	NERDTree.vim：		目录树和标签
	Rails.vim：			Rails插件
	Snipmate.vim：		代码片段自动完成，神器啊
	FuzzyFinder.vim：模糊查找，超级有用的插件
	TabBar：					Alt+数字可切换Buffter
	Supertab.vim：		文本自动完成
	Rubytest.vim：		vim下的集成测试工具，自己的项目用Guard自动跑，不过要试别人的项目就要用到了
	autoclose:			输入"("之类的会帮你补后面
	vim-surround：		配对符修改
	Color-Sampler-Pack：	配色方案包，有好多的，装上就够用了
	ScrollColors		配色方案管理
	vim-fugitive：		git插件，自称最好的git插件啦，插件不怎么滴，提供的git视频教程却不错
	vim-rspec

### 简单使用方法 ：

####  pathogen
  	在.vimrc里加
		# 必须在 filetype plugin indent on 之前
		call pathogen#runtime_append_all_bundles()
		之后插件只要放到~/.vim/bundle目录下就可以生效
#### NERDTree
		使用:NERDTree调出目录树，或是按.vimrc里配置后用",gl""
#### Rails
		这个就说来话长了。。Rpreview Rmodel Rcontroller 等 等
#### Snipmate
		tab把代码片段完成，关键是查看和修改，在snipmate.vim/snippets下，修改成自己喜欢和习惯的快捷键和代码很重要
#### FuzzyFinder
		懒人必备，设好快捷键后各种快,F ,f
#### TabBar
		Alt+数字可切换Buffter
#### supertab
		输入几个字母后按下tab看看
#### autoclose
	    输入"("之类的会帮你补后面
#### vim-surround
		cs"' 把"ddddd	"  变成'ddddd '
#### Color-Sampler-Pack+ScrollColors+vimrc
       设置后可以用F2F3来换配色


## 参考：

https://github.com/scrooloose/nerdtree
git clone git://github.com/scrooloose/nerdtree.git bundle/nerdtree

https://github.com/tpope/vim-rails
git clone git://github.com/tpope/vim-rails.git bundle/vim-rails

https://github.com/msanders/snipmate
git clone git://github.com/msanders/snipmate.vim.git bundle/snipmate.vim

https://github.com/vim-scripts/FuzzyFinder
git clone git://github.com/vim-scripts/FuzzyFinder.git bundle/FuzzyFinder
FuzzyFinder需要：
https://bitbucket.org/ns9tks/vim-l9/ L9 : Vim-script library
sudo apt-get install mercurial
hg clone https://bitbucket.org/ns9tks/vim-l9 bundle/vim-l9

http://www.vim.org/scripts/script.php?script_id=1338

TabBar
http://www.vim.org/scripts/download_script.php?src_id=4976
装完可以使用Alt+数字来打开buffer了
taBbar秘技：http://rickey-nctu.blogspot.com/2009/03/vim-tip-tabbar.html

https://github.com/ervandew/supertab
git clone git://github.com/ervandew/supertab.git bundle/supertab

Rubytest
https://github.com/janx/vim-rubytest
git clone git://github.com/janx/vim-rubytest.git bundle/vim-rubytest
实际上我们用guard后用处不大
autoclose
git clone git://github.com/vim-scripts/AutoClose.git bundle/autoclose
[, (, {, ", ' 之类的补全
vim-surround
http://www.dutor.net/index.php/2010/10/vim-surround/
https://github.com/tpope/vim-surround
git clone git://github.com/tpope/vim-surround.git bundle/surround
Color-Sampler-Pack
http://www.vim.org/scripts/script.php?script_id=625
git clone git://github.com/vim-scripts/Color-Sampler-Pack.git bundle/color-sampler-pack
http://www.vi-improved.org/color_sampler_pack/
http://yyq123.blogspot.com/2011/02/vim-color-scheme.html
修改：colorscheme railscasts

https://github.com/vim-scripts/ScrollColors
git clone git://github.com/vim-scripts/ScrollColors.git bundle/scrollcolors
直接在VIM里修改配色方案的： :SCROLL 左右键选择，回车确定
vim-fugitive：
https://github.com/tpope/vim-fugitive
还不怎么会用git的童鞋看他提供的教程

参考文档：
http://progit.org/book/zh/ch6-6.html  没用到
http://blog.danmarner.com/me/entry/vim-pathogen/
http://rickey-nctu.blogspot.com/2009/02/vim-fuzzyfinder.html FuzzyFinder
http://v.youku.com/v_show/id_XMjM5MzUzMzIw.html
http://love.chinaunix.com/space.php?uid=22695386&do=blog&id=2827004 TODO：这个建立FF的快捷方式的
http://www.diybl.com/course/6_system/linux/linuxjq/20110825/558878.html  L9 library must be installed!
http://www.vim.org/scripts/script.php?script_id=3252  L9 : Vim-script library

这个自动更新的插件，现在不用：
http://xwz.me/wiki/doku.php?id=vim:plugins
http://www.vim.org/scripts/script.php?script_id=642

sudo apt-get install exuberant-ctags
ctags-exuberant -a -e -f TAGS --tag-relative -R app lib vendor /opt/ruby-enterprise/lib/ruby/gems/1.8/gems
Ctrl-]
Ctrl-T

http://vim.sourceforge.net/scripts/script.php?script_id=273
:TlistToggle
FOR VimRails
dbext
http://www.vim.org/scripts/script.php?script_id=356
abolish:
git clone git://github.com/tpope/vim-abolish.git
vim-bundler
git clone git://github.com/tpope/vim-bundler.git	
