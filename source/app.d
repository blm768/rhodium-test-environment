module main;

import std.stdio;

import rhodium.ast;
import rhodium.lexer;
import rhodium.parser;
import rhodium.value;
import rhodium.value.integer;

void main() {
	auto source = new SourceText("123 abc 123");
	auto lexer = Lexer(source);
	auto literal = parseIntegerLiteral(lexer);
	ValueRef!UnsignedIntegerValue value = new UnsignedIntegerValue(literal);
	writeln(value.toUlong);
}
