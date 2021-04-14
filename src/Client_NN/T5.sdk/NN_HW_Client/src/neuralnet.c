#include "neuralnet.h"

/// Converts 4.12 format to unsigned 8-bit integer
float fixed_to_float(u16 input)
{
	int sign = 1;
	float output;
	// if negative, 2's comp
	if (input & 0x8000)
	{
		input = ~(input - 1);
		sign = -1;
	}

	output = sign * (input / 4096.0);

	return output;
}

/// Converts unsigned 8-bit integer to 4.12 format
u16 float_to_fixed(float input)
{
	u16 output;
	output = (u16)(input * 4096.0);

	return output;
}
