Spina::Theme.register do |theme|
  # All views are namespaced based on the theme's name
  theme.name = 'my_theme'
  theme.title = 'My Theme'

  # Parts
  # Define all editable parts you want to use in your view templates
  #
  # Built-in part types:
  # - Line
  # - MultiLine
  # - Text (Rich text editor)
  # - Image
  # - ImageCollection
  # - Attachment
  # - Option
  # - Repeater
  theme.parts = [
    {name: 'body',  title: "Body",  part_type: "Spina::Parts::Text"},
    {name: "tags",  title: "Tags",  part_type: "Spina::Parts::Line"},
    {name: "image", title: "Image", part_type: "Spina::Parts::Image"}
  ]

  # View templates
  # Every page has a view template stored in app/views/my_theme/pages/*
  # You define which parts you want to enable for every view template
  # by referencing them from the theme.parts configuration above.
  theme.view_templates = [
    {name: 'homepage', title: 'Homepage', parts: %w(body)},
    {name: 'show',     title: 'Page',     parts: %w(body)},
    {name: 'articles', title: 'Articles', parts: %w(body)},
    {name: 'article',  title: 'Article',  parts: %w(body tags)}
  ]

  # Custom pages
  # Some pages should not be created by the user, but generated automatically.
  # By naming them you can reference them in your code.
  theme.custom_pages = [
    {name: 'homepage', title: "Homepage", deletable: false, view_template: "homepage"},
    {name: 'articles', title: "Articles", deletable: false, view_template: "articles"}
  ]

  # Navigations (optional)
  # If your project has multiple navigations, it can be useful to configure multiple
  # navigations.
  theme.navigations = [
    {name: 'main', label: 'Main navigation'}
  ]

  # Resources (optional)
  # Think of resources as a collection of pages. They are managed separately in Spina
  # allowing you to separate these pages from the 'main' collection of pages.
  theme.resources = [
    {name: 'articles', label: "Articles", view_template: "article", slug: "articles"}
  ]

end
