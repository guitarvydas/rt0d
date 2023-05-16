all: tokens

tokens: 0d.rt
	./fab/fab rt.ohm rt.fab support.js <0d.rt
