@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo 作品集路径: %~dp0
echo.
echo [本地预览] 推荐在 Cursor 中右键 index.html -^> Open with Live Server
echo [简易打开] 即将用浏览器打开 index.html（PDF/视频可能无法播放）
echo [公开发布] 请阅读 DEPLOY.md，使用 Netlify Drop 获取公网链接
echo.
start "" "%~dp0index.html"
pause
