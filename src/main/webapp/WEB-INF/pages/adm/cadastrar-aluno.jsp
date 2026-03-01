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
    <title>Novo Aluno - Devant</title>
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
            <div class="max-w-xl mx-auto mt-4">
                <a href="${pageContext.request.contextPath}/adm/alunos-adm.jsp" class="text-gray-600 font-bold hover:underline">
                    &larr; Voltar para a lista
                </a>
            </div>

            <h1 class="text-[2.25rem] font-bold text-[#333333] mb-8 text-center mt-[2%]">
                Cadastrar Novo Aluno
            </h1>

            <div class="bg-white rounded-[15px] shadow-sm p-8 max-w-xl mx-auto mt-[3%] border border-gray-100">
                <form action="${pageContext.request.contextPath}/aluno" method="post" class="space-y-6">
                    
                    <div class="mb-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2">Nome Completo:</label>
                        <input type="text" name="nome" placeholder="Digite o nome do aluno..." 
                               class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:outline-none focus:border-[#7F95AB]" required>
                    </div>

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div>
                            <label class="block text-gray-700 text-sm font-bold mb-2">E-mail:</label>
                            <input type="email" name="email" placeholder="email@exemplo.com"
                                   class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:outline-none focus:border-[#7F95AB]" required>
                        </div>
                        <div>
                            <label class="block text-gray-700 text-sm font-bold mb-2">Matrícula:</label>
                            <input type="text" name="matricula" placeholder="Ex: 2024001"
                                   class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:outline-none focus:border-[#7F95AB]" required>
                        </div>
                    </div>

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div>
                            <label class="block text-gray-700 text-sm font-bold mb-2">Turma:</label>
                            <select name="idTurma" class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:outline-none focus:border-[#7F95AB] bg-white">
                                <option disabled hidden selected value>Selecione uma turma</option>
                                <option value="1">1º Ano A</option>
                                <option value="2">2º Ano B</option>
                            </select>
                        </div>
                        <div>
                            <label class="block text-gray-700 text-sm font-bold mb-2">Senha Inicial:</label>
                            <input type="password" name="senha" placeholder="Crie uma senha"
                                   class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:outline-none focus:border-[#7F95AB]" required>
                        </div>
                    </div>

                    <input type="hidden" name="idTipoUser" value="1">

                    <div class="text-center pt-4">
                        <button type="submit" 
                                class="w-full bg-[#7F95AB] border border-[#274855] rounded-[10px] py-3 text-white font-bold hover:opacity-90 transition shadow-sm">
                            Salvar Aluno
                        </button>
                    </div>
                </form>
            </div>
        </section>
    </main>

    <script src="${pageContext.request.contextPath}/js/indicador-aba.js"></script>
</body>
</html>