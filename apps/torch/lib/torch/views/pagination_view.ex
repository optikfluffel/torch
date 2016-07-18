defmodule Torch.PaginationView do
  @moduledoc """
  `Phoenix.View` to render pagination controls for Torch-generated index templates.
  """

  use Phoenix.View, root: "lib/torch/templates"
  use Phoenix.HTML

  import Torch.TableView

  @doc """
  Generates a "< Prev" link to the previous page of results.

  The link is only returned if there is a previous page.

  ## Example

      prev_link(2, 2)
      # => returns link

      prev_link(1, 1)
      # => returns nil
  """
  def prev_link(current_page, _num_pages) do
    if current_page != 1 do
      link "< Prev", to: "?page=#{current_page - 1}"
    end
  end

  @doc """
  Generates a "Next >" link to the next page of results.

  The link is only returned if there is another page.

  ## Example

      next_link(1, 2)
      # => returns link

      next_link(2, 2)
      # => returns nil
  """
  def next_link(current_page, num_pages) do
    if current_page != num_pages do
      link "Next >", to: "?page=#{current_page + 1}"
    end
  end
end