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
    <title>Observações - Devant</title>
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
                        <a href="alunos-adm.htm" class="nav-linkflex items-center gap-2 hover:opacity-80 text-[120%]">
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
            <h1 class="text-[#3a3a3a] font-semibold text-[220%] text-left mb-2">Observação</h1>


            <div class="flex items-center gap-4 mb-6 justify-between">
                <div>
                    <div
                        class="h-9 inline-flex items-center gap-2 bg-[#ECF5FF] border border-[#274855] rounded-[10px] px-4 py-2 text-[#3a3a3a] font-semibold whitespace-nowrap">
                        <i data-feather="eye" class="w-7 h-7 text-[#274855]"></i>
                        <span class="w-full block text-[80%]">Total Observações: 1</span>
                    </div>
                    <button onclick="window.location.href='adicionar-observacao.htm'"
                        class="h-9 inline-flex items-center gap-2 bg-[#7F95AB] border border-[#274855] rounded-[10px] px-4 py-2 text-white font-semibold whitespace-nowrap hover:bg-[#667788] transition-all duration-200 ease-in-out">
                        <i data-feather="plus" class="w-7 h-7 text-white"></i>
                        <span class="w-full block text-[80%]">Adicionar Observação</span>
                    </button>
                </div>
                <div class="flex justify-end items-center gap-2">

                    <div class="flex items-center border-2 border-[#274855] rounded-[10px] px-3 py-2 h-10 w-80">
                        <input type="text" placeholder="Pesquisar observação"
                            class="flex-1 bg-transparent text-gray-700 placeholder-gray-400 focus:outline-none">

                        <button type="submit">
                            <i class="text-gray-500 hover:text-[#3C9D9B] cursor-pointer w-5 h-5"
                                data-feather="search"></i>
                        </button>
                    </div>


                </div>
            </div>

            <div class="bg-white rounded-lg shadow max-w-6xl mx-auto overflow-x-auto overflow-y-auto">

                <table class="w-full">
                    <thead>
                        <tr class="bg-[#7F95AB] text-[#274855]">
                            <th class="p-3 text-left">DE</th>
                            <th class="p-3 text-center">PARA</th>
                            <th class="p-3 text-center">DATA</th>
                            <th class="p-3 text-center">TIPO</th>
                            <th class="p-3 text-center">MENSAGEM</th>
                            <th class=" p-3 text-center"></th>
                        </tr>
                    </thead>
                    <tbody id="corpo-tabela">
                        <tr class="bg-white">
                            <td class="px-2 py-1 border-b text-[100%] space-y-2 whitespace-nowrap">Diogo
                            </td>
                            <td class="px-2 py-1 border-b text-[100%] space-y-2 text-center">João Gomes da Silva</td>
                            <td class="px-2 py-1 border-b text-[100%] space-y-2 text-center">06/01/1996
                            </td>
                            <td class="px-2 py-1 border-b text-[100%] space-y-2 text-center">Elogio
                            </td>
                            <td class="px-2 py-1 border-b text-[100%] space-y-2 text-center break-words">Lorem ipsum
                                dolor sit amet consectetur adipisicing elit. Excepturi iste, eum odit explicabo, rem
                                pariatur fuga deserunt vero voluptas aperiam unde itaque ipsum quasi quae natus earum
                                facilis voluptatibus quis? Fuga repudiandae sunt, accusamus, quia earum cumque id,
                                necessitatibus nam accusantium unde soluta voluptate blanditiis repellendus commodi
                                maxime voluptas dicta.
                            </td>
                            <td class="px-2 py-1 border-b text-xs">
                                <div class="flex space-x-2 justify-end"
                                    onclick="window.location.href='alterar-observacao.htm'">
                                    <button class="p-1 text-blue-600 hover:text-blue-800">
                                        <i data-feather="edit" class="w-4 h-4"></i>
                                    </button>
                                    <button class="p-1 text-red-600 hover:text-red-800" onclick="">
                                        <i data-feather="trash-2" class="w-4 h-4"></i>
                                    </button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
        </section>
    </main>
    <script>
        feather.replace();
    </script>
    <script src="js/indicador-aba.js"></script>
</body>

</html>