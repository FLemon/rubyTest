module ApplicationHelper
  if ENV['R_HOME'].nil?
    ENV['R_HOME']="/Library/Frameworks/R.framework/Resources"
  end
  
  
end
