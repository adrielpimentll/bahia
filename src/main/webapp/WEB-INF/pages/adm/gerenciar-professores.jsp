<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adm.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/indicador-adm.css">
    <link rel="icon" href="${pageContext.request.contextPath}/assets/Group-558.ico">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Quadro de Professores - Devant</title>
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
                    <li><a href="${pageContext.request.contextPath}/adm/alunos-adm.jsp" class="nav-link">Alunos</a></li>
                    <li><a href="${pageContext.request.contextPath}/adm/professores-adm.jsp" class="nav-link ativo">Professores</a></li>
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

    <main class="flex-1 p-8">
        <section class="max-w-7xl mx-auto">
            <div class="flex justify-between items-center mb-10">
                <h1 class="text-[2.25rem] font-bold text-[#333333]">Corpo Docente</h1>
                <a href="${pageContext.request.contextPath}/adm/adicionar-professor.jsp" 
                   class="bg-[#7F95AB] border border-[#274855] rounded-[10px] px-6 py-2 text-white font-bold hover:opacity-90 transition shadow-md">
                    + Novo Professor
                </a>
            </div>
            
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                <c:forEach var="prof" items="${professores}">
                    <div class="bg-white p-6 rounded-[15px] shadow-sm border border-gray-200 relative">
                        
                        <div class="flex items-center gap-4">
                            <div class="w-12 h-12 bg-gray-100 rounded-full flex items-center justify-center text-[#003B46] font-bold">
                                P
                            </div>
                            <div>
                                <h3 class="font-bold text-xl text-gray-800">${prof.nome}</h3>
                                <p class="text-sm text-gray-400">ID: #${prof.id_professor}</p>
                            </div>
                        </div>

                        <div class="mt-6 pt-4 border-t border-gray-100">
                            <div class="flex justify-between items-end">
                                <div>
                                    <span class="text-[10px] font-bold uppercase text-[#7F95AB] tracking-widest">Disciplina Lecionada</span>
                                    <p class="text-[#003B46] font-bold text-lg">${prof.id_disciplina}</p>
                                </div>
                                <a href="editar-professor?id=${prof.id_professor}" class="text-blue-600 font-bold text-xs uppercase hover:underline">
                                    Editar
                                </a>
                            </div>
                        </div>

                        <div class="absolute top-4 right-4 w-2 h-2 bg-green-500 rounded-full"></div>
                    </div>
                </c:forEach>

                <c:if test="${empty professores}">
                    <div class="col-span-full py-20 text-center text-gray-400 italic bg-white rounded-[15px] border border-gray-200">
                        Nenhum professor registrado no sistema.
                    </div>
                </c:if>
            </div>
        </section>
    </main>

    <script src="${pageContext.request.contextPath}/js/indicador-aba.js"></script>
</body>
</html>