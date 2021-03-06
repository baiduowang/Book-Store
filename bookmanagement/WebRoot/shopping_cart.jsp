<%@ page language="java" import="java.util.*,java.lang.*,daos.*,entity.*,java.text.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>购物车</title>
	<link rel="stylesheet" href="common.css">
	<script type="text/javascript"></script>
	<script type="text/javascript">
	function sum()
	{ alert("结算成功!"); 
	window.location.href="userBooks";
	}
	
	</script>
</head>
<body>
	<H1><center>我的购物车</H1>
	
<div class="catbox">
    <table id="cartTable">
        <thead>
        <tr>
            <th><label>
                <input class="check-all check" type="checkbox">&nbsp;&nbsp;全选</label></th>
            <th>商品</th>
            <th>单价</th>
            <th>数量</th>
            <th>小计</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        
         <%
          List<Goods> list=(List<Goods>)request.getAttribute("list");          
          for(int i=0;i<list.size();i++){
             Goods goods=list.get(i);
             String name=goods.getGoods_name();
             String price=goods.getGoods_price();
             String id=goods.getGoods_id();
             String quantity=goods.getQuantity();
             String img=goods.getImg();
             img="img/"+img;
             int sum=(Integer.parseInt(quantity))*(Integer.parseInt(price));
         %>
         
        <tr class="on">
            <td class="checkbox"><input class="check-one check" type="checkbox"></td>
            <td class="goods"><img src=<%=img%> alt="" >&nbsp;<span><%=name%></span></td>
            <td class="price"><%=price%></td>
            <td class="count"><span class="reduce">-</span>
                <input class="count-input" type="text" value="<%=quantity%>">
                <span class="add">+</span></td>
            <td class="subtotal"><%=sum%></td>
             
        
            <td class="operation">
                      <form action="deletegoods" method="post">
                   <input type="hidden" name="bookname"  value="<%=name%>"/>
                   <span class="delete">                     
                   <input type="submit" value="删除"/>
                   </span>
                      </form>
            </td>
           
            
        </tr>
        <%
         } 
        %>
       
        </tbody>
    </table>
    <div class="foot" id="foot">
        <label class="fl select-all"><input type="checkbox" class="check-all check">&nbsp;&nbsp;全选</label>
        <a class="fl delete" id="deleteAll" href="javascript:;">删除</a>
        <div class="fr closing" onclick="getTotal();">
        <a href="#" style="text-decoration:none;"  onclick="sum()"> 结算</a> 
        &nbsp;&nbsp;<a href="userBooks" style="text-decoration:none;"> 返回</a></div>
        <input type="hidden" id="cartTotalPrice">
        <div class="fr total">合计：￥<span id="priceTotal">87</span></div>
        <div class="fr selected" id="selected">已选商品<span id="selectedTotal">3</span>件</div>
		<div class="selected-view">
            <div id="selectedViewList" class="clearfix">
			</div>
		</div>
    </div>
</div>

	<script>
	
    window.onload = function () {
        if (!document.getElementsByClassName) {
            document.getElementsByClassName = function (cls) {
                var ret = [];
                var els = document.getElementsByTagName('*');
                for (var i = 0, len = els.length; i < len; i++) {

                    if (els[i].className.indexOf(cls + ' ') >=0 || els[i].className.indexOf(' ' + cls + ' ') >=0 || els[i].className.indexOf(' ' + cls) >=0) {
                        ret.push(els[i]);
                    }
                }
                return ret;
            }
        }

        var table = document.getElementById('cartTable'); // 购物车表格
        var selectInputs = document.getElementsByClassName('check'); // 所有勾选框
        var checkAllInputs = document.getElementsByClassName('check-all') // 全选框
        var tr = table.children[1].rows; //行
        var selectedTotal = document.getElementById('selectedTotal'); //已选商品数目容器
        var priceTotal = document.getElementById('priceTotal'); //总计
        var deleteAll = document.getElementById('deleteAll'); // 删除全部按钮
        var selectedViewList = document.getElementById('selectedViewList'); //浮层已选商品列表容器
        var selected = document.getElementById('selected'); //已选商品
        var foot = document.getElementById('foot');

        // 更新总数和总价格，已选浮层
        function getTotal() {
            var seleted = 0;
            var price = 0;
            var HTMLstr = '';
            for (var i = 0, len = tr.length; i < len; i++) {
                if (tr[i].getElementsByTagName('input')[0].checked) {
                    tr[i].className = 'on';
                    seleted += parseInt(tr[i].getElementsByTagName('input')[1].value);
                    price += parseFloat(tr[i].cells[4].innerHTML);
                    HTMLstr += '<div><img src="' + tr[i].getElementsByTagName('img')[0].src + '"><span class="del" index="' + i + '">取消选择</span></div>'
                }
                else {
                    tr[i].className = '';
                }
            }
            selectedTotal.innerHTML = seleted;
            priceTotal.innerHTML = price.toFixed(2);
            selectedViewList.innerHTML = HTMLstr;

            if (seleted == 0) {
                foot.className = 'foot';
            }
        }
        // 计算单行价格
        function getSubtotal(tr) {
            var cells = tr.cells;
            var price = cells[2]; //单价
            var subtotal = cells[4]; //小计td
            var countInput = tr.getElementsByTagName('input')[1]; //数目input
            var span = tr.getElementsByTagName('span')[1]; //-号
            //写入HTML
            subtotal.innerHTML = (parseInt(countInput.value) * parseFloat(price.innerHTML)).toFixed(2);
            //如果数目只有一个，把-号去掉
            if (countInput.value == 1) {
                span.innerHTML = '';
            }else{
                span.innerHTML = '-';
            }
        }

        // 点击选择框
        for(var i = 0; i < selectInputs.length; i++ ){
            selectInputs[i].onclick = function () {
                if (this.className.indexOf('check-all') >= 0) { //如果是全选，则吧所有的选择框选中
                    for (var j = 0; j < selectInputs.length; j++) {
                        selectInputs[j].checked = this.checked;
                    }
                }
                if (!this.checked) { //只要有一个未勾选，则取消全选框的选中状态
                    for (var i = 0; i < checkAllInputs.length; i++) {
                        checkAllInputs[i].checked = false;
                    }
                }
                getTotal();//选完更新总计
            }
        }

        //已选商品弹层中的取消选择按钮
        selectedViewList.onclick = function (e) {
            var e = e || window.event;
            var el = e.srcElement;
            if (el.className=='del') {
                var input =  tr[el.getAttribute('index')].getElementsByTagName('input')[0]
                input.checked = false;
                input.onclick();
            }
        }

        //为每行元素添加事件
        for (var i = 0; i < tr.length; i++) {
            //将点击事件绑定到tr元素
            tr[i].onclick = function (e) {
                var e = e || window.event;
                var el = e.target || e.srcElement; //通过事件对象的target属性获取触发元素
                var cls = el.className; //触发元素的class
                var countInout = this.getElementsByTagName('input')[1]; // 数目input
                var value = parseInt(countInout.value); //数目
                //通过判断触发元素的class确定用户点击了哪个元素
                switch (cls) {
                    case 'add': //点击了加号
                        countInout.value = value + 1;
                        getSubtotal(this);
                        break;
                    case 'reduce': //点击了减号
                        if (value > 1) {
                            countInout.value = value - 1;
                            getSubtotal(this);
                        }
                        break;
                    case 'delete': //点击了删除
                        var conf = confirm('确定删除此商品吗？');
                        if (conf) {
                          
                            this.parentNode.removeChild(this);
                        }
                        break;
                }
                getTotal();
            }
            // 给数目输入框绑定keyup事件
            tr[i].getElementsByTagName('input')[1].onkeyup = function () {
                var val = parseInt(this.value);
                if (isNaN(val) || val <= 0) {
                    val = 1;
                }
                if (this.value != val) {
                    this.value = val;
                }
                getSubtotal(this.parentNode.parentNode); //更新小计
                getTotal(); //更新总数
            }
        }
        // 点击全部删除
        deleteAll.onclick = function () {
            if (selectedTotal.innerHTML != 0) {
                var con = confirm('确定删除所选商品吗？'); //弹出确认框
                if (con) {
                    for (var i = 0; i < tr.length; i++) {
                        // 如果被选中，就删除相应的行
                        if (tr[i].getElementsByTagName('input')[0].checked) {
                            tr[i].parentNode.removeChild(tr[i]); // 删除相应节点
                            i--; //回退下标位置
                        }
                    }
                }
            } else {
                alert('请选择商品！');
            }
            getTotal(); //更新总数
        }
        console.log("\u767e\u5ea6\u641c\u7d22\u3010\u7d20\u6750\u5bb6\u56ed\u3011\u4e0b\u8f7d\u66f4\u591aJS\u7279\u6548\u4ee3\u7801");
        // 默认全选
        checkAllInputs[0].checked = true;
        checkAllInputs[0].onclick();
    }
</script>
</body>
</html>