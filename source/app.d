module main;

import std.stdio;

import rhodium.ast;
import rhodium.lexer;
import rhodium.parser;
import rhodium.parser.util.inspector;
import rhodium.value;
import rhodium.value.integer;

void main() {
	auto source = new SourceText("(123) + 45");
	auto lexer = Lexer(source);
	auto expr = parseLooseBinaryExpression(lexer);
	if(expr) {
		write(inspect(expr));
	} else {
		writeln(null);
	}
}

