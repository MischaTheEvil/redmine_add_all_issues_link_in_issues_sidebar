# Dynamically load all Hooks & Patches
ActiveSupport::Reloader.to_prepare do
  Dir::foreach(File.join(File.dirname(__FILE__), 'lib')) do |file|
    next unless /\.rb$/ =~ file
    require_dependency file
  end
end

Redmine::Plugin.register :redmine_add_all_issues_link_in_issues_sidebar do
  name 'Redmine add_all_issues_link_in_issues_sidebar plugin'
  author 'Mischa The Evil'
  description 'This is a plugin that adds an all issues link to the issues sidebar in Redmine'
  version '0.0.2'
  url 'https://github.com/MischaTheEvil/redmine_add_all_issues_link_in_issues_sidebar'
  author_url 'https://github.com/MischaTheEvil'
  requires_redmine version_or_higher: '5.1.0'
end
