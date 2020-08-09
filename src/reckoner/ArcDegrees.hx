package reckoner;

/**
	Angle in degrees of arc (360 for a full rotation).
**/
abstract ArcDegrees(Float) from Float to Float {
	static extern inline final ONE_OVER_360 = 1.0 / 360.0;

	/**
		Explicitly casts `Float` to `ArcDegrees`.
	**/
	public static extern inline function from(v: Float): ArcDegrees
		return v;

	/**
		Converts `Float` in radians to `ArcDegrees`.
	**/
	public static extern inline function fromRadians(v: Float): ArcDegrees
		return from(Geometry.radiansToDegrees(v));

	@:op(-A) function unaryMinus(): ArcDegrees;

	@:op(A + B) function add(other: ArcDegrees): ArcDegrees;

	@:op(A - B) function subtract(other: ArcDegrees): ArcDegrees;

	@:op(A * B) function multiply(factor: Float): ArcDegrees;

	@:op(A * B) function multiplyInt(factor: Int): ArcDegrees;

	@:op(A / B) function divide(divisor: Float): ArcDegrees;

	@:op(A / B) function divideInt(divisor: Int): ArcDegrees;

	@:op(A % B) function modulo(divisor: ArcDegrees): ArcDegrees;

	@:op(A % B) function moduloFloat(divisor: Float): ArcDegrees;

	/**
		Explicitly casts `this` to `Float`.
	**/
	public extern inline function toFloat(): Float
		return this;

	/**
		Converts `this` to `Float` in radians.
	**/
	public extern inline function toRadians(): Float
		return Geometry.degreesToRadians(this);

	/**
		@return `ArcDegrees` between `-180` and `180`.
	**/
	public extern inline function normalize(): ArcDegrees
		return this - 360.0 * Math.floor((this + 180.0) * ONE_OVER_360);
}
