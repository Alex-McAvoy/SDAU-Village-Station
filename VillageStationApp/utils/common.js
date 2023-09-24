/**
* 显示消息提示框
* @param content 提示的标题
*/
export function toast(content) {
  uni.showToast({
    icon: 'none',
    title: content
  })
}

/**
* 显示模态弹窗
* @param content 提示的标题
*/
export function showConfirm(content) {
  return new Promise((resolve, reject) => {
    uni.showModal({
      title: '提示',
      content: content,
      cancelText: '取消',
      confirmText: '确定',
      success: function(res) {
        resolve(res)
      }
    })
  })
}

/**
* 参数处理
* @param params 参数
*/
export function tansParams(params) {
  let result = ''
  for (const propName of Object.keys(params)) {
    const value = params[propName]
    var part = encodeURIComponent(propName) + "="
    if (value !== null && value !== "" && typeof (value) !== "undefined") {
      if (typeof value === 'object') {
        for (const key of Object.keys(value)) {
          if (value[key] !== null && value[key] !== "" && typeof (value[key]) !== 'undefined') {
            let params = propName + '[' + key + ']'
            var subPart = encodeURIComponent(params) + "="
            result += subPart + encodeURIComponent(value[key]) + "&"
          }
        }
      } else {
        result += part + encodeURIComponent(value) + "&"
      }
    }
  }
  return result
}
export function goBack(index, url) {
	if (index == 1) { 
		// 关闭当前页，返回上一页面或多级页面。
		uni.navigateBack({
			delta: url,
			animationType: 'pop-out',
			animationDuration: 300
		});
	} else if (index == 2) { 
		// 保留当前页，跳转到非tabbar页面，使用uni.navigateBack可以返回到原页面。
		uni.navigateTo({
			url: url,
			animationType: 'pop-in',
			animationDuration: 300
		})
	} else if (index == 3) {
		// 跳转到 tabBar 页面，并关闭其他所有非 tabBar 页面。
		uni.switchTab({
			url: url,
			animationType: 'pop-in',
			animationDuration: 300
		})
	} else if (index == 4) {
		// 关闭所有页面，打开到应用内的某个页面。
		uni.reLaunch({
			url: url,
			animationType: 'pop-in',
			animationDuration: 300
		})
	} else if (index == 5) {
		// 关闭当前页面，跳转到应用内的某个页面。
		uni.redirectTo({
			url: url,
		});
	}
}
