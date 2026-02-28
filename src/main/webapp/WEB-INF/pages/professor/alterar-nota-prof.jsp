<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/prof.css">
    <link rel="stylesheet" href="css/indicador-prof.css">
    <link rel="icon" href="assets/Group-558.ico">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>
    <title>Alterar Alunos - Devant</title>
</head>

<body class="bg-[#EDEFEF]">
    <header class="text-white shadow-md">
        <div class="max-w-7xl mx-auto px-0 py-3 flex items-center">
            <div class="flex-1" style="margin-left: -50px; margin-right: 40px;">
                <a href="perfil-prof.htm">
                    <img src="assets/logo.png" alt="Logo" class="h-9">
                </a>
            </div>

            <nav class="nav flex-1 flex justify-center mb-[-1%]">
                <ul class="flex gap-12 items-center">
                    <li>
                        <a href="perfil-prof.htm" class="nav-link flex items-center gap-2 hover:opacity-80 text-[120%]">
                            Perfil
                        </a>
                    </li>

                    <li>
                        <a href="alunos-prof.htm"
                            class="nav-link ativo flex items-center gap-2 hover:opacity-80 text-[120%]">
                            Alunos
                        </a>
                    </li>

                    <li>
                        <a href="observacoes-prof.htm"
                            class="nav-link flex items-center gap-2 hover:opacity-80 text-[120%]">
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
            <a href="alunos-prof.htm">
                <h1 class="text-left"><i data-feather="arrow-left"></i></h1>
            </a>
            <h1 class="text-[2.25rem] font-bold text-[#333333] mb-8 text-center mt-[2%]" data-aos="fade-down">Alterar
                nota de Nome do Aluno</h1>

            <div class="bg-white rounded-[15px] shadow-md p-8 max-w-lg mx-auto mt-[3%]" data-aos="fade-up"
                data-aos-delay="100">
                <form action="#" method="post">
                    <div class="mb-6">
                        <label for="aluno" class="block text-gray-700 text-sm font-medium mb-2 mt-2">Aluno:</label>
                        <select
                            class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:ring-1 focus:ring-[#7F95AB]""
                        name=" aluno" id="aluno" required>
                            <option disabled hidden selected value>Selecione uma
                                opção</option>
                            <option value="aluno1">Neymar</option>
                        </select>
                    </div>
                    <div class="mb-6">
                        <label for="turma" class="block text-gray-700 text-sm font-medium mb-2 mt-2">Turma:</label>
                        <select
                            class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:ring-1 focus:ring-[#7F95AB]"
                            name=" turma" id="turma" required>
                            <option disabled hidden value>Selecione uma
                                opção</option>
                            <option selected value="turma1">2°E.M. J</option>
                        </select>
                    </div>
                    <div class="mb-6">
                        <label for="n1" class="block text-gray-700 text-sm font-medium mb-2">Nota 1:</label>
                        <input type="number" id="n1" name="n1" min="0" max="10" step="0.1"
                            class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:ring-1 focus:ring-[#7F95AB]"
                            placeholder="Digite a nota 1..." required>
                    </div>
                    <div class="mb-6">
                        <label for="n2" class="block text-gray-700 text-sm font-medium mb-2">Nota 2:</label>
                        <input type="number" id="n2" name="n2" min="0" max="10" step="0.1"
                            class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:ring-1 focus:ring-[#7F95AB]"
                            placeholder="Digite a nota 2..." required>
                    </div>
                    <div class="mb-6">
                        <label for="media" class="block text-gray-700 text-sm font-medium mb-2">Média:</label>
                        <input type="number" id="media" name="media" min="0" max="10" step="0.1"
                            class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:ring-1 focus:ring-[#7F95AB]"
                            placeholder="Aqui aparece a média do aluno..." required>
                    </div>



                    <div class="text-center">
                        <button type="submit"
                            class="bg-[#274855] border border-[#274855] rounded-[10px] px-4 py-2 text-white font-semibold whitespace-nowrap hover:bg-[#667788] transition-all duration-200 ease-in-out">
                            Enviar
                        </button>
                    </div>
                </form>
            </div>
    </main>
    <script>
        feather.replace();
    </script>
    <script src="js/indicador-aba.js"></script>
</body>

</html>