<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.sql.*, dto.Movie, dao.MovieRepository"%>
<%@ include file="dbconn.jsp" %>

<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("n_id");
    String number = request.getParameter("n_num");
    String content = request.getParameter("n_content");
    String revision = request.getParameter("n_revision");
    
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    String sql = "SELECT * FROM notice WHERE n_id=?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, id);
    rs = pstmt.executeQuery();

    if (rs.next()) {
        if (number != null) {
            sql = "UPDATE notice SET n_num=?, n_content=?, n_revision=? WHERE n_id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, number);
            pstmt.setString(2, content);
            pstmt.setString(3, revision);
            pstmt.setString(4, id);
            int n = pstmt.executeUpdate();
        } else {
            sql = "UPDATE notice SET n_content=?, n_revision=? WHERE n_id=?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, content);
            pstmt.setString(2, revision);
            pstmt.setString(3, id);
            int n = pstmt.executeUpdate();
        }
    }

    if (pstmt != null) pstmt.close();
    if (conn != null) conn.close();

    response.sendRedirect("editNotice.jsp");
%>
