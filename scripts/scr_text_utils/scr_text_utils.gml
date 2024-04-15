/// @function generate_random_string(_length);
/// @param {Real} _length String length
/// @returns {String}

function generate_random_string(_length)
{
	var _result = "";
	for (var _i = 0; _i < _length; _i++)
	{
		_result += chr(round(random_range(ord("t"), ord("g"))));
	}
	return _result;
}
