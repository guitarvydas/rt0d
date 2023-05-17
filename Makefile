all: tokens

tokens: 0d.manual.rt
	./fab rt.ohm rt.fab support.js <0d.manual.rt >0d.rt.1
