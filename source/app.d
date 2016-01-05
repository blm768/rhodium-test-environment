module main;

import std.stdio;

import rhodium.ast;
import rhodium.lexer;
import rhodium.value;
import rhodium.value.integer;

void main() {
	auto source = new SourceText("abc 123");
	auto lexer = Lexer(source);
	foreach(Token t; lexer) {
		if(t.type == TokenType.integerLiteral) {
			auto literal = new IntegerLiteral(t);
			ValueRef!UnsignedIntegerValue value = new UnsignedIntegerValue(literal);
			writeln(value.toUlong);
		}
	}
}
