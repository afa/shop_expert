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
  And I am redirected to single question view

 Scenario: Edit question
  Given existing question record
  And I am getting question edit page
  And edition form with fields filled from record
  When I change name
  And submit form
  Then record must be updated from form
  And I am should be redirected to question view

 Scenario: Add answers to question
  Given existing question record with answers
  And I am getting show page
  And I can view button add answer
  And I can view answers list
  When I click button add answer
  And fill answer name
  And confirm addition
  Then answer added  to question
  And answer showed in answers list
