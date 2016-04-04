module main;

import std.stdio;

import rhodium.ast;
import rhodium.lexer;
import rhodium.parser;
import rhodium.parser.util.inspector;
import rhodium.value;
import rhodium.value.integer;

void main() {
	auto source = new SourceText("1 = -5 * 6 + 7 = 1 + 3 * 4");
	auto lexer = Lexer(source);
	auto expr = parseLooseBinaryExpression(lexer);
	if(expr) {
		write(inspect(expr));
	}
	if(!lexer.empty) {
		writeln("Not an expression: ", lexer.source.text[lexer.location.offset .. $]);
	}
}
