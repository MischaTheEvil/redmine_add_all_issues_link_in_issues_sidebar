module Hooks
  class RedmineAddAllIssuesLinkInIssuesSidebarHook < Redmine::Hook::ViewListener
    def view_issues_sidebar_issues_bottom(context = { })
      if context[:controller].is_a?(IssuesController) && context[:request][:action] == 'show'
        context[:controller].send(:render_to_string, {
          :partial => 'hooks/view_issues_sidebar_issues_bottom',
          :layout => false,
          :locals => context }
        )
      end
    end
  end
end