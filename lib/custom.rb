module Custom
  # Simple helpers for the Starry Hope site.

  def canonical_url
    @config[:base_url] + @item.path
  end

  def search(a)
    @items.find { |i| i.identifier == "/articles/#{a}/" }
  end
end
