package com.swblabs.foosball

import grails.events.Listener
import grails.transaction.Transactional

@Transactional
class GameService {
	
	/**
	 * Most events will be received in table() below and re-transmitted to updateDisplay()
	 * Later we'll entertain table settings coming from the web view in scoreDisplay() being sent in updateTable()
	 */

	//sends events to web-based display
	def updateDisplay() {
		event([namespace:'browser',topic:'scoreDisplay',data:["test":"todisplay"]])
    }
	
	//sends events to table (for config changes, etc...)
	def updateTable() {
		event([namespace:'table',topic:'table',data:["test":"totable"]])
	}	
	
	//receives events from web-based display
	@Listener(namespace='browser') scoreDisplay(Map data) {
	}
	
	//receives events from table
	@Listener(namespace='table') table(Map data) {
	}

}
