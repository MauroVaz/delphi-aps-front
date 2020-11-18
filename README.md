<h1> Instalação APS-8 Sistemas Distribuidos</h1>
</hr>
<h3> Opção 1: Abrindo o Front local e usando o Backend do servidor Cloud (servidor pessoal)</b> 

<h4>Primeiro passo de instalação: </h4>
Faça o download no GITHUB do projeto <i>delphi-aps-front</i>.

<h4>Abrindo o projeto: </h4>
Para abrir o projeto, entre na pasta que o download foi realizado, depois entre em <i>/Win32/Debug/</i> e execute o arquivo <i>JsonAttributes.exe</i>;

<h4>Utilizando: </h4>
Preencha todas as informações necessárias para a execução do cadastro. Ao clicar no botão <i>"Finalizar cadastro"</i>, o valor total dos itens de venda sera exibido na tela.

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
    
<h4>Pre-Requisitos Banco de dados: </h4>

<ol>
  <li>Crie o database com o comando <b><i>"CREATE DATABASE aps"</i></b></li>
  <li>Crie a tabela VALORES com o comando <b><i>"CREATE TABLE VALORES (UUID VARCHAR(50), papel INT,plastico INT,vidro INT,metal INT,organico INT,outros INT, total INT);
"</i></b></li>
  <li>Crie a tabela PESSOA com o comando <b><i>"CREATE TABLE PESSOA (UUID VARCHAR(50), tagg boolean,cpf VARCHAR(50),cel VARCHAR(50),tel VARCHAR(50), nome VARCHAR(50));
"</i></b></li>
</ol>


<h4>Primeiro Passo de instalação: </h4>
Faça o download no GITHUB dos projetos:
<ol>
<li><a href="https://github.com/MauroVaz/delphi-aps-front" target="_blank">delphi-aps-front</a>.</li>
<li><a href="https://github.com/MauroVaz/si8-aps" target="_blank">si8-aps</a>.</li>
<li><a href="https://github.com/MauroVaz/si8-aps-calculate" target="_blank">si8-aps-calculate</a>.</li>
</ol>

<h4>Alterando os codigos para execução local:</h4>
No projeto <i>"delphi-aps-front"</i> é necessario a alteração da URL do servidor na aplicação, ou seja, será necessário alterar o valor da variavél na unit <i>Cadastro.pas</i> na <i>linha 169</i> do arquivo, alterando o IP do servidor da nuvem para o seu local, ou para a maquina que sera executado o codigo incluído no arquivo <i>"si8-aps"</i>;
Após a alteração, compile o codigo pela IDE do Delphi.
</br>
</br>
No projeto "si8-aps" é necessario efetuar uma alteração na IDE do eclipse da seguinte forma: altere o arquivo <i>"database_pool.properties"</i> em <i>"/src/main/java"</i>, altere a linha 3 e 4 para seu <i>Usuario</i> e <i>Senha</i> do Postgree SQL.
Juntamente a isso, altere a linha 10 para seu servidor e porta do Postgre SQL (e banco caso tenha sido alterado o nome do database).
No package <i>"com.unip.aps.controller"</i> e na classe <i>"AsyncController.java"</i> é necessario a alteração da <i>linha 34</i> no ip da variavel <i>"url"</i> que sera o servidor onde subirá a api <i>"si8-aps-calculate"</i>
</br>
</br>
Assim como no passo anterior no projeto <i>"si8-aps-calculate"</i> se faz necessaria a alteração na IDE do eclipse da seguinte forma: altere o arquivo <i>"database_pool.properties"</i> em <i>"/src/main/java"</i>, altere a linha 3 e 4 para seu <i>Usuario</i> e <i>Senha</i> do Postgres SQL.
Juntamente a isso, altere a <i>linha 10</i> para seu servidor e porta do Postgre SQL (e banco caso tenha sido alterado o nome do database).

<h5>Compilando e instalando projetos Java (Processo necessario para projeto "si8-aps" e "si8-aps-calculate"):</h5>

Entre na pasta do projeto, onde se localiza o arquivo <b><i>"pom.xml"</i></b>;</br>
Abra o CMD nesse local e execute o comando <b><i>"mvn clean package"</i></b>;</br>
Apos a execução do comando dentro da pasta do projeto aparecerá a pasta <b><i>"target"</i></b> com o arquivo .war do projeto;</br>
Copie o arquivo, vá a seu local de instalação do tomcat, e cole dentro da pasta "webapps";</br>
Entre na pasta "bin" do tomcat e execute o arquivo "startup" correspondente ao seu Sistema Operacional;

<h5>Após a instalação do projeto Java:</h5>
Após a instalçao dos projetos java no servidor de aplicação tomcat e o start do mesmo, e a compilaçao do projeto em Delphi, é possivel abrir o projeto entrando na pasta que o foi feito o download e compilação em seguida entre em <i>/Win32/Debug/</i> e execute o <b><i>JsonAttributes.exe<b></i>;

<h4>Utilizando: </h4>
Preencher todas as informações necessárias para finalizar o cadastro e ao clicar no botão "Finalizar cadastro" o valor total dos itens de venda sera exibido na tela;

<h1> Pronto! você podera executar dessa forma a aps-8 de sistema distribuido de 2 formas: utilizando ou não o backend (já pronto) em nuvem </h1>




