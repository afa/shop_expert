module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /the home\s?page/
      '/'
    when /the new admin_product page/
      new_admin_product_path

    when /the new admin_bodies page/
      new_admin_bodies_path

    when /the new quest_view page/
      new_quest_view_path

    when /the new admin_question page/
      new_admin_question_path

    when /the new startup_accessing_site page/
      new_startup_accessing_site_path

    when /the new startup accessing site page/
      new_startup accessing site_path

    when /the new startup accessing site page/
      new_startup accessing site_path


    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /the (.*) page/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue Object => e
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
