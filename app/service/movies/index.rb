class Movies::Index

    def initialize()
    end

    def call
        index
    end

    private

    def index
        conn = Faraday.new(
            url: "http://localhost:3001/v2/movies",
            params: params,
            headers: {'Content-Type' => 'application/json'}
        )

        response = conn.get
        JSON.parse(response.body)
    end

    def params
        {  }
    end
end