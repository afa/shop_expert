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

 Scenario: View single question
  Given question in db
  When I am get question show path
  Then I can view name of question
  And I can view link to edit question
  And I can view link to destroy question
  And I can view list of answers for this question
  And I can view link to index page

 Scenario: New question
  Given I am getting questions/new
  When I fill name field
  And click submit button
  Then new record added to Question
  And record name eq filled
  And I am redirected to single question view
