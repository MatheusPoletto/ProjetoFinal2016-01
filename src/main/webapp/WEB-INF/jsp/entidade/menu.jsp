 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<div class="sidebar" data-color="gray" data-image="img/sidebar-3.jpg">
    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="" class="simple-text">
                    Eu Voluntário
                </a>
            </div>
            <ul class="nav">
 				<li>                
                    <a href="<c:url value='/homeEntidade'/>">
                        <i class="pe-7s-graph"></i>
                        <p>Principal</p>
                    </a>
                </li>
                <li>
                    <a href="<c:url value='/perfilEntidade'/>">
                        <i class="pe-7s-user"></i>
                        <p>Meu Perfil</p>
                    </a>
                </li>
                <li>
                    <a href="<c:url value='/atuacaoEntidade'/>">
                        <i class="pe-7s-note2"></i>
                        <p>Minhas vagas</p>
                    </a>
                </li>
				<li>
					<a href="<c:url value='/cadastrarVaga'/>">
					<i class="pe-7s-portfolio"></i>
					<p>Cadastrar Nova Vaga</p>
					</a>
				</li>
            </ul>
    	</div>
    </div>