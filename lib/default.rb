unless defined? LOADED_DEFAULT_CONFIG

  LOADED_DEFAULT_CONFIG = true
  
  # include common helpers
  include Nanoc::Helpers::HTMLEscape
  include Nanoc::Helpers::LinkTo
  include Nanoc::Helpers::Rendering
  include Nanoc::Helpers::XMLSitemap

  # blogging helpers
  include Nanoc::Helpers::Blogging
  include Nanoc::Helpers::Tagging

  # cache busting
  #require 'nanoc/cachebuster'
  #include Nanoc::Helpers::CacheBusting
  
  # image compression
  require 'nanoc/filters/image_compressor'
  
  # javascript concatenation
  require 'nanoc/filters/javascript_concatenator'
  
end