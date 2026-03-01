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
    <title>Relatório de Notas - Devant</title>
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
                    <li><a href="${pageContext.request.contextPath}/adm/observacoes-adm.jsp" class="nav-link ativo">Relatórios</a></li>
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
        <section class="max-w-7xl mx-auto">
            <div class="text-center mb-10">
                <h1 class="text-[2.25rem] font-bold text-[#333333]">Relatório Consolidado de Notas</h1>
                <p class="text-gray-500 mt-2 text-lg">Visão administrativa de todos os lançamentos por semestre.</p>
            </div>

            <div class="bg-white rounded-[15px] shadow-sm overflow-hidden border border-gray-200">
                <table class="w-full text-left border-collapse">
                    <thead class="bg-gray-50 border-b border-gray-200">
                        <tr>
                            <th class="p-5 text-sm font-bold text-gray-600 uppercase">Aluno (ID)</th>
                            <th class="p-5 text-sm font-bold text-gray-600 uppercase">Avaliação</th>
                            <th class="p-5 text-sm font-bold text-gray-600 uppercase text-center">Semestre</th>
                            <th class="p-5 text-sm font-bold text-gray-600 uppercase text-center">Nota</th>
                            <th class="p-5 text-sm font-bold text-gray-600 uppercase">Status</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-gray-100">
                        <c:forEach var="nota" items="${listaTodasNotas}">
                            <tr>
                                <td class="p-5">
                                    <span class="font-medium text-gray-700">ID Aluno: ${nota.id_aluno}</span>
                                </td>
                                <td class="p-5">
                                    <span class="block font-bold text-[#003B46]">${nota.titulo}</span>
                                    <span class="text-xs text-gray-400">ID Disciplina: ${nota.id_disciplina}</span>
                                </td>
                                <td class="p-5 text-center">
                                    <span class="text-gray-600 text-sm font-bold">
                                        ${nota.semestre}º Semestre
                                    </span>
                                </td>
                                <td class="p-5 text-center">
                                    <span class="font-bold text-lg ${nota.valor >= 6 ? 'text-green-600' : 'text-red-600'}">
                                        ${nota.valor}
                                    </span>
                                </td>
                                <td class="p-5">
                                    <c:choose>
                                        <c:when test="${nota.valor >= 6}">
                                            <span class="text-green-600 font-bold text-sm uppercase">Aprovado</span>
                                        </c:when>
                                        <c:otherwise>
                                            <span class="text-red-600 font-bold text-sm uppercase">Recuperação</span>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                            </tr>
                        </c:forEach>
                        
                        <c:if test="${empty listaTodasNotas}">
                            <tr>
                                <td colspan="5" class="p-20 text-center text-gray-400 italic bg-white">
                                    Nenhum lançamento de nota encontrado no sistema.
                                </td>
                            </tr>
                        </c:if>
                    </tbody>
                </table>
            </div>

            <div class="mt-8 flex justify-end">
                <button onclick="window.print()" class="bg-[#7F95AB] border border-[#274855] rounded-[10px] px-8 py-3 text-white font-bold hover:opacity-90 transition shadow-md">
                    Imprimir Relatório
                </button>
            </div>
        </section>
    </main>

    <script src="${pageContext.request.contextPath}/js/indicador-aba.js"></script>
</body>
</html>