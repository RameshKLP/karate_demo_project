
Feature: Delete API Demo

  @TC8
  Scenario: Delete API test
    Given url 'https://reqres.in/api/users/2'
    When method DELETE
    Then status 204
    And print responseStatus
    And print response