# Marker Phoenix framework Example

This is a simple example project to show how [`Marker`](https://github.com/zambal/marker) can be used with the Phoenix framework

It is just a translation of the default `app.html.eex` and `page.html.eex` templates. The `Marker` templates are implemented in [`web/views/layout_view.ex`](https://github.com/zambal/marker-phoenix-example/blob/master/web/views/layout_view.ex) and [`web/views/page_view.ex`](https://github.com/zambal/marker-phoenix-example/blob/master/web/views/page_view.ex). Furthermore, in [`web/web.ex`](https://github.com/zambal/marker-phoenix-example/blob/master/web/web.ex) 'Marker' is used instead of `Phoenix.HTML`, so `Marker` is included in every new Phoenix view that is initialized with
```elixir
use MarkerPhoenixExample.Web, :view
```

To start the Phoenix app:

  * Install dependencies with `mix deps.get`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.
