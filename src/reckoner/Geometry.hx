package reckoner;

/**
	Static constants and functions for 2D geometry calculation.
**/
class Geometry {
	// TODO: Alternative to Math ??

	/**
		π
	**/
	public static extern inline final PI: Float = 3.1415926535897932;

	/**
		2π
	**/
	public static extern inline final TWO_PI: Float = 2.0 * PI;

	/**
		-π
	**/
	public static extern inline final MINUS_PI: Float = -PI;

	/**
		2π
	**/
	public static extern inline final HALF_PI: Float = PI / 2.0;

	/**
		2π
	**/
	public static extern inline final MINUS_HALF_PI: Float = MINUS_PI / 2.0;

	/**
		π / 3
	**/
	public static extern inline final THIRD_PI = PI / 3.0;

	/**
		1 / 2π
	**/
	public static extern inline final ONE_OVER_TWO_PI = 1.0 / TWO_PI;

	/**
		2π / 360
	**/
	public static extern inline final DEGREES_TO_RADIANS = TWO_PI / 360.0;

	/**
		360 / 2π
	**/
	public static extern inline final RADIANS_TO_DEGREES = 360.0 / TWO_PI;

	/**
		@param angle Angle in radians.
		@return Trigonometric cosine of `angle`.
	**/
	public static extern inline function cos(angle: Float): Float
		return Math.cos(angle);

	/**
		@param angle Angle in radians.
		@return Trigonometric sine of `angle`.
	**/
	public static extern inline function sin(angle: Float): Float
		return Math.sin(angle);

	/**
		@return Square root of the sum of squares of `x` and `y`.
	**/
	@:noUsing
	public static extern inline function hypot(x: Float, y: Float): Float
		return Math.sqrt((x * x) + (y * y));

	/**
		@return Trigonometric arc tangent in radians.
	**/
	@:noUsing
	public static extern inline function atan2(y: Float, x: Float): Float
		return Math.atan2(y, x);

	/**
		@param angle Angle in radians to be normalized.
		@return Angle between `-PI` and `PI`.
	**/
	public static extern inline function normalizeAngle(angle: Float): Float
		return angle - TWO_PI * Math.ffloor((angle + PI) * ONE_OVER_TWO_PI);

	/**
		Converts degrees (360 for a full rotation) to radians (2π for a full rotation).
	**/
	public static extern inline function degreesToRadians(degrees: Float): Float
		return DEGREES_TO_RADIANS * degrees;

	/**
		Converts radians (2π for a full rotation) to degrees (360 for a full rotation).
	**/
	public static extern inline function radiansToDegrees(radians: Float): Float
		return RADIANS_TO_DEGREES * radians;
}
