# my-apps

# 一级标题
## 二级标题
### 三级标题
#### 四级标题
##### 五级标题
###### 六级标题
  
这是一级标题
============
这是二级标题
--

# 一级标题 #
##  二级标题 ##

### 无序列表
* 1
* 2
* 3
+ 1
+ 2
+ 3
- 1
- 2
- 3
- [x] 男
- [ ] 女

### 有序列表
3. 列表1
2. 列表2
1. 列表3
### 有序列表
3. 列表1
9. 列表2
1. 列表3
  
### 区块引用
* 不以结婚为目的的谈恋爱都叫耍流氓
	> from 毛主席语录
* 前方高能
	> 注意：这里是为了提醒前面有很刺激的事情  
	发生，请 做好准备
  
  
 > ## 标题
 > * 不以结婚为目的的谈恋爱都叫耍流氓
 >    > 这是毛主席说的
 > * 前方高能
 >    > 注意：这里是为了提醒前面有很刺激  的事情发升，请 做好准备  


 > 一级引用
 >> 二级引用
 >>> 三级引用

 上图可以看出，想要在上一次引用中嵌套一层引用，只需多加一个>，理论上可以无限嵌套，我就不整那么多了，注意：多层嵌套的>是不需要连续在一起的，只要在一行就可以了，中间允许有空格，但是为了好看，还是把排版搞好吧
  
### 华丽的分割线
分割线可以由* - \_（星号，减号，底线）这3个符号的至少3个符号表示，注意至少要3个，且不需要连续，有空格也可以
  
***
---
___
  
### 链接
[妙语连珠](https://www.baidu.com/ "搜索")是什么意思  
### 下面是带链接的列表
* [不知道写些什么1](https://www.baidu.com/)
* [不知道写些什么2](https://www.baidu.com/)
### 参数式
[name]: https://www.baidu.com/name "名称"
[home]: https://www.baidu.com/home "首页"
[也支持中文]: https://www.baidu.com/name "无题"
这里是[name]，这里是[home]，这里是[也支持中文]
###
### 图片
![我是图片](https://timgsa.baidu.com/timg?image&quality=80&size=b10000_10000&sec=1553333317&di=7915146077a9dc51b013ca9eccc49415&src=http://pic.2265.com/upload/2017-4/20174151150135456.jpg)
  
[熊猫]: https://timgsa.baidu.com/timg?image&quality=80&size=b10000_10000&sec=1553333317&di=7915146077a9dc51b013ca9eccc49415&src=http://pic.2265.com/upload/2017-4/20174151150135456.jpg "熊猫"
参数式图片，这里是![熊猫]
###
### 代码框
#### 单行代码用\`\`
`
brew install python3
`
#### 多行用3个\`
```c 可以写注释
#include <stdio.h>

int main()
{
   /* 我的第一个 C 程序 */
   printf("Hello, World! \n");

   return 0;
}
```
### 
### 表格
| name | age | sex |
|:---:| :--- | ---: |
| tony | 20 | 男 |
| lucy | 18 | 女|
  
表头1 | 表头2
---------- | ----------
Content Cell | Content Cell
Content Cell | Content Cell
  
学号|姓名|分数|
-|-|-|
小明|男|75
小红|女|79
小路|男|92
  
### 强调
*星斜体*  
_下斜体_  
**星 字体加粗**  
__下 字体加粗__  
~~加删除线文字~~  
***星斜体加粗***  
___下斜体加粗___  
  
### 转义
* \*与js转义一样

### 流程图
```flow
st=>start: 开始
op=>operation: My Operation
cond=>condition: Yes or No?
e=>end
st->op->cond
cond(yes)->e
cond(no)->op
```

	第一行
	第二行
	第三行
  
<table class="table table-bordered table-striped table-condensed">
   <tr>
      <td>John</td>
      <td>Smith</td>
      <td>123 Main St.</td>
      <td>Springfield</td>
   </tr>
   <tr>
      <td>Mary</td>
      <td>Jones</td>
      <td>456 Pine St.</td>
      <td>Dover</td>
   </tr>
   <tr>
      <td>Jim</td>
      <td>Baker</td>
      <td>789 Park Ave.</td>
      <td>Lincoln</td>
   </tr>
</table>

```flow
st=>start: 开始
op=>operation: My Operation
cond=>condition: Yes or No?
e=>end
st->op->cond
cond(yes)->e
cond(no)->op
```
<p>
   <font color=red size=5>gray</font>
</p>
