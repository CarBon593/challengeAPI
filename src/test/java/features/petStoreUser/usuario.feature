@ChallengeAPI
Feature: CRUD Usuario

  Background:
    * def body = read('classpath:data/crearUsuario.json')
    * def body_update = read('classpath:data/actualizarUsuario.json')


  Scenario: Crear usuario
    #Crear usuario
    #* def body = read('classpath:data/crearUsuario.json')
    Given url "https://petstore.swagger.io/v2/user"
    And request body
    When method POST
    Then status 200
    And print "Crear Usuario"
    And print response
    And match response.code == 200

  Scenario: Buscar usuario
    #Buscar usuario
    Given url "https://petstore.swagger.io/v2/user"
    And path body.username
    When method GET
    Then status 200
    And print "Buscar Usuario"
    And print response

  Scenario: Actualizar nombre y correo
    #Actualizar usuario
    Given url "https://petstore.swagger.io/v2/user"
    And path body_update.username
    And request body_update
    When method PUT
    Then status 200
    And print "Actualizar Username y correo"
    And print response

  Scenario: Buscar usuario actualizado
    #Buscar usuario actualizado
    Given url "https://petstore.swagger.io/v2/user"
    And path body_update.username
    When method GET
    Then status 200
    And print "Buscar Usuario actualizado"
    And print response

  Scenario: Eliminar usuario
    #Eliminar usuario
    Given url "https://petstore.swagger.io/v2/user"
    And path body_update.username
    When method DELETE
    Then status 200
    And print "Eliminar Usuario"
    And print response