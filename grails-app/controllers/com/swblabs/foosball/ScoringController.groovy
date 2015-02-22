package com.swblabs.foosball

import grails.converters.JSON

class ScoringController {
	
	def scoringService

    def index() { }
	
	def test() {
		scoringService.sendScore(1, [success: true]);
		render([success: true] as JSON)
	}
}
