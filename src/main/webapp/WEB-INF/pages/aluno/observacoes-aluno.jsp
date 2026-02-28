<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/aluno.css">
    <link rel="stylesheet" href="css/indicador.css">
    <link rel="icon" href="assets/Group 551.ico">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>
    <title>Observações - Devant</title>
</head>

<body class="bg-[#EDEFEF]">
<header class="bg-[#619AD6] text-white shadow-md">
    <div class="max-w-7xl mx-auto px-0 py-3 flex items-center">
        <div class="flex-1" style="margin-left: -50px; margin-right: 40px;">
            <a href="perfil-aluno.htm">
                <img src="assets/logo.png" alt="Logo" class="h-9">
            </a>
        </div>

        <nav class="nav flex-1 flex justify-center mb-[-1%]">
            <ul class="flex gap-12 items-center">
                <li>
                    <a href="perfil-aluno.htm" class="nav-link flex items-center gap-2 hover:opacity-80 text-[120%]">
                        Perfil
                    </a>
                </li>

                <li>
                    <a href="materias-aluno.htm" class="nav-link flex items-center gap-2 hover:opacity-80 text-[120%]">
                        Matérias
                    </a>
                </li>

                <li>
                    <a href="observacoes-aluno.htm" class="nav-link ativo flex items-center gap-2 hover:opacity-80 text-[120%]">
                        Observações
                    </a>
                </li>
            </ul>
            <div class="indicador"></div>
        </nav>

        <div class="flex-1 flex justify-end">
            <a href="index.htm"
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
                <h1 class="text-[200%] text-[#3a3a3a] font-bold text-foreground">Observações</h1>
                <hr class="mt-1 mb-6 border-[#283565]/20" />
                <div class="flex items-center justify-between mb-4 gap-2">
                    <div
                            class="bg-white rounded-lg border border-border bg-card px-5 py-4 max-h-[50%] whitespace-nowrap border-l-[6px] border-l-[#274855] shadow-sm">
                        <span class="font-semibold text-[130%] text-[#283565] flex justify-center">1</span>
                        <span class="font-regular text-[80%] text-[#283565]/70] flex justify-center">Observações recebidas</span>
                    </div>
                    <div
                            class="bg-white rounded-lg border border-border bg-card px-5 py-4 max-h-[50%] whitespace-nowrap border-l-[6px] border-l-[#CD3434] shadow-sm">
                        <span class="font-semibold text-[130%] text-[#283565] flex justify-center">0</span>
                        <span class="font-regular text-[80%] text-[#283565]/70] flex justify-center">PDM recebidos
              </span>
                    </div>
                    <div
                            class="bg-white rounded-lg border border-border bg-card px-5 py-4 max-h-[50%] whitespace-nowrap border-l-[6px] border-l-[#34AD38] shadow-sm">
                        <span class="font-semibold text-[130%] text-[#283565] flex justify-center">1</span>
                        <span class="font-regular text-[80%] text-[#283565]/70] flex justify-center">Elogios recebidos
              </span>
                    </div>
                    <div class="flex items-center border-2 border-[#283565] rounded-[10px] px-3 py-2 h-10 w-90">
                        <input type="text" placeholder="Pesquisar"
                               class="flex-1 bg-transparent text-gray-700 placeholder-gray-400 focus:outline-none">

                        <button type="submit">
                            <i class="text-gray-500 hover:text-[#3C9D9B] cursor-pointer w-5 h-5" data-feather="search"></i>
                        </button>
                    </div>
                </div>
                <button class="space-y-3 w-full">
                    <div onclick="abrirPopUpObs()"
                         class="bg-white rounded-lg border border-border bg-card px-5 py-4 w-full border-l-[6px] border-l-[#34AD38] shadow-sm">
              <span class="font-semibold text-[130%] text-[#283565] flex justify-start">Ass: Melhore sua
                postura</span>
                        <span class="font-regular text-[80%] text-[#283565]/70] flex justify-start">De: Maria Odete</span>
                        <span class="font-regular text-[80%] text-[#283565] flex justify-end">06/02</span>
                    </div>
                </button>

                <div id="popup-observação"
                     class="fixed inset-0 bg-black/40 flex items-center justify-center overflow-x-auto overflow-y-auto hidden">

                    <div class="bg-white rounded-lg shadow max-w-[60%] w-full relative p-4">
                        <div class="flex justify-between items-start">


                            <div class="flex gap-3 items-start">
                                <img src="assets/perfil-adm.jpg" alt="Foto de Perfil"
                                     class="w-12 h-12 rounded-full object-cover border-4 border-gray-100 shadow-sm">

                                <div>
                                    <p class="font-semibold text-[80%] text-[#283565]">
                                        Maria Odete
                                    </p>

                                    <p class="text-[80%] text-[#283565]/70">
                                        Para: João Gomes da Silva
                                    </p>
                                </div>
                            </div>


                            <p class="text-[75%] text-gray-500">
                                01/01
                            </p>
                        </div>
                        <div class="mt-4 flex justify-center">
                            <p class="w-full max-w-[80%] break-words">
                                Saiu da escola
                                KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK
                                Boa noite.</p>
                        </div>
                        <button id="voltarBtn" onclick="fecharPopUpObs()"
                                class="h-9 inline-flex items-center gap-2 bg-[#ECF5FF] border border-[#283565] rounded-[10px] px-4 py-2 text-[#3a3a3a] font-semibold whitespace-nowrap hover:bg-[#ECF5FF]/40 transition-all duration-200 ease-in-out mt-4">
                            <i data-feather="chevron-left" class="w-7 h-7 text-[#283565]"></i>
                            <span id="voltarTexto" class="w-full block text-[80%] text-[#283565]">Voltar</span>

                        </button>
                    </div>




    </section>
</main>
<script>
    feather.replace();
</script>
<script src="js/indicador-aba.js"></script>
<script src="js/observacao.js"></script>
<script src="js/dropdown.js"></script>
</body>

</html>