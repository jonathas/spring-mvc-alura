<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>

<header id="layout-header">
	<div class="clearfix container">
		<a href="${s:mvcUrl('HC#index').build()}" id="logo"> </a>
		<div id="header-content">
			<nav id="main-nav">

				<ul class="clearfix">
					<security:authorize access="isAuthenticated()">
						<!-- or hasRole('ROLE_ADMIN') -->
						<li><a href="${s:mvcUrl('PC#listar').build()}" rel="nofollow">Lista
								de Produtos</a></li>
						<li><a href="${s:mvcUrl('PC#form').build()}" rel="nofollow">Cadastro
								de Produtos</a></li>
					</security:authorize>
					<li><a href="${s:mvcUrl('CCC#itens').build() }" rel="nofollow">Carrinho
							(${carrinhoCompras.quantidade })</a></li>
					<li><a href="#" rel="nofollow">Sobre Nós</a></li>
				</ul>
			</nav>
		</div>
	</div>
</header>
<nav class="categories-nav">
	<ul class="container">
		<li class="category"><a href="${s:mvcUrl('HC#index').build()}">Home</a></li>
		<li class="category"><a href="#"> Agile </a></li>
		<li class="category"><a href="#"> Front End </a></li>
		<li class="category"><a href="#"> Games </a></li>
		<li class="category"><a href="#"> Java </a></li>
		<li class="category"><a href="#"> Mobile </a></li>
		<li class="category"><a href="#"> Web </a></li>
		<li class="category"><a href="#"> Outros </a></li>
	</ul>
</nav>