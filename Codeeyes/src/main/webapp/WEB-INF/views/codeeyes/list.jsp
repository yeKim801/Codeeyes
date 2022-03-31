<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<title>수용신청 목록</title>
</head>
<article>
	<div class="container">
		<div class="table-responsive">
			<h2>Accept List</h2>
			<div class="registerBtn">
			<button type="button" class="btn btn-sm btn-primary" id="btnWriteForm">등록</button>
			</div>
			<table class="table table-striped table-sm">
				<colgroup>
					<col style="width: 5%;" />
					<col style="width: auto;" />
					<col style="width: 15%;" />
					<col style="width: 10%;" />
					<col style="width: 10%;" />
				</colgroup>
				<thead>
					<tr>
						<th>번호</th>
						<th>서비스도메인</th>
						<th>표준서비스코드</th>
						<th>표준서비스명</th>
						<th>상태</th>
						<th>등록일</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${empty acceptList}">
							<tr>
								<td colspan="5" align="center">데이터가 없습니다.</td>
							</tr>
						</c:when>
						<c:when test="${!empty acceptList}">
							<c:forEach var="list" items="${acceptList}">
								<tr>
									<td><c:out value="${list.cno}" /></td>
									<td><c:out value="${list.ito_serv_domain}" /></td>
									<td><c:out value="${list.ito_std_cd}" /></td>
									<td><c:out value="${list.ito_std_nm}" /></td>
									<td><c:out value="${list.ito_process}" /></td>
									<td><c:out value="${list.ito_regdate}" /></td>
								</tr>
							</c:forEach>
						</c:when>
					</c:choose>
				</tbody>
			</table>
		</div>
	</div>
</article>
</body>
<script>
	$(document).on('click', '#btnWriteForm', function(e){
		e.preventDefault();
		location.href = "${pageContext.request.contextPath}/acceptForm";
	});
</script>
</html>