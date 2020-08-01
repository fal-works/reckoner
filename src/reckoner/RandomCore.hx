package reckoner;

#if reckoner_use_xorshift32
import reckoner.Xorshift.*;

/**
	Core functions on which the `Random` class relies.
**/
class RandomCore {
	static var x: Int = timestamp();

	/**
		@return Random float in range `[0, 1)`.
	**/
	public static extern inline function random(): Float
		return intToNormalizedFloat(next());

	/**
		@return Random float in range `[-1, 1)`.
	**/
	public static extern inline function randomSigned(): Float
		return intToSignedNormalizedFloat(next());

	/**
		Sets the seed value.
	**/
	public static extern inline function setSeed(v: Int): Void
		x = v;

	static extern inline function next(): Int
		return x = xorshift32(x);

	static function timestamp(): Int
		return Std.int((#if sys 1000.0 * Sys.time() #else Date.now().getTime() #end) % 2147483647.0);
}
#else
/**
	Core functions on which the `Random` class relies.
**/
class RandomCore {
	/**
		@return Random float in range `[0, 1)`.
	**/
	public static extern inline function random(): Float
		return Math.random();

	/**
		@return Random float in range `[-1, 1)`.
	**/
	public static extern inline function randomSigned(): Float
		return -1.0 + random() * 2.0;

	/**
		Sets the seed value.
		No effect `#if !reckoner_use_xorshift32`.
	**/
	public static extern inline function setSeed(v: Int) {}
}
#end
