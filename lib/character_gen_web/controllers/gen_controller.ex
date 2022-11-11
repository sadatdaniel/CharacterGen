defmodule CharacterGenWeb.GenController do
    use CharacterGenWeb, :controller

    def index(conn, params) do 
        %{"id" => num} = params
        # "%{"id" => num} = params
        # params.key = %{id : num}
        { num, _} = Integer.parse(num)
        
        render(conn, "index.json", generate: num)
    end
end