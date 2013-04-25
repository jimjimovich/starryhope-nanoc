module Custom
  # Simple helpers for the Starry Hope site.

  def canonical_url
    @config[:base_url] + @item.path
  end

  def meta_thumbnail
    unless @item[:thumbnail].include? 'http'
      @config[:base_url] + @item[:thumbnail]
    else
      @item[:thumbnail]
    end
  end

  def search(a)
    @items.find { |i| i.identifier == "/articles/#{a}/" }
  end

  def youtube(code)
    output = "<div class='youtube'><iframe src='http://www.youtube.com/embed/#{code}?rel=0' frameborder='0' allowfullscreen></iframe></div>"
  end
end
