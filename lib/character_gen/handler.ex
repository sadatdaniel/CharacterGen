defmodule CharacterGen.Handler do
    def handle(times) do
      to_list_times(times, [])
    end
  
    defp to_list_times(0, list), do: list
  
    defp to_list_times(times, list) do
      to_list_times(times - 1, [provide() | list])
    end
  
    defp provide() do
      %CharacterGen.Person{}
      |> gender
      |> sexuality
      |> ethnicity
      |> hair_type
      |> hair_color
      |> eye_color
    end
  
    defp gender(person) do
      %{person | gender: Enum.random([:male, :female, :trans, :non_binary])}
    end
  
    defp sexuality(person) do
      %{
        person
        | sexuality:
            Enum.random([:gay, :lesbian, :bisexual, :queer, :gender_fluid, :straight, :asexual])
      }
    end
  
    defp ethnicity(person) do
      %{
        person
        | ethnicity:
            Enum.random([:asian, :black, :african_american, :hispanic_latino, :white, :mixed])
      }
    end
  
    defp hair_type(person) do
      %{person | hair_type: Enum.random([:shaved_bald, :straight, :wavy, :curly, :coily])}
    end
  
    defp hair_color(person = %{hair_type: :shaved_bald}), do: person
  
    defp hair_color(person) do
      %{
        person
        | hair_color:
            Enum.random([:black, :blonde, :brunette, :red, :white, :pink, :purple, :orange, :ashen])
      }
    end
  
    defp eye_color(person) do
      %{person | eye_color: Enum.random([:blue, :green, :hazel, :brown, :amber, :gray])}
    end
  end
  