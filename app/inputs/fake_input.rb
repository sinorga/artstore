class FakeInput < SimpleForm::Inputs::StringInput
  # This method only create a basic input without reading any value from object
  def input
    template.number_field_tag(attribute_name, nil, input_html_options)
  end
end
