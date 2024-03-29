import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)

/* Layout */
import Layout from '@/layout'

/**
 * Note: 路由配置项
 *
 * hidden: true                     // 当设置 true 的时候该路由不会再侧边栏出现 如401，login等页面，或者如一些编辑页面/edit/1
 * alwaysShow: true                 // 当你一个路由下面的 children 声明的路由大于1个时，自动会变成嵌套的模式--如组件页面
 *                                  // 只有一个时，会将那个子路由当做根路由显示在侧边栏--如引导页面
 *                                  // 若你想不管路由下面的 children 声明的个数都显示你的根路由
 *                                  // 你可以设置 alwaysShow: true，这样它就会忽略之前定义的规则，一直显示根路由
 * redirect: noRedirect             // 当设置 noRedirect 的时候该路由在面包屑导航中不可被点击
 * name:'router-name'               // 设定路由的名字，一定要填写不然使用<keep-alive>时会出现各种问题
 * query: '{"id": 1, "name": "ry"}' // 访问路由的默认传递参数
 * roles: ['admin', 'common']       // 访问路由的角色权限
 * permissions: ['a:a:a', 'b:b:b']  // 访问路由的菜单权限
 * meta : {
    noCache: true                   // 如果设置为true，则不会被 <keep-alive> 缓存(默认 false)
    title: 'title'                  // 设置该路由在侧边栏和面包屑中展示的名字
    icon: 'svg-name'                // 设置该路由的图标，对应路径src/assets/icons/svg
    breadcrumb: false               // 如果设置为false，则不会在breadcrumb面包屑中显示
    activeMenu: '/system/user'      // 当路由设置了该属性，则会高亮相对应的侧边栏。
  }
 */

// 公共路由
export const constantRoutes = [
  {
    path: '/redirect',
    component: Layout,
    hidden: true,
    children: [
      {
        path: '/redirect/:path(.*)',
        component: () => import('@/views/redirect')
      }
    ]
  },
  {
    path: '/login',
    component: () => import('@/views/login'),
    hidden: true
  },
  {
    path: '/test',
    component: () => import('@/views/test'),
    hidden: true
  },
  //管理
  {
    path: '/message',
    component: Layout,
    hidden: true,
    children: [
      //驿站信息新增
      {
        path: '/addStationInformation',
        component: () => import('@/views/system/stationInformation/addStationInformation'),
        hidden: true
      },
      //驿站介绍新增
      {
        path: '/addStationIntroduction',
        component: () => import('@/views/system/stationIntroduction/addStationIntroduction'),
        hidden: true
      },
      //新闻新增
      {
        path: '/addNews',
        component: () => import('@/views/system/news/addNews'),
        hidden: true
      },
      //金融新增
      {
        path: '/addFinance',
        component: () => import('@/views/system/finance/addFinance'),
        hidden: true
      },
      //线上培训发布详情页
      {
        path: '/addTraining',
        component: () => import('@/views/system/onlineTraining/addTraining'),
        hidden: true
      },
      //线下培训发布详情页
      {
        path: '/addOfflineTraining',
        component: () => import('@/views/system/training/addTraining'),
        hidden: true
      },
    ]
  },
  //信息修改编辑
  {
    path: '/edit',
    component: Layout,
    hidden: true,
    children: [
      //驿站信息修改编辑
      {
        path: '/edit/editStationInformation',
        component: () => import('@/views/system/stationInformation/editStationInformation'),
        hidden: true
      },
      //驿站介绍修改编辑
      {
        path: '/edit/editStationIntroduction',
        component: () => import('@/views/system/stationIntroduction/editStationIntroduction'),
        hidden: true
      },
      //新闻修改编辑
      {
        path: '/edit/editNews',
        component: () => import('@/views/system/news/editNews'),
        hidden: true
      },//金融修改编辑
      {
        path: '/edit/editFinance',
        component: () => import('@/views/system/finance/editFinance'),
        hidden: true
      },//线上培训编辑
      {
        path: '/edit/editOnlineTraining',
        component: () => import('@/views/system/onlineTraining/editOnlineTraining'),
        hidden: true
      },//线下培训编辑
      {
        path: '/edit/editOfflineTraining',
        component: () => import('@/views/system/training/editOfflineTraining'),
        hidden: true
      },
    ]
  },
  //信息管理
  {
    path: '/information',
    component: Layout,
    hidden: true,
    children: [
      //信息发布
      {
        path: '/submit',
        component: Layout,
        hidden: true,
        children: [
           // 随时问
          {
            path: '/free',
            component: () => import('@/views/system/free/index'),
            hidden: true
          },
          //新闻发布
          {
            path: '/news',
            component: () => import('@/views/system/news/index'),
            hidden: true
          },
          //金融发布
          {
            path: '/finance',
            component: () => import('@/views/system/finance/index'),
            hidden: true
          },
          //线下培训发布
          {
            path: '/training/offline',
            component: () => import('@/views/system/training/index'),
            hidden: true
          },
          //线上培训发布
          {
            path: '/training/online',
            component: () => import('@/views/system/onlineTraining/index'),
            hidden: true
          },
        ]
      },
      // 信息审核
      {
        path: '/audit',
        component: Layout,
        hidden: true,
        children: [
          //随时问审核
          {
            path: '/free',
            component: () => import('@/views/system/free/audit'),
            hidden: true
          },
          //新闻审核
          {
            path: '/news',
            component: () => import('@/views/system/news/audit'),
            hidden: true
          },
          //金融审核
          {
            path: '/finance',
            component: () => import('@/views/system/finance/audit'),
            hidden: true
          },
          //线下培训审核
          {
            path: '/training/offline',
            component: () => import('@/views/system/training/audit'),
            hidden: true
          },
          //线上培训审核
          {
            path: '/training/online',
            component: () => import('@/views/system/onlineTraining/audit'),
            hidden: true
          },
        ]
      },
    ]},
  //驿站管理
{
  path: '/station',
  component: Layout,
  hidden: true,
  children: [
    //信息发布
    {
      path: '/submit',
      component: Layout,
      hidden: true,
      children: [
        //驿站信息
        {
          path: '/information',
          component: () => import('@/views/system/stationInformation/index'),
          hidden: true
        },
        //驿站介绍
        {
          path: '/introduction',
          component: () => import('@/views/system/stationIntroduction/index'),
          hidden: true
        },
      ]
    },
    // 信息审核
    {
      path: '/audit',
      component: Layout,
      hidden: true,
      children: [
        //驿站信息
        {
          path: 'Information',
          component: () => import('@/views/system/stationInformation/audit'),
          hidden: true
        },
       //驿站介绍
        {
          path: '/introduction',
          component: () => import('@/views/system/stationIntroduction/audit'),
          hidden: true
        },
      ]
    },
  ]},
  {
    path: '/register',
    component: () => import('@/views/register'),
    hidden: true
  },
  {
    path: '/404',
    component: () => import('@/views/error/404'),
    hidden: true
  },
  {
    path: '/401',
    component: () => import('@/views/error/401'),
    hidden: true
  },
  {
    path: '',
    component: Layout,
    redirect: 'index',
    children: [
      {
        path: 'index',
        component: () => import('@/views/index'),
        name: 'Index',
        meta: { title: '首页', icon: 'dashboard', affix: true }
      }
    ]
  },
  {
    path: '/user',
    component: Layout,
    hidden: true,
    redirect: 'noredirect',
    children: [
      {
        path: 'profile',
        component: () => import('@/views/system/user/profile/index'),
        name: 'Profile',
        meta: { title: '个人中心', icon: 'user' }
      }
    ]
  }
]

// 动态路由，基于用户权限动态去加载
export const dynamicRoutes = [
  {
    path: '/system/user-auth',
    component: Layout,
    hidden: true,
    permissions: ['system:user:edit'],
    children: [
      {
        path: 'role/:userId(\\d+)',
        component: () => import('@/views/system/user/authRole'),
        name: 'AuthRole',
        meta: { title: '分配角色', activeMenu: '/system/user' }
      }
    ]
  },
  {
    path: '/system/role-auth',
    component: Layout,
    hidden: true,
    permissions: ['system:role:edit'],
    children: [
      {
        path: 'user/:roleId(\\d+)',
        component: () => import('@/views/system/role/authUser'),
        name: 'AuthUser',
        meta: { title: '分配用户', activeMenu: '/system/role' }
      }
    ]
  },
  {
    path: '/system/dict-data',
    component: Layout,
    hidden: true,
    permissions: ['system:dict:list'],
    children: [
      {
        path: 'index/:dictId(\\d+)',
        component: () => import('@/views/system/dict/data'),
        name: 'Data',
        meta: { title: '字典数据', activeMenu: '/system/dict' }
      }
    ]
  },
  {
    path: '/monitor/job-log',
    component: Layout,
    hidden: true,
    permissions: ['monitor:job:list'],
    children: [
      {
        path: 'index/:jobId(\\d+)',
        component: () => import('@/views/monitor/job/log'),
        name: 'JobLog',
        meta: { title: '调度日志', activeMenu: '/monitor/job' }
      }
    ]
  },
  {
    path: '/tool/gen-edit',
    component: Layout,
    hidden: true,
    permissions: ['tool:gen:edit'],
    children: [
      {
        path: 'index/:tableId(\\d+)',
        component: () => import('@/views/tool/gen/editTable'),
        name: 'GenEdit',
        meta: { title: '修改生成配置', activeMenu: '/tool/gen' }
      }
    ]
  }
]

// 防止连续点击多次路由报错
let routerPush = Router.prototype.push;
let routerReplace = Router.prototype.replace;
// push
Router.prototype.push = function push(location) {
  return routerPush.call(this, location).catch(err => err)
}
// replace
Router.prototype.replace = function push(location) {
  return routerReplace.call(this, location).catch(err => err)
}

export default new Router({
  mode: 'history', // 去掉url中的#
  scrollBehavior: () => ({ y: 0 }),
  routes: constantRoutes
})
