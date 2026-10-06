package main

import "core:fmt"
import "domain"

main :: proc() {
	current_action := domain.Actions.open
	item := domain.Entity {
		id    = 1,
		kind  = .shoe,
		alive = true,
	}
	rule := domain.Rule {
		subject = .shoe,
		action  = .open,
		effects = .spawn,
		value   = 5,
	}
	if current_action == rule.action && item.kind == rule.subject {
		fmt.println("Opened shoe spawn 5 something")
	}

}
