class Run {
	static function main() {
		#if sys
		final libraryName: String = "reckoner";
		final version = haxe.macro.Compiler.getDefine("reckoner");

		final url = 'https://lib.haxe.org/p/${libraryName}/';

		Sys.println('\n${libraryName} ${version}\n${url}\n');
		#end
	}
}
