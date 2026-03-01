<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/prof.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/indicador-prof.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/radio-obs.css">
  <link rel="icon" href="${pageContext.request.contextPath}/assets/Group 551.ico">
  <script src="https://cdn.tailwindcss.com"></script>
  <script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>
  <title>Alunos - Devant</title>
</head>

<body class="bg-[#EDEFEF]">
  <header class="text-white shadow-md">
    <div class="max-w-7xl mx-auto px-0 py-3 flex items-center">
      <div class="flex-1" style="margin-left: -50px; margin-right: 40px;">
        <a href="${pageContext.request.contextPath}/professor/perfil-prof.jsp">
          <img src="${pageContext.request.contextPath}/assets/logo.png" alt="Logo" class="h-9">
        </a>
      </div>

      <nav class="nav flex-1 flex justify-center mb-[-1%]">
        <ul class="flex gap-12 items-center">
          <li>
            <a href="${pageContext.request.contextPath}/professor/perfil-prof.jsp" class="nav-link flex items-center gap-2 hover:opacity-80 text-[120%]">
              Perfil
            </a>
          </li>

          <li>
            <a href="${pageContext.request.contextPath}/professor/alunos-prof.jsp" class="nav-link ativo flex items-center gap-2 hover:opacity-80 text-[120%]">
              Alunos
            </a>
          </li>

          <li>
            <a href="${pageContext.request.contextPath}/professor/observacoes-prof.jsp" class="nav-link flex items-center gap-2 hover:opacity-80 text-[120%]">
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
      <h1 class="text-[200%] text-[#3a3a3a] font-bold text-foreground">Alunos</h1>
      <hr class="mt-1 mb-6 border-[#283565]/20" />
      <div class="flex items-center justify-between mb-4">
        <div class="flex justify-start gap-2">
          <div
            class="h-9 inline-flex items-center gap-2 bg-[#ECF5FF] border border-[#283565] rounded-[10px] px-4 py-2 text-[#3a3a3a] font-semibold whitespace-nowrap">
            <i data-feather="users" class="w-7 h-7 text-[#283565]"></i>
            <span class="w-full block text-[80%] text-[#283565]">Total Alunos: 3</span>
          </div>
          <div>
            <div id="dropdown">
              <button id="filtro-botao"
                class="h-9 inline-flex items-center gap-2 bg-[#ECF5FF] border border-[#283565] rounded-[10px] px-4 py-2 text-[#3a3a3a] font-semibold whitespace-nowrap">
                <span id="filtro-texto" class="w-full block text-[80%] text-[#283565]">Turma</span>
                <i data-feather="chevron-down" class="w-7 h-7 text-[#283565]"></i>
              </button>
            </div>
            <div id="menu" class="absolute hidden mt-2 bg-white rounded-lg shadow-lg w-max z-50">
              <button type="button" data-value="Todos"
                class="block text-gray-700 text-sm px-4 py-2 w-full text-left hover:bg-gray-100">Todos</button>
              <button type="button" data-value="turma1"
                class="block text-gray-700 text-sm px-4 py-2 w-full text-left hover:bg-gray-100">2° E.M J</button>
            </div>

            <input type="hidden" id="filtro" name="filtro" value="turma">
          </div>
        </div>
        <div class="flex items-center border-2 border-[#283565] rounded-[10px] px-3 py-2 h-10 w-80">
          <input type="text" placeholder="Pesquisar aluno"
            class="flex-1 bg-transparent text-gray-700 placeholder-gray-400 focus:outline-none">

          <button type="submit">
            <i class="text-gray-500 hover:text-[#3C9D9B] cursor-pointer w-5 h-5" data-feather="search"></i>
          </button>
        </div>
      </div>


      <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-3">
        <div class="flex items-center gap-3 bg-[#EFF1FA] shadow-lg rounded-lg px-4 py-3 h-[5rem]">
          <span class="font-semibold flex-1 text-[#283565] text-[100%]">João Gomes da Silva (Matrícula)</span>
          <button onclick=abrirPopUp()
            class="text-2g font-bold text-[#283565] hover:text-[#5E6FAF] transition-all duration-200 ease-in-out"><i
              data-feather="award"></i>
          </button>
          <button onclick=abrirPopUpObs()
            class="text-2g font-bold text-[#283565] hover:text-[#5E6FAF] transition-all duration-200 ease-in-ou"><i
              data-feather="send"></i></button>
        </div>
      </div>


    </section>

    <!-- POPUP DESEMPENHO-->
    <div id="popup-observação"
      class="fixed inset-0 bg-black/40 flex items-center justify-center overflow-x-auto overflow-y-auto hidden">

      <div class="bg-white rounded-lg shadow max-w-[60%] w-full relative p-4">
        <button onclick="fecharPopUp()" class="absolute top-3 right-3 text-gray-600 hover:text-red-600">
          ✖
        </button>

        <h2 class="text-center text-[110%] text-[#283565]">Adicione sua observação para <span class="font-bold">Nome do
            Aluno</span>
        </h2>
        <div
          class="selecao-tipo-obs mt-2 text-[100%] text-[#283565] flex items-center justify-center align-center gap-4"
          aria-hidden="false">
          <label class="tipo-obs"><input
              class="appearance-none w-[15px] h-[15px] border-[2px] border-[#274855] rounded-[50px]" type="radio"
              name="tipo-obs" value="elogio"> Elogio</label>
          <label class="tipo-obs"><input
              class="appearance-none w-[15px] h-[15px] border-[2px] border-[#274855] rounded-[50px]" type="radio"
              name="tipo-obs" value="melhoria" checked> Ponto de Melhoria</label>
        </div>
        <div class="mb-6">
          <label for="observacao" class="block text-gray-700 text-sm font-medium mb-2 mt-2">Observação:</label>
          <textarea id="observacao" name="observacao" required
            class="w-full px-4 py-3 border border-gray-300 rounded-[15px] focus:ring-1 focus:ring-[#7F95AB] focus:border-transparent resize-none overflow-hidden"
            placeholder="Digite a observação..." rows="2" oninput="aumentarTexto(this)"></textarea>
        </div>

      </div>
    </div>

  </main>
  <script>
    feather.replace();
  </script>
  <script src="${pageContext.request.contextPath}/js/indicador-aba.js"></script>
  <script src="${pageContext.request.contextPath}/js/dropdown.js"></script>
  <script src="${pageContext.request.contextPath}/js/desempenho.js"></script>
  <script src="${pageContext.request.contextPath}/js/observacao.js"></script>
  <script src="${pageContext.request.contextPath}/js/aumentar-texto.js"></script>

</body>

</html>