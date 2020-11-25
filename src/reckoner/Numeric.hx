package reckoner;

/**
	Static constants and functions for numeric operation.
**/
class Numeric {
	/**
		Upper bound of the approximation error.

		Not equivalent to machine epsilon.
		At default this is `pow(2, 1-50)`.

		Can also be set by compiler flag: `-D reckoner_epsilon=(any float value)`.
	**/
	#if reckoner_epsilon
	public static final EPSILON: Float = Std.parseFloat(haxe.macro.Compiler.getDefine("reckoner_epsilon"));
	#else
	public static extern inline final EPSILON = 1.77635683940025e-015;
	#end

	/**
		Casts `v` to `Int`.
		- On cpp, uses `cpp.NativeMath.fastInt()`.
		- Otherwise just `Std.int(this)`.
	**/
	public static extern inline function ftoi(v: Float): Int {
		#if cpp
		return cpp.NativeMath.fastInt(v);
		#else
		return Std.int(v);
		#end
	}

	/**
		@return The floating-point remainder of `v / divisor`.
	**/
	public static extern inline function fmod(v: Float, divisor: Float): Float
		return v % divisor;

	/**
		@return `true` if the absolute value of the difference of `a` and `b` is less than `EPSILON`.
	**/
	@:noUsing
	public static extern inline function nearlyEqual(a: Float, b: Float): Bool
		return Math.abs(a - b) < EPSILON;

	/**
		@return x ^ 2
	**/
	public static extern inline function square(x: Float): Float
		return x * x;

	/**
		@return x ^ 3
	**/
	public static extern inline function cube(x: Float): Float
		return x * x * x;
}
