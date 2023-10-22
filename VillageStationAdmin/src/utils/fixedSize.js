// 控制显示字的长度
export function fixedSize(content) {
    if(content!=null){
        if(content.length<45) return content;
        else return content.substring(0, 45) + "..."
    }
    return content;
}