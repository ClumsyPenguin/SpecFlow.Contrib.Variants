﻿@Browser:Chrome
@Browser:Edge
Feature: MsTestDemoFeatureTests
	In order to verify the SpecFlow variants plugin for features
	As a developer
	I want to be able to run integration tests to validate the plugin

Background: 
	Given I am on the home page

Scenario: A single test without examples or tags
	And I drill into the 'Add/Remove Elements' link
	When I add element
	Then the element is added

@Home
@About
@Contact_Us
@Portfolio
Scenario: A test with non-variant tags
	And I drill into the 'Disappearing Elements' link
	Then the tags match the menu items

Scenario Outline: A test with variant tags and examples
	When I drill into the '<Link>' link
	Then the page should be '<Site>'
	Examples:
	| Link       | Site                                         |
	| Checkboxes | https://the-internet.herokuapp.com/checkboxes |
	| Dropdown   | https://the-internet.herokuapp.com/dropdown   |