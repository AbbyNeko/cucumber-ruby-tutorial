@google
Feature: Google Search

  @kayaks
  Scenario: If the user searches "kayaks" on Google, user is redirected to the Results page
    Given the user navigates to the Google page
    When the user searches for "kayaks"
    Then the user is redirected to the results page for "kayaks"

  @canoes
  Scenario: If the user searches "kayaks" on Google, user is redirected to the Results page
    Given the user navigates to the Google page
    When the user searches for "canoes"
    Then the user is redirected to the results page for "canoes"