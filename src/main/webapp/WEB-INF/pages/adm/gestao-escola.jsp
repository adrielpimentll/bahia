<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adm.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/indicador-adm.css">
    <link rel="icon" href="${pageContext.request.contextPath}/assets/Group-558.ico">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Gestão Escolar - Devant</title>
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
                <a href="${pageContext.request.contextPath}/index.jsp" class="border-2 border-white text-white font-semibold px-4 py-2 rounded-[20px] hover:bg-[#F01C1C] transition">
                    Sair
                </a>
            </div>
        </div>
    </header>

    <main class="flex-1 p-4">
        <section>
            <h1 class="text-[2.25rem] font-bold text-[#333333] mb-8 text-center mt-[2%]">Gestão de Estrutura</h1>

            <div class="grid grid-cols-1 lg:grid-cols-2 gap-8 max-w-6xl mx-auto mt-[3%]">
                
                <div class="bg-white rounded-[15px] shadow-sm p-8 border border-gray-100">
                    <div class="flex items-center gap-3 mb-6">
                        <h2 class="text-xl font-bold text-gray-800 uppercase tracking-tight">Nova Turma</h2>
                    </div>
                    <form action="TurmaServlet" method="post" class="space-y-4">
                        <input type="hidden" name="acao" value="cadastrar">
                        <div class="mb-6">
                            <label class="block text-gray-700 text-sm font-bold mb-2">Nome da Turma:</label>
                            <input type="text" name="nome_turma" class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:outline-none focus:border-[#7F95AB]" placeholder="Ex: 9º Ano B" required>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="bg-[#7F95AB] border border-[#274855] rounded-[10px] px-8 py-2 text-white font-bold hover:opacity-90 transition">
                                Criar Turma
                            </button>
                        </div>
                    </form>
                </div>

                <div class="bg-white rounded-[15px] shadow-sm p-8 border border-gray-100">
                    <div class="flex items-center gap-3 mb-6">
                        <h2 class="text-xl font-bold text-gray-800 uppercase tracking-tight">Nova Disciplina</h2>
                    </div>
                    <form action="DisciplinaServlet" method="post" class="space-y-4">
                        <input type="hidden" name="acao" value="cadastrar">
                        <div class="mb-6">
                            <label class="block text-gray-700 text-sm font-bold mb-2">Nome da Disciplina:</label>
                            <input type="text" name="nome_disciplina" class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:outline-none focus:border-[#7F95AB]" placeholder="Ex: Matemática" required>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="bg-[#7F95AB] border border-[#274855] rounded-[10px] px-8 py-2 text-white font-bold hover:opacity-90 transition">
                                Cadastrar Disciplina
                            </button>
                        </div>
                    </form>
                </div>

            </div>
        </section>
    </main>

    <script src="${pageContext.request.contextPath}/js/indicador-aba.js"></script>
</body>
</html>