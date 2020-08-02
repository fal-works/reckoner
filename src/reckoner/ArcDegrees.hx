package reckoner;

/**
	Angle in degrees of arc (360 for a full rotation).
**/
abstract ArcDegrees(Float) from Float to Float {
	/**
		Explicitly casts `Float` to `ArcDegrees`.
	**/
	public static extern inline function from(v: Float): ArcDegrees
		return v;

	@:op(A + B) function plus(other: ArcDegrees): ArcDegrees;

	@:op(A - B) function minus(other: ArcDegrees): ArcDegrees;

	@:op(A * B) function multiply(factor: Float): ArcDegrees;

	@:op(A * B) function multiplyInt(factor: Int): ArcDegrees;

	@:op(A / B) function divide(divisor: Float): ArcDegrees;

	@:op(A / B) function divideInt(divisor: Int): ArcDegrees;

	/**
		Converts `this` to `Float` in radians.
	**/
	public extern inline function toRadians(): Float
		return Geometry.degreesToRadians(this);
}
