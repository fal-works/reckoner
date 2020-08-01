package reckoner;

import reckoner.Geometry.cos;
import reckoner.Geometry.sin;
import reckoner.Geometry.hypot;
import reckoner.Geometry.atan2;

/**
	2D vector of cartesian coordinates.

	For temporal use only.
	The instance must be directly assigned to a local variable
	as this class has an `inline` constructor.
**/
@:structInit
class TmpVec2D {
	/**
		Creates a `TmpVec2D` instance from polar coordinates.
		@param length Length of vector.
		@param angle Angle of vector in radians.
	**/
	public static extern inline function fromPolar(length: Float, angle: Float): TmpVec2D {
		return new TmpVec2D(length * cos(angle), length * sin(angle));
	}

	/**
		The x-component of `this` vector.
	**/
	public final x: Float;

	/**
		The y-component of `this` vector.
	**/
	public final y: Float;

	public extern inline function new(x: Float, y: Float) {
		this.x = x;
		this.y = y;
	}

	/**
		@return The length of `this` vector.
	**/
	public extern inline function calcLength(): Float
		return hypot(this.x, this.y);

	/**
		@return The angle of `this` vector in radians.
	**/
	public extern inline function calcAngle(): Float
		return atan2(this.y, this.x);

	/**
		@return `this` in `(x, y)` representation.
	**/
	public extern inline function toString(): String
		return '(${this.x}, ${this.y})';
}
