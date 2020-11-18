<h1> Instalçao APS-8 sistemas distribuidos</h1>
</hr>
<h3> Opção 1: Abrindo o Front local e usando o backend do servidor Cloud</b> 

<h4>Primeiro Passo de instalação: </h4>
Faça o download no GITHUB do projeto delphi-aps-front.

<h4>Abrindo o projeto: </h4>
Para abrir o projeto, entre na pasta que o Download foi realizado e entre em /Win32/Debug/ e execute o JsonAttributes.exe;

<h4>Utilizando: </h4>
Preencher todas as informações necessárias para finalizar o cadastro e ao clicar no botão "Finalizar cadastro" o valor total dos itens de venda sera exibido na tela;

<h3> Opção 2: Instalando toda a arquitetura de sistema no seu computador</b> 

<h4>Pre Requisitos: </h4>
<ol>
  <li><a href="https://www.embarcadero.com/br/products/delphi/starter/free-download" target="_blank"> Delphi 10.3</a></li>
  <li><a href="https://www.eclipse.org/downloads/download.php?file=/oomph/epp/2020-09/R/eclipse-inst-jre-win64.exe" target="_blank"> Eclipse Versão que desejar </a></li>
  <li><a href="https://www.oracle.com/br/java/technologies/javase/javase-jdk8-downloads.html" target="_blank">JDK 1.8</a></li>
  <li><a href="https://tomcat.apache.org/download-90.cgi" target="_blank">TOMCAT 9.0.39</a></li>
  <li><a href="https://maven.apache.org/download.cgi" target="_blank">MAVEN 3.6.3</a></li>
  <li><a href="https://www.postgresql.org/download/ target ="_blank">Postgres 9 </a></li>
</ol>



<h4>Primeiro Passo de instalação: </h4>
Faça o download no GITHUB dos projetos:
<ol>
<li><a href="https://github.com/MauroVaz/delphi-aps-front" target="_blank">delphi-aps-front</a>.</li>
<li><a href="https://github.com/MauroVaz/si8-aps" target="_blank">si8-aps</a>.</li>
<li><a href="https://github.com/MauroVaz/si8-aps-calculate" target="_blank">si8-aps-calculate</a>.</li>
</ol>

<h4>Alterando os codigos para execução local:</h4>
No projeto "delphi-aps-front" é necessario a alteração da URL do servidor na aplicação, será necessário alterar o valor da variavél na unit Cadastro.pas na linha 169 do arquivo.
Alterando do IP do servidor da nuvem para o seu local, ou para a maquina que sera executado o codigo "si8-aps";
Apos a alteração compile o codigo pela IDE do Delphi;
</br>
</br>
No projeto "si8-aps" é necessario a alteração utilizando a IDE do eclipse da seguinte forma, altere o arquivo "database_pool.properties" em "/src/main/java" altere a linha 3 e 4 para seu Usuario e Senha do Postgres SQL.
Juntamente a isso altere a linha 10 para seu servidor e porta do Postgre SQL (e banco caso tenha sido alterado o nome do database).
No package com.unip.aps.controller e na classe "AsyncController.java é necessario a alteração da linha 34 do ip da variavel "url" que sera o servidor onde subirá a api "si8-aps-calculate"
</br>
</br>
Assim como no passo anterior no projeto "si8-aps-calculate" é necessario a alteração utilizando a IDE do eclipse da seguinte forma, altere o arquivo "database_pool.properties" em "/src/main/java" altere a linha 3 e 4 para seu Usuario e Senha do Postgres SQL.
Juntamente a isso altere a linha 10 para seu servidor e porta do Postgre SQL (e banco caso tenha sido alterado o nome do database).

<h5>Compilando e instalando projetos Java (Processo necessario para projeto "si8-aps" e "si8-aps-calculate"):</h5>

Entre na pasta do projeto, onde se localiza o arquivo <b><i>"pom.xml"</i></b>;</br>
Abra o CMD nesse local e execute o comando <b><i>"mvn clean package"</i></b>;</br>
Apos a execução do comando dentro da pasta do projeto aparecera a pasta <b><i>"target"</i></b> com o arquivo .war do projeto;</br>
Copie o arquivo, vá a seu local de instalação do tomcat, e cole dentro da pasta "webapps";</br>
Entre na pasta "bin" do tomcat e execute o arquivo "startup" correspondente ao seu Sistema Operacional;

<h5>Após a instalação do projeto Java:</h5>
Após a instalçao dos projetos java no servidor de aplicação tomcat e o start do mesmo, e a compilaçao do projeto em Delphi, é possivel abrir o projeto entrando na pasta que o foi feito o download e compilação em seguida entre em /Win32/Debug/ e execute o JsonAttributes.exe;

<h4>Utilizando: </h4>
Preencher todas as informações necessárias para finalizar o cadastro e ao clicar no botão "Finalizar cadastro" o valor total dos itens de venda sera exibido na tela;

<h1> Pronto você podera executar dessa forma a aps-8 de sistema distribuido de outra forma sem a utilização dos backend em nuvem </h1>




