require_dependency 'hooks/redmine_add_all_issues_link_in_issues_sidebar_hook'

Redmine::Plugin.register :redmine_add_all_issues_link_in_issues_sidebar do
  name 'Redmine add_all_issues_link_in_issues_sidebar plugin'
  author 'Mischa The Evil'
  description 'This is a plugin that adds an all issues link to the issues sidebar in Redmine'
  version '0.0.1'
  url 'https://github.com/MischaTheEvil/redmine_add_all_issues_link_in_issues_sidebar'
  author_url 'https://github.com/MischaTheEvil'
  requires_redmine version_or_higher: '4.1.0'
end