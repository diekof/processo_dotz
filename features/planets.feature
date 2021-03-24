#language:pt

Funcionalidade: Planets
    Suite testes para validar a api de planets.

    Cenario: Enviar uma requesição GET para a API de planets
        Enviar um GET para a API http://swapi.dev/api/planets/ armazenar o valor do campo “count”, 
        enviar um novo GET para o mesmo endpoint passando um
        valor aleatório que seja superior ao armazenado. Validar o statuscode e a mensagem exibida.

        Quando realizo a requisição "GET" no caminho "/planets" com a página 1
        Então devo ver lista de planetas
        E devo ter o statuscode 200
        E coseguir visualizar o valor count dentro do retorno
        Quando realizo a nova requisição "GET" no caminho "/planets" com a próxima página
        Então devo ver lista de planetas
        E devo ter o statuscode 200
        E coseguir visualizar o valor count dentro do retorno

    Esquema do Cenario: Eviando requisições GET para a API de planets, trocando os parametros

        Dado que eu tenha o endereço da API "/planets/?page=<page>"
        Quando realizo a requisição "<req>" 
        Então devo ver lista de planetas
        E devo ter o statuscode <status_code>
        E coseguir visualizar o valor count dentro do retorno

        Exemplos:
            |req                |page           |status_code    |
            |GET                |1              |200            |
            |GET                |2              |200            |
            |GET                |3              |200            |
