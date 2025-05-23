<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정 및 삭제</title>
<link href="./resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="./resources/css/style.css" rel="stylesheet" />
</head>

<script type="text/javascript">
	function deleteConfirm(id) {
		// 삭제 확인 후 삭제를 진행하거나 취소
		if(confirm("해당 공지를 삭제합니다!!") == true)
			location.href="./deleteNotice.jsp?id=" + id; // 삭제 페이지로 리다이렉트
		else
			return; // 취소하면 아무 일도 일어나지 않음
	}
</script>

<%
	String edit = request.getParameter("edit");
%>

<body>
	<div class="container py-4">
		<%@ include file="menu.jsp" %>
		
		<div class="row align-items-md-stretch text-center">
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "SELECT * FROM notice ORDER BY n_num";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()){
			%>
		
			<div class="col-md-3">
                <div class="h-100 p-2">
                    <p><strong>공지 번호:</strong> <%= rs.getString("n_num") %></p>
                    <p><strong>공지 내용:</strong> <%= rs.getString("n_content") %></p>
                    <br><strong>수정 상태:</strong> <%= rs.getString("n_revision") %>
                    
                    <p><a href="./updateNotice.jsp?id=<%= rs.getString("n_id")%>" class="btn btn-success" role="button">수정 &raquo;</a></p>
                	<p><a href="#" onclick="deleteConfirm('<%= rs.getString("n_id") %>')" class="btn btn-danger" role="button">삭제 &raquo;</a></p>
                </div>
            </div>
		
			<%
				}
				if(rs != null)
					rs.close();
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
					conn.close();
			%>	
		</div>

		<%@ include file="footer.jsp" %>
	</div>
</body>
</html>