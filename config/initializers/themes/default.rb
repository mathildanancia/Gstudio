Spina::Theme.register do |theme|
  # All views are namespaced based on the theme's name
  theme.name = 'default'
  theme.title = 'efault Theme'

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

    {name: 'section1',  title: "Section 1",  part_type: "Spina::Parts::Text"},
    {name: 'title1',  title: "Title 1",  part_type: "Spina::Parts::Line"},
    {name: 'section2',  title: "Section 2",  part_type: "Spina::Parts::Text"},
    {name: 'title2',  title: "Title 2",  part_type: "Spina::Parts::Line"},
    {name: 'section3',  title: "Section 3",  part_type: "Spina::Parts::Text"},
    {name: 'title3',  title: "Title 3",  part_type: "Spina::Parts::Line"},
    {name: 'section4',  title: "Section 4",  part_type: "Spina::Parts::Text"},
    {name: 'title4',  title: "Title 4",  part_type: "Spina::Parts::Line"},
    {name: 'email',  title: "Email",  part_type: "Spina::Parts::Line"},
    {name: 'instagram',  title: "Instagram",  part_type: "Spina::Parts::Line"},

  ]

  # View templates
  # Every page has a view template stored in app/views/my_theme/pages/*
  # You define which parts you want to enable for every view template
  # by referencing them from the theme.parts configuration above.
  theme.view_templates = [
    {name: 'homepage', title: 'Homepage', parts: ['title1', 'section1', 'title2', 'section2', 'title3', 'section3', 'title4', 'section4', 'email', 'instagram']},
    {name: 'show',     title: 'Page',     parts: %w(body)}
  ]

  # Custom pages
  # Some pages should not be created by the user, but generated automatically.
  # By naming them you can reference them in your code.
  theme.custom_pages = [
    {name: 'homepage', title: "Homepage", deletable: false, view_template: "homepage"},
  ]


end
