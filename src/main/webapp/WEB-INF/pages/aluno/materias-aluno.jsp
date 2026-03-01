<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/aluno.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/indicador.css">
    <link rel="icon" href="${pageContext.request.contextPath}/assets/Group 551.ico">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>
    <title>Materias - Devant</title>
</head>

<body class="bg-[#EDEFEF]">
<header class="text-white shadow-md">
    <div class="max-w-7xl mx-auto px-0 py-3 flex items-center">
        <div class="flex-1" style="margin-left: -50px; margin-right: 40px;">
            <a href="${pageContext.request.contextPath}/aluno/perfil-aluno.jsp">
                <img src="${pageContext.request.contextPath}/assets/logo.png" alt="Logo" class="h-9">
            </a>
        </div>

        <nav class="nav flex-1 flex justify-center mb-[-1%]">
            <ul class="flex gap-12 items-center">
                <li>
                    <a href="${pageContext.request.contextPath}/aluno/perfil-aluno.jsp" class="nav-link flex items-center gap-2 hover:opacity-80 text-[120%]">
                        Perfil
                    </a>
                </li>

                <li>
                    <a href="${pageContext.request.contextPath}/aluno/alunos-prof.jsp" class="nav-link ativo flex items-center gap-2 hover:opacity-80 text-[120%]">
                        Matérias
                    </a>
                </li>

                <li>
                    <a href="${pageContext.request.contextPath}/aluno/observacoes-aluno.jsp" class="nav-link flex items-center gap-2 hover:opacity-80 text-[120%]">
                        Observações
                    </a>
                </li>
            </ul>
            <div class="indicador"></div>
        </nav>

        <div class="flex-1 flex justify-end">
            <a href="${pageContext.request.contextPath}/index.jsp"
               class="flex items-center gap-2 bg-tranparent border-2 border-white text-white font-semibold px-4 py-2 rounded-[20px] hover:bg-[#F01C1C] hover:text-white transition">
                <i data-feather="log-out"></i> Sair
            </a>
        </div>

    </div>
</header>
<main class="flex-1 p-4">
    <section>
        <div class="min-h-screen bg-background p-6 ">
            <div class="max-w-3xl mx-auto">
                <h1 class="text-[200%] text-[#3a3a3a] font-bold text-foreground">Minhas Disciplinas</h1>
                <hr class="mt-1 mb-6 border-[#283565]/20" />
                <div class="flex items-center justify-between mb-4">
                    <div
                            class="h-9 inline-flex items-center gap-2 bg-[#ECF5FF] border border-[#283565] rounded-[10px] px-4 py-2 text-[#3a3a3a] font-semibold whitespace-nowrap">
                        <i data-feather="file" class="w-7 h-7 text-[#283565]"></i>
                        <span class="w-full block text-[80%] text-[#283565]">Total Disciplinas: 1</span>
                    </div>
                    <button id="gerarBol" onclick="abrirPopUpBol()"
                            class="h-9 inline-flex items-center gap-2 bg-[#619AD6] shadow-md rounded-[10px] px-4 py-2 text-white font-semibold whitespace-nowrap">
                        <i data-feather="printer" class="w-7 h-7 text-white"></i>
                        <span class="w-full block text-[80%] text-white">Gerar Boletim Completo</span>
                    </button>

                    <div class="flex items-center border-2 border-[#283565] rounded-[10px] px-3 py-2 h-10 w-80">
                        <input type="text" placeholder="Pesquisar disciplina"
                               class="flex-1 bg-transparent text-gray-700 placeholder-gray-400 focus:outline-none">

                        <button type="submit">
                            <i class="text-gray-500 hover:text-[#3C9D9B] cursor-pointer w-5 h-5" data-feather="search"></i>
                        </button>
                    </div>
                </div>


                <div class="space-y-3">
                    <div
                            class="bg-white rounded-lg border border-border bg-card px-5 py-4 border-l-4 border-l-[#D16F6F] shadow-sm flex items-center justify-between">
                        <span class="font-semibold text-[130%] text-[#283565]">Português</span>
                        <button onclick="abrirPopUpDes()"
                                class="font-semibold text-[#619AD6]  text-primary hover:text-[#598ABE] transition-all ease-in-out duration-200">Ver
                            Boletim</button>

                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- POPUP DESEMPENHO -->
    <div id="popup-desempenho"
         class="fixed inset-0 bg-black/40 flex items-center justify-center overflow-x-auto overflow-y-auto hidden">

        <div class="bg-white rounded-lg shadow max-w-[60%] w-full relative p-4">
            <button onclick="fecharPopUpDes()" class="absolute top-3 right-3 text-gray-600 hover:text-red-600">
                ✖
            </button>

            <table class="w-full">
                <thead>
                <tr class="text-black">
                    <th class="p-3 text-center">NOTA 1</th>
                    <th class="p-3 text-center">NOTA 2</th>
                    <th class="p-3 text-center">MÉDIA</th>
                    <th class="p-3 text-center">RESULTADO</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td class="p-2 border-b text-center font-semibold text-[#F01C1C]">4.5</td>
                    <td class="p-2 border-b text-center font-semibold text-[#3088E5]">9.7</td>
                    <td class="p-2 border-b text-center font-semibold text-[#3088E5]">7.1</td>
                    <td class="p-2 border-b text-center font-semibold text-[#3088E5]">APROVADO</td>
                </tr>
                </tbody>

            </table>

        </div>
    </div>
    <!-- POPUP BOLETIM -->
    <div id="popup-boletim"
         class="fixed inset-0 bg-black/40 flex items-center justify-center overflow-x-auto overflow-y-auto hidden">

        <div class="bg-white rounded-lg shadow max-w-[60%] w-full relative p-4">
            <button onclick="fecharPopUpBol()" class="absolute top-3 right-3 text-gray-600 hover:text-red-600">
                ✖
            </button>

            <table class="w-full">
                <thead>
                <tr class="text-black">
                    <th class="p-3 text-center">DISCIPLINA</th>
                    <th class="p-3 text-center">NOTA 1</th>
                    <th class="p-3 text-center">NOTA 2</th>
                    <th class="p-3 text-center">MÉDIA</th>
                    <th class="p-3 text-center">RESULTADO</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    <td class="p-2 border-b text-center font-semibold">Português</td>
                    <td class="p-2 border-b text-center font-semibold text-[#F01C1C]">4.5</td>
                    <td class="p-2 border-b text-center font-semibold text-[#3088E5]">9.7</td>
                    <td class="p-2 border-b text-center font-semibold text-[#3088E5]">7.1</td>
                    <td class="p-2 border-b text-center font-semibold text-[#3088E5]">APROVADO</td>
                </tr>
                </tbody>

            </table>

        </div>
    </div>

</main>
<script>
    feather.replace();
</script>
<script src="${pageContext.request.contextPath}/js/indicador-aba.js"></script>
<script src="${pageContext.request.contextPath}/js/desempenho.js"></script>
<script src="${pageContext.request.contextPath}/js/boletim.js"></script>
</body>

</html>