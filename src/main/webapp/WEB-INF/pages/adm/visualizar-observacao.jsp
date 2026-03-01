<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adm.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/indicador-adm.css">
    <link rel="icon" href="${pageContext.request.contextPath}/assets/Group-558.ico">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Observações Disciplinares - Devant</title>
</head>

<body class="bg-[#EDEFEF]">
    <header class="text-white bg-[#003B46]">
        <div class="max-w-7xl mx-auto px-0 py-3 flex items-center">
            <div class="flex-1" style="margin-left: -50px; margin-right: 40px;">
                <a href="${pageContext.request.contextPath}/adm/perfil-adm.jsp">
                    <img src="${pageContext.request.contextPath}/assets/logo.png" alt="Logo" class="h-9">
                </a>
            </div>

            <nav class="nav flex-1 flex justify-center mb-[-1%]">
                <ul class="flex gap-12 items-center">
                    <li><a href="${pageContext.request.contextPath}/adm/perfil-adm.jsp" class="nav-link">Perfil</a></li>
                    <li><a href="${pageContext.request.contextPath}/adm/turmas-adm.jsp" class="nav-link">Turmas</a></li>
                    <li><a href="${pageContext.request.contextPath}/adm/alunos-adm.jsp" class="nav-link">Alunos</a></li>
                    <li><a href="${pageContext.request.contextPath}/adm/professores-adm.jsp" class="nav-link">Professores</a></li>
                    <li><a href="${pageContext.request.contextPath}/adm/matérias-adm.jsp" class="nav-link">Disciplinas</a></li>
                    <li><a href="${pageContext.request.contextPath}/adm/observacoes-adm.jsp" class="nav-link ativo">Observações</a></li>
                </ul>
                <div class="indicador"></div>
            </nav>

            <div class="flex-1 flex justify-end">
                <a href="${pageContext.request.contextPath}/index.jsp"
                    class="border-2 border-white text-white font-semibold px-4 py-2 rounded-[20px] hover:bg-[#F01C1C] transition">
                    Sair
                </a>
            </div>
        </div>
    </header>

    <main class="flex-1 p-8">
        <section class="max-w-4xl mx-auto">
            <div class="mb-12 text-center">
                <h1 class="text-[2.25rem] font-bold text-[#333333]">Mural de Observações</h1>
                <p class="text-gray-500 mt-2">Histórico disciplinar e registros de comportamento enviados pelos professores.</p>
            </div>

            <div class="space-y-6">
                <c:forEach var="obs" items="${observacoes}">
                    <div class="bg-white p-6 rounded-[15px] border-l-[6px] border-[#7F95AB] shadow-sm">
                        
                        <div class="flex justify-between items-start mb-4">
                            <div>
                                <h3 class="font-bold text-gray-800 text-lg">Aluno ID: ${obs.id_aluno}</h3>
                                <span class="text-xs text-gray-400 font-mono uppercase tracking-widest">${obs.data}</span>
                            </div>
                            
                            <button class="text-red-400 hover:text-red-600 font-bold text-xs uppercase tracking-tighter">
                                Excluir
                            </button>
                        </div>

                        <div class="bg-gray-50 p-4 rounded-xl italic text-gray-600 text-sm border border-gray-100">
                            "${obs.mensagem}"
                        </div>

                        <div class="mt-4 text-right text-xs font-bold text-[#7F95AB] uppercase">
                            Postado por Professor ID: ${obs.id_professor}
                        </div>
                    </div>
                </c:forEach>

                <c:if test="${empty observacoes}">
                    <div class="bg-white p-20 rounded-[15px] text-center border border-dashed border-gray-300">
                        <p class="text-gray-400 italic">Nenhuma observação registrada até o momento.</p>
                    </div>
                </c:if>
            </div>
        </section>
    </main>

    <script src="${pageContext.request.contextPath}/js/indicador-aba.js"></script>
</body>
</html>