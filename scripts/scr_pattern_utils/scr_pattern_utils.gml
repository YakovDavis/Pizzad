/// @function get_pattern_enum(_csv_index);
/// @param {Real} _csv_index Index from balance sheet
/// @returns {Any}

function get_pattern_enum(_csv_index)
{
	switch(_csv_index)
	{
		case (1):
			return E_KETCHUP_PATTERN.TRIANGLE;
		case (2):
			return E_KETCHUP_PATTERN.SQUARE;
		case (3):
		case (4):
			return random(1) > 0.5 ? E_KETCHUP_PATTERN.PENTAGRAM : E_KETCHUP_PATTERN.INV_PENTAGRAM;
		case (5):
			return E_KETCHUP_PATTERN.HEXAGRAM;
		case (6):
			return E_KETCHUP_PATTERN.GEBO;
		case (7):
			return E_KETCHUP_PATTERN.DAGAZ;
		case (8):
			return E_KETCHUP_PATTERN.TWO_SQUARES;
		case (9):
			return E_KETCHUP_PATTERN.JUSTICE;
		default:
			return E_KETCHUP_PATTERN.TRIANGLE;
	}
}

/// @function get_pattern_pizza_point_num(_pattern);
/// @param {Any} _pattern Index from balance sheet
/// @returns {Real}

function get_pattern_pizza_point_num(_pattern)
{
	switch(_pattern)
	{
		case (E_KETCHUP_PATTERN.TRIANGLE):
			return 3;
		case (E_KETCHUP_PATTERN.SQUARE):
			return 4;
		case (E_KETCHUP_PATTERN.PENTAGRAM):
		case (E_KETCHUP_PATTERN.INV_PENTAGRAM):
			return 5;
		case (E_KETCHUP_PATTERN.HEXAGRAM):
			return 6;
		case (E_KETCHUP_PATTERN.GEBO):
			return 4;
		case (E_KETCHUP_PATTERN.DAGAZ):
			return 4;
		case (E_KETCHUP_PATTERN.TWO_SQUARES):
			return 6;
		case (E_KETCHUP_PATTERN.JUSTICE):
			return 6;
	}
}

/// @function get_pattern_pizza_points(_pattern);
/// @param {Any} _pattern Index from balance sheet
/// @returns {Array<Struct>}

function get_pattern_pizza_points(_pattern)
{
	if (_pattern == E_KETCHUP_PATTERN.TRIANGLE)
	{
		s1 =
		{
			p1 : 0,	
			p2 : 4,	
		};
		s2 =
		{
			p1 : 0,	
			p2 : 6,	
		};
		s3 =
		{
			p1 : 4,	
			p2 : 6,	
		};
		return [s1, s2, s3];
	}
	
	if (_pattern == E_KETCHUP_PATTERN.SQUARE)
	{
		s1 =
		{
			p1 : 1,	
			p2 : 4,	
		};
		s2 =
		{
			p1 : 4,	
			p2 : 6,	
		};
		s3 =
		{
			p1 : 6,	
			p2 : 9,	
		};
		s4 =
		{
			p1 : 9,	
			p2 : 1,	
		};
		return [s1, s2, s3, s4];
	}
	
	if (_pattern == E_KETCHUP_PATTERN.PENTAGRAM)
	{
		s1 =
		{
			p1 : 0,
			p2 : 4,
		};
		s2 =
		{
			p1 : 4,
			p2 : 8,
		};
		s3 =
		{
			p1 : 8,
			p2 : 2,
		};
		s4 =
		{
			p1 : 2,
			p2 : 6,
		};
		s5 =
		{
			p1 : 6,
			p2 : 0,
		};
		return [s1, s2, s3, s4, s5];
	}
	
	if (_pattern == E_KETCHUP_PATTERN.INV_PENTAGRAM)
	{
		s1 =
		{
			p1 : 5,
			p2 : 9,
		};
		s2 =
		{
			p1 : 9,
			p2 : 3,
		};
		s3 =
		{
			p1 : 3,
			p2 : 7,
		};
		s4 =
		{
			p1 : 7,
			p2 : 1,
		};
		s5 =
		{
			p1 : 1,
			p2 : 5,
		};
		return [s1, s2, s3, s4, s5];
	}
}