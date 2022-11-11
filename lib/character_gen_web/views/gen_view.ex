defmodule CharacterGenWeb.GenView do
    use CharacterGenWeb, :view

    def render("index.json", %{generate: num}) when is_integer(num) and num <= 50 do
        %{characters: CharacterGen.Handler.handle(num)}
    end

    def render("index.json", %{generate: num}) when is_integer(num) and num > 50, do: %{status: "Are you making a LOTR movie or something?"} 
end