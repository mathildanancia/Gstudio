::Spina::Theme.register do |theme|

  theme.name = 'default'
  theme.title = 'Default Theme'

  theme.page_parts = [{
    name:           'section1',
    title:          'Section 1',
    partable_type:  'Spina::Text'
  },{
    name:           'title1',
    title:          'Title 1',
    partable_type:  'Spina::Line'
  },{
    name:           'section2',
    title:          'Section 2',
    partable_type:  'Spina::Text'
  },{
    name:           'title2',
    title:          'Title 2',
    partable_type:  'Spina::Line'
  },{
    name:           'section3',
    title:          'Section 3',
    partable_type:  'Spina::Text'
  },{
    name:           'title3',
    title:          'Title 3',
    partable_type:  'Spina::Line'
  },{
    name:           'section4',
    title:          'Section 4',
    partable_type:  'Spina::Text'
  },{
    name:           'title4',
    title:          'Title 4',
    partable_type:  'Spina::Line'
  },{
    name:           'email',
    title:          'Email',
    partable_type:  'Spina::Line'
  },{
    name:           'instagram',
    title:          'Instagram',
    partable_type:  'Spina::Line'
  }]

  theme.view_templates = [{
    name:       'homepage',
    title:      'Homepage',
    page_parts: ['title1', 'section1', 'title2', 'section2', 'title3', 'section3', 'title4', 'section4', 'email', 'instagram']
  }]

  theme.custom_pages = [{
    name:           'homepage',
    title:          'Homepage',
    deletable:      false,
    view_template:  'homepage'
  }]

end


