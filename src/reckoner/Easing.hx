package reckoner;

import reckoner.Numeric.square;
import reckoner.Numeric.cube;

/**
	Static easing functions.
**/
class Easing {
	/**
		@param x Any ratio (generally between 0 and 1).
		@return Eased ratio.
	**/
	public static inline function easeInQuad(x: Float): Float
		return square(x);

	/**
		@param x Any ratio (generally between 0 and 1).
		@return Eased ratio.
	**/
	public static inline function easeInCubic(x: Float): Float
		return cube(x);

	/**
		@param x Any ratio (generally between 0 and 1).
		@return Eased ratio.
	**/
	public static inline function easeInExpo(x: Float): Float {
		return 0.0 < x ? Math.pow(2.0, 10.0 * (x - 1.0)) : 0.0;
	}

	/**
		@param x Any ratio (generally between 0 and 1).
		@return Eased ratio.
	**/
	public static inline function easeOutQuad(x: Float): Float
		return -square(x - 1.0) + 1.0;

	/**
		@param x Any ratio (generally between 0 and 1).
		@return Eased ratio.
	**/
	public static inline function easeOutCubic(x: Float): Float
		return cube(x - 1.0) + 1.0;

	/**
		@param x Any ratio (generally between 0 and 1).
		@return Eased ratio.
	**/
	public static inline function easeOutExpo(x: Float): Float {
		return x < 1.0 ? -Math.pow(2.0, -10.0 * x) + 1.0 : 1.0;
	}
}
