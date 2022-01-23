extends Node

var waves = {
	0: [
		["Path1", "BlackAnt", 0.2],
		["Path1", "BlackAnt", 0.2],
		["Path1", "BlackAnt", 0.2],
		["Path1", "BlackAnt", 0.2],
		["Path1", "BlackAnt", 0.2],
	   ],
	1: [
		["Path2", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
	   ],
	2: [
		["Path1", "GreyRat", 0.3],	
		["Path1", "GreyRat", 0.3],	
		["Path1", "GreyRat", 0.3],	
		["Path2", "GreyRat", 0.3],	
		["Path2", "GreyRat", 0.3],	
		["Path2", "GreyRat", 0.3],	
		["Path1", "GreyRat", 0.3],	
		["Path1", "GreyRat", 0.3],	
		["Path1", "GreyRat", 0.3],	
		["Path2", "GreyRat", 0.3],	
		["Path2", "GreyRat", 0.3],	
		["Path2", "GreyRat", 0.3],	
		["Path1", "GreyRat", 0.3],	
		["Path1", "GreyRat", 0.3],	
		["Path1", "GreyRat", 0.3],	
		["Path2", "GreyRat", 0.3],	
		["Path2", "GreyRat", 0.3],	
		["Path2", "GreyRat", 0.3],	
		["Path1", "GreyRat", 0.3],	
		["Path1", "GreyRat", 0.3],	
		["Path1", "GreyRat", 0.3],	
		["Path2", "GreyRat", 0.3],	
		["Path2", "GreyRat", 0.3],	
		["Path2", "GreyRat", 0.3],	
		["Path1", "GreyRat", 0.3],	
		["Path1", "GreyRat", 0.3],	
		["Path1", "GreyRat", 0.3],	
		["Path2", "GreyRat", 0.3],	
		["Path2", "GreyRat", 0.3],	
		["Path2", "GreyRat", 0.3],	
	   ],
	3: [
		["Path1", "BlackAnt", 1.0],
		["Path2", "BlackAnt", 0.0],
		["Path1", "BlackAnt", 1.0],
		["Path2", "BlackAnt", 0.0],
		["Path1", "BlackAnt", 1.0],
		["Path2", "BlackAnt", 0.0],
		["Path1", "BlackAnt", 1.0],
		["Path2", "BlackAnt", 0.0],
		["Path1", "BlackAnt", 1.0],
		["Path2", "BlackAnt", 0.0],
		["Path1", "BlackAnt", 1.0],
		["Path2", "BlackAnt", 0.0],
		["Path1", "BlackAnt", 1.0],
		["Path2", "BlackAnt", 0.0],
		["Path1", "BlackAnt", 1.0],
		["Path2", "BlackAnt", 0.0],
		["Path1", "BlackAnt", 1.0],
		["Path2", "BlackAnt", 0.0],
		["Path1", "BlackAnt", 1.0],
		["Path2", "BlackAnt", 0.0],
		["Path1", "BlackAnt", 1.0],
		["Path2", "BlackAnt", 0.0],
		["Path1", "BlackAnt", 1.0],
		["Path2", "BlackAnt", 0.0],
		["Path1", "BlackAnt", 1.0],
		["Path2", "BlackAnt", 0.0],
		["Path1", "BlackAnt", 1.0],
		["Path2", "BlackAnt", 0.0],
		["Path1", "BlackAnt", 1.0],
		["Path2", "BlackAnt", 0.0],
	],
	4: [
		["Path1", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path1", "GreyRat", 0.2],
		["Path1", "GreyRat", 0.2],
		["Path1", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path1", "GreyRat", 0.2],
		["Path1", "GreyRat", 0.2],
		["Path1", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path1", "GreyRat", 0.2],
		["Path1", "GreyRat", 0.2],
		["Path1", "GreyRat", 0.2],
		["Path1", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path1", "GreyRat", 0.2],
		["Path1", "GreyRat", 0.2],
		["Path1", "GreyRat", 0.2],
		["Path1", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path1", "GreyRat", 0.2],
		["Path1", "GreyRat", 0.2],
		["Path1", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path1", "GreyRat", 0.2],
		["Path1", "GreyRat", 0.2],
		["Path1", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path1", "GreyRat", 0.2],
	],
	5: [
		["Path1", "RedAnt", 0.5],
		["Path1", "BlackAnt", 0.1],
		["Path1", "BlackAnt", 0.1],
		["Path1", "BlackAnt", 0.1],
		["Path2", "RedAnt", 0.5],
		["Path2", "BlackAnt", 0.1],
		["Path2", "BlackAnt", 0.1],
		["Path2", "BlackAnt", 0.1],
		["Path1", "GreyRat", 0.2],
		["Path1", "GreyRat", 0.2],
		["Path1", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
		["Path2", "GreyRat", 0.2],
	],
	6: [
		["Path1", "BrownRat", 0.5],
		["Path2", "GreyRat", 0.1],
		["Path2", "GreyRat", 0.1],
		["Path2", "GreyRat", 0.1],
		["Path1", "BrownRat", 0.1],
		["Path1", "BrownRat", 0.1],
		["Path2", "BrownRat", 0.5],
		["Path2", "BrownRat", 0.1],
		["Path2", "BrownRat", 0.1],
		["Path1", "BlackAnt", 0.3],
		["Path1", "BlackAnt", 0.3],
		["Path1", "BlackAnt", 0.3],
		["Path1", "BlackAnt", 0.3],
		["Path1", "BlackAnt", 0.3],
		["Path1", "BlackAnt", 0.3],
		["Path1", "BlackAnt", 0.3],
		["Path1", "BlackAnt", 0.3],
		["Path1", "BlackAnt", 0.3],
		["Path1", "BlackAnt", 0.3],
		["Path1", "BlackAnt", 0.3],
	],
	7: [
		["Path1", "BlackAnt", 0.3],
		["Path1", "BlackAnt", 0.3],
		["Path1", "BlackAnt", 0.3],
		["Path2", "BlackAnt", 0.3],
		["Path2", "BlackAnt", 0.3],
		["Path2", "BlackAnt", 0.3],
		["Path1", "RedAnt", 0.3],
		["Path2", "RedAnt", 0.3],
		["Path1", "BlackAnt", 0.3],
		["Path1", "BlackAnt", 0.3],
		["Path1", "BlackAnt", 0.3],
		["Path2", "BlackAnt", 0.3],
		["Path2", "BlackAnt", 0.3],
		["Path2", "BlackAnt", 0.3],
		["Path1", "RedAnt", 0.3],
		["Path2", "RedAnt", 0.3],
		
	]
	
}

func get_wave(id):
	return waves[id]
