Feature: Feature

  Scenario: that passes
    Given I am on "/wiki/Main_Page"
    Then I should see "Wikipedia"

  @javascript
  Scenario Outline:
    Given I am on "/wiki/Main_Page"
    When I follow "<link>"
    Then I should see "<text>"

    Examples:
      |link|text|
      |Help|Help:Contents|
      |About Wikipedia|Wikipedia:About|

  Scenario: that fails
    Given I am on "/wiki/Main_Page"
    Then I should see "Wukipedia"

  @mobile
  Scenario: That is mobile
    Given I am on "/wiki/Main_Page"
    When I follow "Open main menu"
    Then I should see "Home"
    And I should see "Random"
    And I should see "Nearby"