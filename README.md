## Mupdf是一个开源的、轻量级的PDF、XPS解析器。支持windows、linux、ios、android等平台。
http://www.mupdf.com/
由于编译比较麻烦，可以使用编译好的项目。

效果图

![image](https://raw.githubusercontent.com/xfans/Mupdfandroid/master/2014052301.png)

### 整合项目

1. 下载编译完的项目。

2. 拷贝src目录下的所有代码。

3. 拷贝res目录下的所有代码。

4. 拷贝libs目录下面的.so文件。

5. 在Mainfest文件中添加Activity。

### 使用

```java
Uri uri = Uri.parse(filename);
Intent intent = new Intent(NoticeDetailsActivity.this,MuPDFActivity.class);
intent.setAction(Intent.ACTION_VIEW);
intent.setData(uri);
startActivity(intent);
```
filename为PDF文件路径
