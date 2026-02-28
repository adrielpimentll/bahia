<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/adm.css">
    <link rel="stylesheet" href="css/indicador-adm.css">
    <link rel="icon" href="assets/Group-558.ico">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>
    <title>Alterar Observação - Devant</title>
</head>

<body class="bg-[#EDEFEF]">
    <header class="text-white shadow-md">
        <div class="max-w-7xl mx-auto px-0 py-3 flex items-center">
            <div class="flex-1" style="margin-left: -50px; margin-right: 40px;">
                <a href="perfil-adm.htm">
                    <img src="assets/logo.png" alt="Logo" class="h-9">
                </a>
            </div>

            <nav class="nav flex-1 flex justify-center mb-[-1%]">
                <ul class="flex gap-12 items-center">
                    <li>
                        <a href="perfil-adm.htm" class="nav-link flex items-center gap-2 hover:opacity-80 text-[120%]">
                            Perfil
                        </a>
                    </li>
                    <li>
                        <a href="turmas-adm.htm" class="nav-link flex items-center gap-2 hover:opacity-80 text-[120%]">
                            Turmas
                        </a>
                    </li>

                    <li>
                        <a href="alunos-adm.htm" class="nav-link flex items-center gap-2 hover:opacity-80 text-[120%]">
                            Alunos
                        </a>
                    </li>
                    <li>
                        <a href="professores-adm.htm"
                            class="nav-link flex items-center gap-2 hover:opacity-80 text-[120%]">
                            Professores
                        </a>
                    </li>
                    <li>
                        <a href="matérias-adm.htm"
                            class="nav-link flex items-center gap-2 hover:opacity-80 text-[120%]">
                            Disciplinas
                        </a>
                    </li>

                    <li>
                        <a href="observacoes-adm.htm"
                            class="nav-link ativo flex items-center gap-2 hover:opacity-80 text-[120%]">
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
            <a href="observacoes-adm.htm">
                <h1 class="text-left"><i data-feather="arrow-left"></i></h1>
            </a>
            <h1 class="text-[2.25rem] font-bold text-[#333333] mb-8 text-center mt-[2%]" data-aos="fade-down">Alterar
                Observação</h1>

            <div class="bg-white rounded-[15px] shadow-md p-8 max-w-lg mx-auto mt-[3%]" data-aos="fade-up"
                data-aos-delay="100">
                <form action="#" method="post">
                    <div class="mb-6">
                        <label for="remetente"
                            class="block text-gray-700 text-sm font-medium mb-2 mt-2">Remetente:</label>
                        <select
                            class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:ring-1 focus:ring-[#7F95AB]""
                        name=" remetente" id="remetente" required>
                            <option disabled hidden selected value>Selecione uma
                                opção</option>
                            <option value="professor1">Você</option>
                        </select>
                    </div>
                    <div class="mb-6">
                        <label for="destinatario"
                            class="block text-gray-700 text-sm font-medium mb-2 mt-2">Destinatário:</label>
                        <select
                            class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:ring-1 focus:ring-[#7F95AB]""
                        name=" destinatario" id="destinatario" required>
                            <option disabled hidden selected value>Selecione uma
                                opção</option>
                            <option value="aluno1">Aluno</option>
                        </select>
                    </div>
                    <div class="mb-6">
                        <label for="data" class="block text-gray-700 text-sm font-medium mb-2">Data:</label>
                        <input type="date" id="data" name="data"
                            class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:ring-1 focus:ring-[#7F95AB]"
                            </div>
                        <div class="mb-6">
                            <label for="tipo" class="block text-gray-700 text-sm font-medium mb-2 mt-2">Tipo de
                                Observação:</label>
                            <select
                                class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:ring-1 focus:ring-[#7F95AB]""
                        name=" tipo" id="tipo" required>
                                <option disabled hidden selected value>Selecione uma
                                    opção</option>
                                <option value="pdm">Ponto de Melhoria</option>
                                <option value="pdm">Elogio</option>
                            </select>
                        </div>
                        <div class="mb-6">
                            <label for="observacao"
                                class="block text-gray-700 text-sm font-medium mb-2 mt-2">Observação:</label>
                            <textarea id="observacao" name="observacao" required
                                class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:ring-1 focus:ring-[#7F95AB] focus:border-transparent resize-none overflow-hidden"
                                placeholder="Digite a observação..." rows="2" oninput="aumentarTexto(this)"></textarea>
                        </div>


                        <div class="text-center">
                            <button type="submit"
                                class="bg-[#7F95AB] border border-[#274855] rounded-[10px] px-4 py-2 text-white font-semibold whitespace-nowrap hover:bg-[#667788] transition-all duration-200 ease-in-out">
                                Alterar
                            </button>
                        </div>
                </form>
            </div>
    </main>
    <script>
        feather.replace();
    </script>
    <script src="js/indicador-aba.js"></script>
    <script src="js/aumentar-texto.js"></script>
</body>

</html>