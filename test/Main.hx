import reckoner.*;

class Main {
	static function main() {
		testRandom();
		testVec();
	}

	static function testRandom() {
		trace("[Random]");

		final values = [for (_ in 0...10000) Random.random()];

		var total = 0.0;
		var min = 1.0;
		var max = 0.0;
		for (i in 0...values.length) {
			final v = values[i];
			total += v;
			if (v < min) min = v;
			if (max < v) max = v;
		}
		final average = total / values.length;

		trace('random min: $min');
		trace('random max: $max');
		trace('random avg: $average');
	}

	static function testVec() {
		trace("[Vec2D]");

		final vec = new TmpVec2D(1, 1);
		final length = vec.calcLength();
		final angle = vec.calcAngle();

		trace("vec: " + vec.toString());
		trace("vec length: " + length);
		trace("vec angle:  " + angle * Geometry.RADIANS_TO_DEGREES);
	}
}
