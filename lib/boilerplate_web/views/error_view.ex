defmodule BoilerplateWeb.ErrorView do
  use BoilerplateWeb, :view

  def render("show.json", %{errors: errors}) do
    %{errors: errors}
  end

  # By default, Phoenix returns the status message from
  # the template name. For example, "404.json" becomes
  # "Not Found".
  def template_not_found(template, _assigns) do
    %{errors: %{detail: Phoenix.Controller.status_message_from_template(template)}}
  end
end
