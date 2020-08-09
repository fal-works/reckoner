package reckoner;

import sinker.Floats;

/**
	Set of functions that return random values.
**/
class Random {
	/**
		@return Random float value in range `[0, 1)`.
	**/
	public static extern inline function random(): Float
		return RandomCore.random();

	/**
		@return Random float value in range `[0, max)`.
	**/
	@:noUsing
	public static extern inline function float(max: Float): Float
		return max * random();

	/**
		@return Random float value in range `[min, max)`.
	**/
	@:noUsing
	public static extern inline function between(min: Float, max: Float): Float
		return min + float(max - min);

	/**
		@return Random float value in range `[-maxMagnitude, maxMagnitude)`.
	**/
	@:noUsing
	public static extern inline function signed(maxMagnitude: Float): Float {
		#if reckoner_use_xorshift32
		return maxMagnitude * RandomCore.randomSigned();
		#else
		return maxMagnitude * (-1.0 + random() * 2.0);
		#end
	}

	/**
		@return Random integer value from `0` up to (but not including) `max`.
	**/
	@:noUsing
	public static extern inline function int(max: Float): Int
		return Floats.toInt(float(max));

	/**
		@return Random integer value in range `[min, max)`.
	**/
	@:noUsing
	public static extern inline function intBetween(min: Int, max: Int): Int
		return min + int(max - min);

	/**
		@return Random integer value, positive or negative,
		of which the absolute value varies from `0` up to (but not including) `max`.
	**/
	@:noUsing
	public static extern inline function signedInt(maxMagnitude: Float): Int
		return Floats.toInt(signed(maxMagnitude));

	/**
		@return Random float value in range `[0, 2π)`.
	**/
	@:noUsing
	public static extern inline function angle(): Float
		return float(Geometry.TWO_PI);

	/**
		@return Random float value in range `[-π, π)`.
	**/
	@:noUsing
	public static extern inline function signedAngle(): Float {
		#if reckoner_use_xorshift32
		return signed(Geometry.PI);
		#else
		return Geometry.MINUS_PI + angle();
		#end
	}

	/**
		Returns `true` or `false` randomly.
		@param probability Any number in range `[0, 1]`.
		@returns `true` with the given `probability`.
	**/
	@:noUsing
	public static extern inline function bool(probability: Float): Bool
		return random() < probability;
}
