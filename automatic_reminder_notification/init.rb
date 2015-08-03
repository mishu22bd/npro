Redmine::Plugin.register :automatic_reminder_notification do
  name 'Automatic Reminder Notification plugin'
  author 'Sayem Chowdhury'
  description 'This is a plugin for Automatic Reminder Notification'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
end


Redmine::Plugin.register :redmine_polls do
  
  permission :arns, { :arns => [:index, :vote] }, :public => true
  menu :project_menu, :arns, { :controller => 'arns', :action => 'index' }, :caption => 'Tasks Reminders'
end


Redmine::Plugin.register :redmine_polls do
  settings :default => {'empty' => true}, :partial => 'settings/arn_settings'
end





