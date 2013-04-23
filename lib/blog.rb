module ExtendBlogging
  ## A lot of this file was taken from here https://github.com/andatche/andatche.com/blob/master/lib/blog.rb
  ## and here http://stackoverflow.com/questions/13866141/how-to-generate-pages-for-each-tag-in-nanoc

  def posts
    sorted_articles # .reject{ |i| i[:is_hidden] }
  end

  def all_post_tags
    posts.map {|i| i[:tags] }.flatten.compact.uniq
  end

  def posts_with_tag tag
    posts.select {|post| post[:tags] && post[:tags].include?(tag) }
  end

  def tags_for_post post, params={}
    params ||= {}
    params[:separator]  ||= ", "
    params[:base_url]   ||= "/tags/"
    params[:none_text]  ||= "(none)"

    if post[:tags] && !post[:tags].empty?
      post[:tags].map {|tag| link_for_post_tag(tag, params[:base_url]) }.join(params[:separator])
    else
      params[:none_text]
    end
  end

  def items_with_tag_by_date(tag)
    items = @items.select { |i| (i[:tags] || []).include?(tag) }
    items.sort_by! do |a|
      attribute_to_time(a[:created_at])
    end.reverse
  end

  def link_for_post_tag name, base_uri
    %{<a href="#{h base_uri}#{h slugify(name)}/" rel="tag">#{h name}</a>}
  end

  def slugify str
    str.downcase.gsub(/\s+/, "-").gsub(/-{2,}/, "-")
  end
end