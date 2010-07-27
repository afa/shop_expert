Feature: Manage admin_questions
  In order to [goal]
  [stakeholder]
  wants organized questions editions

 Scenario: View list of questions
  Given questions list
  When I am getting questions index path
  Then I can view collection of questions
  And questions show names
  And each question has link to edit page
  And each question has link to show page
