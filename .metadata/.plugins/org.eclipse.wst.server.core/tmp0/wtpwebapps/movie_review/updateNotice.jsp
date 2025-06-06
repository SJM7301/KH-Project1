<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정</title>
<link href="./resources/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
	<div class="container py-4">
		<%@ include file="menu.jsp" %>
		
		<%
			String id = request.getParameter("id");
		    System.out.println("Received movieId: " + id);
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "SELECT * FROM notice WHERE n_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()){
		 %>
		
		<div class="p-5 mb-4 bg-body-tertiary rounded-3">
			<div class="row align-items-md-stretch">
				<form name="updateNotice" action="./processUpdateNotice.jsp?n_id=<%= id %>" class="form-horizontal" method="post">
					<div class="mb-3 row">
						<label class="col-sm-2"><b>공지사항 번호</b></label>
						<div class="clo-sm-3">
							<input type="text" id="id" name="n_num" class="form-control" placeholder="숫자를 적어주세요." value='<%=rs.getString("n_num") %>'>
						</div>
					</div>
					
					<div class="mb-3 row">
						<label class="col-sm-2"><b>공지 내용</b></label>
						<div class="clo-sm-5">
							<textarea name="n_content" rows="5" cols="120"><%=rs.getString("n_content") %></textarea>
						</div>
					</div>
					
					<div class="mb-3 row">
						<label class="col-sm-2"><b>수정</b></label>
						<div class="clo-sm-3">
							<input type="radio" name="n_revision" value="수정 전"> 수정 전
							<input type="radio" name="n_revision" value="수정 중"> 수정 중
							<input type="radio" name="n_revision" value="수정 완료" checked="checked"> 수정 완료
							<input type="radio" name="n_revision" value="필독"> 필독
						</div>
					</div>
					
					<div class="mb-3 row">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" class="btn btn-primary" value="등록">
						</div>
					</div>
				</form>
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