<!DOCTYPE jspperfil-prof.jspl>
<jspperfil-prof.jspl lang="pt-br">

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
        <a href="perfil-prof.jsp">
          <img src="${pageContext.request.contextPath}/assets/logo.png" alt="Logo" class="h-9">
        </a>
      </div>

      <nav class="nav flex-1 flex justify-center mb-[-1%]">
        <ul class="flex gap-12 items-center">
          <li>
            <a href="perfil-prof.jsp" class="nav-link flex items-center gap-2 hover:opacity-80 text-[120%]">
              Perfil
            </a>
          </li>

          <li>
            <a href="alunos-prof.jsp" class="nav-link flex items-center gap-2 hover:opacity-80 text-[120%]">
              Alunos
            </a>
          </li>

          <li>
            <a href="observacoes-prof.jsp" class="nav-link ativo flex items-center gap-2 hover:opacity-80 text-[120%]">
              Observações
            </a>
          </li>
        </ul>
        <div class="indicador"></div>
      </nav>

      <div class="flex-1 flex justify-end">
        <a href="index.jsp"
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
          <div class="flex items-center justify-end mb-4">
            <div class="flex items-center border-2 border-[#283565] rounded-[10px] px-3 py-2 h-10 w-80">
              <input type="text" placeholder="Pesquisar mensagem"
                class="flex-1 bg-transparent text-gray-700 placeholder-gray-400 focus:outline-none">

              <button type="submit">
                <i class="text-gray-500 hover:text-[#3C9D9B] cursor-pointer w-5 h-5" data-feather="search"></i>
              </button>
            </div>
          </div>
          <div
            class="bg-white shadow-lg rounded-2xl p-4 w-full max-w-[120%] h-38 border-1 border-[#000000] flex justify-between mb-4">
            <div class="space-y-4">
              <div>
                <h2 class=" font-semibold text-gray-900 text-[130%] max-w-[100%]">Ass: Melhore sua postura</h1>
                  <p class="text-gray-400">Para: João Gomes da Silva - 06/02/1996</p>
              </div>
            </div>
            <a href="mostrar-obs-prof.jsp">
              <p class="flex justify-end font-semibold text-[#274855] cursor-pointer hover:text-[#598ABE] self-end">
                Abrir
              </p>
            </a>
          </div>


    </section>
  </main>
  <script>
    feather.replace();
  </script>
  <script src="${pageContext.request.contextPath}/js/indicador-aba.js"></script>
</body>

</jspperfil-prof.jspl>