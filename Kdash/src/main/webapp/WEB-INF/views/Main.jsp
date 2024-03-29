<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DBTest</title>
</head>
<body>
	<h1>DB 리스트</h1>
	<% int pagenow=1; %>
	<button onclick="memberList()">리스트</button>
	<button id="test">xml 사용자 이메일/포인트/가입일 테스트</button>
	<div id="list">
		<%for(int i=0;i<5;i++) {%>
		<a herf="#"<%if(i==pagenow) {%>class="active" <%} %>onclick="go(<%=i %>)"><%=i %></a>
		<%} %>
	</div>

	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script type="text/javascript">
	function go(i){
		console.log(i);
	}
	document.getElementById("test").addEventListener('click',()=>{
		$.ajax({
        	url : "Test",
        	type : "get",
        	dataType : 'json',
        	success :(data)=>{
        		let tb=document.createElement("table");
        		console.log(data[0]);
         		if(data[0]!=null)
        		for(let i=0; i<10;i++){
        			console.log(data[i].mem_email);
        			console.log(data[i].mem_point);
        			console.log(data[i].joined_at);
        			console.log(data[i].mem_chatt_yn);
        			let tr=document.createElement("tr");
                    let email=tr.appendChild(document.createElement("td"));
                    let point=tr.appendChild(document.createElement("td"));
                    let date=tr.appendChild(document.createElement("td"));
                    let chatban=tr.appendChild(document.createElement("td"));
                    email.textContent=data[i].mem_email;
                    point.textContent=data[i].mem_point;
                    date.textContent=data[i].joined_at;
                    chatban.textContent=data[i].mem_chatt_yn;
                    tb.appendChild(tr);
        		}
        		document.getElementById("list").appendChild(tb);
        	},
        	error :()=>{
        		console.log("통신실패");
        	}
		})
	})
 
		function memberList(){
			$.ajax({
				url : "MemberList",
				type : "get",
				dataType : "json",
				success : function(data){
					console.log(data)
				},
				error : function(){
					alert("통신실패!");
				}
			})
		}
	</script>
</body>
</html>