 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<div class="sidebar" data-color="purple" data-image="img/sidebar-5.jpg">

    <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

    	<div class="sidebar-wrapper">
            <div class="logo">
                <a href="" class="simple-text">
                    Eu Voluntário
                </a>
            </div>

            <ul class="nav">
                <li class="active">
                    <a href="<c:url value='/passaCodigoVoluntario/${voluntario.usuario.codigo},inicio'/>">
                        <i class="pe-7s-graph"></i>
                        <p>Principal</p>
                    </a>
                </li>
                <li>
                    <a href="user.html">
                        <i class="pe-7s-user"></i>
                        <p>Meu Perfil</p>
                    </a>
                </li>
                <li>
                    <a href="table.html">
                        <i class="pe-7s-note2"></i>
                        <p>Minhas Atuações</p>
                    </a>
                </li>


								<li>
										<a href="procurar_vaga.html">
												<i class="pe-7s-search"></i>
												<p>Procurar Vaga</p>
										</a>
								</li>

								
								
            </ul>
    	</div>
    </div>