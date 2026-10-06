package domain

Entity_Kind :: enum {
	player,
	enemy,
	shoe,
	chest,
	teddy,
	chicken,
	door,
	sword,
}

Entity :: struct {
	id:         int,
	kind:       Entity_Kind,
	health:     int,
	properties: []Property,
	alive:      bool,
}

Property :: enum {
	slow,
	fast,
	mimic,
	stupid,
	trolling,
}

Rule :: struct {
	subject: Entity_Kind,
	action:  Actions,
	effects: Effects_Kind,
	value:   int,
}

Actions :: enum {
	open,
	hit,
	throw,
	eat,
	jump,
	use,
	shoot,
}

Effects_Kind :: enum {
	explode,
	damage,
	heal,
	spawn,
	destroy,
	nothing,
	teleport,
	kill,
	transform,
	give,
}
