# 计算方法撷英

这是一份电子版的**计算方法**课程笔记，底稿来自于西安交通大学 2014 级少年班王天浩同学的纸质笔记，由 2015 级少年班的尤佳睿（[@xjtu-blacksmith](https://github.com/xjtu-blacksmith)）整理、增补为电子版本。

欲下载 PDF 文件，请转至 [release](https://github.com/xjtu-blacksmith/notes-on-computing-methods/releases/) 页面；其他信息，请检查本笔记的「前言」部分。

本作品由[钱院学辅](https://qyxf.site/)出品。作品内容由 [CC BY-NC-ND 4.0 协议](https://creativecommons.org/licenses/by-nc-nd/4.0/)授权，欢迎分享、发布；作品源代码按 [LPPL v1.3c 协议](/LICENSE)授权。

## 目录结构

- `main.tex`：主文件，请编译它
- `qyxf-book.cls`：[钱院学辅通用书籍模板](https://github.com/qyxf/qyxf-sets)，有改动
- `cover.png`：模板所需的封面背景图
- `structure.tex`：补充宏包声明与符号、命令定义
- `chapters` 目录：嵌入 `main.tex` 的章节子文件目录
- `zhindex.ist`：中文索引样式文件，不需要索引时可删去（见下「文件编译」部分的说明）
- `makefile`：Makefile 文件

## 文件编译

本份文档需采用 `xelatex` 方式编译。文末的索引由 `zhmakeindex` 程序生成（请访问其 [GitHub 仓库](https://github.com/leo-liu/zhmakeindex)获取该程序），建议与 `xelatex` 命令按如下次序组合：

```shell
xelatex main.tex
zhmakeindex -s zhindex.ist main.idx
xelatex main.tex
xelatex main.tex
```

其中 `zhindex.ist` 为索引样式文件，已在本份文档目录中。如您难以获取 `zhmakeindex` 程序或不需要索引，请在 `main.tex` 中的 `\backmatter` 部分将 `\printindex` 命令及其上生成目录的命令去除（有注释说明）。

本项目内有一个比较简陋的 Makefile，可执行以上操作。