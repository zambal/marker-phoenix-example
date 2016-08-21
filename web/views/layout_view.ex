defmodule MarkerPhoenixExample.LayoutView do
  use MarkerPhoenixExample.Web, :view

  template :app do
    html lang: "en" do
      head do
        meta charset: "utf-8"
        meta "http-equiv": "X-UA-Compatible", content: "IE=edge"
        meta name: "viewport", content: "width=device-width, initial-scale=1"
        meta name: "description", content: ""
        meta name: "author", content: ""

        title "Hello MarkerPhoenixExample!"
        link rel: "stylesheet", href: static_path(@conn, "/css/app.css")
      end
      body do
        div class: "container" do
          header class: "header" do
            nav role: "navigation" do
              ul class: "nav nav-pills pull-right" do
                li a("Get Started", href: "http://www.phoenixframework.org/docs")
              end
            end
            span class: "logo"
          end

          p get_flash(@conn, :info), class: "alert alert-info", role: "alert"
          p get_flash(@conn, :error), class: "alert alert-danger", role: "alert"

          main role: "main" do
            render @view_module, @view_template, assigns
          end

        end
        script src: static_path(@conn, "/js/app.js")
      end
    end
  end

  def render(_template, assigns), do: app(assigns)
end
