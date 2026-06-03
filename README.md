# 简约作品集网站

用于求职展示：建筑设计、平面设计、AIGC 等作品，单页结构，风格克制。

## 本地预览

在项目根目录用任意静态服务器打开，例如：

```bash
npx serve .
```

浏览器访问提示的地址（通常是 http://localhost:3000）。

也可直接用 VS Code / Cursor 的 **Live Server** 扩展打开 `index.html`。

## 需要修改的内容

| 位置 | 说明 |
|------|------|
| `index.html` | 姓名、社交链接 |
| `js/i18n.js` | 页面中英文文案（导航、关于、联系等） |
| `js/projects.js` | 每件作品的中英文标题、描述、标签与图片 |
| `css/styles.css` | 可选：改 `--bg`、`--text` 等颜色变量 |

## 作品图片

1. 将图片放入 `assets/` 文件夹（需自行创建）
2. 在 `projects.js` 里把 `image` 改为相对路径，例如 `"assets/my-project.jpg"`

当前部分示例使用 Unsplash 占位图，上线前请替换为自己的作品图。

**温州市滨江商务区住区设计**、**龙舟博物馆设计**、**建筑系馆设计（温州大学）**、**温州南塘老街书盒改造**、**山林片影（城市装置竞赛）**、**蝶镜湖 · 林光塔（巷创赛）**、**庆年坊街道界面改善（专题化）** 等作品素材，、**联通沃派 · 梦想第一站** 三张竞赛展板，以及 **魔音·无线降噪耳机**、**《星际边境》** 等 AIGC 视频已放入 `assets/`。图纸 PDF 已做适度压缩（降低内嵌图分辨率，便于网页加载）。若需再次压缩，在项目目录运行：

```powershell
powershell -ExecutionPolicy Bypass -File scripts\setup-python-tools.ps1
.\.tools\python\python.exe scripts\compress-pdf-pymupdf.py
```

封面图可替换为方案效果图（修改 `projects.js` 中对应 `image` 路径）。

## 部署

将整个文件夹上传到：

- [GitHub Pages](https://pages.github.com/)
- [Vercel](https://vercel.com/)（拖拽文件夹或连接仓库）
- [Netlify](https://www.netlify.com/)

无需构建步骤，纯静态 HTML/CSS/JS。

## 结构

```
├── index.html      # 页面结构
├── css/styles.css  # 样式
├── js/
│   ├── i18n.js     # 中英文文案与语言切换
│   ├── projects.js # 作品数据（中英双语）
│   └── app.js      # 筛选、弹窗与切换逻辑
└── assets/         # 你的作品图片（自行添加）
```
