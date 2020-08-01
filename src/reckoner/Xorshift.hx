package reckoner;

/**
	Provides Xorshift random number generator function and other related utility functions.
**/
class Xorshift {
	/**
		Reciprocal of the maximum unsigned 32-bit integer.
	**/
	static extern inline final ONE_OVER_MAX_UINT32 = 1.0 / 4294967295.0;

	/**
		`Float` representation of the absolute value of the minimum signed 32-bit integer.
	**/
	static extern inline final ABS_MIN_INT_AS_FLOAT = 2147483648.0;

	/**
		Reciprocal of the absolute value of the minimum signed 32-bit integer.
	**/
	static extern inline final ONE_OVER_ABS_MIN_INT_AS_FLOAT = 1.0 / ABS_MIN_INT_AS_FLOAT;

	/**
		@return Random signed 32-bits integer.
	**/
	public static extern inline function xorshift32(x: Int): Int {
		x = x ^ (x << 13);
		x = x ^ (x >>> 17);
		x = x ^ (x << 5);
		return x;
	}

	/**
		Maps value from range `[-2147483648, 2147483647]` to `[0, 1)`.
	**/
	public static extern inline function intToNormalizedFloat(v: Int): Float {
		return ONE_OVER_MAX_UINT32 * (v + ABS_MIN_INT_AS_FLOAT);
	}

	/**
		Maps value from range `[-2147483648, 2147483647]` to `[-1, 1)`.
	**/
	public static extern inline function intToSignedNormalizedFloat(v: Int): Float
		return ONE_OVER_ABS_MIN_INT_AS_FLOAT * v;
}
