defmodule HighSchoolSweetheart do
  def first_letter(name) do
    # Please implement the first_letter/1 function
    String.trim(name)
      |> String.first()
  end

  def initial(name) do
    # Please implement the initial/1 function
    String.upcase(name)
      |> first_letter()
      |> Kernel.<>(".")
  end

  def initials(full_name) do
    # Please implement the initials/1 function
    String.split(full_name, " ")
      |> Enum.map(&(initial(&1)))
      |> Enum.join(" ")
  end

  def pair(full_name1, full_name2) do
    name1 = initials(full_name1)
    name2 = initials(full_name2)

    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{name1}  +  #{name2}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """

    # Please implement the pair/2 function
  end
end
