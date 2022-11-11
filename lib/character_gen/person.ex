defmodule CharacterGen.Person do
    defstruct gender: nil,
              sexuality: nil,
              ethnicity: nil,
              hair_type: nil,
              hair_color: nil,
              eye_color: nil

    defimpl Jason.Encoder do
        @impl Jason.Encoder 
        def encode(value, opts) do
            Jason.Encode.map(%{"gender": value.gender, "sexuality": value.sexuality, "ethnicity": value.ethnicity, "hair_type": value.hair_type, "hair_color": value.hair_color, "eye_color": value.eye_color}, opts)
        end
    end

  end
  