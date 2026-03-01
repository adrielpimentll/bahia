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
    <title>Controle de Acessos - Devant</title>
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
        <section class="max-w-6xl mx-auto">
            <h1 class="text-[2.25rem] font-bold text-[#333333] mb-8 text-center mt-[2%]">
                Controle de Acessos
            </h1>

            <div class="bg-white rounded-[15px] shadow-sm overflow-hidden border border-gray-200">
                <table class="w-full text-left border-collapse">
                    <thead class="bg-gray-50 border-b border-gray-200">
                        <tr>
                            <th class="p-5 text-sm font-bold text-gray-600 uppercase">Usuário</th>
                            <th class="p-5 text-sm font-bold text-gray-600 uppercase">Login / E-mail</th>
                            <th class="p-5 text-sm font-bold text-gray-600 uppercase">Nível</th>
                            <th class="p-5 text-sm font-bold text-gray-600 uppercase text-center">Ações</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-gray-100">
                        <c:forEach var="u" items="${usuarios}">
                            <tr>
                                <td class="p-5">
                                    <span class="font-bold text-gray-700">${u.nome}</span>
                                </td>
                                <td class="p-5 text-gray-500 text-sm font-mono">${u.login}</td>
                                <td class="p-5">
                                    <span class="text-xs font-bold uppercase tracking-tight ${u.id_tipo_user == 1 ? 'text-purple-600' : 'text-blue-600'}">
                                        ${u.id_tipo_user == 1 ? 'Administrador' : 'Usuário Comum'}
                                    </span>
                                </td>
                                <td class="p-5">
                                    <div class="flex justify-center gap-4 text-xs font-bold uppercase">
                                        <button class="text-[#7F95AB] hover:underline">Resetar</button>
                                        <button class="text-red-500 hover:underline">Excluir</button>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                
                <c:if test="${empty usuarios}">
                    <div class="p-20 text-center text-gray-400 italic">
                        Nenhum registro de acesso encontrado.
                    </div>
                </c:if>
            </div>
        </section>
    </main>

    <script src="${pageContext.request.contextPath}/js/indicador-aba.js"></script>
</body>
</html>