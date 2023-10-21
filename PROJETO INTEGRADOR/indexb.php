<?php
    // Cópia do "index.php" para testes. Esse arquivo será apagado quando os testes com cookies forem finalizados

    // Verificando se o usuário já acessou o site alguma vez
    if(isset($_COOKIE['ja_acessou'])){
        // Verificando se o usuário optou por manter-se conectado no último acesso 
        if($_COOKIE['manter_conectado'] == "false"){
            $location = "Location: login/index.html";
        } else if($_COOKIE['manter_conectado'] == "true" && $_COOKIE['possui_login'] == "true"){
            // Criando o redirecionamento para a página de requerimentos
            switch($_COOKIE['cargo']){
                case "discente":
                    $location = "Location: requerimento/requerimento_discente.html";
                    break;
                case "docente":
                    $location = "Location: requerimento/requerimento_docente.html";
                    break;
            }
        }

    // caso seja a primeira vez acessando o site
    } else {
        // Criando os cookies para no próximo acesso, passar na primeira condição
        setcookie("ja_acessou", "true", time()+60*60*24*365*20);
        setcookie("possui_login", "true", time()+20); // cookie que entra junto do "manter_conectado" para o sistema não redirecionar o usuário sem ele ter finalizado o login
        setcookie("manter_conectado", "true", time()+20); // Pode ser alterado na página de login
        setcookie("cargo", "discente", time()+60*60*24); // pode valer "docente" ou "discente". É definido na página de login

        $location = "Location: cadastro/cadastro.html";
    }
    header($location);
?>