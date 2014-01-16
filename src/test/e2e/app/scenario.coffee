"use strict"

# http://docs.angularjs.org/guide/dev_guide.e2e-testing 
describe "my app", ->
  beforeEach ->
    browser().navigateTo "/"

  it "should automatically redirect to /todo when location hash/fragment is empty", ->
    expect(browser().location().url()).toBe "/todo"

  it "should navigate to /view1 when the View 1 link in nav is clicked", ->
    element(".nav a[href=\"#/view1\"]").click()
    expect(browser().location().url()).toBe "/view1"

  describe "todo", ->

    it "should list 2 items", ->
      expect(repeater("[ng-view] ul li").count()).toEqual 2

    it "should display checked items with a line-through", ->
      expect(element("[ng-view] ul li input:checked + span").css("text-decoration")).toEqual "line-through"

    it "should sync done status with checkbox state", ->
      element("[ng-view] ul li input:not(:checked)").click()
      expect(element("[ng-view] ul li span").attr("class")).toEqual "donetrue"
      element("[ng-view] ul li input:checked").click()
      expect(element("[ng-view] ul li span").attr("class")).toEqual "donefalse"

    it "should remove checked items when the archive link is clicked", ->
      element("[ng-view] a[ng-click=\"archive()\"]").click()
      expect(repeater("[ng-view] ul li").count()).toEqual 1

    it "should add a newly submitted item to the end of the list and empty the text input", ->
      newItemLabel = "test newly added item"
      input("todoText").enter newItemLabel
      element("[ng-view] input[type=\"submit\"]").click()
      expect(repeater("[ng-view] ul li").count()).toEqual 3
      expect(element("[ng-view] ul li:last span").text()).toEqual newItemLabel
      expect(input("todoText").val()).toEqual ""


  describe "view1", ->
    beforeEach ->
      browser().navigateTo "#/view1"

    it "should render view1 when user navigates to /view1", ->
      expect(element("[ng-view] p:first").text()).toMatch /partial for view 1/


  describe "view2", ->
    beforeEach ->
      browser().navigateTo "#/view2"

    it "should render view2 when user navigates to /view2", ->
      expect(element("[ng-view] p:first").text()).toMatch /partial for view 2/
