defmodule FreelancerRates do
  def daily_rate(hourly_rate), do: hourly_rate * 8.0

  def apply_discount(before_discount, discount) do
    percent_discount = discount / 100
    sale_price = before_discount - (before_discount * percent_discount)
    sale_price
  end

  def monthly_rate(hourly_rate, discount) do
    # Please implement the monthly_rate/2 function
    daily_rate(hourly_rate) * 22
      |> apply_discount(discount)
      |> ceil()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    # Please implement the days_in_budget/3 function
    budget / apply_discount(daily_rate(hourly_rate), discount)
      |> Float.floor(1)
  end
end
