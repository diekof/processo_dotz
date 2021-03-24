class FilmePage
    require 'json'

    def retornaQuantidadedeRegistros(p_response)
        return "Foram encontrados #{p_response['count']} títulos!"
    end

    def retornaStatusCode(p_response)
        return p_response.code
    end    

    def validaStatusCode(p_response)
        case p_response.code
            when 200
                return "Funcionando!"
            when 404
                return "Shiii, uri não encontrada!"
            when 500...600
                return "ERRO #{p_response.code}"
        end
    end

    def validationResponse(p_response)

        $response         = JSON.parse(p_response.body)
        $results          = $response["results"]
        $titulos          = []
        
        $results.each do |result|
            $titulos.push(result['title'])
        end
        
        return $titulos

    end
end