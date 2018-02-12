<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/" var="contextPath" />
<meta charset="UTF-8">
<title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais -
	Casa do Código</title>
<link rel="stylesheet"
	href="${contextPath}resources/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${contextPath}resources/css/bootstrap-theme.min.css" />
<style type="text/css">
body {
	padding-bottom: 60px;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Login da Casa do Código</h1>
		<form:form servletRelativeAction="/login" method="post">
			<div class="form-group">
				<label>E-mail</label>
				<input name="username" type="text" class="form-control" />
			</div>
			<div class="form-group">
				<label>Senha</label>
				<input name="password" type="password" class="form-control" />
			</div>
			<button type="submit" class="btn btn-primary">Logar</button>

			<input type="hidden" name="${_csrf.parameterName }"
				value="${_csrf.token}">
		</form:form>
	</div>
</body>
</html>