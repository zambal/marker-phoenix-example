defmodule MarkerPhoenixExample.PageView do
  use MarkerPhoenixExample.Web, :view

  component :simple_list do
    items = for c <- @__content__, do: li c
    ul items
  end

  template :index do
    [
      div class: "jumbotron" do
        h2 gettext("Welcome to %{name}", name: "Phoenix!")
        p ["A productive web framework that", br, "does not compromise speed and maintainability."], class: "lead"
      end,
      div class: "row marketing" do
        div class: "col-lg-6" do
          h4 "Resources"
          simple_list do
            a "Guides", href: "http://phoenixframework.org/docs/overview"
            a "Docs", href: "https://hexdocs.pm/phoenix"
            a "Source", href: "https://github.com/phoenixframework/phoenix"
          end
        end
        div class: "col-lg-6" do
          h4 "Help"
          simple_list do
            a "Mailing list", href: "http://groups.google.com/group/phoenix-talk"
            a "#elixir-lang on freenode IRC", href: "http://webchat.freenode.net/?channels=elixir-lang"
            a "@elixirphoenix", href: "https://twitter.com/elixirphoenix"
          end
        end
      end
    ]
  end

  def render("index.html", assigns), do: index(assigns)
end
