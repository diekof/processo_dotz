Quando('realizo a requisição {string} com a página {string}') do |endPoint, page|
    $response = @ExecStart.getStart()
end

Quando('realizo a requisição {string} no caminho {string} com a página {int}') do |method, uri, page|
    @Pagina = page
    $endPoint = "#{uri}/?page=#{page}"

    @ExecStart = StartPage.new($endPoint)
    $response = @ExecStart.getStart()

    @FilmePage              = FilmePage.new
    $response_status_code   = @FilmePage.retornaStatusCode($response)
    $qtdRegistros           = @FilmePage.retornaQuantidadedeRegistros($response)    
end    

Quando('realizo a nova requisição {string} no caminho {string} com a próxima página') do |method, uri|

    @Pagina += 1
    $endPoint = "#{uri}/?page=#{@Pagina}"

    @ExecStart = StartPage.new($endPoint)
    $response = @ExecStart.getStart()

    @FilmePage              = FilmePage.new
    $response_status_code   = @FilmePage.retornaStatusCode($response)
    $qtdRegistros           = @FilmePage.retornaQuantidadedeRegistros($response)    

end    

Então('devo ver lista de planetas') do
    log("Resultado: #{$response}")
end

E('coseguir visualizar o valor count dentro do retorno') do 


    log($qtdRegistros)

end    

