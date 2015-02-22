package com.swblabs.foosball

import grails.transaction.Transactional
import grails.converters.JSON
import grails.events.Listener

@Transactional
class ScoringService {

	@Listener(namespace='scoring')
	void sendScore(long gameId, Map data) {
		event([namespace: 'scoring', topic: 'scoringPush-' + gameId, data: data])
	}
}
