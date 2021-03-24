class StartPage
    include HTTParty
    base_uri "swapi.dev/api"

    def initialize(endPoint)
        @rota = endPoint
    end

    def getStart()
        self.class.get(@rota)
    end

end