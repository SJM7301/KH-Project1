<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>

<%
    String id = request.getParameter("id");

    if (id == null || id.isEmpty()) {
        out.println("삭제할 공지사항 ID가 없습니다.");
        return;
    }

    String sql = "SELECT * FROM notice WHERE n_id=?";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, id);  // 전달된 noticeId로 조건 추가
    ResultSet rs = pstmt.executeQuery();

    if (rs.next()) {
        sql = "DELETE FROM notice WHERE n_id=?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, id);
        pstmt.executeUpdate();
        out.println("공지사항이 삭제되었습니다.");
    } else {
        out.println("일치하는 공지사항이 없습니다.");
    }

    if (rs != null) rs.close();
    if (pstmt != null) pstmt.close();
    if (conn != null) conn.close();

    response.sendRedirect("editNotice.jsp");
%>