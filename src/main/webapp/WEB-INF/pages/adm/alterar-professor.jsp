<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}?css/adm.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/indicador-adm.css">
    <link rel="icon" href="${pageContext.request.contextPath}/assets/Group-558.ico">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>
    <title>Alterar Professor - Devant</title>
</head>

<body class="bg-[#EDEFEF]">
    <header class="text-white shadow-md">
        <div class="max-w-7xl mx-auto px-0 py-3 flex items-center">
            <div class="flex-1" style="margin-left: -50px; margin-right: 40px;">
                <a href="${pageContext.request.contextPath}/adm/perfil-adm.jsp">
                    <img src="${pageContext.request.contextPath}/assets/logo.png" alt="Logo" class="h-9">
                </a>
            </div>

            <nav class="nav flex-1 flex justify-center mb-[-1%]">
                <ul class="flex gap-12 items-center">
                    <li>
                        <a href="${pageContext.request.contextPath}/adm/perfil-adm.jsp" class="nav-link flex items-center gap-2 hover:opacity-80 text-[120%]">
                            Perfil
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/adm/turmas-adm.jsp" class="nav-link flex items-center gap-2 hover:opacity-80 text-[120%]">
                            Turmas
                        </a>
                    </li>

                    <li>
                        <a href="${pageContext.request.contextPath}/adm/alunos-adm.jsp" class="nav-link flex items-center gap-2 hover:opacity-80 text-[120%]">
                            Alunos
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/adm/professores-adm.jsp"
                            class="nav-link ativo flex items-center gap-2 hover:opacity-80 text-[120%]">
                            Professores
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/adm/matérias-adm.jsp"
                            class="nav-link flex items-center gap-2 hover:opacity-80 text-[120%]">
                            Disciplinas
                        </a>
                    </li>

                    <li>
                        <a href="${pageContext.request.contextPath}/adm/observacoes-adm.jsp"
                            class="nav-link flex items-center gap-2 hover:opacity-80 text-[120%]">
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
            <a href="${pageContext.request.contextPath}/adm/professores-adm.jsp">
                <h1 class="text-left"><i data-feather="arrow-left"></i></h1>
            </a>
            <h1 class="text-[2.25rem] font-bold text-[#333333] mb-8 text-center mt-[2%]" data-aos="fade-down">Alterar
                Professor</h1>

            <div class="bg-white rounded-[15px] shadow-md p-8 max-w-lg mx-auto mt-[3%]" data-aos="fade-up"
                data-aos-delay="100">
                <form class="formPr" action="#" method="post">
                    <div class="mb-6">
                        <label for="nome" class="block text-gray-700 text-sm font-medium mb-2">Nome:</label>
                        <input type="text" id="nome" name="nome"
                            class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:ring-1 focus:ring-[#7F95AB]"
                            placeholder="Digite o nome do professor..." required>
                    </div>
                    <div class="mb-6">
                        <label for="disciplina"
                            class="block text-gray-700 text-sm font-medium mb-2 mt-2">Disciplina:</label>
                        <select
                            class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:ring-1 focus:ring-[#7F95AB]"
                        name=" disciplina" id="disciplina" required>
                            <option disabled hidden selected value>Selecione uma
                                opção</option>
                            <option value="disciplina1">Disciplina 1</option>
                        </select>
                    </div>
                    <div class="mb-6">
                        <label for="email" class="block text-gray-700 text-sm font-medium mb-2">E-mail:</label>
                        <input type="text" id="email" name="email"
                            class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:ring-1 focus:ring-[#7F95AB]"
                            placeholder="Digite o e-mail do professor..." required>
                    </div>
                    <div class="mb-6">
                        <label for="senha" class="block text-gray-700 text-sm font-medium mb-2">Senha:</label>
                        <input type="text" id="senha" name="senha"
                            class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:ring-1 focus:ring-[#7F95AB]"
                            placeholder="Digite a senha do professor..." required>
                    </div>
                    <div class="mb-6">
                        <label for="foto" class="block text-gray-700 text-sm font-medium mb-2">Foto:</label>
                        <input type="file" id="uploadImg" accept="image/*">
                    </div>


                    <div class="text-center">
                        <button type="submit"
                            class="bg-[#7F95AB] border border-[#274855] rounded-[10px] px-4 py-2 text-white font-semibold whitespace-nowrap hover:bg-[#667788] transition-all duration-200 ease-in-out">
                            Alterar
                        </button>
                    </div>
                </form>
            </div>
            </section>
    </main>
    <script>
        feather.replace();
    </script>
    <script src="${pageContext.request.contextPath}/js/indicador-aba.js"></script>
</body>

</html>