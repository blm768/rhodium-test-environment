module main;

import std.stdio;

import rhodium.ast;
import rhodium.lexer;
import rhodium.parser;
import rhodium.value;
import rhodium.value.integer;

void main() {
	auto source = new SourceText("(123)");
	auto lexer = Lexer(source);
	auto expr = parseExpression(lexer);
	if(expr) {
		writeln(expr.toString);
	} else {
		writeln(null);
	}
}

