module Custom
  # Simple helpers for the Starry Hope site.

  def canonical_url
    @config[:base_url] + @item.path
  end

  def search(a)
    @items.find { |i| i.identifier == "/articles/#{a}/" }
  end

  def youtube(code)
    output = "<div class='youtube'><iframe src='http://www.youtube.com/embed/#{code}?rel=0' frameborder='0' allowfullscreen></iframe></div>"
  end
end
