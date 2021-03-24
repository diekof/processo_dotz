Dado('que eu tenha o endereço da API {string}') do |endPoint|
  # $uri_base = endPoint
  @ExecStart = StartPage.new(endPoint)
end

Quando('realizo a requisição {string}') do |uri|
   $response = @ExecStart.getStart()
end

Então('devo ver lista de filmes') do

  @FilmePage = FilmePage.new
  
  $response_status_code = @FilmePage.retornaStatusCode($response)

  $response_status_desc = @FilmePage.validaStatusCode($response)
  log($response_status_desc)

  $qtdRegistros = @FilmePage.retornaQuantidadedeRegistros($response)
  log($qtdRegistros)

  $titulos = @FilmePage.validationResponse($response)
  log($titulos)
  
end

E('devo ter o statuscode {int}') do |status_code|
  expect($response_status_code).to eq status_code
end
