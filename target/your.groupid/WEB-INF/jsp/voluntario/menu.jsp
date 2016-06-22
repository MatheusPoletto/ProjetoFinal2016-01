 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="sidebar" data-color="purple" data-image="img/sidebar-5.jpg">

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="" class="simple-text">
                    Eu Voluntário
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="<c:url value='/homeVoluntario'/>">
                        <i class="pe-7s-graph"></i>
                        <p>Principal</p>
                    </a>
                </li>
                <li>
                    <a href="<c:url value='/perfilVoluntario'/>">
                        <i class="pe-7s-user"></i>
                        <p>Meu Perfil</p>
                    </a>
                </li>
                <li>
                    <a href="<c:url value='/interesseVoluntario'/>">
                        <i class="pe-7s-note2"></i>
                        <p>Minhas Atuações</p>
                    </a>
                </li>


								<li>
										<a href="/procurarVaga">
												<i class="pe-7s-search"></i>
												<p>Procurar Vaga</p>
										</a>
								</li>

								
								
            </ul>
    	</div>
    </div>