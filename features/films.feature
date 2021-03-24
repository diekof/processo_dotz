#language:pt

Funcionalidade: Filmes
    Suite testes para validar a api de filmes

    Contexto: Página principal
        Dado que eu tenha o endereço da API "/films"

    Cenario: Enviar uma requesição GET para a API de filmes
        Enviar um GET para a API https://swapi.dev/api/films/ e armazenar o valor do campo “title” 
        de cada elemento da estrutura “results” em variável e Validar o
        statuscode (Sucesso) da resposta da requisição.

        Quando realizo a requisição "GET" 
        Então devo ver lista de filmes
        E devo ter o statuscode 200