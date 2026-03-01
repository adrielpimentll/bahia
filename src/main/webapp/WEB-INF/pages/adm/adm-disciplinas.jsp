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
    <title>Gestão de Disciplinas - Devant</title>
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
                    <li><a href="${pageContext.request.contextPath}/adm/matérias-adm.jsp" class="nav-link ativo">Disciplinas</a></li>
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

    <main class="flex-1 p-8 max-w-5xl mx-auto">
        <section>
            <h1 class="text-[2.25rem] font-bold text-[#333333] mb-8 text-center mt-[2%]">Controle de Disciplinas</h1>

            <div class="bg-white p-8 rounded-[15px] shadow-sm border border-gray-100 mb-10 border-t-4 border-[#7F95AB]">
                <div class="mb-6">
                    <h2 class="text-xl font-bold text-gray-800 uppercase tracking-tight">Cadastrar Nova Disciplina</h2>
                </div>
                
                <form action="DisciplinaServlet" method="POST" class="flex flex-col sm:flex-row gap-4">
                    <div class="flex-1">
                        <input type="text" name="nome_disciplina" placeholder="Ex: Física Quântica" 
                               class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:outline-none focus:border-[#7F95AB]" required>
                    </div>
                    <button type="submit" 
                            class="bg-[#7F95AB] border border-[#274855] rounded-[10px] px-8 py-3 text-white font-bold hover:opacity-90 transition shadow-sm">
                        Adicionar
                    </button>
                </form>
            </div>

            <div class="bg-white rounded-[15px] shadow-sm overflow-hidden border border-gray-200">
                <table class="w-full text-left border-collapse">
                    <thead class="bg-[#F8FAFC] border-b border-gray-200">
                        <tr>
                            <th class="p-5 text-sm font-bold text-gray-600 uppercase tracking-wider">ID</th>
                            <th class="p-5 text-sm font-bold text-gray-600 uppercase tracking-wider">Nome da Disciplina</th>
                            <th class="p-5 text-sm font-bold text-gray-600 uppercase tracking-wider text-center">Ações</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-gray-100">
                        <c:forEach var="disc" items="${disciplinas}">
                            <tr class="hover:bg-gray-50 transition-colors">
                                <td class="p-5 font-mono text-sm text-gray-400">#${disc.id_disciplina}</td>
                                <td class="p-5">
                                    <span class="font-bold text-[#003B46] text-lg">${disc.nome}</span>
                                </td>
                                <td class="p-5 text-center">
                                    <form action="ExcluirDisciplinaServlet" method="POST" onsubmit="return confirm('Excluir esta disciplina?')">
                                        <input type="hidden" name="id" value="${disc.id_disciplina}">
                                        <button type="submit" class="text-red-500 font-bold text-xs uppercase hover:underline">
                                            Excluir
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                        <c:if test="${empty disciplinas}">
                            <tr>
                                <td colspan="3" class="p-10 text-center text-gray-400 italic">Nenhuma disciplina cadastrada até o momento.</td>
                            </tr>
                        </c:if>
                    </tbody>
                </table>
            </div>
        </section>
    </main>

    <script src="${pageContext.request.contextPath}/js/indicador-aba.js"></script>
</body>
</html>