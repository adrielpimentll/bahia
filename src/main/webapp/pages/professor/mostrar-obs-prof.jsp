<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/prof.css">
    <link rel="stylesheet" href="css/indicador-prof.css">
    <link rel="icon" href="assets/Group 551.ico">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>
    <title>Observações - Devant</title>
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
                        <a href="alunos-prof.htm" class="nav-link flex items-center gap-2 hover:opacity-80 text-[120%]">
                            Alunos
                        </a>
                    </li>

                    <li>
                        <a href="observacoes-prof.htm"
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
            <a href="observacoes-prof.htm">
                <h1 class="text-left"><i data-feather="arrow-left"></i></h1>
            </a>
            <h1 class="text-[#3a3a3a] font-semibold text-[220%] text-center mb-2">Título da Observação</h1>
            <h3 class="text-gray-500 font-semibold text-[100%] text-center mb-4">De Você para Aluno - Data</h3>

            <p class="text-left">
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolorem et ipsum suscipit sit cupiditate iusto
                sapiente sint eius, necessitatibus voluptatem nobis quis fuga. Quidem culpa repudiandae a magnam,
                voluptates cumque corrupti voluptate reprehenderit cupiditate similique recusandae optio, laudantium
                deserunt tempora? Ipsa optio eius sit velit necessitatibus neque nam! Impedit ex numquam maiores
                recusandae, porro dolore quos molestias aut. Quasi quisquam dolore suscipit dolor tempora reprehenderit,
                ex at tempore ipsa explicabo, neque deserunt. Unde quidem natus quisquam vitae veritatis numquam
                distinctio pariatur, eius facilis error similique! Quas tempore eum incidunt eos.
            </p>





        </section>
    </main>
    <script>
        feather.replace();
    </script>
    <script src="js/indicador-aba.js"></script>
</body>

</html>