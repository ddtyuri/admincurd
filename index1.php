<script language="javascript"> 
str="245384525@qq.com"; //这是一字符串 
var strs= new Array(); //定义一数组 
strs=str.split("@"); //字符分割 
//document.write(strs[1]+"<br/>");
if (strs[1]="qq.com")
  {
  document.write("qq email<br/>");
  }
else if (strs[1]="163.com")
  {
  document.write("163 email<br/>");
  }
else
  {
  document.write("unknow email<br/>");
  }
  
  
  
  
  
  /*--------------------实现2(返回 $_GET 对象, 仿PHP模式)----------------------*/
var $_GET = (function(){
    var url = window.document.location.href.toString();
    var u = url.split("?");
    if(typeof(u[1]) == "string"){
        u = u[1].split("&");
        var get = {};
        for(var i in u){
            var j = u[i].split("=");
            get[j[0]] = j[1];
        }
        return get;
    } else {
        return {};
    }
})();
 
/*第2种方式, 使用时, 可以直接 $_GET['get参数'], 就直接获得GET参数的值*/

</script> 