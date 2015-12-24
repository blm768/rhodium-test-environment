module main;

import std.stdio;

import rhodium.lexer;

void main() {
	auto source = new SourceText("abc 123");
	auto lexer = Lexer(source);
	foreach(Token t; lexer) {
		writeln(t);
	}
}
