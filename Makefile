all: tokens

tokens: 0d.rt
	./fab rt.ohm rt.fab support.js <0d.rt
