Feature: Setup LAMP as Nagios Prerequisite then Install and Setup Nagios Core

	Background: 
		Given I have a running server
		And I provision it

	Scenario:
		When I install dependencies
		Then it should be successful

	Scenario:
		When I install Apache
		Then it should be successful
		And apache2 should be running
		And it should be accepting connections on port 80

	Scenario:
		When I install MySQL
		Then it should be successful
		And mysql should be running
		And it should be accepting connections on port 3306

	Scenario:
		When I install PHP
		Then it should be successful


	Scenario:
		When I install requirements
		Then it should be successful

	Scenario:
		When I install nagios core
		Then it should be successful

	Scenario:
		When I install plugin
		Then it should be successful

	Scenario:
		When I install nrpe
		Then it should be successful
		And xinetd should be running

	Scenario:
		When I configure nagios
		Then it should be successful

	Scenario:
		When I configure apache
		Then it should be successful
		And apache2 should be running
		And nagios should be running