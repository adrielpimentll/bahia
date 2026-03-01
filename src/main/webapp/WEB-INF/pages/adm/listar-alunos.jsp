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
    <title>Gestão de Alunos - Devant</title>
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
                    <li><a href="${pageContext.request.contextPath}/adm/alunos-adm.jsp" class="nav-link ativo">Alunos</a></li>
                    <li><a href="${pageContext.request.contextPath}/adm/professores-adm.jsp" class="nav-link">Professores</a></li>
                    <li><a href="${pageContext.request.contextPath}/adm/matérias-adm.jsp" class="nav-link">Disciplinas</a></li>
                    <li><a href="${pageContext.request.contextPath}/adm/observacoes-adm.jsp" class="nav-link">Observações</a></li>
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
        <section class="max-w-6xl mx-auto">
            
            <div class="flex justify-between items-center mb-10">
                <h1 class="text-[2.25rem] font-bold text-[#333333]">Alunos Matriculados</h1>
                <a href="adicionar-aluno.jsp" 
                   class="bg-[#7F95AB] border border-[#274855] rounded-[10px] px-6 py-2 text-white font-bold hover:opacity-90 transition shadow-md">
                    + Novo Aluno
                </a>
            </div>

            <div class="bg-white rounded-[15px] shadow-sm overflow-hidden border border-gray-100">
                <table class="w-full text-left border-collapse">
                    <thead class="bg-gray-50 border-b border-gray-200">
                        <tr>
                            <th class="p-5 text-sm font-bold text-gray-600 uppercase">ID</th>
                            <th class="p-5 text-sm font-bold text-gray-600 uppercase">Nome Completo</th>
                            <th class="p-5 text-sm font-bold text-gray-600 uppercase">Matrícula</th>
                            <th class="p-5 text-sm font-bold text-gray-600 uppercase text-center">Ações</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-gray-100">
                        <c:forEach var="aluno" items="${alunos}">
                            <tr>
                                <td class="p-5 text-sm text-gray-400">#${aluno.id_aluno}</td>
                                <td class="p-5 text-lg font-semibold text-[#003B46]">${aluno.nome}</td>
                                <td class="p-5">
                                    <span class="text-gray-600 font-bold">${aluno.matricula}</span>
                                </td>
                                <td class="p-5 text-center">
                                    <div class="flex justify-center gap-4 text-sm font-bold">
                                        <a href="editar-aluno?id=${aluno.id_aluno}" class="text-blue-600 hover:underline uppercase">Editar</a>
                                        <button onclick="confirmarExclusao(${aluno.id_aluno})" class="text-red-500 hover:underline uppercase">Excluir</button>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        
                        <c:if test="${empty alunos}">
                            <tr>
                                <td colspan="4" class="p-20 text-center text-gray-400 italic bg-white">
                                    Nenhum aluno encontrado no sistema.
                                </td>
                            </tr>
                        </c:if>
                    </tbody>
                </table>
            </div>
        </section>
    </main>

    <script>
        function confirmarExclusao(id) {
            if(confirm("Deseja realmente excluir este aluno? Esta ação não pode ser desfeita.")) {
                window.location.href = "excluir-aluno?id=" + id;
            }
        }
    </script>
    <script src="${pageContext.request.contextPath}/js/indicador-aba.js"></script>
</body>
</html>