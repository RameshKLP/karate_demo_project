Feature: GET API demo

  Background:
    * url someUrlBase
    * configure logPrettyResponse = true
    * configure logPrettyRequest = true
    * header Accept = 'application/json'
    * configure report = { showLog: true, showAllSteps: false }


  @TC1
  Scenario: Get Demo1
    Given path 'users?page=2'
    When method GET
    Then status 200
    And print response
    And print responseTime
    And print responseStatus
    And print responseHeaders
    And print responseCookies

  @TC2
  Scenario: Get Demo2
    Given path 'users?page=2'
    When method GET
    Then status 200
    And print response

  @TC3
  Scenario: Get Demo3
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200
    And print response

  @TC4
  Scenario: Get Demo4
    Given path '/users'
    And param page = 2
    When method GET
    Then status 200

    And print response
    And match response.data[0].first_name != null
    And assert response.data.length == 6
    And match $.data[1].id == 8
    And match $.data[3].last_name == 'Fields'
