extends Node

var waves = {
	0: [
		["Path1", "GreyRat", 0.5],
		["Path1", "GreyRat", 0.5],
		["Path1", "BlackAnt", 0.5],
		["Path1", "RedAnt", 0.5],
		["Path1", "RedAnt", 0.5],
		["Path1", "RedAnt", 0.5],
		["Path1", "RedAnt", 0.5],
		["Path2", "BlackAnt", 0.5],
		["Path2", "BlackAnt", 0.5],
		["Path2", "BlackAnt", 0.5],
		["Path2", "BlackAnt", 0.5],
		["Path2", "BlackAnt", 0.5],
		["Path2", "BlackAnt", 0.5],
		["Path2", "BlackAnt", 0.5],
		["Path2", "RedAnt", 0.5],
		["Path2", "RedAnt", 0.5],
		["Path2", "RedAnt", 0.5],
		["Path2", "RedAnt", 0.5],
		["Path2", "RedAnt", 0.5],
		["Path2", "RedAnt", 0.5],
		["Path2", "RedAnt", 0.5],
		["Path2", "RedAnt", 0.5],
	   ],
}

func get_wave(id):
	return waves[id]
