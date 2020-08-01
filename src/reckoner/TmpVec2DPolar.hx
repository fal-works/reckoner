package reckoner;

import reckoner.Geometry.cos;
import reckoner.Geometry.sin;
import reckoner.Geometry.hypot;
import reckoner.Geometry.atan2;

/**
	2D vector of polar coordinates.

	For temporal use only.
	The instance must be directly assigned to a local variable
	as this class has an `inline` constructor.
**/
@:structInit
class TmpVec2DPolar {
	/**
		Creates a `TmpVec2DPolar` instance from cartesian coordinates.
	**/
	public static extern inline function fromCartesian(x: Float, y: Float): TmpVec2DPolar {
		return new TmpVec2DPolar(hypot(x, y), atan2(y, x));
	}

	/**
		The length of `this` vector.
	**/
	public final length: Float;

	/**
		The angle of `this` vector in radians.
	**/
	public final angle: Float;

	public extern inline function new(length: Float, angle: Float) {
		this.length = length;
		this.angle = angle;
	}

	/**
		@return The x-component of `this` vector.
	**/
	public extern inline function calcX(): Float
		return this.length * cos(this.angle);

	/**
		@return The y-component of `this` vector in radians.
	**/
	public extern inline function calcY(): Float
		return this.length * sin(this.angle);

	/**
		@return `this` in `(r, θ)` representation.
	**/
	public extern inline function toString(): String
		return '(${this.length}, ${this.angle})';
}
