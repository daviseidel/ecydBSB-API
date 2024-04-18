module Components::FilterHelper
  def filter_icon(&block)
    content_for :filter_icon, capture(&block), flush: true
  end

  def render_filter(items, **options, &block)
    content_for :filter_icon, "", flush: true
    content = capture(&block) if block
    input_class = content_for?(:filter_icon) ? "pl-1" : ""
    render "components/ui/filter", items: items, options: options, input_class: input_class, content: content
  end

  def list_item(value:, name:, selected:)
  # You can customize this however you want based on your requirements
    "Teste"
    puts 123
  end
end
