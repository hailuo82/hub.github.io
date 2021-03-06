<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>菜单</title>
<link href="${pageContext.request.contextPath}/css/left.css" rel="stylesheet" type="text/css"/>
<link rel="StyleSheet" href="${pageContext.request.contextPath}/css/dtree.css" type="text/css" />
</head>
<body>
<table width="100" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="12"></td>
  </tr>
</table>
<table width="100%" border="0">
  <tr>
    <td>
<div class="dtree">

	<a href="javascript: d.openAll();">展开所有</a> | <a href="javascript: d.closeAll();">关闭所有</a>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/dtree.js"></script>
	<script type="text/javascript">
		d = new dTree('d');
		d.add('01',-1,'seven系统管理');
		
		d.add('0101','01','用户管理','','','mainFrame');
		d.add('010101','0101','用户管理','${pageContext.request.contextPath}/adminuser_findAllUser.action?page=1','','mainFrame');
		d.add('010102','0101','作者管理','${pageContext.request.contextPath}/adminuser_findAllAuthor.action?page=1','','mainFrame');
		
		d.add('0102','01','一级分类管理','','','mainFrame');
		d.add('010201','0102','一级分类管理','${pageContext.request.contextPath}/adminCategory_findAllCategory.action','','mainFrame');
		
		d.add('0103','01','二级分类管理','','','mainFrame');
		d.add('010301','0103','二级分类管理','${pageContext.request.contextPath}/admincategorysecond_list.action?page=1','','mainFrame');
		
		d.add('0104','01','书籍管理','','','mainFrame');
		d.add('010401','0104','书籍管理','${pageContext.request.contextPath}/adminProduct_findAllProduct.action?page=1','','mainFrame');
		
		d.add('0105','01','订单管理','','','mainFrame');
		d.add('010501','0105','所有订单','${pageContext.request.contextPath}/adminOrder_findAllOrder.action?page=1','','mainFrame');
		d.add('010502','0105','未付款订单','${pageContext.request.contextPath}/adminOrder_findByState.action?page=1&state=1','','mainFrame');
		d.add('010503','0105','已付款订单','${pageContext.request.contextPath}/adminOrder_findByState.action?page=1&state=2','','mainFrame');
		document.write(d);
	</script>
</div>	</td>
  </tr>
</table>
</body>
</html>
