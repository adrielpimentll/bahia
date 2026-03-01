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
    <title>Editar Aluno - Devant</title>
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

    <main class="flex-1 p-4">
        <section>
            <div class="max-w-2xl mx-auto mt-4">
                <a href="listar-alunos" class="text-gray-600 font-bold hover:underline">
                    &larr; Voltar para a lista
                </a>
            </div>

            <h1 class="text-[2.25rem] font-bold text-[#333333] mb-8 text-center mt-[2%]">
                Editar Registro do Aluno
            </h1>

            <div class="bg-white rounded-[15px] shadow-sm p-10 max-w-2xl mx-auto mt-[3%] border border-gray-100">
                <form action="atualizar-aluno" method="POST" class="space-y-6">
                    <input type="hidden" name="id_aluno" value="${aluno.id_aluno}">
                    
                    <div class="mb-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2">Nome Completo:</label>
                        <input type="text" name="nome" value="${aluno.nome}" 
                               class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:outline-none focus:border-[#7F95AB]" required>
                    </div>

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div>
                            <label class="block text-gray-700 text-sm font-bold mb-2">Matrícula (Imutável):</label>
                            <input type="text" name="matricula" value="${aluno.matricula}" readonly 
                                   class="w-full px-4 py-3 border border-gray-200 rounded-[15px] bg-gray-100 cursor-not-allowed text-gray-500">
                        </div>
                        <div>
                            <label class="block text-gray-700 text-sm font-bold mb-2">ID da Turma:</label>
                            <input type="number" name="id_turma" value="${aluno.id_turma}" 
                                   class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:outline-none focus:border-[#7F95AB]" required>
                        </div>
                    </div>

                    <div class="flex flex-col sm:flex-row gap-4 pt-6">
                        <button type="submit" 
                                class="flex-1 bg-[#7F95AB] border border-[#274855] rounded-[10px] py-3 text-white font-bold hover:opacity-90 transition shadow-sm">
                            Salvar Alterações
                        </button>
                        <a href="listar-alunos" 
                           class="flex-1 bg-gray-200 border border-gray-300 text-gray-700 py-3 rounded-[10px] font-bold text-center hover:bg-gray-300 transition">
                            Cancelar
                        </a>
                    </div>
                </form>
            </div>
        </section>
    </main>

    <script src="${pageContext.request.contextPath}/js/indicador-aba.js"></script>
</body>
</html>