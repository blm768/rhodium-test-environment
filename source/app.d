module main;

import std.stdio;

import rhodium.ast;
import rhodium.lexer;
import rhodium.parser;
import rhodium.parser.util.inspector;
import rhodium.value;
import rhodium.value.integer;

void main() {
	auto source = new SourceText("a = 1 + 2 * 3 = 4 * 5 + 6");
	auto lexer = Lexer(source);
	auto expr = parseLooseBinaryExpression(lexer);
	if(expr) {
		write(inspect(expr));
	}
	if(!lexer.empty) {
		writeln("Remaining tokens: ", lexer.source.text[lexer.location.offset .. $]);
	}
}
