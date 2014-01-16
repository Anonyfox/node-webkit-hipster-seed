'use strict'

# jasmine specs for services go here

describe "service", ->

  beforeEach(module "app.services")

  describe "version", ->
    it "should return current version", inject((version) ->
      expect(version).toEqual "0.1"
    )
