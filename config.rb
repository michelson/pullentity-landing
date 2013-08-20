# coding: utf-8

#"begin"

require "pullentity-client/helpers"

activate :target do |target|
  target.build_targets = {
    "pullentity" => {
      :includes => %w[remote_theme]
    }
  }
end

activate :pullentity_config

page "views/*", :layout => false

configure :build do
  activate :minify_css
  activate :minify_javascript
end

