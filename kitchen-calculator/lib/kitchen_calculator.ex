defmodule KitchenCalculator do
  def get_volume(volume_pair), do: elem(volume_pair, 1)

  def to_milliliter(volume_pair) do
    case volume_pair do
      {:milliliter, _} -> {:milliliter, get_volume(volume_pair)}
      {:cup, _} -> {:milliliter, get_volume(volume_pair) * 240}
      {:fluid_ounce, _} -> {:milliliter, get_volume(volume_pair) * 30}
      {:teaspoon, _} -> {:milliliter, get_volume(volume_pair) * 5}
      {:tablespoon, _} -> {:milliliter, get_volume(volume_pair) * 15}
    end
  end

  def from_milliliter(volume_pair, unit) do
    # Please implement the from_milliliter/2 functions
    vol = elem(volume_pair, 1)
    case unit do
       :milliliter -> volume_pair
       :cup -> {:cup, vol / 240}
       :fluid_ounce -> {:fluid_ounce, vol / 30}
       :teaspoon -> {:teaspoon, vol / 5}
       :tablespoon -> {:tablespoon, vol / 15}
    end
  end

  def convert(volume_pair, unit) do
    # Please implement the convert/2 function
    from_milliliter(to_milliliter(volume_pair), unit)
  end
end
