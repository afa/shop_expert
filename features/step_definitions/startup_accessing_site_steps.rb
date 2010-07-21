Given /^the following startup_accessing_sites:$/ do |startup_accessing_sites|
  StartupAccessingSite.create!(startup_accessing_sites.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) startup_accessing_site$/ do |pos|
  visit startup_accessing_sites_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following startup_accessing_sites:$/ do |expected_startup_accessing_sites_table|
  expected_startup_accessing_sites_table.diff!(tableish('table tr', 'td,th'))
end
