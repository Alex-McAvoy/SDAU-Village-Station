# SDAU-Village-Station

SDAU 乡村振兴驿站 Alpha 1.1 版，主要在 Alpha 1.0 的的基础上进行了如下改进：
1. 更新了用户角色：信息发布管理员、信息审核管理员、金融发布管理员、金融审核管理员、驿站站长、科技专员、科技服务专员、金融专员、信息专员、普通用户
2. 新增了驿站标签，以用于总信息发布个性化
3. 新增了驿站信息与驿站介绍，以用于各驿站内部的信息差异化
4. 对管理端的新增和审核功能按模块拆分，进行路由分离
5. 修改了随时问逻辑，仅普通用户可以在所属驿站内提问，驿站站长、科技专员、科技服务专员、金融专员、信息专员可以回答，同时去除审核功能
6. 修复了随时问不显示用户头像的bug
7. 修复了富文本显示的bug
8. 优化UI

基于 ruoyi，文件服务器采用 MinIO

- VillageStationApp：App 端
- VillageStationAdmin：App 管理端
- VillageStationBackend：App 后端
- VillageStationDownload：App 下载页
- deployment：服务器部署 shell 文件
- sql：数据库 sql 文件
