# epicgo
## 前言
最近我的老师要我们研究生在csdn上发博客，但是我这半年以来已经习惯用org mode了。csdn上写博客也不能用org mode。好在org mode能一键转换为markdown。但是我使用org-download粘贴的照片的路径是间接路径，没有办法在csdn上显示。

给我的选择是要么一个一个把图片发到csdn上，要么换成线上图片链接。我是极其讨厌csnd的，每次在csdn上找资料就像是在💩中寻找黄金。csdn虽然能用markdown，但是他上传图片的方式，似乎很人性，其实不然。

如果全文都是在csdn上写，那确实很方便。但是万一别人是在其他软件上写好的文章，尤其是有大量图片的文章。那么就只能一个一个上传图片，而且他上传图片返回的markdown地址是固定的，也就是说，如果能一次性上传十张照片，那么就会出现十张照片排在一起的惨象。

我仍然希望在emacs上完成本学期的期末作业，所以我选择了将阿里云的OSS作为图床，用picgo-core来上传图片。想着emacs上肯定有大佬写的有图床的插件。但是我没找到！！！！只能自己用chatgpt写个插件，也就是epicgo（emacs picgo）。一方面是为了交作业，另一方面有了图床，以后为在github page上发布博客显示图片也更加流畅了。


## 用法
1. 克隆：
```
git clone git@github.com:Elonisme/epicgo.git ~/.emacs.d/epicgo/
```
2. 在配置文件中加入：
```
(use-package epicgo
  :ensure nil
  :load-path "~/.emacs.d/epicgo/"
  :config
  (setq static-path "自己博客保存静态文件的目录加"/"") ;; 比如~/xxxx/xxx/static/
  (setq old-string "{{< figure src=\"/ox-hugo/") ;; ox-hugo保存图片的路径
  (setq new-string "{{< figure src=\"图床的具体目录") ;; 比如https://xxxxxx.xxx.xxxx.xxxx/img/
  )
```
