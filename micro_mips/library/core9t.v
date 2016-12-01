// $Id: core9t.v 65 2013-06-11 14:31:11Z lastochkin $

// type:  
`timescale 1ns/10ps
`celldefine
module adfull_0 ( a,b,ci,co,s );
	output co,s;
	input a,b,ci;

	// Function
	wire a__bar, b__bar, ci__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6;

	and (int_fwire_0, b, ci);
	and (int_fwire_1, a, ci);
	and (int_fwire_2, a, b);
	or (co, int_fwire_2, int_fwire_1, int_fwire_0);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_3, a__bar, b__bar, ci);
	not (ci__bar, ci);
	and (int_fwire_4, a__bar, b, ci__bar);
	and (int_fwire_5, a, b__bar, ci__bar);
	and (int_fwire_6, a, b, ci);
	or (s, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3);

	// Timing
	specify
		if ((b & ~(ci)))
			(a => co) = 0;
		if ((~(b) & ci))
			(a => co) = 0;
		ifnone (a => co) = 0;
		if ((a & ~(ci)))
			(b => co) = 0;
		if ((~(a) & ci))
			(b => co) = 0;
		ifnone (b => co) = 0;
		if ((a & ~(b)))
			(ci => co) = 0;
		if ((~(a) & b))
			(ci => co) = 0;
		ifnone (ci => co) = 0;
		if ((b & ci))
			(a => s) = 0;
		if ((~(b) & ~(ci)))
			(a => s) = 0;
		if ((b & ~(ci)))
			(a => s) = 0;
		if ((~(b) & ci))
			(a => s) = 0;
		ifnone (a => s) = 0;
		if ((a & ci))
			(b => s) = 0;
		if ((~(a) & ~(ci)))
			(b => s) = 0;
		if ((a & ~(ci)))
			(b => s) = 0;
		if ((~(a) & ci))
			(b => s) = 0;
		ifnone (b => s) = 0;
		if ((a & b))
			(ci => s) = 0;
		if ((~(a) & ~(b)))
			(ci => s) = 0;
		if ((a & ~(b)))
			(ci => s) = 0;
		if ((~(a) & b))
			(ci => s) = 0;
		ifnone (ci => s) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module adfull_1 ( a,b,ci,co,s );
	output co,s;
	input a,b,ci;

	// Function
	wire a__bar, b__bar, ci__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6;

	and (int_fwire_0, b, ci);
	and (int_fwire_1, a, ci);
	and (int_fwire_2, a, b);
	or (co, int_fwire_2, int_fwire_1, int_fwire_0);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_3, a__bar, b__bar, ci);
	not (ci__bar, ci);
	and (int_fwire_4, a__bar, b, ci__bar);
	and (int_fwire_5, a, b__bar, ci__bar);
	and (int_fwire_6, a, b, ci);
	or (s, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3);

	// Timing
	specify
		if ((b & ~(ci)))
			(a => co) = 0;
		if ((~(b) & ci))
			(a => co) = 0;
		ifnone (a => co) = 0;
		if ((a & ~(ci)))
			(b => co) = 0;
		if ((~(a) & ci))
			(b => co) = 0;
		ifnone (b => co) = 0;
		if ((a & ~(b)))
			(ci => co) = 0;
		if ((~(a) & b))
			(ci => co) = 0;
		ifnone (ci => co) = 0;
		if ((b & ci))
			(a => s) = 0;
		if ((~(b) & ~(ci)))
			(a => s) = 0;
		if ((b & ~(ci)))
			(a => s) = 0;
		if ((~(b) & ci))
			(a => s) = 0;
		ifnone (a => s) = 0;
		if ((a & ci))
			(b => s) = 0;
		if ((~(a) & ~(ci)))
			(b => s) = 0;
		if ((a & ~(ci)))
			(b => s) = 0;
		if ((~(a) & ci))
			(b => s) = 0;
		ifnone (b => s) = 0;
		if ((a & b))
			(ci => s) = 0;
		if ((~(a) & ~(b)))
			(ci => s) = 0;
		if ((a & ~(b)))
			(ci => s) = 0;
		if ((~(a) & b))
			(ci => s) = 0;
		ifnone (ci => s) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module adfull_2 ( a,b,ci,co,s );
	output co,s;
	input a,b,ci;

	// Function
	wire a__bar, b__bar, ci__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6;

	and (int_fwire_0, b, ci);
	and (int_fwire_1, a, ci);
	and (int_fwire_2, a, b);
	or (co, int_fwire_2, int_fwire_1, int_fwire_0);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_3, a__bar, b__bar, ci);
	not (ci__bar, ci);
	and (int_fwire_4, a__bar, b, ci__bar);
	and (int_fwire_5, a, b__bar, ci__bar);
	and (int_fwire_6, a, b, ci);
	or (s, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3);

	// Timing
	specify
		if ((b & ~(ci)))
			(a => co) = 0;
		if ((~(b) & ci))
			(a => co) = 0;
		ifnone (a => co) = 0;
		if ((a & ~(ci)))
			(b => co) = 0;
		if ((~(a) & ci))
			(b => co) = 0;
		ifnone (b => co) = 0;
		if ((a & ~(b)))
			(ci => co) = 0;
		if ((~(a) & b))
			(ci => co) = 0;
		ifnone (ci => co) = 0;
		if ((b & ci))
			(a => s) = 0;
		if ((~(b) & ~(ci)))
			(a => s) = 0;
		if ((b & ~(ci)))
			(a => s) = 0;
		if ((~(b) & ci))
			(a => s) = 0;
		ifnone (a => s) = 0;
		if ((a & ci))
			(b => s) = 0;
		if ((~(a) & ~(ci)))
			(b => s) = 0;
		if ((a & ~(ci)))
			(b => s) = 0;
		if ((~(a) & ci))
			(b => s) = 0;
		ifnone (b => s) = 0;
		if ((a & b))
			(ci => s) = 0;
		if ((~(a) & ~(b)))
			(ci => s) = 0;
		if ((a & ~(b)))
			(ci => s) = 0;
		if ((~(a) & b))
			(ci => s) = 0;
		ifnone (ci => s) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module adfull_4 ( a,b,ci,co,s );
	output co,s;
	input a,b,ci;

	// Function
	wire a__bar, b__bar, ci__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6;

	and (int_fwire_0, b, ci);
	and (int_fwire_1, a, ci);
	and (int_fwire_2, a, b);
	or (co, int_fwire_2, int_fwire_1, int_fwire_0);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_3, a__bar, b__bar, ci);
	not (ci__bar, ci);
	and (int_fwire_4, a__bar, b, ci__bar);
	and (int_fwire_5, a, b__bar, ci__bar);
	and (int_fwire_6, a, b, ci);
	or (s, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3);

	// Timing
	specify
		if ((b & ~(ci)))
			(a => co) = 0;
		if ((~(b) & ci))
			(a => co) = 0;
		ifnone (a => co) = 0;
		if ((a & ~(ci)))
			(b => co) = 0;
		if ((~(a) & ci))
			(b => co) = 0;
		ifnone (b => co) = 0;
		if ((a & ~(b)))
			(ci => co) = 0;
		if ((~(a) & b))
			(ci => co) = 0;
		ifnone (ci => co) = 0;
		if ((b & ci))
			(a => s) = 0;
		if ((~(b) & ~(ci)))
			(a => s) = 0;
		if ((b & ~(ci)))
			(a => s) = 0;
		if ((~(b) & ci))
			(a => s) = 0;
		ifnone (a => s) = 0;
		if ((a & ci))
			(b => s) = 0;
		if ((~(a) & ~(ci)))
			(b => s) = 0;
		if ((a & ~(ci)))
			(b => s) = 0;
		if ((~(a) & ci))
			(b => s) = 0;
		ifnone (b => s) = 0;
		if ((a & b))
			(ci => s) = 0;
		if ((~(a) & ~(b)))
			(ci => s) = 0;
		if ((a & ~(b)))
			(ci => s) = 0;
		if ((~(a) & b))
			(ci => s) = 0;
		ifnone (ci => s) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module adhalf_0 ( a,b,co,s );
	output co,s;
	input a,b;

	// Function
	wire a__bar, b__bar, int_fwire_0;
	wire int_fwire_1;

	and (co, a, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b);
	not (b__bar, b);
	and (int_fwire_1, a, b__bar);
	or (s, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => co) = 0;
		(b => co) = 0;
		if (~(b))
			(a => s) = 0;
		if (b)
			(a => s) = 0;
		if (~(a))
			(b => s) = 0;
		if (a)
			(b => s) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module adhalf_1 ( a,b,co,s );
	output co,s;
	input a,b;

	// Function
	wire a__bar, b__bar, int_fwire_0;
	wire int_fwire_1;

	and (co, a, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b);
	not (b__bar, b);
	and (int_fwire_1, a, b__bar);
	or (s, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => co) = 0;
		(b => co) = 0;
		if (~(b))
			(a => s) = 0;
		if (b)
			(a => s) = 0;
		if (~(a))
			(b => s) = 0;
		if (a)
			(b => s) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module adhalf_2 ( a,b,co,s );
	output co,s;
	input a,b;

	// Function
	wire a__bar, b__bar, int_fwire_0;
	wire int_fwire_1;

	and (co, a, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b);
	not (b__bar, b);
	and (int_fwire_1, a, b__bar);
	or (s, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => co) = 0;
		(b => co) = 0;
		if (~(b))
			(a => s) = 0;
		if (b)
			(a => s) = 0;
		if (~(a))
			(b => s) = 0;
		if (a)
			(b => s) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module adhalf_4 ( a,b,co,s );
	output co,s;
	input a,b;

	// Function
	wire a__bar, b__bar, int_fwire_0;
	wire int_fwire_1;

	and (co, a, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b);
	not (b__bar, b);
	and (int_fwire_1, a, b__bar);
	or (s, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => co) = 0;
		(b => co) = 0;
		if (~(b))
			(a => s) = 0;
		if (b)
			(a => s) = 0;
		if (~(a))
			(b => s) = 0;
		if (a)
			(b => s) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module and2_0 ( a,b,x );
	output x;
	input a,b;

	// Function
	and (x, a, b);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module and2_1 ( a,b,x );
	output x;
	input a,b;

	// Function
	and (x, a, b);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module and2_2 ( a,b,x );
	output x;
	input a,b;

	// Function
	and (x, a, b);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module and2_4 ( a,b,x );
	output x;
	input a,b;

	// Function
	and (x, a, b);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module and3_0 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	and (x, a, b, c);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module and3_1 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	and (x, a, b, c);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module and3_2 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	and (x, a, b, c);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module and3_4 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	and (x, a, b, c);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module and4_0 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	and (x, a, b, c, d);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module and4_1 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	and (x, a, b, c, d);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module and4_2 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	and (x, a, b, c, d);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module and4_4 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	and (x, a, b, c, d);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module and5_0 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	and (x, a, b, c, d, e);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module and5_1 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	and (x, a, b, c, d, e);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module and5_2 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	and (x, a, b, c, d, e);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module and5_4 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	and (x, a, b, c, d, e);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module and6_0 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	and (x, a, b, c, d, e, f);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
		(f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module and6_1 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	and (x, a, b, c, d, e, f);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
		(f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module and6_2 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	and (x, a, b, c, d, e, f);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
		(f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module and6_4 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	and (x, a, b, c, d, e, f);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
		(f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao211_0 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0;

	and (int_fwire_0, a, b);
	or (x, int_fwire_0, c, d);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & ~(b) & ~(d)))
			(c => x) = 0;
		if ((~(a) & b & ~(d)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao211_1 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0;

	and (int_fwire_0, a, b);
	or (x, int_fwire_0, c, d);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & ~(b) & ~(d)))
			(c => x) = 0;
		if ((~(a) & b & ~(d)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao211_2 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0;

	and (int_fwire_0, a, b);
	or (x, int_fwire_0, c, d);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & ~(b) & ~(d)))
			(c => x) = 0;
		if ((~(a) & b & ~(d)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao211_4 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0;

	and (int_fwire_0, a, b);
	or (x, int_fwire_0, c, d);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & ~(b) & ~(d)))
			(c => x) = 0;
		if ((~(a) & b & ~(d)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao21_0 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire int_fwire_0;

	and (int_fwire_0, a, b);
	or (x, int_fwire_0, c);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		if ((~(a) & ~(b)))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao21_1 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire int_fwire_0;

	and (int_fwire_0, a, b);
	or (x, int_fwire_0, c);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		if ((~(a) & ~(b)))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao21_2 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire int_fwire_0;

	and (int_fwire_0, a, b);
	or (x, int_fwire_0, c);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		if ((~(a) & ~(b)))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao21_4 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire int_fwire_0;

	and (int_fwire_0, a, b);
	or (x, int_fwire_0, c);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		if ((~(a) & ~(b)))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao221_0 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, c, d);
	and (int_fwire_1, a, b);
	or (x, int_fwire_1, int_fwire_0, e);

	// Timing
	specify
		if ((b & c & ~(d) & ~(e)))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e)))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & ~(e)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d) & ~(e)))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e)))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & ~(e)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao221_1 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, c, d);
	and (int_fwire_1, a, b);
	or (x, int_fwire_1, int_fwire_0, e);

	// Timing
	specify
		if ((b & c & ~(d) & ~(e)))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e)))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & ~(e)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d) & ~(e)))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e)))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & ~(e)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao221_2 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, c, d);
	and (int_fwire_1, a, b);
	or (x, int_fwire_1, int_fwire_0, e);

	// Timing
	specify
		if ((b & c & ~(d) & ~(e)))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e)))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & ~(e)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d) & ~(e)))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e)))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & ~(e)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao221_4 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, c, d);
	and (int_fwire_1, a, b);
	or (x, int_fwire_1, int_fwire_0, e);

	// Timing
	specify
		if ((b & c & ~(d) & ~(e)))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e)))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & ~(e)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d) & ~(e)))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e)))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & ~(e)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao222_0 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, e, f);
	and (int_fwire_1, c, d);
	and (int_fwire_2, a, b);
	or (x, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & d & e & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e) & f))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e) & ~(f)) | (b & ~(c) & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & d & e & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e) & f))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e) & ~(f)) | (a & ~(c) & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d & e & ~(f)))
			(c => x) = 0;
		if ((a & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((a & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & b & d & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c & e & ~(f)))
			(d => x) = 0;
		if ((a & ~(b) & c & ~(e) & f))
			(d => x) = 0;
		if ((a & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & e & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & f))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & e & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & f))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & ~(b) & c & ~(d) & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d) & f))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & ~(b) & c & ~(d) & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & b & c & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d) & e))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao222_1 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, e, f);
	and (int_fwire_1, c, d);
	and (int_fwire_2, a, b);
	or (x, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & d & e & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e) & f))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e) & ~(f)) | (b & ~(c) & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & d & e & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e) & f))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e) & ~(f)) | (a & ~(c) & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d & e & ~(f)))
			(c => x) = 0;
		if ((a & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((a & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & b & d & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c & e & ~(f)))
			(d => x) = 0;
		if ((a & ~(b) & c & ~(e) & f))
			(d => x) = 0;
		if ((a & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & e & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & f))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & e & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & f))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & ~(b) & c & ~(d) & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d) & f))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & ~(b) & c & ~(d) & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & b & c & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d) & e))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao222_2 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, e, f);
	and (int_fwire_1, c, d);
	and (int_fwire_2, a, b);
	or (x, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & d & e & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e) & f))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e) & ~(f)) | (b & ~(c) & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & d & e & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e) & f))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e) & ~(f)) | (a & ~(c) & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d & e & ~(f)))
			(c => x) = 0;
		if ((a & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((a & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & b & d & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c & e & ~(f)))
			(d => x) = 0;
		if ((a & ~(b) & c & ~(e) & f))
			(d => x) = 0;
		if ((a & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & e & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & f))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & e & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & f))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & ~(b) & c & ~(d) & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d) & f))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & ~(b) & c & ~(d) & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & b & c & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d) & e))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao222_4 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, e, f);
	and (int_fwire_1, c, d);
	and (int_fwire_2, a, b);
	or (x, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & d & e & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e) & f))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e) & ~(f)) | (b & ~(c) & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & d & e & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e) & f))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e) & ~(f)) | (a & ~(c) & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d & e & ~(f)))
			(c => x) = 0;
		if ((a & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((a & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & b & d & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c & e & ~(f)))
			(d => x) = 0;
		if ((a & ~(b) & c & ~(e) & f))
			(d => x) = 0;
		if ((a & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & e & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & f))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & e & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & f))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & ~(b) & c & ~(d) & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d) & f))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & ~(b) & c & ~(d) & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & b & c & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d) & e))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao22_0 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, c, d);
	and (int_fwire_1, a, b);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & ~(d)))
			(a => x) = 0;
		if ((b & ~(c) & d))
			(a => x) = 0;
		if ((b & ~(c) & ~(d)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d)))
			(b => x) = 0;
		if ((a & ~(c) & d))
			(b => x) = 0;
		if ((a & ~(c) & ~(d)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d))
			(c => x) = 0;
		if ((~(a) & b & d))
			(c => x) = 0;
		if ((~(a) & ~(b) & d))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & ~(b) & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao22_1 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, c, d);
	and (int_fwire_1, a, b);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & ~(d)))
			(a => x) = 0;
		if ((b & ~(c) & d))
			(a => x) = 0;
		if ((b & ~(c) & ~(d)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d)))
			(b => x) = 0;
		if ((a & ~(c) & d))
			(b => x) = 0;
		if ((a & ~(c) & ~(d)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d))
			(c => x) = 0;
		if ((~(a) & b & d))
			(c => x) = 0;
		if ((~(a) & ~(b) & d))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & ~(b) & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao22_2 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, c, d);
	and (int_fwire_1, a, b);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & ~(d)))
			(a => x) = 0;
		if ((b & ~(c) & d))
			(a => x) = 0;
		if ((b & ~(c) & ~(d)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d)))
			(b => x) = 0;
		if ((a & ~(c) & d))
			(b => x) = 0;
		if ((a & ~(c) & ~(d)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d))
			(c => x) = 0;
		if ((~(a) & b & d))
			(c => x) = 0;
		if ((~(a) & ~(b) & d))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & ~(b) & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao22_4 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, c, d);
	and (int_fwire_1, a, b);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & ~(d)))
			(a => x) = 0;
		if ((b & ~(c) & d))
			(a => x) = 0;
		if ((b & ~(c) & ~(d)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d)))
			(b => x) = 0;
		if ((a & ~(c) & d))
			(b => x) = 0;
		if ((a & ~(c) & ~(d)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d))
			(c => x) = 0;
		if ((~(a) & b & d))
			(c => x) = 0;
		if ((~(a) & ~(b) & d))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & ~(b) & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao31_0 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0;

	and (int_fwire_0, a, b, c);
	or (x, int_fwire_0, d);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		if ((a & b & ~(c)))
			(d => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & b & ~(c)) | (~(a) & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao31_1 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0;

	and (int_fwire_0, a, b, c);
	or (x, int_fwire_0, d);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		if ((a & b & ~(c)))
			(d => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & b & ~(c)) | (~(a) & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao31_2 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0;

	and (int_fwire_0, a, b, c);
	or (x, int_fwire_0, d);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		if ((a & b & ~(c)))
			(d => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & b & ~(c)) | (~(a) & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao31_4 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0;

	and (int_fwire_0, a, b, c);
	or (x, int_fwire_0, d);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		if ((a & b & ~(c)))
			(d => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & b & ~(c)) | (~(a) & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao32_0 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, d, e);
	and (int_fwire_1, a, b, c);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & d & ~(e)))
			(a => x) = 0;
		if ((b & c & ~(d) & e))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & d & ~(e)))
			(b => x) = 0;
		if ((a & c & ~(d) & e))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & d & ~(e)))
			(c => x) = 0;
		if ((a & b & ~(d) & e))
			(c => x) = 0;
		if ((a & b & ~(d) & ~(e)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e))
			(d => x) = 0;
		if ((a & ~(b) & c & e))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e))
			(d => x) = 0;
		if ((~(a) & b & c & e))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e) | (~(a) & ~(b) & c & e))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c) & e))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & c & d))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & c & d))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d) | (~(a) & ~(b) & c & d))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao32_1 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, d, e);
	and (int_fwire_1, a, b, c);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & d & ~(e)))
			(a => x) = 0;
		if ((b & c & ~(d) & e))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & d & ~(e)))
			(b => x) = 0;
		if ((a & c & ~(d) & e))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & d & ~(e)))
			(c => x) = 0;
		if ((a & b & ~(d) & e))
			(c => x) = 0;
		if ((a & b & ~(d) & ~(e)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e))
			(d => x) = 0;
		if ((a & ~(b) & c & e))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e))
			(d => x) = 0;
		if ((~(a) & b & c & e))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e) | (~(a) & ~(b) & c & e))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c) & e))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & c & d))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & c & d))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d) | (~(a) & ~(b) & c & d))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao32_2 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, d, e);
	and (int_fwire_1, a, b, c);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & d & ~(e)))
			(a => x) = 0;
		if ((b & c & ~(d) & e))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & d & ~(e)))
			(b => x) = 0;
		if ((a & c & ~(d) & e))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & d & ~(e)))
			(c => x) = 0;
		if ((a & b & ~(d) & e))
			(c => x) = 0;
		if ((a & b & ~(d) & ~(e)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e))
			(d => x) = 0;
		if ((a & ~(b) & c & e))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e))
			(d => x) = 0;
		if ((~(a) & b & c & e))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e) | (~(a) & ~(b) & c & e))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c) & e))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & c & d))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & c & d))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d) | (~(a) & ~(b) & c & d))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao32_4 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, d, e);
	and (int_fwire_1, a, b, c);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & d & ~(e)))
			(a => x) = 0;
		if ((b & c & ~(d) & e))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & d & ~(e)))
			(b => x) = 0;
		if ((a & c & ~(d) & e))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & d & ~(e)))
			(c => x) = 0;
		if ((a & b & ~(d) & e))
			(c => x) = 0;
		if ((a & b & ~(d) & ~(e)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e))
			(d => x) = 0;
		if ((a & ~(b) & c & e))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e))
			(d => x) = 0;
		if ((~(a) & b & c & e))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e) | (~(a) & ~(b) & c & e))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c) & e))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & c & d))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & c & d))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d) | (~(a) & ~(b) & c & d))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao33_0 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, d, e, f);
	and (int_fwire_1, a, b, c);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & d & e & ~(f)))
			(a => x) = 0;
		if ((b & c & d & ~(e) & f))
			(a => x) = 0;
		if ((b & c & d & ~(e) & ~(f)))
			(a => x) = 0;
		if ((b & c & ~(d) & e & f))
			(a => x) = 0;
		if ((b & c & ~(d) & e & ~(f)) | (b & c & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & d & e & ~(f)))
			(b => x) = 0;
		if ((a & c & d & ~(e) & f))
			(b => x) = 0;
		if ((a & c & d & ~(e) & ~(f)))
			(b => x) = 0;
		if ((a & c & ~(d) & e & f))
			(b => x) = 0;
		if ((a & c & ~(d) & e & ~(f)) | (a & c & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & d & e & ~(f)))
			(c => x) = 0;
		if ((a & b & d & ~(e) & f))
			(c => x) = 0;
		if ((a & b & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((a & b & ~(d) & e & f))
			(c => x) = 0;
		if ((a & b & ~(d) & e & ~(f)) | (a & b & ~(d) & ~(e) & f))
			(c => x) = 0;
		if ((a & b & ~(d) & ~(e) & ~(f)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e & f))
			(d => x) = 0;
		if ((a & ~(b) & c & e & f))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e & f))
			(d => x) = 0;
		if ((~(a) & b & c & e & f))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e & f) | (~(a) & ~(b) & c & e & f))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c) & e & f))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & ~(c) & d & f))
			(e => x) = 0;
		if ((a & ~(b) & c & d & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & b & c & d & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d & f) | (~(a) & ~(b) & c & d & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & b & ~(c) & d & e))
			(f => x) = 0;
		if ((a & ~(b) & c & d & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & b & c & d & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & d & e) | (~(a) & ~(b) & c & d & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao33_1 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, d, e, f);
	and (int_fwire_1, a, b, c);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & d & e & ~(f)))
			(a => x) = 0;
		if ((b & c & d & ~(e) & f))
			(a => x) = 0;
		if ((b & c & d & ~(e) & ~(f)))
			(a => x) = 0;
		if ((b & c & ~(d) & e & f))
			(a => x) = 0;
		if ((b & c & ~(d) & e & ~(f)) | (b & c & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & d & e & ~(f)))
			(b => x) = 0;
		if ((a & c & d & ~(e) & f))
			(b => x) = 0;
		if ((a & c & d & ~(e) & ~(f)))
			(b => x) = 0;
		if ((a & c & ~(d) & e & f))
			(b => x) = 0;
		if ((a & c & ~(d) & e & ~(f)) | (a & c & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & d & e & ~(f)))
			(c => x) = 0;
		if ((a & b & d & ~(e) & f))
			(c => x) = 0;
		if ((a & b & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((a & b & ~(d) & e & f))
			(c => x) = 0;
		if ((a & b & ~(d) & e & ~(f)) | (a & b & ~(d) & ~(e) & f))
			(c => x) = 0;
		if ((a & b & ~(d) & ~(e) & ~(f)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e & f))
			(d => x) = 0;
		if ((a & ~(b) & c & e & f))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e & f))
			(d => x) = 0;
		if ((~(a) & b & c & e & f))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e & f) | (~(a) & ~(b) & c & e & f))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c) & e & f))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & ~(c) & d & f))
			(e => x) = 0;
		if ((a & ~(b) & c & d & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & b & c & d & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d & f) | (~(a) & ~(b) & c & d & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & b & ~(c) & d & e))
			(f => x) = 0;
		if ((a & ~(b) & c & d & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & b & c & d & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & d & e) | (~(a) & ~(b) & c & d & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao33_2 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, d, e, f);
	and (int_fwire_1, a, b, c);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & d & e & ~(f)))
			(a => x) = 0;
		if ((b & c & d & ~(e) & f))
			(a => x) = 0;
		if ((b & c & d & ~(e) & ~(f)))
			(a => x) = 0;
		if ((b & c & ~(d) & e & f))
			(a => x) = 0;
		if ((b & c & ~(d) & e & ~(f)) | (b & c & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & d & e & ~(f)))
			(b => x) = 0;
		if ((a & c & d & ~(e) & f))
			(b => x) = 0;
		if ((a & c & d & ~(e) & ~(f)))
			(b => x) = 0;
		if ((a & c & ~(d) & e & f))
			(b => x) = 0;
		if ((a & c & ~(d) & e & ~(f)) | (a & c & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & d & e & ~(f)))
			(c => x) = 0;
		if ((a & b & d & ~(e) & f))
			(c => x) = 0;
		if ((a & b & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((a & b & ~(d) & e & f))
			(c => x) = 0;
		if ((a & b & ~(d) & e & ~(f)) | (a & b & ~(d) & ~(e) & f))
			(c => x) = 0;
		if ((a & b & ~(d) & ~(e) & ~(f)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e & f))
			(d => x) = 0;
		if ((a & ~(b) & c & e & f))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e & f))
			(d => x) = 0;
		if ((~(a) & b & c & e & f))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e & f) | (~(a) & ~(b) & c & e & f))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c) & e & f))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & ~(c) & d & f))
			(e => x) = 0;
		if ((a & ~(b) & c & d & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & b & c & d & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d & f) | (~(a) & ~(b) & c & d & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & b & ~(c) & d & e))
			(f => x) = 0;
		if ((a & ~(b) & c & d & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & b & c & d & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & d & e) | (~(a) & ~(b) & c & d & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module ao33_4 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, d, e, f);
	and (int_fwire_1, a, b, c);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & d & e & ~(f)))
			(a => x) = 0;
		if ((b & c & d & ~(e) & f))
			(a => x) = 0;
		if ((b & c & d & ~(e) & ~(f)))
			(a => x) = 0;
		if ((b & c & ~(d) & e & f))
			(a => x) = 0;
		if ((b & c & ~(d) & e & ~(f)) | (b & c & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & d & e & ~(f)))
			(b => x) = 0;
		if ((a & c & d & ~(e) & f))
			(b => x) = 0;
		if ((a & c & d & ~(e) & ~(f)))
			(b => x) = 0;
		if ((a & c & ~(d) & e & f))
			(b => x) = 0;
		if ((a & c & ~(d) & e & ~(f)) | (a & c & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & d & e & ~(f)))
			(c => x) = 0;
		if ((a & b & d & ~(e) & f))
			(c => x) = 0;
		if ((a & b & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((a & b & ~(d) & e & f))
			(c => x) = 0;
		if ((a & b & ~(d) & e & ~(f)) | (a & b & ~(d) & ~(e) & f))
			(c => x) = 0;
		if ((a & b & ~(d) & ~(e) & ~(f)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e & f))
			(d => x) = 0;
		if ((a & ~(b) & c & e & f))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e & f))
			(d => x) = 0;
		if ((~(a) & b & c & e & f))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e & f) | (~(a) & ~(b) & c & e & f))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c) & e & f))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & ~(c) & d & f))
			(e => x) = 0;
		if ((a & ~(b) & c & d & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & b & c & d & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d & f) | (~(a) & ~(b) & c & d & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & b & ~(c) & d & e))
			(f => x) = 0;
		if ((a & ~(b) & c & d & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & b & c & d & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & d & e) | (~(a) & ~(b) & c & d & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi211_0 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0, int_fwire_1;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	and (int_fwire_0, b__bar, c__bar, d__bar);
	not (a__bar, a);
	and (int_fwire_1, a__bar, c__bar, d__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & ~(b) & ~(d)))
			(c => x) = 0;
		if ((~(a) & b & ~(d)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi211_1 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0, int_fwire_1;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	and (int_fwire_0, b__bar, c__bar, d__bar);
	not (a__bar, a);
	and (int_fwire_1, a__bar, c__bar, d__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & ~(b) & ~(d)))
			(c => x) = 0;
		if ((~(a) & b & ~(d)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi211_2 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0, int_fwire_1;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	and (int_fwire_0, b__bar, c__bar, d__bar);
	not (a__bar, a);
	and (int_fwire_1, a__bar, c__bar, d__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & ~(b) & ~(d)))
			(c => x) = 0;
		if ((~(a) & b & ~(d)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi211_4 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0, int_fwire_1;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	and (int_fwire_0, b__bar, c__bar, d__bar);
	not (a__bar, a);
	and (int_fwire_1, a__bar, c__bar, d__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & ~(b) & ~(d)))
			(c => x) = 0;
		if ((~(a) & b & ~(d)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi21_0 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;
	wire int_fwire_0, int_fwire_1;

	not (c__bar, c);
	not (b__bar, b);
	and (int_fwire_0, b__bar, c__bar);
	not (a__bar, a);
	and (int_fwire_1, a__bar, c__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		if ((~(a) & ~(b)))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi21_1 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;
	wire int_fwire_0, int_fwire_1;

	not (c__bar, c);
	not (b__bar, b);
	and (int_fwire_0, b__bar, c__bar);
	not (a__bar, a);
	and (int_fwire_1, a__bar, c__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		if ((~(a) & ~(b)))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi21_2 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;
	wire int_fwire_0, int_fwire_1;

	not (c__bar, c);
	not (b__bar, b);
	and (int_fwire_0, b__bar, c__bar);
	not (a__bar, a);
	and (int_fwire_1, a__bar, c__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		if ((~(a) & ~(b)))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi21_4 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;
	wire int_fwire_0, int_fwire_1;

	not (c__bar, c);
	not (b__bar, b);
	and (int_fwire_0, b__bar, c__bar);
	not (a__bar, a);
	and (int_fwire_1, a__bar, c__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		if ((~(a) & ~(b)))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi221_0 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, int_fwire_0;
	wire int_fwire_1, int_fwire_2, int_fwire_3;

	not (e__bar, e);
	not (d__bar, d);
	not (b__bar, b);
	and (int_fwire_0, b__bar, d__bar, e__bar);
	not (c__bar, c);
	and (int_fwire_1, b__bar, c__bar, e__bar);
	not (a__bar, a);
	and (int_fwire_2, a__bar, d__bar, e__bar);
	and (int_fwire_3, a__bar, c__bar, e__bar);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & ~(d) & ~(e)))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e)))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & ~(e)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d) & ~(e)))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e)))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & ~(e)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi221_1 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, int_fwire_0;
	wire int_fwire_1, int_fwire_2, int_fwire_3;

	not (e__bar, e);
	not (d__bar, d);
	not (b__bar, b);
	and (int_fwire_0, b__bar, d__bar, e__bar);
	not (c__bar, c);
	and (int_fwire_1, b__bar, c__bar, e__bar);
	not (a__bar, a);
	and (int_fwire_2, a__bar, d__bar, e__bar);
	and (int_fwire_3, a__bar, c__bar, e__bar);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & ~(d) & ~(e)))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e)))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & ~(e)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d) & ~(e)))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e)))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & ~(e)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi221_2 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, int_fwire_0;
	wire int_fwire_1, int_fwire_2, int_fwire_3;

	not (e__bar, e);
	not (d__bar, d);
	not (b__bar, b);
	and (int_fwire_0, b__bar, d__bar, e__bar);
	not (c__bar, c);
	and (int_fwire_1, b__bar, c__bar, e__bar);
	not (a__bar, a);
	and (int_fwire_2, a__bar, d__bar, e__bar);
	and (int_fwire_3, a__bar, c__bar, e__bar);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & ~(d) & ~(e)))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e)))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & ~(e)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d) & ~(e)))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e)))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & ~(e)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi221_4 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, int_fwire_0;
	wire int_fwire_1, int_fwire_2, int_fwire_3;

	not (e__bar, e);
	not (d__bar, d);
	not (b__bar, b);
	and (int_fwire_0, b__bar, d__bar, e__bar);
	not (c__bar, c);
	and (int_fwire_1, b__bar, c__bar, e__bar);
	not (a__bar, a);
	and (int_fwire_2, a__bar, d__bar, e__bar);
	and (int_fwire_3, a__bar, c__bar, e__bar);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & ~(d) & ~(e)))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e)))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & ~(e)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d) & ~(e)))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e)))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & ~(e)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi222_0 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, f__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7;

	not (f__bar, f);
	not (d__bar, d);
	not (b__bar, b);
	and (int_fwire_0, b__bar, d__bar, f__bar);
	not (e__bar, e);
	and (int_fwire_1, b__bar, d__bar, e__bar);
	not (c__bar, c);
	and (int_fwire_2, b__bar, c__bar, f__bar);
	and (int_fwire_3, b__bar, c__bar, e__bar);
	not (a__bar, a);
	and (int_fwire_4, a__bar, d__bar, f__bar);
	and (int_fwire_5, a__bar, d__bar, e__bar);
	and (int_fwire_6, a__bar, c__bar, f__bar);
	and (int_fwire_7, a__bar, c__bar, e__bar);
	or (x, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & d & e & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e) & f))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e) & ~(f)) | (b & ~(c) & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & d & e & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e) & f))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e) & ~(f)) | (a & ~(c) & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d & e & ~(f)))
			(c => x) = 0;
		if ((a & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((a & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & b & d & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c & e & ~(f)))
			(d => x) = 0;
		if ((a & ~(b) & c & ~(e) & f))
			(d => x) = 0;
		if ((a & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & e & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & f))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & e & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & f))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & ~(b) & c & ~(d) & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d) & f))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & ~(b) & c & ~(d) & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & b & c & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d) & e))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi222_1 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, f__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7;

	not (f__bar, f);
	not (d__bar, d);
	not (b__bar, b);
	and (int_fwire_0, b__bar, d__bar, f__bar);
	not (e__bar, e);
	and (int_fwire_1, b__bar, d__bar, e__bar);
	not (c__bar, c);
	and (int_fwire_2, b__bar, c__bar, f__bar);
	and (int_fwire_3, b__bar, c__bar, e__bar);
	not (a__bar, a);
	and (int_fwire_4, a__bar, d__bar, f__bar);
	and (int_fwire_5, a__bar, d__bar, e__bar);
	and (int_fwire_6, a__bar, c__bar, f__bar);
	and (int_fwire_7, a__bar, c__bar, e__bar);
	or (x, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & d & e & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e) & f))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e) & ~(f)) | (b & ~(c) & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & d & e & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e) & f))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e) & ~(f)) | (a & ~(c) & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d & e & ~(f)))
			(c => x) = 0;
		if ((a & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((a & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & b & d & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c & e & ~(f)))
			(d => x) = 0;
		if ((a & ~(b) & c & ~(e) & f))
			(d => x) = 0;
		if ((a & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & e & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & f))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & e & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & f))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & ~(b) & c & ~(d) & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d) & f))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & ~(b) & c & ~(d) & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & b & c & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d) & e))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi222_2 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, f__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7;

	not (f__bar, f);
	not (d__bar, d);
	not (b__bar, b);
	and (int_fwire_0, b__bar, d__bar, f__bar);
	not (e__bar, e);
	and (int_fwire_1, b__bar, d__bar, e__bar);
	not (c__bar, c);
	and (int_fwire_2, b__bar, c__bar, f__bar);
	and (int_fwire_3, b__bar, c__bar, e__bar);
	not (a__bar, a);
	and (int_fwire_4, a__bar, d__bar, f__bar);
	and (int_fwire_5, a__bar, d__bar, e__bar);
	and (int_fwire_6, a__bar, c__bar, f__bar);
	and (int_fwire_7, a__bar, c__bar, e__bar);
	or (x, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & d & e & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e) & f))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e) & ~(f)) | (b & ~(c) & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & d & e & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e) & f))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e) & ~(f)) | (a & ~(c) & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d & e & ~(f)))
			(c => x) = 0;
		if ((a & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((a & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & b & d & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c & e & ~(f)))
			(d => x) = 0;
		if ((a & ~(b) & c & ~(e) & f))
			(d => x) = 0;
		if ((a & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & e & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & f))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & e & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & f))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & ~(b) & c & ~(d) & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d) & f))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & ~(b) & c & ~(d) & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & b & c & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d) & e))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi222_4 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, f__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7;

	not (f__bar, f);
	not (d__bar, d);
	not (b__bar, b);
	and (int_fwire_0, b__bar, d__bar, f__bar);
	not (e__bar, e);
	and (int_fwire_1, b__bar, d__bar, e__bar);
	not (c__bar, c);
	and (int_fwire_2, b__bar, c__bar, f__bar);
	and (int_fwire_3, b__bar, c__bar, e__bar);
	not (a__bar, a);
	and (int_fwire_4, a__bar, d__bar, f__bar);
	and (int_fwire_5, a__bar, d__bar, e__bar);
	and (int_fwire_6, a__bar, c__bar, f__bar);
	and (int_fwire_7, a__bar, c__bar, e__bar);
	or (x, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & d & e & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e) & f))
			(a => x) = 0;
		if ((b & ~(c) & d & ~(e) & ~(f)) | (b & ~(c) & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((b & ~(c) & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & d & e & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e) & f))
			(b => x) = 0;
		if ((a & ~(c) & d & ~(e) & ~(f)) | (a & ~(c) & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((a & ~(c) & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d & e & ~(f)))
			(c => x) = 0;
		if ((a & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((a & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & b & d & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & b & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c & e & ~(f)))
			(d => x) = 0;
		if ((a & ~(b) & c & ~(e) & f))
			(d => x) = 0;
		if ((a & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & e & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & f))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & e & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & f))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & ~(b) & c & ~(d) & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d) & f))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & ~(b) & c & ~(d) & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & b & c & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & ~(d) & e))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi22_0 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_2, int_fwire_3;

	not (d__bar, d);
	not (b__bar, b);
	and (int_fwire_0, b__bar, d__bar);
	not (c__bar, c);
	and (int_fwire_1, b__bar, c__bar);
	not (a__bar, a);
	and (int_fwire_2, a__bar, d__bar);
	and (int_fwire_3, a__bar, c__bar);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & ~(d)))
			(a => x) = 0;
		if ((b & ~(c) & d))
			(a => x) = 0;
		if ((b & ~(c) & ~(d)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d)))
			(b => x) = 0;
		if ((a & ~(c) & d))
			(b => x) = 0;
		if ((a & ~(c) & ~(d)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d))
			(c => x) = 0;
		if ((~(a) & b & d))
			(c => x) = 0;
		if ((~(a) & ~(b) & d))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & ~(b) & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi22_1 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_2, int_fwire_3;

	not (d__bar, d);
	not (b__bar, b);
	and (int_fwire_0, b__bar, d__bar);
	not (c__bar, c);
	and (int_fwire_1, b__bar, c__bar);
	not (a__bar, a);
	and (int_fwire_2, a__bar, d__bar);
	and (int_fwire_3, a__bar, c__bar);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & ~(d)))
			(a => x) = 0;
		if ((b & ~(c) & d))
			(a => x) = 0;
		if ((b & ~(c) & ~(d)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d)))
			(b => x) = 0;
		if ((a & ~(c) & d))
			(b => x) = 0;
		if ((a & ~(c) & ~(d)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d))
			(c => x) = 0;
		if ((~(a) & b & d))
			(c => x) = 0;
		if ((~(a) & ~(b) & d))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & ~(b) & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi22_2 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_2, int_fwire_3;

	not (d__bar, d);
	not (b__bar, b);
	and (int_fwire_0, b__bar, d__bar);
	not (c__bar, c);
	and (int_fwire_1, b__bar, c__bar);
	not (a__bar, a);
	and (int_fwire_2, a__bar, d__bar);
	and (int_fwire_3, a__bar, c__bar);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & ~(d)))
			(a => x) = 0;
		if ((b & ~(c) & d))
			(a => x) = 0;
		if ((b & ~(c) & ~(d)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d)))
			(b => x) = 0;
		if ((a & ~(c) & d))
			(b => x) = 0;
		if ((a & ~(c) & ~(d)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d))
			(c => x) = 0;
		if ((~(a) & b & d))
			(c => x) = 0;
		if ((~(a) & ~(b) & d))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & ~(b) & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi22_4 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_2, int_fwire_3;

	not (d__bar, d);
	not (b__bar, b);
	and (int_fwire_0, b__bar, d__bar);
	not (c__bar, c);
	and (int_fwire_1, b__bar, c__bar);
	not (a__bar, a);
	and (int_fwire_2, a__bar, d__bar);
	and (int_fwire_3, a__bar, c__bar);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & ~(d)))
			(a => x) = 0;
		if ((b & ~(c) & d))
			(a => x) = 0;
		if ((b & ~(c) & ~(d)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & ~(d)))
			(b => x) = 0;
		if ((a & ~(c) & d))
			(b => x) = 0;
		if ((a & ~(c) & ~(d)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b) & d))
			(c => x) = 0;
		if ((~(a) & b & d))
			(c => x) = 0;
		if ((~(a) & ~(b) & d))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & ~(b) & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi31_0 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_2;

	not (d__bar, d);
	not (c__bar, c);
	and (int_fwire_0, c__bar, d__bar);
	not (b__bar, b);
	and (int_fwire_1, b__bar, d__bar);
	not (a__bar, a);
	and (int_fwire_2, a__bar, d__bar);
	or (x, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		if ((a & b & ~(c)))
			(d => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & b & ~(c)) | (~(a) & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi31_1 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_2;

	not (d__bar, d);
	not (c__bar, c);
	and (int_fwire_0, c__bar, d__bar);
	not (b__bar, b);
	and (int_fwire_1, b__bar, d__bar);
	not (a__bar, a);
	and (int_fwire_2, a__bar, d__bar);
	or (x, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		if ((a & b & ~(c)))
			(d => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & b & ~(c)) | (~(a) & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi31_2 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_2;

	not (d__bar, d);
	not (c__bar, c);
	and (int_fwire_0, c__bar, d__bar);
	not (b__bar, b);
	and (int_fwire_1, b__bar, d__bar);
	not (a__bar, a);
	and (int_fwire_2, a__bar, d__bar);
	or (x, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		if ((a & b & ~(c)))
			(d => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & b & ~(c)) | (~(a) & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi31_4 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_2;

	not (d__bar, d);
	not (c__bar, c);
	and (int_fwire_0, c__bar, d__bar);
	not (b__bar, b);
	and (int_fwire_1, b__bar, d__bar);
	not (a__bar, a);
	and (int_fwire_2, a__bar, d__bar);
	or (x, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		if ((a & b & ~(c)))
			(d => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & b & ~(c)) | (~(a) & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi32_0 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, int_fwire_0;
	wire int_fwire_1, int_fwire_2, int_fwire_3;
	wire int_fwire_4, int_fwire_5;

	not (e__bar, e);
	not (c__bar, c);
	and (int_fwire_0, c__bar, e__bar);
	not (d__bar, d);
	and (int_fwire_1, c__bar, d__bar);
	not (b__bar, b);
	and (int_fwire_2, b__bar, e__bar);
	and (int_fwire_3, b__bar, d__bar);
	not (a__bar, a);
	and (int_fwire_4, a__bar, e__bar);
	and (int_fwire_5, a__bar, d__bar);
	or (x, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & d & ~(e)))
			(a => x) = 0;
		if ((b & c & ~(d) & e))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & d & ~(e)))
			(b => x) = 0;
		if ((a & c & ~(d) & e))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & d & ~(e)))
			(c => x) = 0;
		if ((a & b & ~(d) & e))
			(c => x) = 0;
		if ((a & b & ~(d) & ~(e)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e))
			(d => x) = 0;
		if ((a & ~(b) & c & e))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e))
			(d => x) = 0;
		if ((~(a) & b & c & e))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e) | (~(a) & ~(b) & c & e))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c) & e))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & c & d))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & c & d))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d) | (~(a) & ~(b) & c & d))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi32_1 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, int_fwire_0;
	wire int_fwire_1, int_fwire_2, int_fwire_3;
	wire int_fwire_4, int_fwire_5;

	not (e__bar, e);
	not (c__bar, c);
	and (int_fwire_0, c__bar, e__bar);
	not (d__bar, d);
	and (int_fwire_1, c__bar, d__bar);
	not (b__bar, b);
	and (int_fwire_2, b__bar, e__bar);
	and (int_fwire_3, b__bar, d__bar);
	not (a__bar, a);
	and (int_fwire_4, a__bar, e__bar);
	and (int_fwire_5, a__bar, d__bar);
	or (x, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & d & ~(e)))
			(a => x) = 0;
		if ((b & c & ~(d) & e))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & d & ~(e)))
			(b => x) = 0;
		if ((a & c & ~(d) & e))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & d & ~(e)))
			(c => x) = 0;
		if ((a & b & ~(d) & e))
			(c => x) = 0;
		if ((a & b & ~(d) & ~(e)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e))
			(d => x) = 0;
		if ((a & ~(b) & c & e))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e))
			(d => x) = 0;
		if ((~(a) & b & c & e))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e) | (~(a) & ~(b) & c & e))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c) & e))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & c & d))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & c & d))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d) | (~(a) & ~(b) & c & d))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi32_2 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, int_fwire_0;
	wire int_fwire_1, int_fwire_2, int_fwire_3;
	wire int_fwire_4, int_fwire_5;

	not (e__bar, e);
	not (c__bar, c);
	and (int_fwire_0, c__bar, e__bar);
	not (d__bar, d);
	and (int_fwire_1, c__bar, d__bar);
	not (b__bar, b);
	and (int_fwire_2, b__bar, e__bar);
	and (int_fwire_3, b__bar, d__bar);
	not (a__bar, a);
	and (int_fwire_4, a__bar, e__bar);
	and (int_fwire_5, a__bar, d__bar);
	or (x, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & d & ~(e)))
			(a => x) = 0;
		if ((b & c & ~(d) & e))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & d & ~(e)))
			(b => x) = 0;
		if ((a & c & ~(d) & e))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & d & ~(e)))
			(c => x) = 0;
		if ((a & b & ~(d) & e))
			(c => x) = 0;
		if ((a & b & ~(d) & ~(e)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e))
			(d => x) = 0;
		if ((a & ~(b) & c & e))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e))
			(d => x) = 0;
		if ((~(a) & b & c & e))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e) | (~(a) & ~(b) & c & e))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c) & e))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & c & d))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & c & d))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d) | (~(a) & ~(b) & c & d))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi32_4 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, int_fwire_0;
	wire int_fwire_1, int_fwire_2, int_fwire_3;
	wire int_fwire_4, int_fwire_5;

	not (e__bar, e);
	not (c__bar, c);
	and (int_fwire_0, c__bar, e__bar);
	not (d__bar, d);
	and (int_fwire_1, c__bar, d__bar);
	not (b__bar, b);
	and (int_fwire_2, b__bar, e__bar);
	and (int_fwire_3, b__bar, d__bar);
	not (a__bar, a);
	and (int_fwire_4, a__bar, e__bar);
	and (int_fwire_5, a__bar, d__bar);
	or (x, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & d & ~(e)))
			(a => x) = 0;
		if ((b & c & ~(d) & e))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & d & ~(e)))
			(b => x) = 0;
		if ((a & c & ~(d) & e))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & d & ~(e)))
			(c => x) = 0;
		if ((a & b & ~(d) & e))
			(c => x) = 0;
		if ((a & b & ~(d) & ~(e)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e))
			(d => x) = 0;
		if ((a & ~(b) & c & e))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e))
			(d => x) = 0;
		if ((~(a) & b & c & e))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e) | (~(a) & ~(b) & c & e))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c) & e))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & c & d))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & c & d))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d) | (~(a) & ~(b) & c & d))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi33_0 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, f__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7, int_fwire_8;

	not (f__bar, f);
	not (c__bar, c);
	and (int_fwire_0, c__bar, f__bar);
	not (e__bar, e);
	and (int_fwire_1, c__bar, e__bar);
	not (d__bar, d);
	and (int_fwire_2, c__bar, d__bar);
	not (b__bar, b);
	and (int_fwire_3, b__bar, f__bar);
	and (int_fwire_4, b__bar, e__bar);
	and (int_fwire_5, b__bar, d__bar);
	not (a__bar, a);
	and (int_fwire_6, a__bar, f__bar);
	and (int_fwire_7, a__bar, e__bar);
	and (int_fwire_8, a__bar, d__bar);
	or (x, int_fwire_8, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & d & e & ~(f)))
			(a => x) = 0;
		if ((b & c & d & ~(e) & f))
			(a => x) = 0;
		if ((b & c & d & ~(e) & ~(f)))
			(a => x) = 0;
		if ((b & c & ~(d) & e & f))
			(a => x) = 0;
		if ((b & c & ~(d) & e & ~(f)) | (b & c & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & d & e & ~(f)))
			(b => x) = 0;
		if ((a & c & d & ~(e) & f))
			(b => x) = 0;
		if ((a & c & d & ~(e) & ~(f)))
			(b => x) = 0;
		if ((a & c & ~(d) & e & f))
			(b => x) = 0;
		if ((a & c & ~(d) & e & ~(f)) | (a & c & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & d & e & ~(f)))
			(c => x) = 0;
		if ((a & b & d & ~(e) & f))
			(c => x) = 0;
		if ((a & b & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((a & b & ~(d) & e & f))
			(c => x) = 0;
		if ((a & b & ~(d) & e & ~(f)) | (a & b & ~(d) & ~(e) & f))
			(c => x) = 0;
		if ((a & b & ~(d) & ~(e) & ~(f)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e & f))
			(d => x) = 0;
		if ((a & ~(b) & c & e & f))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e & f))
			(d => x) = 0;
		if ((~(a) & b & c & e & f))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e & f) | (~(a) & ~(b) & c & e & f))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c) & e & f))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & ~(c) & d & f))
			(e => x) = 0;
		if ((a & ~(b) & c & d & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & b & c & d & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d & f) | (~(a) & ~(b) & c & d & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & b & ~(c) & d & e))
			(f => x) = 0;
		if ((a & ~(b) & c & d & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & b & c & d & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & d & e) | (~(a) & ~(b) & c & d & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi33_1 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, f__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7, int_fwire_8;

	not (f__bar, f);
	not (c__bar, c);
	and (int_fwire_0, c__bar, f__bar);
	not (e__bar, e);
	and (int_fwire_1, c__bar, e__bar);
	not (d__bar, d);
	and (int_fwire_2, c__bar, d__bar);
	not (b__bar, b);
	and (int_fwire_3, b__bar, f__bar);
	and (int_fwire_4, b__bar, e__bar);
	and (int_fwire_5, b__bar, d__bar);
	not (a__bar, a);
	and (int_fwire_6, a__bar, f__bar);
	and (int_fwire_7, a__bar, e__bar);
	and (int_fwire_8, a__bar, d__bar);
	or (x, int_fwire_8, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & d & e & ~(f)))
			(a => x) = 0;
		if ((b & c & d & ~(e) & f))
			(a => x) = 0;
		if ((b & c & d & ~(e) & ~(f)))
			(a => x) = 0;
		if ((b & c & ~(d) & e & f))
			(a => x) = 0;
		if ((b & c & ~(d) & e & ~(f)) | (b & c & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & d & e & ~(f)))
			(b => x) = 0;
		if ((a & c & d & ~(e) & f))
			(b => x) = 0;
		if ((a & c & d & ~(e) & ~(f)))
			(b => x) = 0;
		if ((a & c & ~(d) & e & f))
			(b => x) = 0;
		if ((a & c & ~(d) & e & ~(f)) | (a & c & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & d & e & ~(f)))
			(c => x) = 0;
		if ((a & b & d & ~(e) & f))
			(c => x) = 0;
		if ((a & b & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((a & b & ~(d) & e & f))
			(c => x) = 0;
		if ((a & b & ~(d) & e & ~(f)) | (a & b & ~(d) & ~(e) & f))
			(c => x) = 0;
		if ((a & b & ~(d) & ~(e) & ~(f)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e & f))
			(d => x) = 0;
		if ((a & ~(b) & c & e & f))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e & f))
			(d => x) = 0;
		if ((~(a) & b & c & e & f))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e & f) | (~(a) & ~(b) & c & e & f))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c) & e & f))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & ~(c) & d & f))
			(e => x) = 0;
		if ((a & ~(b) & c & d & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & b & c & d & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d & f) | (~(a) & ~(b) & c & d & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & b & ~(c) & d & e))
			(f => x) = 0;
		if ((a & ~(b) & c & d & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & b & c & d & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & d & e) | (~(a) & ~(b) & c & d & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi33_2 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, f__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7, int_fwire_8;

	not (f__bar, f);
	not (c__bar, c);
	and (int_fwire_0, c__bar, f__bar);
	not (e__bar, e);
	and (int_fwire_1, c__bar, e__bar);
	not (d__bar, d);
	and (int_fwire_2, c__bar, d__bar);
	not (b__bar, b);
	and (int_fwire_3, b__bar, f__bar);
	and (int_fwire_4, b__bar, e__bar);
	and (int_fwire_5, b__bar, d__bar);
	not (a__bar, a);
	and (int_fwire_6, a__bar, f__bar);
	and (int_fwire_7, a__bar, e__bar);
	and (int_fwire_8, a__bar, d__bar);
	or (x, int_fwire_8, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & d & e & ~(f)))
			(a => x) = 0;
		if ((b & c & d & ~(e) & f))
			(a => x) = 0;
		if ((b & c & d & ~(e) & ~(f)))
			(a => x) = 0;
		if ((b & c & ~(d) & e & f))
			(a => x) = 0;
		if ((b & c & ~(d) & e & ~(f)) | (b & c & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & d & e & ~(f)))
			(b => x) = 0;
		if ((a & c & d & ~(e) & f))
			(b => x) = 0;
		if ((a & c & d & ~(e) & ~(f)))
			(b => x) = 0;
		if ((a & c & ~(d) & e & f))
			(b => x) = 0;
		if ((a & c & ~(d) & e & ~(f)) | (a & c & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & d & e & ~(f)))
			(c => x) = 0;
		if ((a & b & d & ~(e) & f))
			(c => x) = 0;
		if ((a & b & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((a & b & ~(d) & e & f))
			(c => x) = 0;
		if ((a & b & ~(d) & e & ~(f)) | (a & b & ~(d) & ~(e) & f))
			(c => x) = 0;
		if ((a & b & ~(d) & ~(e) & ~(f)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e & f))
			(d => x) = 0;
		if ((a & ~(b) & c & e & f))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e & f))
			(d => x) = 0;
		if ((~(a) & b & c & e & f))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e & f) | (~(a) & ~(b) & c & e & f))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c) & e & f))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & ~(c) & d & f))
			(e => x) = 0;
		if ((a & ~(b) & c & d & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & b & c & d & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d & f) | (~(a) & ~(b) & c & d & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & b & ~(c) & d & e))
			(f => x) = 0;
		if ((a & ~(b) & c & d & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & b & c & d & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & d & e) | (~(a) & ~(b) & c & d & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module aoi33_4 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, f__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7, int_fwire_8;

	not (f__bar, f);
	not (c__bar, c);
	and (int_fwire_0, c__bar, f__bar);
	not (e__bar, e);
	and (int_fwire_1, c__bar, e__bar);
	not (d__bar, d);
	and (int_fwire_2, c__bar, d__bar);
	not (b__bar, b);
	and (int_fwire_3, b__bar, f__bar);
	and (int_fwire_4, b__bar, e__bar);
	and (int_fwire_5, b__bar, d__bar);
	not (a__bar, a);
	and (int_fwire_6, a__bar, f__bar);
	and (int_fwire_7, a__bar, e__bar);
	and (int_fwire_8, a__bar, d__bar);
	or (x, int_fwire_8, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c & d & e & ~(f)))
			(a => x) = 0;
		if ((b & c & d & ~(e) & f))
			(a => x) = 0;
		if ((b & c & d & ~(e) & ~(f)))
			(a => x) = 0;
		if ((b & c & ~(d) & e & f))
			(a => x) = 0;
		if ((b & c & ~(d) & e & ~(f)) | (b & c & ~(d) & ~(e) & f))
			(a => x) = 0;
		if ((b & c & ~(d) & ~(e) & ~(f)))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((a & c & d & e & ~(f)))
			(b => x) = 0;
		if ((a & c & d & ~(e) & f))
			(b => x) = 0;
		if ((a & c & d & ~(e) & ~(f)))
			(b => x) = 0;
		if ((a & c & ~(d) & e & f))
			(b => x) = 0;
		if ((a & c & ~(d) & e & ~(f)) | (a & c & ~(d) & ~(e) & f))
			(b => x) = 0;
		if ((a & c & ~(d) & ~(e) & ~(f)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & d & e & ~(f)))
			(c => x) = 0;
		if ((a & b & d & ~(e) & f))
			(c => x) = 0;
		if ((a & b & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((a & b & ~(d) & e & f))
			(c => x) = 0;
		if ((a & b & ~(d) & e & ~(f)) | (a & b & ~(d) & ~(e) & f))
			(c => x) = 0;
		if ((a & b & ~(d) & ~(e) & ~(f)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e & f))
			(d => x) = 0;
		if ((a & ~(b) & c & e & f))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e & f))
			(d => x) = 0;
		if ((~(a) & b & c & e & f))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e & f) | (~(a) & ~(b) & c & e & f))
			(d => x) = 0;
		if ((~(a) & ~(b) & ~(c) & e & f))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & ~(c) & d & f))
			(e => x) = 0;
		if ((a & ~(b) & c & d & f))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		if ((~(a) & b & c & d & f))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d & f) | (~(a) & ~(b) & c & d & f))
			(e => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & f))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & b & ~(c) & d & e))
			(f => x) = 0;
		if ((a & ~(b) & c & d & e))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		if ((~(a) & b & c & d & e))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & d & e) | (~(a) & ~(b) & c & d & e))
			(f => x) = 0;
		if ((~(a) & ~(b) & ~(c) & d & e))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module buf_0 ( a,x );
	output x;
	input a;

	// Function
	buf (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module buf_1 ( a,x );
	output x;
	input a;

	// Function
	buf (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module buf_12 ( a,x );
	output x;
	input a;

	// Function
	buf (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module buf_16 ( a,x );
	output x;
	input a;

	// Function
	buf (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module buf_2 ( a,x );
	output x;
	input a;

	// Function
	buf (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module buf_20 ( a,x );
	output x;
	input a;

	// Function
	buf (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module buf_3 ( a,x );
	output x;
	input a;

	// Function
	buf (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module buf_4 ( a,x );
	output x;
	input a;

	// Function
	buf (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module buf_6 ( a,x );
	output x;
	input a;

	// Function
	buf (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module buf_8 ( a,x );
	output x;
	input a;

	// Function
	buf (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module bushold (x);
	inout x;
	// Missing function for pin x
	// Timing
	specify
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffn_0 ( ckb,d,q,qb );
	output q,qb;
	input ckb,d;
	reg notifier;
	wire delayed_d, delayed_ckb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire xcr_0;

	not (int_fwire_clk, delayed_ckb);
	altos_dff_err (xcr_0, int_fwire_clk, delayed_d);
	altos_dff (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(negedge ckb => (q+:d)) = 0;
		(negedge ckb => (qb-:d)) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffn_1 ( ckb,d,q,qb );
	output q,qb;
	input ckb,d;
	reg notifier;
	wire delayed_d, delayed_ckb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire xcr_0;

	not (int_fwire_clk, delayed_ckb);
	altos_dff_err (xcr_0, int_fwire_clk, delayed_d);
	altos_dff (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(negedge ckb => (q+:d)) = 0;
		(negedge ckb => (qb-:d)) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffn_2 ( ckb,d,q,qb );
	output q,qb;
	input ckb,d;
	reg notifier;
	wire delayed_d, delayed_ckb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire xcr_0;

	not (int_fwire_clk, delayed_ckb);
	altos_dff_err (xcr_0, int_fwire_clk, delayed_d);
	altos_dff (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(negedge ckb => (q+:d)) = 0;
		(negedge ckb => (qb-:d)) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffn_4 ( ckb,d,q,qb );
	output q,qb;
	input ckb,d;
	reg notifier;
	wire delayed_d, delayed_ckb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire xcr_0;

	not (int_fwire_clk, delayed_ckb);
	altos_dff_err (xcr_0, int_fwire_clk, delayed_d);
	altos_dff (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(negedge ckb => (q+:d)) = 0;
		(negedge ckb => (qb-:d)) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffnr_0 ( ckb,d,rb,q,qb );
	output q,qb;
	input ckb,d,rb;
	reg notifier;
	wire delayed_d, delayed_ckb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r, xcr_0;

	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_r, rb);
	altos_dff_r_err (xcr_0, int_fwire_clk, delayed_d, int_fwire_r);
	altos_dff_r (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & ~(d)))
			(negedge rb => (q+:1'b0)) = 0;
		if (~(ckb))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(negedge ckb => (q+:d)) = 0;
		if ((ckb & d))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & ~(d)))
			(negedge rb => (qb-:1'b0)) = 0;
		if (~(ckb))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(negedge ckb => (qb-:d)) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$recovery (posedge rb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffnr_1 ( ckb,d,rb,q,qb );
	output q,qb;
	input ckb,d,rb;
	reg notifier;
	wire delayed_d, delayed_ckb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r, xcr_0;

	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_r, rb);
	altos_dff_r_err (xcr_0, int_fwire_clk, delayed_d, int_fwire_r);
	altos_dff_r (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & ~(d)))
			(negedge rb => (q+:1'b0)) = 0;
		if (~(ckb))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(negedge ckb => (q+:d)) = 0;
		if ((ckb & d))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & ~(d)))
			(negedge rb => (qb-:1'b0)) = 0;
		if (~(ckb))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(negedge ckb => (qb-:d)) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$recovery (posedge rb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffnr_2 ( ckb,d,rb,q,qb );
	output q,qb;
	input ckb,d,rb;
	reg notifier;
	wire delayed_d, delayed_ckb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r, xcr_0;

	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_r, rb);
	altos_dff_r_err (xcr_0, int_fwire_clk, delayed_d, int_fwire_r);
	altos_dff_r (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & ~(d)))
			(negedge rb => (q+:1'b0)) = 0;
		if (~(ckb))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(negedge ckb => (q+:d)) = 0;
		if ((ckb & d))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & ~(d)))
			(negedge rb => (qb-:1'b0)) = 0;
		if (~(ckb))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(negedge ckb => (qb-:d)) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$recovery (posedge rb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffnr_4 ( ckb,d,rb,q,qb );
	output q,qb;
	input ckb,d,rb;
	reg notifier;
	wire delayed_d, delayed_ckb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r, xcr_0;

	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_r, rb);
	altos_dff_r_err (xcr_0, int_fwire_clk, delayed_d, int_fwire_r);
	altos_dff_r (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & ~(d)))
			(negedge rb => (q+:1'b0)) = 0;
		if (~(ckb))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(negedge ckb => (q+:d)) = 0;
		if ((ckb & d))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & ~(d)))
			(negedge rb => (qb-:1'b0)) = 0;
		if (~(ckb))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(negedge ckb => (qb-:d)) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$recovery (posedge rb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffnrs_0 ( ckb,d,rb,sb,q,qb );
	output q,qb;
	input ckb,d,rb,sb;
	reg notifier;
	wire delayed_d, delayed_rb, delayed_sb, delayed_ckb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r, int_fwire_s, xcr_0;

	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_dff_sr_err (xcr_0, int_fwire_clk, delayed_d, int_fwire_s, int_fwire_r);
	altos_dff_sr_0 (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_s, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & ~(d) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & ~(d) & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ckb) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ckb) & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((ckb & ~(d) & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ckb) & rb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge ckb => (q+:d)) = 0;
		if ((ckb & d & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & ~(d) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & ~(d) & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ckb) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ckb) & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((ckb & ~(d) & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ckb) & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge ckb => (qb-:d)) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$recovery (posedge rb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge rb, 0, notifier);
		$recovery (posedge sb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffnrs_1 ( ckb,d,rb,sb,q,qb );
	output q,qb;
	input ckb,d,rb,sb;
	reg notifier;
	wire delayed_d, delayed_rb, delayed_sb, delayed_ckb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r, int_fwire_s, xcr_0;

	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_dff_sr_err (xcr_0, int_fwire_clk, delayed_d, int_fwire_s, int_fwire_r);
	altos_dff_sr_0 (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_s, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & ~(d) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & ~(d) & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ckb) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ckb) & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((ckb & ~(d) & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ckb) & rb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge ckb => (q+:d)) = 0;
		if ((ckb & d & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & ~(d) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & ~(d) & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ckb) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ckb) & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((ckb & ~(d) & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ckb) & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge ckb => (qb-:d)) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$recovery (posedge rb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge rb, 0, notifier);
		$recovery (posedge sb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffnrs_2 ( ckb,d,rb,sb,q,qb );
	output q,qb;
	input ckb,d,rb,sb;
	reg notifier;
	wire delayed_d, delayed_rb, delayed_sb, delayed_ckb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r, int_fwire_s, xcr_0;

	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_dff_sr_err (xcr_0, int_fwire_clk, delayed_d, int_fwire_s, int_fwire_r);
	altos_dff_sr_0 (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_s, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & ~(d) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & ~(d) & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ckb) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ckb) & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((ckb & ~(d) & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ckb) & rb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge ckb => (q+:d)) = 0;
		if ((ckb & d & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & ~(d) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & ~(d) & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ckb) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ckb) & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((ckb & ~(d) & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ckb) & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge ckb => (qb-:d)) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$recovery (posedge rb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge rb, 0, notifier);
		$recovery (posedge sb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffnrs_4 ( ckb,d,rb,sb,q,qb );
	output q,qb;
	input ckb,d,rb,sb;
	reg notifier;
	wire delayed_d, delayed_rb, delayed_sb, delayed_ckb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r, int_fwire_s, xcr_0;

	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_dff_sr_err (xcr_0, int_fwire_clk, delayed_d, int_fwire_s, int_fwire_r);
	altos_dff_sr_0 (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_s, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & ~(d) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & ~(d) & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ckb) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ckb) & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((ckb & ~(d) & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ckb) & rb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge ckb => (q+:d)) = 0;
		if ((ckb & d & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & ~(d) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & ~(d) & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ckb) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ckb) & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((ckb & ~(d) & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ckb) & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge ckb => (qb-:d)) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$recovery (posedge rb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge rb, 0, notifier);
		$recovery (posedge sb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffns_0 ( ckb,d,sb,q,qb );
	output q,qb;
	input ckb,d,sb;
	reg notifier;
	wire delayed_d, delayed_ckb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_s, xcr_0;

	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_s, sb);
	altos_dff_s_err (xcr_0, int_fwire_clk, delayed_d, int_fwire_s);
	altos_dff_s (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_s, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d))
			(negedge sb => (q+:1'b1)) = 0;
		if ((ckb & ~(d)))
			(negedge sb => (q+:1'b1)) = 0;
		if (~(ckb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge ckb => (q+:d)) = 0;
		if ((ckb & d))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((ckb & ~(d)))
			(negedge sb => (qb-:1'b1)) = 0;
		if (~(ckb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge ckb => (qb-:d)) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$recovery (posedge sb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffns_1 ( ckb,d,sb,q,qb );
	output q,qb;
	input ckb,d,sb;
	reg notifier;
	wire delayed_d, delayed_ckb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_s, xcr_0;

	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_s, sb);
	altos_dff_s_err (xcr_0, int_fwire_clk, delayed_d, int_fwire_s);
	altos_dff_s (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_s, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d))
			(negedge sb => (q+:1'b1)) = 0;
		if ((ckb & ~(d)))
			(negedge sb => (q+:1'b1)) = 0;
		if (~(ckb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge ckb => (q+:d)) = 0;
		if ((ckb & d))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((ckb & ~(d)))
			(negedge sb => (qb-:1'b1)) = 0;
		if (~(ckb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge ckb => (qb-:d)) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$recovery (posedge sb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffns_2 ( ckb,d,sb,q,qb );
	output q,qb;
	input ckb,d,sb;
	reg notifier;
	wire delayed_d, delayed_ckb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_s, xcr_0;

	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_s, sb);
	altos_dff_s_err (xcr_0, int_fwire_clk, delayed_d, int_fwire_s);
	altos_dff_s (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_s, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d))
			(negedge sb => (q+:1'b1)) = 0;
		if ((ckb & ~(d)))
			(negedge sb => (q+:1'b1)) = 0;
		if (~(ckb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge ckb => (q+:d)) = 0;
		if ((ckb & d))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((ckb & ~(d)))
			(negedge sb => (qb-:1'b1)) = 0;
		if (~(ckb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge ckb => (qb-:d)) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$recovery (posedge sb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffns_4 ( ckb,d,sb,q,qb );
	output q,qb;
	input ckb,d,sb;
	reg notifier;
	wire delayed_d, delayed_ckb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_s, xcr_0;

	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_s, sb);
	altos_dff_s_err (xcr_0, int_fwire_clk, delayed_d, int_fwire_s);
	altos_dff_s (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_s, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d))
			(negedge sb => (q+:1'b1)) = 0;
		if ((ckb & ~(d)))
			(negedge sb => (q+:1'b1)) = 0;
		if (~(ckb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge ckb => (q+:d)) = 0;
		if ((ckb & d))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((ckb & ~(d)))
			(negedge sb => (qb-:1'b1)) = 0;
		if (~(ckb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge ckb => (qb-:d)) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$recovery (posedge sb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffp_0 ( ck,d,q,qb );
	output q,qb;
	input ck,d;
	reg notifier;
	wire delayed_d, delayed_ck;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, xcr_0;

	altos_dff_err (xcr_0, delayed_ck, delayed_d);
	altos_dff (int_fwire_Iq, notifier, delayed_ck, delayed_d, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(posedge ck => (q+:d)) = 0;
		(posedge ck => (qb-:d)) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffp_1 ( ck,d,q,qb );
	output q,qb;
	input ck,d;
	reg notifier;
	wire delayed_d, delayed_ck;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, xcr_0;

	altos_dff_err (xcr_0, delayed_ck, delayed_d);
	altos_dff (int_fwire_Iq, notifier, delayed_ck, delayed_d, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(posedge ck => (q+:d)) = 0;
		(posedge ck => (qb-:d)) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffp_2 ( ck,d,q,qb );
	output q,qb;
	input ck,d;
	reg notifier;
	wire delayed_d, delayed_ck;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, xcr_0;

	altos_dff_err (xcr_0, delayed_ck, delayed_d);
	altos_dff (int_fwire_Iq, notifier, delayed_ck, delayed_d, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(posedge ck => (q+:d)) = 0;
		(posedge ck => (qb-:d)) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffp_4 ( ck,d,q,qb );
	output q,qb;
	input ck,d;
	reg notifier;
	wire delayed_d, delayed_ck;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, xcr_0;

	altos_dff_err (xcr_0, delayed_ck, delayed_d);
	altos_dff (int_fwire_Iq, notifier, delayed_ck, delayed_d, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(posedge ck => (q+:d)) = 0;
		(posedge ck => (qb-:d)) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffpr_0 ( ck,d,rb,q,qb );
	output q,qb;
	input ck,d,rb;
	reg notifier;
	wire delayed_d, delayed_ck;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_r;
	wire xcr_0;

	not (int_fwire_r, rb);
	altos_dff_r_err (xcr_0, delayed_ck, delayed_d, int_fwire_r);
	altos_dff_r (int_fwire_Iq, notifier, delayed_ck, delayed_d, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if (ck)
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & ~(d)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(posedge ck => (q+:d)) = 0;
		if (ck)
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & ~(d)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(posedge ck => (qb-:d)) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$recovery (posedge rb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffpr_1 ( ck,d,rb,q,qb );
	output q,qb;
	input ck,d,rb;
	reg notifier;
	wire delayed_d, delayed_ck;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_r;
	wire xcr_0;

	not (int_fwire_r, rb);
	altos_dff_r_err (xcr_0, delayed_ck, delayed_d, int_fwire_r);
	altos_dff_r (int_fwire_Iq, notifier, delayed_ck, delayed_d, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if (ck)
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & ~(d)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(posedge ck => (q+:d)) = 0;
		if (ck)
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & ~(d)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(posedge ck => (qb-:d)) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$recovery (posedge rb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffpr_2 ( ck,d,rb,q,qb );
	output q,qb;
	input ck,d,rb;
	reg notifier;
	wire delayed_d, delayed_ck;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_r;
	wire xcr_0;

	not (int_fwire_r, rb);
	altos_dff_r_err (xcr_0, delayed_ck, delayed_d, int_fwire_r);
	altos_dff_r (int_fwire_Iq, notifier, delayed_ck, delayed_d, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if (ck)
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & ~(d)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(posedge ck => (q+:d)) = 0;
		if (ck)
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & ~(d)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(posedge ck => (qb-:d)) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$recovery (posedge rb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffpr_4 ( ck,d,rb,q,qb );
	output q,qb;
	input ck,d,rb;
	reg notifier;
	wire delayed_d, delayed_ck;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_r;
	wire xcr_0;

	not (int_fwire_r, rb);
	altos_dff_r_err (xcr_0, delayed_ck, delayed_d, int_fwire_r);
	altos_dff_r (int_fwire_Iq, notifier, delayed_ck, delayed_d, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if (ck)
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & ~(d)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(posedge ck => (q+:d)) = 0;
		if (ck)
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & ~(d)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(posedge ck => (qb-:d)) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$recovery (posedge rb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffprs_0 ( ck,d,rb,sb,q,qb );
	output q,qb;
	input ck,d,rb,sb;
	reg notifier;
	wire delayed_d, delayed_rb, delayed_sb, delayed_ck;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_r;
	wire int_fwire_s, xcr_0;

	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_dff_sr_err (xcr_0, delayed_ck, delayed_d, int_fwire_s, int_fwire_r);
	altos_dff_sr_0 (int_fwire_Iq, notifier, delayed_ck, delayed_d, int_fwire_s, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ck & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ck & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & ~(d) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & ~(d) & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((ck & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & ~(d) & rb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge ck => (q+:d)) = 0;
		if ((ck & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ck & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & ~(d) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & ~(d) & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((ck & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & ~(d) & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge ck => (qb-:d)) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$recovery (posedge rb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge rb, 0, notifier);
		$recovery (posedge sb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffprs_1 ( ck,d,rb,sb,q,qb );
	output q,qb;
	input ck,d,rb,sb;
	reg notifier;
	wire delayed_d, delayed_rb, delayed_sb, delayed_ck;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_r;
	wire int_fwire_s, xcr_0;

	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_dff_sr_err (xcr_0, delayed_ck, delayed_d, int_fwire_s, int_fwire_r);
	altos_dff_sr_0 (int_fwire_Iq, notifier, delayed_ck, delayed_d, int_fwire_s, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ck & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ck & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & ~(d) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & ~(d) & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((ck & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & ~(d) & rb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge ck => (q+:d)) = 0;
		if ((ck & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ck & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & ~(d) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & ~(d) & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((ck & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & ~(d) & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge ck => (qb-:d)) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$recovery (posedge rb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge rb, 0, notifier);
		$recovery (posedge sb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffprs_2 ( ck,d,rb,sb,q,qb );
	output q,qb;
	input ck,d,rb,sb;
	reg notifier;
	wire delayed_d, delayed_rb, delayed_sb, delayed_ck;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_r;
	wire int_fwire_s, xcr_0;

	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_dff_sr_err (xcr_0, delayed_ck, delayed_d, int_fwire_s, int_fwire_r);
	altos_dff_sr_0 (int_fwire_Iq, notifier, delayed_ck, delayed_d, int_fwire_s, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ck & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ck & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & ~(d) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & ~(d) & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((ck & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & ~(d) & rb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge ck => (q+:d)) = 0;
		if ((ck & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ck & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & ~(d) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & ~(d) & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((ck & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & ~(d) & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge ck => (qb-:d)) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$recovery (posedge rb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge rb, 0, notifier);
		$recovery (posedge sb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffprs_4 ( ck,d,rb,sb,q,qb );
	output q,qb;
	input ck,d,rb,sb;
	reg notifier;
	wire delayed_d, delayed_rb, delayed_sb, delayed_ck;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_r;
	wire int_fwire_s, xcr_0;

	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_dff_sr_err (xcr_0, delayed_ck, delayed_d, int_fwire_s, int_fwire_r);
	altos_dff_sr_0 (int_fwire_Iq, notifier, delayed_ck, delayed_d, int_fwire_s, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ck & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ck & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & ~(d) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & ~(d) & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((ck & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & ~(d) & rb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge ck => (q+:d)) = 0;
		if ((ck & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ck & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & ~(d) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & ~(d) & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((ck & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & ~(d) & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge ck => (qb-:d)) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$recovery (posedge rb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge rb, 0, notifier);
		$recovery (posedge sb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffps_0 ( ck,d,sb,q,qb );
	output q,qb;
	input ck,d,sb;
	reg notifier;
	wire delayed_d, delayed_ck;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_s;
	wire xcr_0;

	not (int_fwire_s, sb);
	altos_dff_s_err (xcr_0, delayed_ck, delayed_d, int_fwire_s);
	altos_dff_s (int_fwire_Iq, notifier, delayed_ck, delayed_d, int_fwire_s, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if (ck)
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & ~(d)))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge ck => (q+:d)) = 0;
		if (ck)
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & ~(d)))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge ck => (qb-:d)) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$recovery (posedge sb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffps_1 ( ck,d,sb,q,qb );
	output q,qb;
	input ck,d,sb;
	reg notifier;
	wire delayed_d, delayed_ck;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_s;
	wire xcr_0;

	not (int_fwire_s, sb);
	altos_dff_s_err (xcr_0, delayed_ck, delayed_d, int_fwire_s);
	altos_dff_s (int_fwire_Iq, notifier, delayed_ck, delayed_d, int_fwire_s, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if (ck)
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & ~(d)))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge ck => (q+:d)) = 0;
		if (ck)
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & ~(d)))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge ck => (qb-:d)) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$recovery (posedge sb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffps_2 ( ck,d,sb,q,qb );
	output q,qb;
	input ck,d,sb;
	reg notifier;
	wire delayed_d, delayed_ck;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_s;
	wire xcr_0;

	not (int_fwire_s, sb);
	altos_dff_s_err (xcr_0, delayed_ck, delayed_d, int_fwire_s);
	altos_dff_s (int_fwire_Iq, notifier, delayed_ck, delayed_d, int_fwire_s, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if (ck)
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & ~(d)))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge ck => (q+:d)) = 0;
		if (ck)
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & ~(d)))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge ck => (qb-:d)) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$recovery (posedge sb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dffps_4 ( ck,d,sb,q,qb );
	output q,qb;
	input ck,d,sb;
	reg notifier;
	wire delayed_d, delayed_ck;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_s;
	wire xcr_0;

	not (int_fwire_s, sb);
	altos_dff_s_err (xcr_0, delayed_ck, delayed_d, int_fwire_s);
	altos_dff_s (int_fwire_Iq, notifier, delayed_ck, delayed_d, int_fwire_s, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if (ck)
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & ~(d)))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge ck => (q+:d)) = 0;
		if (ck)
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & ~(d)))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge ck => (qb-:d)) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$recovery (posedge sb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dlybuf1_1 ( a,x );
	output x;
	input a;

	// Function
	buf (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dlybuf2_1 ( a,x );
	output x;
	input a;

	// Function
	buf (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dlybuf4_1 ( a,x );
	output x;
	input a;

	// Function
	buf (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module dlybuf8_1 ( a,x );
	output x;
	input a;

	// Function
	buf (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module exnor2_0 ( a,b,x );
	output x;
	input a,b;

	// Function
	wire a__bar, b__bar, int_fwire_0;
	wire int_fwire_1;

	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar);
	and (int_fwire_1, a, b);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if (b)
			(a => x) = 0;
		if (~(b))
			(a => x) = 0;
		if (a)
			(b => x) = 0;
		if (~(a))
			(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module exnor2_1 ( a,b,x );
	output x;
	input a,b;

	// Function
	wire a__bar, b__bar, int_fwire_0;
	wire int_fwire_1;

	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar);
	and (int_fwire_1, a, b);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if (b)
			(a => x) = 0;
		if (~(b))
			(a => x) = 0;
		if (a)
			(b => x) = 0;
		if (~(a))
			(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module exnor2_2 ( a,b,x );
	output x;
	input a,b;

	// Function
	wire a__bar, b__bar, int_fwire_0;
	wire int_fwire_1;

	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar);
	and (int_fwire_1, a, b);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if (b)
			(a => x) = 0;
		if (~(b))
			(a => x) = 0;
		if (a)
			(b => x) = 0;
		if (~(a))
			(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module exnor2_4 ( a,b,x );
	output x;
	input a,b;

	// Function
	wire a__bar, b__bar, int_fwire_0;
	wire int_fwire_1;

	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar);
	and (int_fwire_1, a, b);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if (b)
			(a => x) = 0;
		if (~(b))
			(a => x) = 0;
		if (a)
			(b => x) = 0;
		if (~(a))
			(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module exnor3_0 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3;

	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar, c__bar);
	and (int_fwire_1, a__bar, b, c);
	and (int_fwire_2, a, b__bar, c);
	and (int_fwire_3, a, b, c__bar);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & ~(c)) | (~(b) & c))
			(a => x) = 0;
		if ((b & c) | (~(b) & ~(c)))
			(a => x) = 0;
		if ((a & ~(c)))
			(b => x) = 0;
		if ((~(a) & c))
			(b => x) = 0;
		if ((a & c))
			(b => x) = 0;
		if ((~(a) & ~(c)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		if ((a & b))
			(c => x) = 0;
		if ((~(a) & ~(b)))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module exnor3_1 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3;

	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar, c__bar);
	and (int_fwire_1, a__bar, b, c);
	and (int_fwire_2, a, b__bar, c);
	and (int_fwire_3, a, b, c__bar);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & ~(c)) | (~(b) & c))
			(a => x) = 0;
		if ((b & c) | (~(b) & ~(c)))
			(a => x) = 0;
		if ((a & ~(c)))
			(b => x) = 0;
		if ((~(a) & c))
			(b => x) = 0;
		if ((a & c))
			(b => x) = 0;
		if ((~(a) & ~(c)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		if ((a & b))
			(c => x) = 0;
		if ((~(a) & ~(b)))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module exnor3_2 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3;

	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar, c__bar);
	and (int_fwire_1, a__bar, b, c);
	and (int_fwire_2, a, b__bar, c);
	and (int_fwire_3, a, b, c__bar);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & ~(c)) | (~(b) & c))
			(a => x) = 0;
		if ((b & c) | (~(b) & ~(c)))
			(a => x) = 0;
		if ((a & ~(c)))
			(b => x) = 0;
		if ((~(a) & c))
			(b => x) = 0;
		if ((a & c))
			(b => x) = 0;
		if ((~(a) & ~(c)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		if ((a & b))
			(c => x) = 0;
		if ((~(a) & ~(b)))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module exnor3_4 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3;

	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar, c__bar);
	and (int_fwire_1, a__bar, b, c);
	and (int_fwire_2, a, b__bar, c);
	and (int_fwire_3, a, b, c__bar);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & ~(c)) | (~(b) & c))
			(a => x) = 0;
		if ((b & c) | (~(b) & ~(c)))
			(a => x) = 0;
		if ((a & ~(c)))
			(b => x) = 0;
		if ((~(a) & c))
			(b => x) = 0;
		if ((a & c))
			(b => x) = 0;
		if ((~(a) & ~(c)))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		if ((a & b))
			(c => x) = 0;
		if ((~(a) & ~(b)))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module exor2_0 ( a,b,x );
	output x;
	input a,b;

	// Function
	wire a__bar, b__bar, int_fwire_0;
	wire int_fwire_1;

	not (a__bar, a);
	and (int_fwire_0, a__bar, b);
	not (b__bar, b);
	and (int_fwire_1, a, b__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if (~(b))
			(a => x) = 0;
		if (b)
			(a => x) = 0;
		if (~(a))
			(b => x) = 0;
		if (a)
			(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module exor2_1 ( a,b,x );
	output x;
	input a,b;

	// Function
	wire a__bar, b__bar, int_fwire_0;
	wire int_fwire_1;

	not (a__bar, a);
	and (int_fwire_0, a__bar, b);
	not (b__bar, b);
	and (int_fwire_1, a, b__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if (~(b))
			(a => x) = 0;
		if (b)
			(a => x) = 0;
		if (~(a))
			(b => x) = 0;
		if (a)
			(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module exor2_2 ( a,b,x );
	output x;
	input a,b;

	// Function
	wire a__bar, b__bar, int_fwire_0;
	wire int_fwire_1;

	not (a__bar, a);
	and (int_fwire_0, a__bar, b);
	not (b__bar, b);
	and (int_fwire_1, a, b__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if (~(b))
			(a => x) = 0;
		if (b)
			(a => x) = 0;
		if (~(a))
			(b => x) = 0;
		if (a)
			(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module exor2_4 ( a,b,x );
	output x;
	input a,b;

	// Function
	wire a__bar, b__bar, int_fwire_0;
	wire int_fwire_1;

	not (a__bar, a);
	and (int_fwire_0, a__bar, b);
	not (b__bar, b);
	and (int_fwire_1, a, b__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if (~(b))
			(a => x) = 0;
		if (b)
			(a => x) = 0;
		if (~(a))
			(b => x) = 0;
		if (a)
			(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module exor3_0 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3;

	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar, c);
	not (c__bar, c);
	and (int_fwire_1, a__bar, b, c__bar);
	and (int_fwire_2, a, b__bar, c__bar);
	and (int_fwire_3, a, b, c);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c) | (~(b) & ~(c)))
			(a => x) = 0;
		if ((b & ~(c)) | (~(b) & c))
			(a => x) = 0;
		if ((a & c))
			(b => x) = 0;
		if ((~(a) & ~(c)))
			(b => x) = 0;
		if ((a & ~(c)))
			(b => x) = 0;
		if ((~(a) & c))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b))
			(c => x) = 0;
		if ((~(a) & ~(b)))
			(c => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module exor3_1 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3;

	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar, c);
	not (c__bar, c);
	and (int_fwire_1, a__bar, b, c__bar);
	and (int_fwire_2, a, b__bar, c__bar);
	and (int_fwire_3, a, b, c);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c) | (~(b) & ~(c)))
			(a => x) = 0;
		if ((b & ~(c)) | (~(b) & c))
			(a => x) = 0;
		if ((a & c))
			(b => x) = 0;
		if ((~(a) & ~(c)))
			(b => x) = 0;
		if ((a & ~(c)))
			(b => x) = 0;
		if ((~(a) & c))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b))
			(c => x) = 0;
		if ((~(a) & ~(b)))
			(c => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module exor3_2 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3;

	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar, c);
	not (c__bar, c);
	and (int_fwire_1, a__bar, b, c__bar);
	and (int_fwire_2, a, b__bar, c__bar);
	and (int_fwire_3, a, b, c);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c) | (~(b) & ~(c)))
			(a => x) = 0;
		if ((b & ~(c)) | (~(b) & c))
			(a => x) = 0;
		if ((a & c))
			(b => x) = 0;
		if ((~(a) & ~(c)))
			(b => x) = 0;
		if ((a & ~(c)))
			(b => x) = 0;
		if ((~(a) & c))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b))
			(c => x) = 0;
		if ((~(a) & ~(b)))
			(c => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module exor3_4 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3;

	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar, c);
	not (c__bar, c);
	and (int_fwire_1, a__bar, b, c__bar);
	and (int_fwire_2, a, b__bar, c__bar);
	and (int_fwire_3, a, b, c);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((b & c) | (~(b) & ~(c)))
			(a => x) = 0;
		if ((b & ~(c)) | (~(b) & c))
			(a => x) = 0;
		if ((a & c))
			(b => x) = 0;
		if ((~(a) & ~(c)))
			(b => x) = 0;
		if ((a & ~(c)))
			(b => x) = 0;
		if ((~(a) & c))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b))
			(c => x) = 0;
		if ((~(a) & ~(b)))
			(c => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module fillercap_12 ();
	// Timing
	specify
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module fillercap_16 ();
	// Timing
	specify
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module fillercap_20 ();
	// Timing
	specify
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module fillercap_3 ();
	// Timing
	specify
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module fillercap_4 ();
	// Timing
	specify
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module fillercap_8 ();
	// Timing
	specify
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module gclklatn_0 ( ckb,g,gckb );
	output gckb;
	input ckb,g;
	reg notifier;
	wire delayed_g, delayed_ckb;

	// Function
	wire int_fwire_clk, int_fwire_q, int_fwire_q__bar;

	buf (int_fwire_clk, delayed_ckb);
	altos_latch (int_fwire_q, notifier, int_fwire_clk, delayed_g);
	not (int_fwire_q__bar, int_fwire_q);
	or (gckb, delayed_ckb, int_fwire_q__bar);

	// Timing
	specify
		if (g)
			(posedge ckb => (gckb+:1'b1)) = 0;
		if (~(g))
			(posedge ckb => (gckb+:1'b1)) = 0;
		ifnone (ckb => gckb) = 0;
		$setuphold (negedge ckb, posedge g, 0, 0, notifier,,, delayed_ckb, delayed_g);
		$setuphold (negedge ckb, negedge g, 0, 0, notifier,,, delayed_ckb, delayed_g);
		$width (posedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module gclklatn_1 ( ckb,g,gckb );
	output gckb;
	input ckb,g;
	reg notifier;
	wire delayed_g, delayed_ckb;

	// Function
	wire int_fwire_clk, int_fwire_q, int_fwire_q__bar;

	buf (int_fwire_clk, delayed_ckb);
	altos_latch (int_fwire_q, notifier, int_fwire_clk, delayed_g);
	not (int_fwire_q__bar, int_fwire_q);
	or (gckb, delayed_ckb, int_fwire_q__bar);

	// Timing
	specify
		if (g)
			(posedge ckb => (gckb+:1'b1)) = 0;
		if (~(g))
			(posedge ckb => (gckb+:1'b1)) = 0;
		ifnone (ckb => gckb) = 0;
		$setuphold (negedge ckb, posedge g, 0, 0, notifier,,, delayed_ckb, delayed_g);
		$setuphold (negedge ckb, negedge g, 0, 0, notifier,,, delayed_ckb, delayed_g);
		$width (posedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module gclklatp_0 ( ck,g,gck );
	output gck;
	input ck,g;
	reg notifier;
	wire delayed_g, delayed_ck;

	// Function
	wire int_fwire_clk, int_fwire_q;

	not (int_fwire_clk, delayed_ck);
	altos_latch (int_fwire_q, notifier, int_fwire_clk, delayed_g);
	and (gck, delayed_ck, int_fwire_q);

	// Timing
	specify
		if (g)
			(negedge ck => (gck+:1'b0)) = 0;
		if (~(g))
			(negedge ck => (gck+:1'b0)) = 0;
		ifnone (ck => gck) = 0;
		$setuphold (posedge ck, posedge g, 0, 0, notifier,,, delayed_ck, delayed_g);
		$setuphold (posedge ck, negedge g, 0, 0, notifier,,, delayed_ck, delayed_g);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module gclklatp_1 ( ck,g,gck );
	output gck;
	input ck,g;
	reg notifier;
	wire delayed_g, delayed_ck;

	// Function
	wire int_fwire_clk, int_fwire_q;

	not (int_fwire_clk, delayed_ck);
	altos_latch (int_fwire_q, notifier, int_fwire_clk, delayed_g);
	and (gck, delayed_ck, int_fwire_q);

	// Timing
	specify
		if (g)
			(negedge ck => (gck+:1'b0)) = 0;
		if (~(g))
			(negedge ck => (gck+:1'b0)) = 0;
		ifnone (ck => gck) = 0;
		$setuphold (posedge ck, posedge g, 0, 0, notifier,,, delayed_ck, delayed_g);
		$setuphold (posedge ck, negedge g, 0, 0, notifier,,, delayed_ck, delayed_g);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module gclkslatn_0 ( ckb,g,se,gckb );
	output gckb;
	input ckb,g,se;
	reg notifier;
	wire delayed_g, delayed_se, delayed_ckb;

	// Function
	wire int_fwire_0, int_fwire_0__bar, int_fwire_clk;
	wire int_fwire_q;

	buf (int_fwire_clk, delayed_ckb);
	altos_latch (int_fwire_q, notifier, int_fwire_clk, delayed_g);
	or (int_fwire_0, int_fwire_q, delayed_se);
	not (int_fwire_0__bar, int_fwire_0);
	or (gckb, delayed_ckb, int_fwire_0__bar);

	// Timing
	specify
		if ((g) | (~(g) & se))
			(posedge ckb => (gckb+:1'b1)) = 0;
		if ((~(g) & ~(se)))
			(posedge ckb => (gckb+:1'b1)) = 0;
		ifnone (ckb => gckb) = 0;
		$setuphold (negedge ckb, posedge g, 0, 0, notifier,,, delayed_ckb, delayed_g);
		$setuphold (negedge ckb, negedge g, 0, 0, notifier,,, delayed_ckb, delayed_g);
		$setuphold (negedge ckb, posedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$setuphold (negedge ckb, negedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$width (posedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module gclkslatn_1 ( ckb,g,se,gckb );
	output gckb;
	input ckb,g,se;
	reg notifier;
	wire delayed_g, delayed_se, delayed_ckb;

	// Function
	wire int_fwire_0, int_fwire_0__bar, int_fwire_clk;
	wire int_fwire_q;

	buf (int_fwire_clk, delayed_ckb);
	altos_latch (int_fwire_q, notifier, int_fwire_clk, delayed_g);
	or (int_fwire_0, int_fwire_q, delayed_se);
	not (int_fwire_0__bar, int_fwire_0);
	or (gckb, delayed_ckb, int_fwire_0__bar);

	// Timing
	specify
		if ((g) | (~(g) & se))
			(posedge ckb => (gckb+:1'b1)) = 0;
		if ((~(g) & ~(se)))
			(posedge ckb => (gckb+:1'b1)) = 0;
		ifnone (ckb => gckb) = 0;
		$setuphold (negedge ckb, posedge g, 0, 0, notifier,,, delayed_ckb, delayed_g);
		$setuphold (negedge ckb, negedge g, 0, 0, notifier,,, delayed_ckb, delayed_g);
		$setuphold (negedge ckb, posedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$setuphold (negedge ckb, negedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$width (posedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module gclkslatp_0 ( ck,g,se,gck );
	output gck;
	input ck,g,se;
	reg notifier;
	wire delayed_g, delayed_se, delayed_ck;

	// Function
	wire int_fwire_0, int_fwire_clk, int_fwire_q;

	not (int_fwire_clk, delayed_ck);
	altos_latch (int_fwire_q, notifier, int_fwire_clk, delayed_g);
	or (int_fwire_0, int_fwire_q, delayed_se);
	and (gck, delayed_ck, int_fwire_0);

	// Timing
	specify
		if ((g) | (~(g) & se))
			(negedge ck => (gck+:1'b0)) = 0;
		if ((~(g) & ~(se)))
			(negedge ck => (gck+:1'b0)) = 0;
		ifnone (ck => gck) = 0;
		$setuphold (posedge ck, posedge g, 0, 0, notifier,,, delayed_ck, delayed_g);
		$setuphold (posedge ck, negedge g, 0, 0, notifier,,, delayed_ck, delayed_g);
		$setuphold (posedge ck, posedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$setuphold (posedge ck, negedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module gclkslatp_1 ( ck,g,se,gck );
	output gck;
	input ck,g,se;
	reg notifier;
	wire delayed_g, delayed_se, delayed_ck;

	// Function
	wire int_fwire_0, int_fwire_clk, int_fwire_q;

	not (int_fwire_clk, delayed_ck);
	altos_latch (int_fwire_q, notifier, int_fwire_clk, delayed_g);
	or (int_fwire_0, int_fwire_q, delayed_se);
	and (gck, delayed_ck, int_fwire_0);

	// Timing
	specify
		if ((g) | (~(g) & se))
			(negedge ck => (gck+:1'b0)) = 0;
		if ((~(g) & ~(se)))
			(negedge ck => (gck+:1'b0)) = 0;
		ifnone (ck => gck) = 0;
		$setuphold (posedge ck, posedge g, 0, 0, notifier,,, delayed_ck, delayed_g);
		$setuphold (posedge ck, negedge g, 0, 0, notifier,,, delayed_ck, delayed_g);
		$setuphold (posedge ck, posedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$setuphold (posedge ck, negedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module inv_0 ( a,x );
	output x;
	input a;

	// Function
	not (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module inv_1 ( a,x );
	output x;
	input a;

	// Function
	not (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module inv_12 ( a,x );
	output x;
	input a;

	// Function
	not (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module inv_16 ( a,x );
	output x;
	input a;

	// Function
	not (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module inv_2 ( a,x );
	output x;
	input a;

	// Function
	not (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module inv_20 ( a,x );
	output x;
	input a;

	// Function
	not (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module inv_3 ( a,x );
	output x;
	input a;

	// Function
	not (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module inv_4 ( a,x );
	output x;
	input a;

	// Function
	not (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module inv_6 ( a,x );
	output x;
	input a;

	// Function
	not (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module inv_8 ( a,x );
	output x;
	input a;

	// Function
	not (x, a);

	// Timing
	specify
		(a => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latn_0 ( d,g,q,qb );
	output q,qb;
	input d,g;
	reg notifier;
	wire delayed_d, delayed_g;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb;

	altos_latch (int_fwire_Iq, notifier, delayed_g, delayed_d);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		(posedge g => (q+:d)) = 0;
		(d => qb) = 0;
		(posedge g => (qb-:d)) = 0;
		$setuphold (negedge g, posedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$setuphold (negedge g, negedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$width (posedge g, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latn_1 ( d,g,q,qb );
	output q,qb;
	input d,g;
	reg notifier;
	wire delayed_d, delayed_g;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb;

	altos_latch (int_fwire_Iq, notifier, delayed_g, delayed_d);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		(posedge g => (q+:d)) = 0;
		(d => qb) = 0;
		(posedge g => (qb-:d)) = 0;
		$setuphold (negedge g, posedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$setuphold (negedge g, negedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$width (posedge g, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latn_2 ( d,g,q,qb );
	output q,qb;
	input d,g;
	reg notifier;
	wire delayed_d, delayed_g;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb;

	altos_latch (int_fwire_Iq, notifier, delayed_g, delayed_d);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		(posedge g => (q+:d)) = 0;
		(d => qb) = 0;
		(posedge g => (qb-:d)) = 0;
		$setuphold (negedge g, posedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$setuphold (negedge g, negedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$width (posedge g, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latn_4 ( d,g,q,qb );
	output q,qb;
	input d,g;
	reg notifier;
	wire delayed_d, delayed_g;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb;

	altos_latch (int_fwire_Iq, notifier, delayed_g, delayed_d);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		(posedge g => (q+:d)) = 0;
		(d => qb) = 0;
		(posedge g => (qb-:d)) = 0;
		$setuphold (negedge g, posedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$setuphold (negedge g, negedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$width (posedge g, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latnr_0 ( d,g,rb,q,qb );
	output q,qb;
	input d,g,rb;
	reg notifier;
	wire delayed_d, delayed_g;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_r;

	not (int_fwire_r, rb);
	altos_latch_r (int_fwire_Iq, notifier, delayed_g, delayed_d, int_fwire_r);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if ((d & g))
			(negedge rb => (q+:1'b0)) = 0;
		if (~(g))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(posedge g => (q+:d)) = 0;
		(d => qb) = 0;
		if ((d & g))
			(negedge rb => (qb-:1'b0)) = 0;
		if (~(g))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(posedge g => (qb-:d)) = 0;
		$setuphold (negedge g, posedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$setuphold (negedge g, negedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$recovery (posedge rb, negedge g, 0, notifier);
		$hold (negedge g, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (posedge g, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latnr_1 ( d,g,rb,q,qb );
	output q,qb;
	input d,g,rb;
	reg notifier;
	wire delayed_d, delayed_g;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_r;

	not (int_fwire_r, rb);
	altos_latch_r (int_fwire_Iq, notifier, delayed_g, delayed_d, int_fwire_r);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if ((d & g))
			(negedge rb => (q+:1'b0)) = 0;
		if (~(g))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(posedge g => (q+:d)) = 0;
		(d => qb) = 0;
		if ((d & g))
			(negedge rb => (qb-:1'b0)) = 0;
		if (~(g))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(posedge g => (qb-:d)) = 0;
		$setuphold (negedge g, posedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$setuphold (negedge g, negedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$recovery (posedge rb, negedge g, 0, notifier);
		$hold (negedge g, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (posedge g, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latnr_2 ( d,g,rb,q,qb );
	output q,qb;
	input d,g,rb;
	reg notifier;
	wire delayed_d, delayed_g;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_r;

	not (int_fwire_r, rb);
	altos_latch_r (int_fwire_Iq, notifier, delayed_g, delayed_d, int_fwire_r);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if ((d & g))
			(negedge rb => (q+:1'b0)) = 0;
		if (~(g))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(posedge g => (q+:d)) = 0;
		(d => qb) = 0;
		if ((d & g))
			(negedge rb => (qb-:1'b0)) = 0;
		if (~(g))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(posedge g => (qb-:d)) = 0;
		$setuphold (negedge g, posedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$setuphold (negedge g, negedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$recovery (posedge rb, negedge g, 0, notifier);
		$hold (negedge g, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (posedge g, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latnr_4 ( d,g,rb,q,qb );
	output q,qb;
	input d,g,rb;
	reg notifier;
	wire delayed_d, delayed_g;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_r;

	not (int_fwire_r, rb);
	altos_latch_r (int_fwire_Iq, notifier, delayed_g, delayed_d, int_fwire_r);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if ((d & g))
			(negedge rb => (q+:1'b0)) = 0;
		if (~(g))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(posedge g => (q+:d)) = 0;
		(d => qb) = 0;
		if ((d & g))
			(negedge rb => (qb-:1'b0)) = 0;
		if (~(g))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(posedge g => (qb-:d)) = 0;
		$setuphold (negedge g, posedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$setuphold (negedge g, negedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$recovery (posedge rb, negedge g, 0, notifier);
		$hold (negedge g, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (posedge g, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latnrs_0 ( d,g,rb,sb,q,qb );
	output q,qb;
	input d,g,rb,sb;
	reg notifier;
	wire delayed_d, delayed_rb, delayed_sb, delayed_g;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_r;
	wire int_fwire_s;

	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_latch_sr_1 (int_fwire_Iq, notifier, delayed_g, delayed_d, int_fwire_s, int_fwire_r);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if ((d & g & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(g) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((d & ~(rb)) | (~(d) & g) | (~(d) & ~(g) & ~(rb)))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(g) & rb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge g => (q+:d)) = 0;
		(d => qb) = 0;
		if ((d & g & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(g) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((d & ~(rb)) | (~(d) & g) | (~(d) & ~(g) & ~(rb)))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(g) & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge g => (qb-:d)) = 0;
		$setuphold (negedge g, posedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$setuphold (negedge g, negedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$setuphold (posedge rb, posedge sb, 0, 0, notifier,,, delayed_rb, delayed_sb);
		$recovery (posedge rb, negedge g, 0, notifier);
		$hold (negedge g, posedge rb, 0, notifier);
		$recovery (posedge sb, negedge g, 0, notifier);
		$hold (negedge g, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge g, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latnrs_1 ( d,g,rb,sb,q,qb );
	output q,qb;
	input d,g,rb,sb;
	reg notifier;
	wire delayed_d, delayed_rb, delayed_sb, delayed_g;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_r;
	wire int_fwire_s;

	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_latch_sr_1 (int_fwire_Iq, notifier, delayed_g, delayed_d, int_fwire_s, int_fwire_r);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if ((d & g & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(g) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((d & ~(rb)) | (~(d) & g) | (~(d) & ~(g) & ~(rb)))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(g) & rb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge g => (q+:d)) = 0;
		(d => qb) = 0;
		if ((d & g & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(g) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((d & ~(rb)) | (~(d) & g) | (~(d) & ~(g) & ~(rb)))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(g) & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge g => (qb-:d)) = 0;
		$setuphold (negedge g, posedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$setuphold (negedge g, negedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$setuphold (posedge rb, posedge sb, 0, 0, notifier,,, delayed_rb, delayed_sb);
		$recovery (posedge rb, negedge g, 0, notifier);
		$hold (negedge g, posedge rb, 0, notifier);
		$recovery (posedge sb, negedge g, 0, notifier);
		$hold (negedge g, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge g, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latnrs_2 ( d,g,rb,sb,q,qb );
	output q,qb;
	input d,g,rb,sb;
	reg notifier;
	wire delayed_d, delayed_rb, delayed_sb, delayed_g;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_r;
	wire int_fwire_s;

	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_latch_sr_1 (int_fwire_Iq, notifier, delayed_g, delayed_d, int_fwire_s, int_fwire_r);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if ((d & g & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(g) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((d & ~(rb)) | (~(d) & g) | (~(d) & ~(g) & ~(rb)))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(g) & rb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge g => (q+:d)) = 0;
		(d => qb) = 0;
		if ((d & g & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(g) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((d & ~(rb)) | (~(d) & g) | (~(d) & ~(g) & ~(rb)))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(g) & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge g => (qb-:d)) = 0;
		$setuphold (negedge g, posedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$setuphold (negedge g, negedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$setuphold (posedge rb, posedge sb, 0, 0, notifier,,, delayed_rb, delayed_sb);
		$recovery (posedge rb, negedge g, 0, notifier);
		$hold (negedge g, posedge rb, 0, notifier);
		$recovery (posedge sb, negedge g, 0, notifier);
		$hold (negedge g, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge g, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latnrs_4 ( d,g,rb,sb,q,qb );
	output q,qb;
	input d,g,rb,sb;
	reg notifier;
	wire delayed_d, delayed_rb, delayed_sb, delayed_g;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_r;
	wire int_fwire_s;

	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_latch_sr_1 (int_fwire_Iq, notifier, delayed_g, delayed_d, int_fwire_s, int_fwire_r);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if ((d & g & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(g) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((d & ~(rb)) | (~(d) & g) | (~(d) & ~(g) & ~(rb)))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(g) & rb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge g => (q+:d)) = 0;
		(d => qb) = 0;
		if ((d & g & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(g) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((d & ~(rb)) | (~(d) & g) | (~(d) & ~(g) & ~(rb)))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(g) & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge g => (qb-:d)) = 0;
		$setuphold (negedge g, posedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$setuphold (negedge g, negedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$setuphold (posedge rb, posedge sb, 0, 0, notifier,,, delayed_rb, delayed_sb);
		$recovery (posedge rb, negedge g, 0, notifier);
		$hold (negedge g, posedge rb, 0, notifier);
		$recovery (posedge sb, negedge g, 0, notifier);
		$hold (negedge g, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge g, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latns_0 ( d,g,sb,q,qb );
	output q,qb;
	input d,g,sb;
	reg notifier;
	wire delayed_d, delayed_g;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_s;

	not (int_fwire_s, sb);
	altos_latch_s (int_fwire_Iq, notifier, delayed_g, delayed_d, int_fwire_s);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if (~(g))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(d) & g))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge g => (q+:d)) = 0;
		(d => qb) = 0;
		if (~(g))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(d) & g))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge g => (qb-:d)) = 0;
		$setuphold (negedge g, posedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$setuphold (negedge g, negedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$recovery (posedge sb, negedge g, 0, notifier);
		$hold (negedge g, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge g, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latns_1 ( d,g,sb,q,qb );
	output q,qb;
	input d,g,sb;
	reg notifier;
	wire delayed_d, delayed_g;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_s;

	not (int_fwire_s, sb);
	altos_latch_s (int_fwire_Iq, notifier, delayed_g, delayed_d, int_fwire_s);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if (~(g))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(d) & g))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge g => (q+:d)) = 0;
		(d => qb) = 0;
		if (~(g))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(d) & g))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge g => (qb-:d)) = 0;
		$setuphold (negedge g, posedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$setuphold (negedge g, negedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$recovery (posedge sb, negedge g, 0, notifier);
		$hold (negedge g, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge g, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latns_2 ( d,g,sb,q,qb );
	output q,qb;
	input d,g,sb;
	reg notifier;
	wire delayed_d, delayed_g;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_s;

	not (int_fwire_s, sb);
	altos_latch_s (int_fwire_Iq, notifier, delayed_g, delayed_d, int_fwire_s);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if (~(g))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(d) & g))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge g => (q+:d)) = 0;
		(d => qb) = 0;
		if (~(g))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(d) & g))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge g => (qb-:d)) = 0;
		$setuphold (negedge g, posedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$setuphold (negedge g, negedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$recovery (posedge sb, negedge g, 0, notifier);
		$hold (negedge g, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge g, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latns_4 ( d,g,sb,q,qb );
	output q,qb;
	input d,g,sb;
	reg notifier;
	wire delayed_d, delayed_g;

	// Function
	wire int_fwire_Iq, int_fwire_Iqb, int_fwire_s;

	not (int_fwire_s, sb);
	altos_latch_s (int_fwire_Iq, notifier, delayed_g, delayed_d, int_fwire_s);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if (~(g))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(d) & g))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge g => (q+:d)) = 0;
		(d => qb) = 0;
		if (~(g))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(d) & g))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge g => (qb-:d)) = 0;
		$setuphold (negedge g, posedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$setuphold (negedge g, negedge d, 0, 0, notifier,,, delayed_g, delayed_d);
		$recovery (posedge sb, negedge g, 0, notifier);
		$hold (negedge g, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge g, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latp_0 ( d,gb,q,qb );
	output q,qb;
	input d,gb;
	reg notifier;
	wire delayed_d, delayed_gb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;

	not (int_fwire_clk, delayed_gb);
	altos_latch (int_fwire_Iq, notifier, int_fwire_clk, delayed_d);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		(negedge gb => (q+:d)) = 0;
		(d => qb) = 0;
		(negedge gb => (qb-:d)) = 0;
		$setuphold (posedge gb, posedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$setuphold (posedge gb, negedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$width (negedge gb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latp_1 ( d,gb,q,qb );
	output q,qb;
	input d,gb;
	reg notifier;
	wire delayed_d, delayed_gb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;

	not (int_fwire_clk, delayed_gb);
	altos_latch (int_fwire_Iq, notifier, int_fwire_clk, delayed_d);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		(negedge gb => (q+:d)) = 0;
		(d => qb) = 0;
		(negedge gb => (qb-:d)) = 0;
		$setuphold (posedge gb, posedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$setuphold (posedge gb, negedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$width (negedge gb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latp_2 ( d,gb,q,qb );
	output q,qb;
	input d,gb;
	reg notifier;
	wire delayed_d, delayed_gb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;

	not (int_fwire_clk, delayed_gb);
	altos_latch (int_fwire_Iq, notifier, int_fwire_clk, delayed_d);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		(negedge gb => (q+:d)) = 0;
		(d => qb) = 0;
		(negedge gb => (qb-:d)) = 0;
		$setuphold (posedge gb, posedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$setuphold (posedge gb, negedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$width (negedge gb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latp_4 ( d,gb,q,qb );
	output q,qb;
	input d,gb;
	reg notifier;
	wire delayed_d, delayed_gb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;

	not (int_fwire_clk, delayed_gb);
	altos_latch (int_fwire_Iq, notifier, int_fwire_clk, delayed_d);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		(negedge gb => (q+:d)) = 0;
		(d => qb) = 0;
		(negedge gb => (qb-:d)) = 0;
		$setuphold (posedge gb, posedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$setuphold (posedge gb, negedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$width (negedge gb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latpr_0 ( d,gb,rb,q,qb );
	output q,qb;
	input d,gb,rb;
	reg notifier;
	wire delayed_d, delayed_gb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r;

	not (int_fwire_clk, delayed_gb);
	not (int_fwire_r, rb);
	altos_latch_r (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_r);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if (gb)
			(negedge rb => (q+:1'b0)) = 0;
		if ((d & ~(gb)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(negedge gb => (q+:d)) = 0;
		(d => qb) = 0;
		if (gb)
			(negedge rb => (qb-:1'b0)) = 0;
		if ((d & ~(gb)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(negedge gb => (qb-:d)) = 0;
		$setuphold (posedge gb, posedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$setuphold (posedge gb, negedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$recovery (posedge rb, posedge gb, 0, notifier);
		$hold (posedge gb, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge gb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latpr_1 ( d,gb,rb,q,qb );
	output q,qb;
	input d,gb,rb;
	reg notifier;
	wire delayed_d, delayed_gb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r;

	not (int_fwire_clk, delayed_gb);
	not (int_fwire_r, rb);
	altos_latch_r (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_r);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if (gb)
			(negedge rb => (q+:1'b0)) = 0;
		if ((d & ~(gb)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(negedge gb => (q+:d)) = 0;
		(d => qb) = 0;
		if (gb)
			(negedge rb => (qb-:1'b0)) = 0;
		if ((d & ~(gb)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(negedge gb => (qb-:d)) = 0;
		$setuphold (posedge gb, posedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$setuphold (posedge gb, negedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$recovery (posedge rb, posedge gb, 0, notifier);
		$hold (posedge gb, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge gb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latpr_2 ( d,gb,rb,q,qb );
	output q,qb;
	input d,gb,rb;
	reg notifier;
	wire delayed_d, delayed_gb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r;

	not (int_fwire_clk, delayed_gb);
	not (int_fwire_r, rb);
	altos_latch_r (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_r);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if (gb)
			(negedge rb => (q+:1'b0)) = 0;
		if ((d & ~(gb)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(negedge gb => (q+:d)) = 0;
		(d => qb) = 0;
		if (gb)
			(negedge rb => (qb-:1'b0)) = 0;
		if ((d & ~(gb)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(negedge gb => (qb-:d)) = 0;
		$setuphold (posedge gb, posedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$setuphold (posedge gb, negedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$recovery (posedge rb, posedge gb, 0, notifier);
		$hold (posedge gb, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge gb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latpr_4 ( d,gb,rb,q,qb );
	output q,qb;
	input d,gb,rb;
	reg notifier;
	wire delayed_d, delayed_gb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r;

	not (int_fwire_clk, delayed_gb);
	not (int_fwire_r, rb);
	altos_latch_r (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_r);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if (gb)
			(negedge rb => (q+:1'b0)) = 0;
		if ((d & ~(gb)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(negedge gb => (q+:d)) = 0;
		(d => qb) = 0;
		if (gb)
			(negedge rb => (qb-:1'b0)) = 0;
		if ((d & ~(gb)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(negedge gb => (qb-:d)) = 0;
		$setuphold (posedge gb, posedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$setuphold (posedge gb, negedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$recovery (posedge rb, posedge gb, 0, notifier);
		$hold (posedge gb, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge gb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latprs_0 ( d,gb,rb,sb,q,qb );
	output q,qb;
	input d,gb,rb,sb;
	reg notifier;
	wire delayed_d, delayed_rb, delayed_sb, delayed_gb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r, int_fwire_s;

	not (int_fwire_clk, delayed_gb);
	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_latch_sr_1 (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_s, int_fwire_r);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if ((gb & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((d & ~(gb) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((gb & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((d & ~(rb)) | (~(d) & gb & ~(rb)) | (~(d) & ~(gb)))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge gb => (q+:d)) = 0;
		(d => qb) = 0;
		if ((gb & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((d & ~(gb) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((gb & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((d & ~(rb)) | (~(d) & gb & ~(rb)) | (~(d) & ~(gb)))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge gb => (qb-:d)) = 0;
		$setuphold (posedge gb, posedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$setuphold (posedge gb, negedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$setuphold (posedge rb, posedge sb, 0, 0, notifier,,, delayed_rb, delayed_sb);
		$recovery (posedge rb, posedge gb, 0, notifier);
		$hold (posedge gb, posedge rb, 0, notifier);
		$recovery (posedge sb, posedge gb, 0, notifier);
		$hold (posedge gb, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (negedge gb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latprs_1 ( d,gb,rb,sb,q,qb );
	output q,qb;
	input d,gb,rb,sb;
	reg notifier;
	wire delayed_d, delayed_rb, delayed_sb, delayed_gb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r, int_fwire_s;

	not (int_fwire_clk, delayed_gb);
	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_latch_sr_1 (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_s, int_fwire_r);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if ((gb & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((d & ~(gb) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((gb & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((d & ~(rb)) | (~(d) & gb & ~(rb)) | (~(d) & ~(gb)))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge gb => (q+:d)) = 0;
		(d => qb) = 0;
		if ((gb & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((d & ~(gb) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((gb & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((d & ~(rb)) | (~(d) & gb & ~(rb)) | (~(d) & ~(gb)))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge gb => (qb-:d)) = 0;
		$setuphold (posedge gb, posedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$setuphold (posedge gb, negedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$setuphold (posedge rb, posedge sb, 0, 0, notifier,,, delayed_rb, delayed_sb);
		$recovery (posedge rb, posedge gb, 0, notifier);
		$hold (posedge gb, posedge rb, 0, notifier);
		$recovery (posedge sb, posedge gb, 0, notifier);
		$hold (posedge gb, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (negedge gb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latprs_2 ( d,gb,rb,sb,q,qb );
	output q,qb;
	input d,gb,rb,sb;
	reg notifier;
	wire delayed_d, delayed_rb, delayed_sb, delayed_gb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r, int_fwire_s;

	not (int_fwire_clk, delayed_gb);
	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_latch_sr_1 (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_s, int_fwire_r);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if ((gb & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((d & ~(gb) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((gb & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((d & ~(rb)) | (~(d) & gb & ~(rb)) | (~(d) & ~(gb)))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge gb => (q+:d)) = 0;
		(d => qb) = 0;
		if ((gb & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((d & ~(gb) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((gb & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((d & ~(rb)) | (~(d) & gb & ~(rb)) | (~(d) & ~(gb)))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge gb => (qb-:d)) = 0;
		$setuphold (posedge gb, posedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$setuphold (posedge gb, negedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$setuphold (posedge rb, posedge sb, 0, 0, notifier,,, delayed_rb, delayed_sb);
		$recovery (posedge rb, posedge gb, 0, notifier);
		$hold (posedge gb, posedge rb, 0, notifier);
		$recovery (posedge sb, posedge gb, 0, notifier);
		$hold (posedge gb, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (negedge gb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latprs_4 ( d,gb,rb,sb,q,qb );
	output q,qb;
	input d,gb,rb,sb;
	reg notifier;
	wire delayed_d, delayed_rb, delayed_sb, delayed_gb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r, int_fwire_s;

	not (int_fwire_clk, delayed_gb);
	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_latch_sr_1 (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_s, int_fwire_r);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if ((gb & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((d & ~(gb) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((gb & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((d & ~(rb)) | (~(d) & gb & ~(rb)) | (~(d) & ~(gb)))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge gb => (q+:d)) = 0;
		(d => qb) = 0;
		if ((gb & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((d & ~(gb) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((gb & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((d & ~(rb)) | (~(d) & gb & ~(rb)) | (~(d) & ~(gb)))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge gb => (qb-:d)) = 0;
		$setuphold (posedge gb, posedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$setuphold (posedge gb, negedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$setuphold (posedge rb, posedge sb, 0, 0, notifier,,, delayed_rb, delayed_sb);
		$recovery (posedge rb, posedge gb, 0, notifier);
		$hold (posedge gb, posedge rb, 0, notifier);
		$recovery (posedge sb, posedge gb, 0, notifier);
		$hold (posedge gb, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (negedge gb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latps_0 ( d,gb,sb,q,qb );
	output q,qb;
	input d,gb,sb;
	reg notifier;
	wire delayed_d, delayed_gb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_s;

	not (int_fwire_clk, delayed_gb);
	not (int_fwire_s, sb);
	altos_latch_s (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_s);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if (gb)
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(d) & ~(gb)))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge gb => (q+:d)) = 0;
		(d => qb) = 0;
		if (gb)
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(d) & ~(gb)))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge gb => (qb-:d)) = 0;
		$setuphold (posedge gb, posedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$setuphold (posedge gb, negedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$recovery (posedge sb, posedge gb, 0, notifier);
		$hold (posedge gb, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (negedge gb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latps_1 ( d,gb,sb,q,qb );
	output q,qb;
	input d,gb,sb;
	reg notifier;
	wire delayed_d, delayed_gb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_s;

	not (int_fwire_clk, delayed_gb);
	not (int_fwire_s, sb);
	altos_latch_s (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_s);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if (gb)
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(d) & ~(gb)))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge gb => (q+:d)) = 0;
		(d => qb) = 0;
		if (gb)
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(d) & ~(gb)))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge gb => (qb-:d)) = 0;
		$setuphold (posedge gb, posedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$setuphold (posedge gb, negedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$recovery (posedge sb, posedge gb, 0, notifier);
		$hold (posedge gb, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (negedge gb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latps_2 ( d,gb,sb,q,qb );
	output q,qb;
	input d,gb,sb;
	reg notifier;
	wire delayed_d, delayed_gb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_s;

	not (int_fwire_clk, delayed_gb);
	not (int_fwire_s, sb);
	altos_latch_s (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_s);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if (gb)
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(d) & ~(gb)))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge gb => (q+:d)) = 0;
		(d => qb) = 0;
		if (gb)
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(d) & ~(gb)))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge gb => (qb-:d)) = 0;
		$setuphold (posedge gb, posedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$setuphold (posedge gb, negedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$recovery (posedge sb, posedge gb, 0, notifier);
		$hold (posedge gb, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (negedge gb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module latps_4 ( d,gb,sb,q,qb );
	output q,qb;
	input d,gb,sb;
	reg notifier;
	wire delayed_d, delayed_gb;

	// Function
	wire int_fwire_clk, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_s;

	not (int_fwire_clk, delayed_gb);
	not (int_fwire_s, sb);
	altos_latch_s (int_fwire_Iq, notifier, int_fwire_clk, delayed_d, int_fwire_s);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(d => q) = 0;
		if (gb)
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(d) & ~(gb)))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge gb => (q+:d)) = 0;
		(d => qb) = 0;
		if (gb)
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(d) & ~(gb)))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge gb => (qb-:d)) = 0;
		$setuphold (posedge gb, posedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$setuphold (posedge gb, negedge d, 0, 0, notifier,,, delayed_gb, delayed_d);
		$recovery (posedge sb, posedge gb, 0, notifier);
		$hold (posedge gb, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (negedge gb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module mux2_0 ( d0,d1,sl0,x );
	output x;
	input d0,d1,sl0;

	// Function
	wire int_fwire_0, int_fwire_1, sl0__bar;

	and (int_fwire_0, d1, sl0);
	not (sl0__bar, sl0);
	and (int_fwire_1, d0, sl0__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(d0 => x) = 0;
		(d1 => x) = 0;
		if ((~(d0) & d1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1)))
			(sl0 => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module mux2_1 ( d0,d1,sl0,x );
	output x;
	input d0,d1,sl0;

	// Function
	wire int_fwire_0, int_fwire_1, sl0__bar;

	and (int_fwire_0, d1, sl0);
	not (sl0__bar, sl0);
	and (int_fwire_1, d0, sl0__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(d0 => x) = 0;
		(d1 => x) = 0;
		if ((~(d0) & d1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1)))
			(sl0 => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module mux2_2 ( d0,d1,sl0,x );
	output x;
	input d0,d1,sl0;

	// Function
	wire int_fwire_0, int_fwire_1, sl0__bar;

	and (int_fwire_0, d1, sl0);
	not (sl0__bar, sl0);
	and (int_fwire_1, d0, sl0__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(d0 => x) = 0;
		(d1 => x) = 0;
		if ((~(d0) & d1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1)))
			(sl0 => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module mux2_4 ( d0,d1,sl0,x );
	output x;
	input d0,d1,sl0;

	// Function
	wire int_fwire_0, int_fwire_1, sl0__bar;

	and (int_fwire_0, d1, sl0);
	not (sl0__bar, sl0);
	and (int_fwire_1, d0, sl0__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(d0 => x) = 0;
		(d1 => x) = 0;
		if ((~(d0) & d1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1)))
			(sl0 => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module mux4_0 ( d0,d1,d2,d3,sl0,sl1,x );
	output x;
	input d0,d1,d2,d3,sl0,sl1;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, sl0__bar, sl1__bar;

	and (int_fwire_0, d3, sl0, sl1);
	not (sl0__bar, sl0);
	and (int_fwire_1, d2, sl0__bar, sl1);
	not (sl1__bar, sl1);
	and (int_fwire_2, d1, sl0, sl1__bar);
	and (int_fwire_3, d0, sl0__bar, sl1__bar);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(d0 => x) = 0;
		(d1 => x) = 0;
		(d2 => x) = 0;
		(d3 => x) = 0;
		if ((d0 & d1 & ~(d2) & d3 & sl1) | (~(d0) & ~(d1) & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & d3 & ~(sl1)) | (~(d0) & d1 & ~(d2) & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & ~(d2) & d3 & ~(sl1)))
			(sl0 => x) = 0;
		if ((d0 & d1 & d2 & ~(d3) & sl1) | (~(d0) & ~(d1) & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & d3 & ~(sl1)) | (d0 & ~(d1) & ~(d2) & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & ~(d2) & d3 & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		ifnone (sl0 => x) = 0;
		if ((d0 & ~(d1) & d3 & sl0) | (~(d0) & d1 & d2 & ~(sl0)) | (~(d0) & ~(d1) & d2 & d3) | (~(d0) & ~(d1) & d2 & ~(d3) & ~(sl0)) | (~(d0) & ~(d1) & ~(d2) & d3 & sl0))
			(sl1 => x) = 0;
		if ((d0 & d1 & d2 & ~(d3) & sl0) | (d0 & d1 & ~(d2) & d3 & ~(sl0)) | (d0 & d1 & ~(d2) & ~(d3)) | (d0 & ~(d1) & ~(d2) & ~(sl0)) | (~(d0) & d1 & ~(d3) & sl0))
			(sl1 => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module mux4_1 ( d0,d1,d2,d3,sl0,sl1,x );
	output x;
	input d0,d1,d2,d3,sl0,sl1;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, sl0__bar, sl1__bar;

	and (int_fwire_0, d3, sl0, sl1);
	not (sl0__bar, sl0);
	and (int_fwire_1, d2, sl0__bar, sl1);
	not (sl1__bar, sl1);
	and (int_fwire_2, d1, sl0, sl1__bar);
	and (int_fwire_3, d0, sl0__bar, sl1__bar);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(d0 => x) = 0;
		(d1 => x) = 0;
		(d2 => x) = 0;
		(d3 => x) = 0;
		if ((d0 & d1 & ~(d2) & d3 & sl1) | (~(d0) & ~(d1) & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & d3 & ~(sl1)) | (~(d0) & d1 & ~(d2) & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & ~(d2) & d3 & ~(sl1)))
			(sl0 => x) = 0;
		if ((d0 & d1 & d2 & ~(d3) & sl1) | (~(d0) & ~(d1) & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & d3 & ~(sl1)) | (d0 & ~(d1) & ~(d2) & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & ~(d2) & d3 & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		ifnone (sl0 => x) = 0;
		if ((d0 & ~(d1) & d3 & sl0) | (~(d0) & d1 & d2 & ~(sl0)) | (~(d0) & ~(d1) & d2 & d3) | (~(d0) & ~(d1) & d2 & ~(d3) & ~(sl0)) | (~(d0) & ~(d1) & ~(d2) & d3 & sl0))
			(sl1 => x) = 0;
		if ((d0 & d1 & d2 & ~(d3) & sl0) | (d0 & d1 & ~(d2) & d3 & ~(sl0)) | (d0 & d1 & ~(d2) & ~(d3)) | (d0 & ~(d1) & ~(d2) & ~(sl0)) | (~(d0) & d1 & ~(d3) & sl0))
			(sl1 => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module mux4_2 ( d0,d1,d2,d3,sl0,sl1,x );
	output x;
	input d0,d1,d2,d3,sl0,sl1;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, sl0__bar, sl1__bar;

	and (int_fwire_0, d3, sl0, sl1);
	not (sl0__bar, sl0);
	and (int_fwire_1, d2, sl0__bar, sl1);
	not (sl1__bar, sl1);
	and (int_fwire_2, d1, sl0, sl1__bar);
	and (int_fwire_3, d0, sl0__bar, sl1__bar);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(d0 => x) = 0;
		(d1 => x) = 0;
		(d2 => x) = 0;
		(d3 => x) = 0;
		if ((d0 & d1 & ~(d2) & d3 & sl1) | (~(d0) & ~(d1) & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & d3 & ~(sl1)) | (~(d0) & d1 & ~(d2) & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & ~(d2) & d3 & ~(sl1)))
			(sl0 => x) = 0;
		if ((d0 & d1 & d2 & ~(d3) & sl1) | (~(d0) & ~(d1) & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & d3 & ~(sl1)) | (d0 & ~(d1) & ~(d2) & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & ~(d2) & d3 & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		ifnone (sl0 => x) = 0;
		if ((d0 & ~(d1) & d3 & sl0) | (~(d0) & d1 & d2 & ~(sl0)) | (~(d0) & ~(d1) & d2 & d3) | (~(d0) & ~(d1) & d2 & ~(d3) & ~(sl0)) | (~(d0) & ~(d1) & ~(d2) & d3 & sl0))
			(sl1 => x) = 0;
		if ((d0 & d1 & d2 & ~(d3) & sl0) | (d0 & d1 & ~(d2) & d3 & ~(sl0)) | (d0 & d1 & ~(d2) & ~(d3)) | (d0 & ~(d1) & ~(d2) & ~(sl0)) | (~(d0) & d1 & ~(d3) & sl0))
			(sl1 => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module mux4_4 ( d0,d1,d2,d3,sl0,sl1,x );
	output x;
	input d0,d1,d2,d3,sl0,sl1;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, sl0__bar, sl1__bar;

	and (int_fwire_0, d3, sl0, sl1);
	not (sl0__bar, sl0);
	and (int_fwire_1, d2, sl0__bar, sl1);
	not (sl1__bar, sl1);
	and (int_fwire_2, d1, sl0, sl1__bar);
	and (int_fwire_3, d0, sl0__bar, sl1__bar);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(d0 => x) = 0;
		(d1 => x) = 0;
		(d2 => x) = 0;
		(d3 => x) = 0;
		if ((d0 & d1 & ~(d2) & d3 & sl1) | (~(d0) & ~(d1) & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & d3 & ~(sl1)) | (~(d0) & d1 & ~(d2) & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & ~(d2) & d3 & ~(sl1)))
			(sl0 => x) = 0;
		if ((d0 & d1 & d2 & ~(d3) & sl1) | (~(d0) & ~(d1) & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & d3 & ~(sl1)) | (d0 & ~(d1) & ~(d2) & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & ~(d2) & d3 & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		ifnone (sl0 => x) = 0;
		if ((d0 & ~(d1) & d3 & sl0) | (~(d0) & d1 & d2 & ~(sl0)) | (~(d0) & ~(d1) & d2 & d3) | (~(d0) & ~(d1) & d2 & ~(d3) & ~(sl0)) | (~(d0) & ~(d1) & ~(d2) & d3 & sl0))
			(sl1 => x) = 0;
		if ((d0 & d1 & d2 & ~(d3) & sl0) | (d0 & d1 & ~(d2) & d3 & ~(sl0)) | (d0 & d1 & ~(d2) & ~(d3)) | (d0 & ~(d1) & ~(d2) & ~(sl0)) | (~(d0) & d1 & ~(d3) & sl0))
			(sl1 => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module muxi2_0 ( d0,d1,sl0,x );
	output x;
	input d0,d1,sl0;

	// Function
	wire d0__bar, d1__bar, int_fwire_0;
	wire int_fwire_1, sl0__bar;

	not (d1__bar, d1);
	and (int_fwire_0, d1__bar, sl0);
	not (sl0__bar, sl0);
	not (d0__bar, d0);
	and (int_fwire_1, d0__bar, sl0__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(d0 => x) = 0;
		(d1 => x) = 0;
		if ((d0 & ~(d1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1))
			(sl0 => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module muxi2_1 ( d0,d1,sl0,x );
	output x;
	input d0,d1,sl0;

	// Function
	wire d0__bar, d1__bar, int_fwire_0;
	wire int_fwire_1, sl0__bar;

	not (d1__bar, d1);
	and (int_fwire_0, d1__bar, sl0);
	not (sl0__bar, sl0);
	not (d0__bar, d0);
	and (int_fwire_1, d0__bar, sl0__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(d0 => x) = 0;
		(d1 => x) = 0;
		if ((d0 & ~(d1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1))
			(sl0 => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module muxi2_2 ( d0,d1,sl0,x );
	output x;
	input d0,d1,sl0;

	// Function
	wire d0__bar, d1__bar, int_fwire_0;
	wire int_fwire_1, sl0__bar;

	not (d1__bar, d1);
	and (int_fwire_0, d1__bar, sl0);
	not (sl0__bar, sl0);
	not (d0__bar, d0);
	and (int_fwire_1, d0__bar, sl0__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(d0 => x) = 0;
		(d1 => x) = 0;
		if ((d0 & ~(d1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1))
			(sl0 => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module muxi2_4 ( d0,d1,sl0,x );
	output x;
	input d0,d1,sl0;

	// Function
	wire d0__bar, d1__bar, int_fwire_0;
	wire int_fwire_1, sl0__bar;

	not (d1__bar, d1);
	and (int_fwire_0, d1__bar, sl0);
	not (sl0__bar, sl0);
	not (d0__bar, d0);
	and (int_fwire_1, d0__bar, sl0__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(d0 => x) = 0;
		(d1 => x) = 0;
		if ((d0 & ~(d1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1))
			(sl0 => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module muxi4_0 ( d0,d1,d2,d3,sl0,sl1,x );
	output x;
	input d0,d1,d2,d3,sl0,sl1;

	// Function
	wire d0__bar, d1__bar, d2__bar;
	wire d3__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_2, int_fwire_3, sl0__bar;
	wire sl1__bar;

	not (d3__bar, d3);
	and (int_fwire_0, d3__bar, sl0, sl1);
	not (sl0__bar, sl0);
	not (d2__bar, d2);
	and (int_fwire_1, d2__bar, sl0__bar, sl1);
	not (sl1__bar, sl1);
	not (d1__bar, d1);
	and (int_fwire_2, d1__bar, sl0, sl1__bar);
	not (d0__bar, d0);
	and (int_fwire_3, d0__bar, sl0__bar, sl1__bar);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(d0 => x) = 0;
		(d1 => x) = 0;
		(d2 => x) = 0;
		(d3 => x) = 0;
		if ((d0 & d1 & d2 & ~(d3) & sl1) | (~(d0) & ~(d1) & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & d3 & ~(sl1)) | (d0 & ~(d1) & ~(d2) & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & ~(d2) & d3 & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		if ((d0 & d1 & ~(d2) & d3 & sl1) | (~(d0) & ~(d1) & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & d3 & ~(sl1)) | (~(d0) & d1 & ~(d2) & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & ~(d2) & d3 & ~(sl1)))
			(sl0 => x) = 0;
		ifnone (sl0 => x) = 0;
		if ((d0 & d1 & d2 & ~(d3) & sl0) | (d0 & d1 & ~(d2) & d3 & ~(sl0)) | (d0 & d1 & ~(d2) & ~(d3)) | (d0 & ~(d1) & ~(d2) & ~(sl0)) | (~(d0) & d1 & ~(d3) & sl0))
			(sl1 => x) = 0;
		if ((d0 & ~(d1) & d3 & sl0) | (~(d0) & d1 & d2 & ~(sl0)) | (~(d0) & ~(d1) & d2 & d3) | (~(d0) & ~(d1) & d2 & ~(d3) & ~(sl0)) | (~(d0) & ~(d1) & ~(d2) & d3 & sl0))
			(sl1 => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module muxi4_1 ( d0,d1,d2,d3,sl0,sl1,x );
	output x;
	input d0,d1,d2,d3,sl0,sl1;

	// Function
	wire d0__bar, d1__bar, d2__bar;
	wire d3__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_2, int_fwire_3, sl0__bar;
	wire sl1__bar;

	not (d3__bar, d3);
	and (int_fwire_0, d3__bar, sl0, sl1);
	not (sl0__bar, sl0);
	not (d2__bar, d2);
	and (int_fwire_1, d2__bar, sl0__bar, sl1);
	not (sl1__bar, sl1);
	not (d1__bar, d1);
	and (int_fwire_2, d1__bar, sl0, sl1__bar);
	not (d0__bar, d0);
	and (int_fwire_3, d0__bar, sl0__bar, sl1__bar);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(d0 => x) = 0;
		(d1 => x) = 0;
		(d2 => x) = 0;
		(d3 => x) = 0;
		if ((d0 & d1 & d2 & ~(d3) & sl1) | (~(d0) & ~(d1) & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & d3 & ~(sl1)) | (d0 & ~(d1) & ~(d2) & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & ~(d2) & d3 & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		if ((d0 & d1 & ~(d2) & d3 & sl1) | (~(d0) & ~(d1) & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & d3 & ~(sl1)) | (~(d0) & d1 & ~(d2) & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & ~(d2) & d3 & ~(sl1)))
			(sl0 => x) = 0;
		ifnone (sl0 => x) = 0;
		if ((d0 & d1 & d2 & ~(d3) & sl0) | (d0 & d1 & ~(d2) & d3 & ~(sl0)) | (d0 & d1 & ~(d2) & ~(d3)) | (d0 & ~(d1) & ~(d2) & ~(sl0)) | (~(d0) & d1 & ~(d3) & sl0))
			(sl1 => x) = 0;
		if ((d0 & ~(d1) & d3 & sl0) | (~(d0) & d1 & d2 & ~(sl0)) | (~(d0) & ~(d1) & d2 & d3) | (~(d0) & ~(d1) & d2 & ~(d3) & ~(sl0)) | (~(d0) & ~(d1) & ~(d2) & d3 & sl0))
			(sl1 => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module muxi4_2 ( d0,d1,d2,d3,sl0,sl1,x );
	output x;
	input d0,d1,d2,d3,sl0,sl1;

	// Function
	wire d0__bar, d1__bar, d2__bar;
	wire d3__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_2, int_fwire_3, sl0__bar;
	wire sl1__bar;

	not (d3__bar, d3);
	and (int_fwire_0, d3__bar, sl0, sl1);
	not (sl0__bar, sl0);
	not (d2__bar, d2);
	and (int_fwire_1, d2__bar, sl0__bar, sl1);
	not (sl1__bar, sl1);
	not (d1__bar, d1);
	and (int_fwire_2, d1__bar, sl0, sl1__bar);
	not (d0__bar, d0);
	and (int_fwire_3, d0__bar, sl0__bar, sl1__bar);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(d0 => x) = 0;
		(d1 => x) = 0;
		(d2 => x) = 0;
		(d3 => x) = 0;
		if ((d0 & d1 & d2 & ~(d3) & sl1) | (~(d0) & ~(d1) & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & d3 & ~(sl1)) | (d0 & ~(d1) & ~(d2) & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & ~(d2) & d3 & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		if ((d0 & d1 & ~(d2) & d3 & sl1) | (~(d0) & ~(d1) & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & d3 & ~(sl1)) | (~(d0) & d1 & ~(d2) & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & ~(d2) & d3 & ~(sl1)))
			(sl0 => x) = 0;
		ifnone (sl0 => x) = 0;
		if ((d0 & d1 & d2 & ~(d3) & sl0) | (d0 & d1 & ~(d2) & d3 & ~(sl0)) | (d0 & d1 & ~(d2) & ~(d3)) | (d0 & ~(d1) & ~(d2) & ~(sl0)) | (~(d0) & d1 & ~(d3) & sl0))
			(sl1 => x) = 0;
		if ((d0 & ~(d1) & d3 & sl0) | (~(d0) & d1 & d2 & ~(sl0)) | (~(d0) & ~(d1) & d2 & d3) | (~(d0) & ~(d1) & d2 & ~(d3) & ~(sl0)) | (~(d0) & ~(d1) & ~(d2) & d3 & sl0))
			(sl1 => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module muxi4_4 ( d0,d1,d2,d3,sl0,sl1,x );
	output x;
	input d0,d1,d2,d3,sl0,sl1;

	// Function
	wire d0__bar, d1__bar, d2__bar;
	wire d3__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_2, int_fwire_3, sl0__bar;
	wire sl1__bar;

	not (d3__bar, d3);
	and (int_fwire_0, d3__bar, sl0, sl1);
	not (sl0__bar, sl0);
	not (d2__bar, d2);
	and (int_fwire_1, d2__bar, sl0__bar, sl1);
	not (sl1__bar, sl1);
	not (d1__bar, d1);
	and (int_fwire_2, d1__bar, sl0, sl1__bar);
	not (d0__bar, d0);
	and (int_fwire_3, d0__bar, sl0__bar, sl1__bar);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(d0 => x) = 0;
		(d1 => x) = 0;
		(d2 => x) = 0;
		(d3 => x) = 0;
		if ((d0 & d1 & d2 & ~(d3) & sl1) | (~(d0) & ~(d1) & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & d3 & ~(sl1)) | (d0 & ~(d1) & ~(d2) & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & d2 & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & ~(d2) & d3 & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & ~(d3) & sl1))
			(sl0 => x) = 0;
		if ((d0 & d1 & ~(d2) & d3 & sl1) | (~(d0) & ~(d1) & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((d0 & ~(d1) & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & d3 & ~(sl1)) | (~(d0) & d1 & ~(d2) & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & d2 & ~(d3) & ~(sl1)))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & ~(d2) & d3 & sl1))
			(sl0 => x) = 0;
		if ((~(d0) & d1 & ~(d2) & d3 & ~(sl1)))
			(sl0 => x) = 0;
		ifnone (sl0 => x) = 0;
		if ((d0 & d1 & d2 & ~(d3) & sl0) | (d0 & d1 & ~(d2) & d3 & ~(sl0)) | (d0 & d1 & ~(d2) & ~(d3)) | (d0 & ~(d1) & ~(d2) & ~(sl0)) | (~(d0) & d1 & ~(d3) & sl0))
			(sl1 => x) = 0;
		if ((d0 & ~(d1) & d3 & sl0) | (~(d0) & d1 & d2 & ~(sl0)) | (~(d0) & ~(d1) & d2 & d3) | (~(d0) & ~(d1) & d2 & ~(d3) & ~(sl0)) | (~(d0) & ~(d1) & ~(d2) & d3 & sl0))
			(sl1 => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand2_0 ( a,b,x );
	output x;
	input a,b;

	// Function
	wire a__bar, b__bar;

	not (b__bar, b);
	not (a__bar, a);
	or (x, a__bar, b__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand2_1 ( a,b,x );
	output x;
	input a,b;

	// Function
	wire a__bar, b__bar;

	not (b__bar, b);
	not (a__bar, a);
	or (x, a__bar, b__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand2_2 ( a,b,x );
	output x;
	input a,b;

	// Function
	wire a__bar, b__bar;

	not (b__bar, b);
	not (a__bar, a);
	or (x, a__bar, b__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand2_4 ( a,b,x );
	output x;
	input a,b;

	// Function
	wire a__bar, b__bar;

	not (b__bar, b);
	not (a__bar, a);
	or (x, a__bar, b__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand2i1_0 ( ab,b,x );
	output x;
	input ab,b;

	// Function
	wire b__bar;

	not (b__bar, b);
	or (x, ab, b__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand2i1_1 ( ab,b,x );
	output x;
	input ab,b;

	// Function
	wire b__bar;

	not (b__bar, b);
	or (x, ab, b__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand2i1_2 ( ab,b,x );
	output x;
	input ab,b;

	// Function
	wire b__bar;

	not (b__bar, b);
	or (x, ab, b__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand2i1_4 ( ab,b,x );
	output x;
	input ab,b;

	// Function
	wire b__bar;

	not (b__bar, b);
	or (x, ab, b__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand3_0 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;

	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	or (x, a__bar, b__bar, c__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand3_1 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;

	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	or (x, a__bar, b__bar, c__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand3_2 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;

	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	or (x, a__bar, b__bar, c__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand3_4 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;

	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	or (x, a__bar, b__bar, c__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand3i1_0 ( ab,b,c,x );
	output x;
	input ab,b,c;

	// Function
	wire b__bar, c__bar;

	not (c__bar, c);
	not (b__bar, b);
	or (x, ab, b__bar, c__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand3i1_1 ( ab,b,c,x );
	output x;
	input ab,b,c;

	// Function
	wire b__bar, c__bar;

	not (c__bar, c);
	not (b__bar, b);
	or (x, ab, b__bar, c__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand3i1_2 ( ab,b,c,x );
	output x;
	input ab,b,c;

	// Function
	wire b__bar, c__bar;

	not (c__bar, c);
	not (b__bar, b);
	or (x, ab, b__bar, c__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand3i1_4 ( ab,b,c,x );
	output x;
	input ab,b,c;

	// Function
	wire b__bar, c__bar;

	not (c__bar, c);
	not (b__bar, b);
	or (x, ab, b__bar, c__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand3i2_0 ( ab,bb,c,x );
	output x;
	input ab,bb,c;

	// Function
	wire c__bar;

	not (c__bar, c);
	or (x, ab, bb, c__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand3i2_1 ( ab,bb,c,x );
	output x;
	input ab,bb,c;

	// Function
	wire c__bar;

	not (c__bar, c);
	or (x, ab, bb, c__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand3i2_2 ( ab,bb,c,x );
	output x;
	input ab,bb,c;

	// Function
	wire c__bar;

	not (c__bar, c);
	or (x, ab, bb, c__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand3i2_4 ( ab,bb,c,x );
	output x;
	input ab,bb,c;

	// Function
	wire c__bar;

	not (c__bar, c);
	or (x, ab, bb, c__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand4_0 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	or (x, a__bar, b__bar, c__bar, d__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand4_1 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	or (x, a__bar, b__bar, c__bar, d__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand4_2 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	or (x, a__bar, b__bar, c__bar, d__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand4_4 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	or (x, a__bar, b__bar, c__bar, d__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand4i1_0 ( ab,b,c,d,x );
	output x;
	input ab,b,c,d;

	// Function
	wire b__bar, c__bar, d__bar;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	or (x, ab, b__bar, c__bar, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand4i1_1 ( ab,b,c,d,x );
	output x;
	input ab,b,c,d;

	// Function
	wire b__bar, c__bar, d__bar;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	or (x, ab, b__bar, c__bar, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand4i1_2 ( ab,b,c,d,x );
	output x;
	input ab,b,c,d;

	// Function
	wire b__bar, c__bar, d__bar;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	or (x, ab, b__bar, c__bar, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand4i1_4 ( ab,b,c,d,x );
	output x;
	input ab,b,c,d;

	// Function
	wire b__bar, c__bar, d__bar;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	or (x, ab, b__bar, c__bar, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand4i2_0 ( ab,bb,c,d,x );
	output x;
	input ab,bb,c,d;

	// Function
	wire c__bar, d__bar;

	not (d__bar, d);
	not (c__bar, c);
	or (x, ab, bb, c__bar, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand4i2_1 ( ab,bb,c,d,x );
	output x;
	input ab,bb,c,d;

	// Function
	wire c__bar, d__bar;

	not (d__bar, d);
	not (c__bar, c);
	or (x, ab, bb, c__bar, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand4i2_2 ( ab,bb,c,d,x );
	output x;
	input ab,bb,c,d;

	// Function
	wire c__bar, d__bar;

	not (d__bar, d);
	not (c__bar, c);
	or (x, ab, bb, c__bar, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand4i2_4 ( ab,bb,c,d,x );
	output x;
	input ab,bb,c,d;

	// Function
	wire c__bar, d__bar;

	not (d__bar, d);
	not (c__bar, c);
	or (x, ab, bb, c__bar, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand4i3_0 ( ab,bb,cb,d,x );
	output x;
	input ab,bb,cb,d;

	// Function
	wire d__bar;

	not (d__bar, d);
	or (x, ab, bb, cb, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(cb => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand4i3_1 ( ab,bb,cb,d,x );
	output x;
	input ab,bb,cb,d;

	// Function
	wire d__bar;

	not (d__bar, d);
	or (x, ab, bb, cb, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(cb => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand4i3_2 ( ab,bb,cb,d,x );
	output x;
	input ab,bb,cb,d;

	// Function
	wire d__bar;

	not (d__bar, d);
	or (x, ab, bb, cb, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(cb => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand4i3_4 ( ab,bb,cb,d,x );
	output x;
	input ab,bb,cb,d;

	// Function
	wire d__bar;

	not (d__bar, d);
	or (x, ab, bb, cb, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(cb => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand5_0 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar;

	not (e__bar, e);
	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	or (x, a__bar, b__bar, c__bar, d__bar, e__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand5_1 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar;

	not (e__bar, e);
	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	or (x, a__bar, b__bar, c__bar, d__bar, e__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand5_2 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar;

	not (e__bar, e);
	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	or (x, a__bar, b__bar, c__bar, d__bar, e__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand5_4 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar;

	not (e__bar, e);
	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	or (x, a__bar, b__bar, c__bar, d__bar, e__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand6_0 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, f__bar;

	not (f__bar, f);
	not (e__bar, e);
	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	or (x, a__bar, b__bar, c__bar, d__bar, e__bar, f__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
		(f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand6_1 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, f__bar;

	not (f__bar, f);
	not (e__bar, e);
	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	or (x, a__bar, b__bar, c__bar, d__bar, e__bar, f__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
		(f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand6_2 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, f__bar;

	not (f__bar, f);
	not (e__bar, e);
	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	or (x, a__bar, b__bar, c__bar, d__bar, e__bar, f__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
		(f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nand6_4 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, f__bar;

	not (f__bar, f);
	not (e__bar, e);
	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	or (x, a__bar, b__bar, c__bar, d__bar, e__bar, f__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
		(f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor2_0 ( a,b,x );
	output x;
	input a,b;

	// Function
	wire a__bar, b__bar;

	not (b__bar, b);
	not (a__bar, a);
	and (x, a__bar, b__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor2_1 ( a,b,x );
	output x;
	input a,b;

	// Function
	wire a__bar, b__bar;

	not (b__bar, b);
	not (a__bar, a);
	and (x, a__bar, b__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor2_2 ( a,b,x );
	output x;
	input a,b;

	// Function
	wire a__bar, b__bar;

	not (b__bar, b);
	not (a__bar, a);
	and (x, a__bar, b__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor2_4 ( a,b,x );
	output x;
	input a,b;

	// Function
	wire a__bar, b__bar;

	not (b__bar, b);
	not (a__bar, a);
	and (x, a__bar, b__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor2i1_0 ( ab,b,x );
	output x;
	input ab,b;

	// Function
	wire b__bar;

	not (b__bar, b);
	and (x, ab, b__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor2i1_1 ( ab,b,x );
	output x;
	input ab,b;

	// Function
	wire b__bar;

	not (b__bar, b);
	and (x, ab, b__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor2i1_2 ( ab,b,x );
	output x;
	input ab,b;

	// Function
	wire b__bar;

	not (b__bar, b);
	and (x, ab, b__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor2i1_4 ( ab,b,x );
	output x;
	input ab,b;

	// Function
	wire b__bar;

	not (b__bar, b);
	and (x, ab, b__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor3_0 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;

	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (x, a__bar, b__bar, c__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor3_1 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;

	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (x, a__bar, b__bar, c__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor3_2 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;

	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (x, a__bar, b__bar, c__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor3_4 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;

	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (x, a__bar, b__bar, c__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor3i1_0 ( ab,b,c,x );
	output x;
	input ab,b,c;

	// Function
	wire b__bar, c__bar;

	not (c__bar, c);
	not (b__bar, b);
	and (x, ab, b__bar, c__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor3i1_1 ( ab,b,c,x );
	output x;
	input ab,b,c;

	// Function
	wire b__bar, c__bar;

	not (c__bar, c);
	not (b__bar, b);
	and (x, ab, b__bar, c__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor3i1_2 ( ab,b,c,x );
	output x;
	input ab,b,c;

	// Function
	wire b__bar, c__bar;

	not (c__bar, c);
	not (b__bar, b);
	and (x, ab, b__bar, c__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor3i1_4 ( ab,b,c,x );
	output x;
	input ab,b,c;

	// Function
	wire b__bar, c__bar;

	not (c__bar, c);
	not (b__bar, b);
	and (x, ab, b__bar, c__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor3i2_0 ( ab,bb,c,x );
	output x;
	input ab,bb,c;

	// Function
	wire c__bar;

	not (c__bar, c);
	and (x, ab, bb, c__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor3i2_1 ( ab,bb,c,x );
	output x;
	input ab,bb,c;

	// Function
	wire c__bar;

	not (c__bar, c);
	and (x, ab, bb, c__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor3i2_2 ( ab,bb,c,x );
	output x;
	input ab,bb,c;

	// Function
	wire c__bar;

	not (c__bar, c);
	and (x, ab, bb, c__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor3i2_4 ( ab,bb,c,x );
	output x;
	input ab,bb,c;

	// Function
	wire c__bar;

	not (c__bar, c);
	and (x, ab, bb, c__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor4_0 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (x, a__bar, b__bar, c__bar, d__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor4_1 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (x, a__bar, b__bar, c__bar, d__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor4_2 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (x, a__bar, b__bar, c__bar, d__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor4_4 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (x, a__bar, b__bar, c__bar, d__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor4i1_0 ( ab,b,c,d,x );
	output x;
	input ab,b,c,d;

	// Function
	wire b__bar, c__bar, d__bar;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	and (x, ab, b__bar, c__bar, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor4i1_1 ( ab,b,c,d,x );
	output x;
	input ab,b,c,d;

	// Function
	wire b__bar, c__bar, d__bar;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	and (x, ab, b__bar, c__bar, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor4i1_2 ( ab,b,c,d,x );
	output x;
	input ab,b,c,d;

	// Function
	wire b__bar, c__bar, d__bar;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	and (x, ab, b__bar, c__bar, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor4i1_4 ( ab,b,c,d,x );
	output x;
	input ab,b,c,d;

	// Function
	wire b__bar, c__bar, d__bar;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	and (x, ab, b__bar, c__bar, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor4i2_0 ( ab,bb,c,d,x );
	output x;
	input ab,bb,c,d;

	// Function
	wire c__bar, d__bar;

	not (d__bar, d);
	not (c__bar, c);
	and (x, ab, bb, c__bar, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor4i2_1 ( ab,bb,c,d,x );
	output x;
	input ab,bb,c,d;

	// Function
	wire c__bar, d__bar;

	not (d__bar, d);
	not (c__bar, c);
	and (x, ab, bb, c__bar, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor4i2_2 ( ab,bb,c,d,x );
	output x;
	input ab,bb,c,d;

	// Function
	wire c__bar, d__bar;

	not (d__bar, d);
	not (c__bar, c);
	and (x, ab, bb, c__bar, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor4i2_4 ( ab,bb,c,d,x );
	output x;
	input ab,bb,c,d;

	// Function
	wire c__bar, d__bar;

	not (d__bar, d);
	not (c__bar, c);
	and (x, ab, bb, c__bar, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor4i3_0 ( ab,bb,cb,d,x );
	output x;
	input ab,bb,cb,d;

	// Function
	wire d__bar;

	not (d__bar, d);
	and (x, ab, bb, cb, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(cb => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor4i3_1 ( ab,bb,cb,d,x );
	output x;
	input ab,bb,cb,d;

	// Function
	wire d__bar;

	not (d__bar, d);
	and (x, ab, bb, cb, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(cb => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor4i3_2 ( ab,bb,cb,d,x );
	output x;
	input ab,bb,cb,d;

	// Function
	wire d__bar;

	not (d__bar, d);
	and (x, ab, bb, cb, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(cb => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor4i3_4 ( ab,bb,cb,d,x );
	output x;
	input ab,bb,cb,d;

	// Function
	wire d__bar;

	not (d__bar, d);
	and (x, ab, bb, cb, d__bar);

	// Timing
	specify
		(ab => x) = 0;
		(bb => x) = 0;
		(cb => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor5_0 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar;

	not (e__bar, e);
	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (x, a__bar, b__bar, c__bar, d__bar, e__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor5_1 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar;

	not (e__bar, e);
	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (x, a__bar, b__bar, c__bar, d__bar, e__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor5_2 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar;

	not (e__bar, e);
	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (x, a__bar, b__bar, c__bar, d__bar, e__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor5_4 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar;

	not (e__bar, e);
	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (x, a__bar, b__bar, c__bar, d__bar, e__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor6_0 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, f__bar;

	not (f__bar, f);
	not (e__bar, e);
	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (x, a__bar, b__bar, c__bar, d__bar, e__bar, f__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
		(f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor6_1 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, f__bar;

	not (f__bar, f);
	not (e__bar, e);
	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (x, a__bar, b__bar, c__bar, d__bar, e__bar, f__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
		(f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor6_2 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, f__bar;

	not (f__bar, f);
	not (e__bar, e);
	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (x, a__bar, b__bar, c__bar, d__bar, e__bar, f__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
		(f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module nor6_4 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, f__bar;

	not (f__bar, f);
	not (e__bar, e);
	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (x, a__bar, b__bar, c__bar, d__bar, e__bar, f__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
		(f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa211_0 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, b, c, d);
	and (int_fwire_1, a, c, d);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & b & d))
			(c => x) = 0;
		if ((a & ~(b) & d))
			(c => x) = 0;
		if ((~(a) & b & d))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c))
			(d => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa211_1 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, b, c, d);
	and (int_fwire_1, a, c, d);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & b & d))
			(c => x) = 0;
		if ((a & ~(b) & d))
			(c => x) = 0;
		if ((~(a) & b & d))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c))
			(d => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa211_2 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, b, c, d);
	and (int_fwire_1, a, c, d);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & b & d))
			(c => x) = 0;
		if ((a & ~(b) & d))
			(c => x) = 0;
		if ((~(a) & b & d))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c))
			(d => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa211_4 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, b, c, d);
	and (int_fwire_1, a, c, d);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & b & d))
			(c => x) = 0;
		if ((a & ~(b) & d))
			(c => x) = 0;
		if ((~(a) & b & d))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c))
			(d => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa21_0 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, b, c);
	and (int_fwire_1, a, c);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & b))
			(c => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa21_1 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, b, c);
	and (int_fwire_1, a, c);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & b))
			(c => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa21_2 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, b, c);
	and (int_fwire_1, a, c);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & b))
			(c => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa21_4 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire int_fwire_0, int_fwire_1;

	and (int_fwire_0, b, c);
	and (int_fwire_1, a, c);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & b))
			(c => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa221_0 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3;

	and (int_fwire_0, b, d, e);
	and (int_fwire_1, b, c, e);
	and (int_fwire_2, a, d, e);
	and (int_fwire_3, a, c, e);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & c & d & e))
			(a => x) = 0;
		if ((~(b) & c & ~(d) & e))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & e))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & c & d & e))
			(b => x) = 0;
		if ((~(a) & c & ~(d) & e))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & e))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & ~(d) & e))
			(c => x) = 0;
		if ((a & ~(b) & ~(d) & e))
			(c => x) = 0;
		if ((~(a) & b & ~(d) & e))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & d))
			(e => x) = 0;
		if ((a & b & c & ~(d)))
			(e => x) = 0;
		if ((a & b & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & c & d))
			(e => x) = 0;
		if ((a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & c & d))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa221_1 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3;

	and (int_fwire_0, b, d, e);
	and (int_fwire_1, b, c, e);
	and (int_fwire_2, a, d, e);
	and (int_fwire_3, a, c, e);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & c & d & e))
			(a => x) = 0;
		if ((~(b) & c & ~(d) & e))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & e))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & c & d & e))
			(b => x) = 0;
		if ((~(a) & c & ~(d) & e))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & e))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & ~(d) & e))
			(c => x) = 0;
		if ((a & ~(b) & ~(d) & e))
			(c => x) = 0;
		if ((~(a) & b & ~(d) & e))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & d))
			(e => x) = 0;
		if ((a & b & c & ~(d)))
			(e => x) = 0;
		if ((a & b & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & c & d))
			(e => x) = 0;
		if ((a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & c & d))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa221_2 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3;

	and (int_fwire_0, b, d, e);
	and (int_fwire_1, b, c, e);
	and (int_fwire_2, a, d, e);
	and (int_fwire_3, a, c, e);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & c & d & e))
			(a => x) = 0;
		if ((~(b) & c & ~(d) & e))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & e))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & c & d & e))
			(b => x) = 0;
		if ((~(a) & c & ~(d) & e))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & e))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & ~(d) & e))
			(c => x) = 0;
		if ((a & ~(b) & ~(d) & e))
			(c => x) = 0;
		if ((~(a) & b & ~(d) & e))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & d))
			(e => x) = 0;
		if ((a & b & c & ~(d)))
			(e => x) = 0;
		if ((a & b & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & c & d))
			(e => x) = 0;
		if ((a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & c & d))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa221_4 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3;

	and (int_fwire_0, b, d, e);
	and (int_fwire_1, b, c, e);
	and (int_fwire_2, a, d, e);
	and (int_fwire_3, a, c, e);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & c & d & e))
			(a => x) = 0;
		if ((~(b) & c & ~(d) & e))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & e))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & c & d & e))
			(b => x) = 0;
		if ((~(a) & c & ~(d) & e))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & e))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & ~(d) & e))
			(c => x) = 0;
		if ((a & ~(b) & ~(d) & e))
			(c => x) = 0;
		if ((~(a) & b & ~(d) & e))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & d))
			(e => x) = 0;
		if ((a & b & c & ~(d)))
			(e => x) = 0;
		if ((a & b & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & c & d))
			(e => x) = 0;
		if ((a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & c & d))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa22_0 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3;

	and (int_fwire_0, b, d);
	and (int_fwire_1, b, c);
	and (int_fwire_2, a, d);
	and (int_fwire_3, a, c);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & c & d))
			(a => x) = 0;
		if ((~(b) & c & ~(d)))
			(a => x) = 0;
		if ((~(b) & ~(c) & d))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & c & d))
			(b => x) = 0;
		if ((~(a) & c & ~(d)))
			(b => x) = 0;
		if ((~(a) & ~(c) & d))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & ~(d)))
			(c => x) = 0;
		if ((a & ~(b) & ~(d)))
			(c => x) = 0;
		if ((~(a) & b & ~(d)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa22_1 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3;

	and (int_fwire_0, b, d);
	and (int_fwire_1, b, c);
	and (int_fwire_2, a, d);
	and (int_fwire_3, a, c);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & c & d))
			(a => x) = 0;
		if ((~(b) & c & ~(d)))
			(a => x) = 0;
		if ((~(b) & ~(c) & d))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & c & d))
			(b => x) = 0;
		if ((~(a) & c & ~(d)))
			(b => x) = 0;
		if ((~(a) & ~(c) & d))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & ~(d)))
			(c => x) = 0;
		if ((a & ~(b) & ~(d)))
			(c => x) = 0;
		if ((~(a) & b & ~(d)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa22_2 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3;

	and (int_fwire_0, b, d);
	and (int_fwire_1, b, c);
	and (int_fwire_2, a, d);
	and (int_fwire_3, a, c);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & c & d))
			(a => x) = 0;
		if ((~(b) & c & ~(d)))
			(a => x) = 0;
		if ((~(b) & ~(c) & d))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & c & d))
			(b => x) = 0;
		if ((~(a) & c & ~(d)))
			(b => x) = 0;
		if ((~(a) & ~(c) & d))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & ~(d)))
			(c => x) = 0;
		if ((a & ~(b) & ~(d)))
			(c => x) = 0;
		if ((~(a) & b & ~(d)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa22_4 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3;

	and (int_fwire_0, b, d);
	and (int_fwire_1, b, c);
	and (int_fwire_2, a, d);
	and (int_fwire_3, a, c);
	or (x, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & c & d))
			(a => x) = 0;
		if ((~(b) & c & ~(d)))
			(a => x) = 0;
		if ((~(b) & ~(c) & d))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & c & d))
			(b => x) = 0;
		if ((~(a) & c & ~(d)))
			(b => x) = 0;
		if ((~(a) & ~(c) & d))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & ~(d)))
			(c => x) = 0;
		if ((a & ~(b) & ~(d)))
			(c => x) = 0;
		if ((~(a) & b & ~(d)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa31_0 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, c, d);
	and (int_fwire_1, b, d);
	and (int_fwire_2, a, d);
	or (x, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		if ((a & b & c))
			(d => x) = 0;
		if ((a & b & ~(c)) | (a & ~(b) & c))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa31_1 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, c, d);
	and (int_fwire_1, b, d);
	and (int_fwire_2, a, d);
	or (x, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		if ((a & b & c))
			(d => x) = 0;
		if ((a & b & ~(c)) | (a & ~(b) & c))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa31_2 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, c, d);
	and (int_fwire_1, b, d);
	and (int_fwire_2, a, d);
	or (x, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		if ((a & b & c))
			(d => x) = 0;
		if ((a & b & ~(c)) | (a & ~(b) & c))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa31_4 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;

	and (int_fwire_0, c, d);
	and (int_fwire_1, b, d);
	and (int_fwire_2, a, d);
	or (x, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		if ((a & b & c))
			(d => x) = 0;
		if ((a & b & ~(c)) | (a & ~(b) & c))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa32_0 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;

	and (int_fwire_0, c, e);
	and (int_fwire_1, c, d);
	and (int_fwire_2, b, e);
	and (int_fwire_3, b, d);
	and (int_fwire_4, a, e);
	and (int_fwire_5, a, d);
	or (x, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & ~(c) & d & e))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & ~(e)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & ~(c) & d & e))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & ~(e)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((~(a) & ~(b) & d & e))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c & ~(e)))
			(d => x) = 0;
		if ((a & b & ~(c) & ~(e)) | (a & ~(b) & c & ~(e)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & ~(e)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & ~(d)))
			(e => x) = 0;
		if ((a & b & ~(c) & ~(d)) | (a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d)))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa32_1 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;

	and (int_fwire_0, c, e);
	and (int_fwire_1, c, d);
	and (int_fwire_2, b, e);
	and (int_fwire_3, b, d);
	and (int_fwire_4, a, e);
	and (int_fwire_5, a, d);
	or (x, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & ~(c) & d & e))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & ~(e)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & ~(c) & d & e))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & ~(e)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((~(a) & ~(b) & d & e))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c & ~(e)))
			(d => x) = 0;
		if ((a & b & ~(c) & ~(e)) | (a & ~(b) & c & ~(e)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & ~(e)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & ~(d)))
			(e => x) = 0;
		if ((a & b & ~(c) & ~(d)) | (a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d)))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa32_2 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;

	and (int_fwire_0, c, e);
	and (int_fwire_1, c, d);
	and (int_fwire_2, b, e);
	and (int_fwire_3, b, d);
	and (int_fwire_4, a, e);
	and (int_fwire_5, a, d);
	or (x, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & ~(c) & d & e))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & ~(e)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & ~(c) & d & e))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & ~(e)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((~(a) & ~(b) & d & e))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c & ~(e)))
			(d => x) = 0;
		if ((a & b & ~(c) & ~(e)) | (a & ~(b) & c & ~(e)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & ~(e)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & ~(d)))
			(e => x) = 0;
		if ((a & b & ~(c) & ~(d)) | (a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d)))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa32_4 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;

	and (int_fwire_0, c, e);
	and (int_fwire_1, c, d);
	and (int_fwire_2, b, e);
	and (int_fwire_3, b, d);
	and (int_fwire_4, a, e);
	and (int_fwire_5, a, d);
	or (x, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & ~(c) & d & e))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & ~(e)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & ~(c) & d & e))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & ~(e)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((~(a) & ~(b) & d & e))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c & ~(e)))
			(d => x) = 0;
		if ((a & b & ~(c) & ~(e)) | (a & ~(b) & c & ~(e)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & ~(e)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & ~(d)))
			(e => x) = 0;
		if ((a & b & ~(c) & ~(d)) | (a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d)))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa33_0 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7, int_fwire_8;

	and (int_fwire_0, c, f);
	and (int_fwire_1, c, e);
	and (int_fwire_2, c, d);
	and (int_fwire_3, b, f);
	and (int_fwire_4, b, e);
	and (int_fwire_5, b, d);
	and (int_fwire_6, a, f);
	and (int_fwire_7, a, e);
	and (int_fwire_8, a, d);
	or (x, int_fwire_8, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & ~(c) & d & e & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & e & ~(f)) | (~(b) & ~(c) & d & ~(e) & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & ~(e) & ~(f)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & ~(e) & f))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & ~(c) & d & e & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & e & ~(f)) | (~(a) & ~(c) & d & ~(e) & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & ~(e) & ~(f)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & ~(e) & f))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((~(a) & ~(b) & d & e & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & e & ~(f)) | (~(a) & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & ~(e) & f))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((a & b & ~(c) & ~(e) & ~(f)) | (a & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((a & b & ~(c) & ~(d) & ~(f)) | (a & ~(b) & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & ~(f)))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & b & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((a & b & ~(c) & ~(d) & ~(e)) | (a & ~(b) & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & b & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & ~(e)))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa33_1 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7, int_fwire_8;

	and (int_fwire_0, c, f);
	and (int_fwire_1, c, e);
	and (int_fwire_2, c, d);
	and (int_fwire_3, b, f);
	and (int_fwire_4, b, e);
	and (int_fwire_5, b, d);
	and (int_fwire_6, a, f);
	and (int_fwire_7, a, e);
	and (int_fwire_8, a, d);
	or (x, int_fwire_8, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & ~(c) & d & e & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & e & ~(f)) | (~(b) & ~(c) & d & ~(e) & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & ~(e) & ~(f)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & ~(e) & f))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & ~(c) & d & e & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & e & ~(f)) | (~(a) & ~(c) & d & ~(e) & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & ~(e) & ~(f)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & ~(e) & f))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((~(a) & ~(b) & d & e & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & e & ~(f)) | (~(a) & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & ~(e) & f))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((a & b & ~(c) & ~(e) & ~(f)) | (a & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((a & b & ~(c) & ~(d) & ~(f)) | (a & ~(b) & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & ~(f)))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & b & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((a & b & ~(c) & ~(d) & ~(e)) | (a & ~(b) & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & b & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & ~(e)))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa33_2 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7, int_fwire_8;

	and (int_fwire_0, c, f);
	and (int_fwire_1, c, e);
	and (int_fwire_2, c, d);
	and (int_fwire_3, b, f);
	and (int_fwire_4, b, e);
	and (int_fwire_5, b, d);
	and (int_fwire_6, a, f);
	and (int_fwire_7, a, e);
	and (int_fwire_8, a, d);
	or (x, int_fwire_8, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & ~(c) & d & e & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & e & ~(f)) | (~(b) & ~(c) & d & ~(e) & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & ~(e) & ~(f)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & ~(e) & f))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & ~(c) & d & e & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & e & ~(f)) | (~(a) & ~(c) & d & ~(e) & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & ~(e) & ~(f)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & ~(e) & f))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((~(a) & ~(b) & d & e & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & e & ~(f)) | (~(a) & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & ~(e) & f))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((a & b & ~(c) & ~(e) & ~(f)) | (a & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((a & b & ~(c) & ~(d) & ~(f)) | (a & ~(b) & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & ~(f)))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & b & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((a & b & ~(c) & ~(d) & ~(e)) | (a & ~(b) & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & b & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & ~(e)))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oa33_4 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire int_fwire_0, int_fwire_1, int_fwire_2;
	wire int_fwire_3, int_fwire_4, int_fwire_5;
	wire int_fwire_6, int_fwire_7, int_fwire_8;

	and (int_fwire_0, c, f);
	and (int_fwire_1, c, e);
	and (int_fwire_2, c, d);
	and (int_fwire_3, b, f);
	and (int_fwire_4, b, e);
	and (int_fwire_5, b, d);
	and (int_fwire_6, a, f);
	and (int_fwire_7, a, e);
	and (int_fwire_8, a, d);
	or (x, int_fwire_8, int_fwire_7, int_fwire_6, int_fwire_5, int_fwire_4, int_fwire_3, int_fwire_2, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & ~(c) & d & e & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & e & ~(f)) | (~(b) & ~(c) & d & ~(e) & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & ~(e) & ~(f)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & ~(e) & f))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & ~(c) & d & e & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & e & ~(f)) | (~(a) & ~(c) & d & ~(e) & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & ~(e) & ~(f)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & ~(e) & f))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((~(a) & ~(b) & d & e & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & e & ~(f)) | (~(a) & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & ~(e) & f))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((a & b & ~(c) & ~(e) & ~(f)) | (a & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((a & b & ~(c) & ~(d) & ~(f)) | (a & ~(b) & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & ~(f)))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & b & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((a & b & ~(c) & ~(d) & ~(e)) | (a & ~(b) & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & b & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & ~(e)))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai211_0 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar);
	or (x, int_fwire_0, c__bar, d__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & b & d))
			(c => x) = 0;
		if ((a & ~(b) & d))
			(c => x) = 0;
		if ((~(a) & b & d))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c))
			(d => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai211_1 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar);
	or (x, int_fwire_0, c__bar, d__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & b & d))
			(c => x) = 0;
		if ((a & ~(b) & d))
			(c => x) = 0;
		if ((~(a) & b & d))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c))
			(d => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai211_2 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar);
	or (x, int_fwire_0, c__bar, d__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & b & d))
			(c => x) = 0;
		if ((a & ~(b) & d))
			(c => x) = 0;
		if ((~(a) & b & d))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c))
			(d => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai211_4 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar);
	or (x, int_fwire_0, c__bar, d__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & b & d))
			(c => x) = 0;
		if ((a & ~(b) & d))
			(c => x) = 0;
		if ((~(a) & b & d))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c))
			(d => x) = 0;
		if ((a & ~(b) & c))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai21_0 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;
	wire int_fwire_0;

	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar);
	or (x, int_fwire_0, c__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & b))
			(c => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai21_1 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;
	wire int_fwire_0;

	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar);
	or (x, int_fwire_0, c__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & b))
			(c => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai21_2 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;
	wire int_fwire_0;

	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar);
	or (x, int_fwire_0, c__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & b))
			(c => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai21_4 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	wire a__bar, b__bar, c__bar;
	wire int_fwire_0;

	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar);
	or (x, int_fwire_0, c__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		if ((a & b))
			(c => x) = 0;
		if ((a & ~(b)))
			(c => x) = 0;
		if ((~(a) & b))
			(c => x) = 0;
		ifnone (c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai221_0 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, int_fwire_0;
	wire int_fwire_1;

	not (e__bar, e);
	not (d__bar, d);
	not (c__bar, c);
	and (int_fwire_0, c__bar, d__bar);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_1, a__bar, b__bar);
	or (x, int_fwire_1, int_fwire_0, e__bar);

	// Timing
	specify
		if ((~(b) & c & d & e))
			(a => x) = 0;
		if ((~(b) & c & ~(d) & e))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & e))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & c & d & e))
			(b => x) = 0;
		if ((~(a) & c & ~(d) & e))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & e))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & ~(d) & e))
			(c => x) = 0;
		if ((a & ~(b) & ~(d) & e))
			(c => x) = 0;
		if ((~(a) & b & ~(d) & e))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & d))
			(e => x) = 0;
		if ((a & b & c & ~(d)))
			(e => x) = 0;
		if ((a & b & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & c & d))
			(e => x) = 0;
		if ((a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & c & d))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai221_1 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, int_fwire_0;
	wire int_fwire_1;

	not (e__bar, e);
	not (d__bar, d);
	not (c__bar, c);
	and (int_fwire_0, c__bar, d__bar);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_1, a__bar, b__bar);
	or (x, int_fwire_1, int_fwire_0, e__bar);

	// Timing
	specify
		if ((~(b) & c & d & e))
			(a => x) = 0;
		if ((~(b) & c & ~(d) & e))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & e))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & c & d & e))
			(b => x) = 0;
		if ((~(a) & c & ~(d) & e))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & e))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & ~(d) & e))
			(c => x) = 0;
		if ((a & ~(b) & ~(d) & e))
			(c => x) = 0;
		if ((~(a) & b & ~(d) & e))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & d))
			(e => x) = 0;
		if ((a & b & c & ~(d)))
			(e => x) = 0;
		if ((a & b & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & c & d))
			(e => x) = 0;
		if ((a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & c & d))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai221_2 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, int_fwire_0;
	wire int_fwire_1;

	not (e__bar, e);
	not (d__bar, d);
	not (c__bar, c);
	and (int_fwire_0, c__bar, d__bar);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_1, a__bar, b__bar);
	or (x, int_fwire_1, int_fwire_0, e__bar);

	// Timing
	specify
		if ((~(b) & c & d & e))
			(a => x) = 0;
		if ((~(b) & c & ~(d) & e))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & e))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & c & d & e))
			(b => x) = 0;
		if ((~(a) & c & ~(d) & e))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & e))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & ~(d) & e))
			(c => x) = 0;
		if ((a & ~(b) & ~(d) & e))
			(c => x) = 0;
		if ((~(a) & b & ~(d) & e))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & d))
			(e => x) = 0;
		if ((a & b & c & ~(d)))
			(e => x) = 0;
		if ((a & b & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & c & d))
			(e => x) = 0;
		if ((a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & c & d))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai221_4 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, int_fwire_0;
	wire int_fwire_1;

	not (e__bar, e);
	not (d__bar, d);
	not (c__bar, c);
	and (int_fwire_0, c__bar, d__bar);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_1, a__bar, b__bar);
	or (x, int_fwire_1, int_fwire_0, e__bar);

	// Timing
	specify
		if ((~(b) & c & d & e))
			(a => x) = 0;
		if ((~(b) & c & ~(d) & e))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & e))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & c & d & e))
			(b => x) = 0;
		if ((~(a) & c & ~(d) & e))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & e))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & ~(d) & e))
			(c => x) = 0;
		if ((a & ~(b) & ~(d) & e))
			(c => x) = 0;
		if ((~(a) & b & ~(d) & e))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c) & e))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & e))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & e))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & d))
			(e => x) = 0;
		if ((a & b & c & ~(d)))
			(e => x) = 0;
		if ((a & b & ~(c) & d))
			(e => x) = 0;
		if ((a & ~(b) & c & d))
			(e => x) = 0;
		if ((a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & d))
			(e => x) = 0;
		if ((~(a) & b & c & d))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & d))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai22_0 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0, int_fwire_1;

	not (d__bar, d);
	not (c__bar, c);
	and (int_fwire_0, c__bar, d__bar);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_1, a__bar, b__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & c & d))
			(a => x) = 0;
		if ((~(b) & c & ~(d)))
			(a => x) = 0;
		if ((~(b) & ~(c) & d))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & c & d))
			(b => x) = 0;
		if ((~(a) & c & ~(d)))
			(b => x) = 0;
		if ((~(a) & ~(c) & d))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & ~(d)))
			(c => x) = 0;
		if ((a & ~(b) & ~(d)))
			(c => x) = 0;
		if ((~(a) & b & ~(d)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai22_1 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0, int_fwire_1;

	not (d__bar, d);
	not (c__bar, c);
	and (int_fwire_0, c__bar, d__bar);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_1, a__bar, b__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & c & d))
			(a => x) = 0;
		if ((~(b) & c & ~(d)))
			(a => x) = 0;
		if ((~(b) & ~(c) & d))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & c & d))
			(b => x) = 0;
		if ((~(a) & c & ~(d)))
			(b => x) = 0;
		if ((~(a) & ~(c) & d))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & ~(d)))
			(c => x) = 0;
		if ((a & ~(b) & ~(d)))
			(c => x) = 0;
		if ((~(a) & b & ~(d)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai22_2 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0, int_fwire_1;

	not (d__bar, d);
	not (c__bar, c);
	and (int_fwire_0, c__bar, d__bar);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_1, a__bar, b__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & c & d))
			(a => x) = 0;
		if ((~(b) & c & ~(d)))
			(a => x) = 0;
		if ((~(b) & ~(c) & d))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & c & d))
			(b => x) = 0;
		if ((~(a) & c & ~(d)))
			(b => x) = 0;
		if ((~(a) & ~(c) & d))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & ~(d)))
			(c => x) = 0;
		if ((a & ~(b) & ~(d)))
			(c => x) = 0;
		if ((~(a) & b & ~(d)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai22_4 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0, int_fwire_1;

	not (d__bar, d);
	not (c__bar, c);
	and (int_fwire_0, c__bar, d__bar);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_1, a__bar, b__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & c & d))
			(a => x) = 0;
		if ((~(b) & c & ~(d)))
			(a => x) = 0;
		if ((~(b) & ~(c) & d))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & c & d))
			(b => x) = 0;
		if ((~(a) & c & ~(d)))
			(b => x) = 0;
		if ((~(a) & ~(c) & d))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((a & b & ~(d)))
			(c => x) = 0;
		if ((a & ~(b) & ~(d)))
			(c => x) = 0;
		if ((~(a) & b & ~(d)))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & ~(c)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai31_0 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar, c__bar);
	or (x, int_fwire_0, d__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		if ((a & b & c))
			(d => x) = 0;
		if ((a & b & ~(c)) | (a & ~(b) & c))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai31_1 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar, c__bar);
	or (x, int_fwire_0, d__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		if ((a & b & c))
			(d => x) = 0;
		if ((a & b & ~(c)) | (a & ~(b) & c))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai31_2 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar, c__bar);
	or (x, int_fwire_0, d__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		if ((a & b & c))
			(d => x) = 0;
		if ((a & b & ~(c)) | (a & ~(b) & c))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai31_4 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, int_fwire_0;

	not (d__bar, d);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_0, a__bar, b__bar, c__bar);
	or (x, int_fwire_0, d__bar);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		if ((a & b & c))
			(d => x) = 0;
		if ((a & b & ~(c)) | (a & ~(b) & c))
			(d => x) = 0;
		if ((a & ~(b) & ~(c)))
			(d => x) = 0;
		if ((~(a) & b & c))
			(d => x) = 0;
		if ((~(a) & b & ~(c)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c))
			(d => x) = 0;
		ifnone (d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai32_0 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, int_fwire_0;
	wire int_fwire_1;

	not (e__bar, e);
	not (d__bar, d);
	and (int_fwire_0, d__bar, e__bar);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_1, a__bar, b__bar, c__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & ~(c) & d & e))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & ~(e)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & ~(c) & d & e))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & ~(e)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((~(a) & ~(b) & d & e))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c & ~(e)))
			(d => x) = 0;
		if ((a & b & ~(c) & ~(e)) | (a & ~(b) & c & ~(e)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & ~(e)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & ~(d)))
			(e => x) = 0;
		if ((a & b & ~(c) & ~(d)) | (a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d)))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai32_1 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, int_fwire_0;
	wire int_fwire_1;

	not (e__bar, e);
	not (d__bar, d);
	and (int_fwire_0, d__bar, e__bar);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_1, a__bar, b__bar, c__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & ~(c) & d & e))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & ~(e)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & ~(c) & d & e))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & ~(e)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((~(a) & ~(b) & d & e))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c & ~(e)))
			(d => x) = 0;
		if ((a & b & ~(c) & ~(e)) | (a & ~(b) & c & ~(e)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & ~(e)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & ~(d)))
			(e => x) = 0;
		if ((a & b & ~(c) & ~(d)) | (a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d)))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai32_2 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, int_fwire_0;
	wire int_fwire_1;

	not (e__bar, e);
	not (d__bar, d);
	and (int_fwire_0, d__bar, e__bar);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_1, a__bar, b__bar, c__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & ~(c) & d & e))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & ~(e)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & ~(c) & d & e))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & ~(e)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((~(a) & ~(b) & d & e))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c & ~(e)))
			(d => x) = 0;
		if ((a & b & ~(c) & ~(e)) | (a & ~(b) & c & ~(e)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & ~(e)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & ~(d)))
			(e => x) = 0;
		if ((a & b & ~(c) & ~(d)) | (a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d)))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai32_4 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, int_fwire_0;
	wire int_fwire_1;

	not (e__bar, e);
	not (d__bar, d);
	and (int_fwire_0, d__bar, e__bar);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_1, a__bar, b__bar, c__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & ~(c) & d & e))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & ~(e)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & ~(c) & d & e))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & ~(e)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((~(a) & ~(b) & d & e))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c & ~(e)))
			(d => x) = 0;
		if ((a & b & ~(c) & ~(e)) | (a & ~(b) & c & ~(e)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e)))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & ~(e)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & ~(d)))
			(e => x) = 0;
		if ((a & b & ~(c) & ~(d)) | (a & ~(b) & c & ~(d)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d)))
			(e => x) = 0;
		ifnone (e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai33_0 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, f__bar;
	wire int_fwire_0, int_fwire_1;

	not (f__bar, f);
	not (e__bar, e);
	not (d__bar, d);
	and (int_fwire_0, d__bar, e__bar, f__bar);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_1, a__bar, b__bar, c__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & ~(c) & d & e & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & e & ~(f)) | (~(b) & ~(c) & d & ~(e) & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & ~(e) & ~(f)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & ~(e) & f))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & ~(c) & d & e & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & e & ~(f)) | (~(a) & ~(c) & d & ~(e) & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & ~(e) & ~(f)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & ~(e) & f))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((~(a) & ~(b) & d & e & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & e & ~(f)) | (~(a) & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & ~(e) & f))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((a & b & ~(c) & ~(e) & ~(f)) | (a & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((a & b & ~(c) & ~(d) & ~(f)) | (a & ~(b) & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & ~(f)))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & b & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((a & b & ~(c) & ~(d) & ~(e)) | (a & ~(b) & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & b & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & ~(e)))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai33_1 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, f__bar;
	wire int_fwire_0, int_fwire_1;

	not (f__bar, f);
	not (e__bar, e);
	not (d__bar, d);
	and (int_fwire_0, d__bar, e__bar, f__bar);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_1, a__bar, b__bar, c__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & ~(c) & d & e & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & e & ~(f)) | (~(b) & ~(c) & d & ~(e) & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & ~(e) & ~(f)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & ~(e) & f))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & ~(c) & d & e & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & e & ~(f)) | (~(a) & ~(c) & d & ~(e) & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & ~(e) & ~(f)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & ~(e) & f))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((~(a) & ~(b) & d & e & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & e & ~(f)) | (~(a) & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & ~(e) & f))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((a & b & ~(c) & ~(e) & ~(f)) | (a & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((a & b & ~(c) & ~(d) & ~(f)) | (a & ~(b) & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & ~(f)))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & b & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((a & b & ~(c) & ~(d) & ~(e)) | (a & ~(b) & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & b & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & ~(e)))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai33_2 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, f__bar;
	wire int_fwire_0, int_fwire_1;

	not (f__bar, f);
	not (e__bar, e);
	not (d__bar, d);
	and (int_fwire_0, d__bar, e__bar, f__bar);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_1, a__bar, b__bar, c__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & ~(c) & d & e & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & e & ~(f)) | (~(b) & ~(c) & d & ~(e) & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & ~(e) & ~(f)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & ~(e) & f))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & ~(c) & d & e & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & e & ~(f)) | (~(a) & ~(c) & d & ~(e) & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & ~(e) & ~(f)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & ~(e) & f))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((~(a) & ~(b) & d & e & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & e & ~(f)) | (~(a) & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & ~(e) & f))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((a & b & ~(c) & ~(e) & ~(f)) | (a & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((a & b & ~(c) & ~(d) & ~(f)) | (a & ~(b) & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & ~(f)))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & b & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((a & b & ~(c) & ~(d) & ~(e)) | (a & ~(b) & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & b & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & ~(e)))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module oai33_4 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	wire a__bar, b__bar, c__bar;
	wire d__bar, e__bar, f__bar;
	wire int_fwire_0, int_fwire_1;

	not (f__bar, f);
	not (e__bar, e);
	not (d__bar, d);
	and (int_fwire_0, d__bar, e__bar, f__bar);
	not (c__bar, c);
	not (b__bar, b);
	not (a__bar, a);
	and (int_fwire_1, a__bar, b__bar, c__bar);
	or (x, int_fwire_1, int_fwire_0);

	// Timing
	specify
		if ((~(b) & ~(c) & d & e & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & e & ~(f)) | (~(b) & ~(c) & d & ~(e) & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & d & ~(e) & ~(f)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e & f))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & e & ~(f)))
			(a => x) = 0;
		if ((~(b) & ~(c) & ~(d) & ~(e) & f))
			(a => x) = 0;
		ifnone (a => x) = 0;
		if ((~(a) & ~(c) & d & e & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & e & ~(f)) | (~(a) & ~(c) & d & ~(e) & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & d & ~(e) & ~(f)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e & f))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & e & ~(f)))
			(b => x) = 0;
		if ((~(a) & ~(c) & ~(d) & ~(e) & f))
			(b => x) = 0;
		ifnone (b => x) = 0;
		if ((~(a) & ~(b) & d & e & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & e & ~(f)) | (~(a) & ~(b) & d & ~(e) & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & d & ~(e) & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e & f))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & e & ~(f)))
			(c => x) = 0;
		if ((~(a) & ~(b) & ~(d) & ~(e) & f))
			(c => x) = 0;
		ifnone (c => x) = 0;
		if ((a & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((a & b & ~(c) & ~(e) & ~(f)) | (a & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((a & ~(b) & ~(c) & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & c & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & b & ~(c) & ~(e) & ~(f)))
			(d => x) = 0;
		if ((~(a) & ~(b) & c & ~(e) & ~(f)))
			(d => x) = 0;
		ifnone (d => x) = 0;
		if ((a & b & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((a & b & ~(c) & ~(d) & ~(f)) | (a & ~(b) & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & b & c & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & ~(f)))
			(e => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & ~(f)))
			(e => x) = 0;
		ifnone (e => x) = 0;
		if ((a & b & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((a & b & ~(c) & ~(d) & ~(e)) | (a & ~(b) & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((a & ~(b) & ~(c) & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & b & c & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & b & ~(c) & ~(d) & ~(e)))
			(f => x) = 0;
		if ((~(a) & ~(b) & c & ~(d) & ~(e)))
			(f => x) = 0;
		ifnone (f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module or2_0 ( a,b,x );
	output x;
	input a,b;

	// Function
	or (x, a, b);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module or2_1 ( a,b,x );
	output x;
	input a,b;

	// Function
	or (x, a, b);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module or2_2 ( a,b,x );
	output x;
	input a,b;

	// Function
	or (x, a, b);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module or2_4 ( a,b,x );
	output x;
	input a,b;

	// Function
	or (x, a, b);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module or3_0 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	or (x, a, b, c);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module or3_1 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	or (x, a, b, c);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module or3_2 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	or (x, a, b, c);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module or3_4 ( a,b,c,x );
	output x;
	input a,b,c;

	// Function
	or (x, a, b, c);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module or4_0 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	or (x, a, b, c, d);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module or4_1 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	or (x, a, b, c, d);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module or4_2 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	or (x, a, b, c, d);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module or4_4 ( a,b,c,d,x );
	output x;
	input a,b,c,d;

	// Function
	or (x, a, b, c, d);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module or5_0 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	or (x, a, b, c, d, e);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module or5_1 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	or (x, a, b, c, d, e);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module or5_2 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	or (x, a, b, c, d, e);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module or5_4 ( a,b,c,d,e,x );
	output x;
	input a,b,c,d,e;

	// Function
	or (x, a, b, c, d, e);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module or6_0 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	or (x, a, b, c, d, e, f);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
		(f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module or6_1 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	or (x, a, b, c, d, e, f);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
		(f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module or6_2 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	or (x, a, b, c, d, e, f);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
		(f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module or6_4 ( a,b,c,d,e,f,x );
	output x;
	input a,b,c,d,e,f;

	// Function
	or (x, a, b, c, d, e, f);

	// Timing
	specify
		(a => x) = 0;
		(b => x) = 0;
		(c => x) = 0;
		(d => x) = 0;
		(e => x) = 0;
		(f => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module proberbuf (a);
	input a;
	// Timing
	specify
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffn_0 ( ckb,d,sdi,se,q,qb );
	output q,qb;
	input ckb,d,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ckb;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_clk, int_fwire_d, int_fwire_Iq;
	wire int_fwire_Iqb, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_clk, delayed_ckb);
	altos_dff_err (xcr_0, int_fwire_clk, int_fwire_d);
	altos_dff (int_fwire_Iq, notifier, int_fwire_clk, int_fwire_d, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(negedge ckb => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		(negedge ckb => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, posedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, negedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, posedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$setuphold (negedge ckb, negedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffn_1 ( ckb,d,sdi,se,q,qb );
	output q,qb;
	input ckb,d,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ckb;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_clk, int_fwire_d, int_fwire_Iq;
	wire int_fwire_Iqb, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_clk, delayed_ckb);
	altos_dff_err (xcr_0, int_fwire_clk, int_fwire_d);
	altos_dff (int_fwire_Iq, notifier, int_fwire_clk, int_fwire_d, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(negedge ckb => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		(negedge ckb => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, posedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, negedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, posedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$setuphold (negedge ckb, negedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffn_2 ( ckb,d,sdi,se,q,qb );
	output q,qb;
	input ckb,d,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ckb;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_clk, int_fwire_d, int_fwire_Iq;
	wire int_fwire_Iqb, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_clk, delayed_ckb);
	altos_dff_err (xcr_0, int_fwire_clk, int_fwire_d);
	altos_dff (int_fwire_Iq, notifier, int_fwire_clk, int_fwire_d, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(negedge ckb => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		(negedge ckb => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, posedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, negedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, posedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$setuphold (negedge ckb, negedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffn_4 ( ckb,d,sdi,se,q,qb );
	output q,qb;
	input ckb,d,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ckb;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_clk, int_fwire_d, int_fwire_Iq;
	wire int_fwire_Iqb, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_clk, delayed_ckb);
	altos_dff_err (xcr_0, int_fwire_clk, int_fwire_d);
	altos_dff (int_fwire_Iq, notifier, int_fwire_clk, int_fwire_d, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(negedge ckb => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		(negedge ckb => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, posedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, negedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, posedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$setuphold (negedge ckb, negedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffnr_0 ( ckb,d,rb,sdi,se,q,qb );
	output q,qb;
	input ckb,d,rb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ckb;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_clk, int_fwire_d, int_fwire_Iq;
	wire int_fwire_Iqb, int_fwire_r, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_r, rb);
	altos_dff_r_err (xcr_0, int_fwire_clk, int_fwire_d, int_fwire_r);
	altos_dff_r (int_fwire_Iq, notifier, int_fwire_clk, int_fwire_d, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & sdi & ~(se)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & ~(sdi) & se) | (ckb & ~(d) & sdi & ~(se)) | (ckb & ~(d) & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & ~(sdi) & ~(se)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & ~(d) & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if (~(ckb))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(negedge ckb => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if ((ckb & d & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & sdi & ~(se)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & ~(sdi) & se) | (ckb & ~(d) & sdi & ~(se)) | (ckb & ~(d) & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & ~(sdi) & ~(se)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & ~(d) & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if (~(ckb))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(negedge ckb => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, posedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, negedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, posedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$setuphold (negedge ckb, negedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$recovery (posedge rb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffnr_1 ( ckb,d,rb,sdi,se,q,qb );
	output q,qb;
	input ckb,d,rb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ckb;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_clk, int_fwire_d, int_fwire_Iq;
	wire int_fwire_Iqb, int_fwire_r, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_r, rb);
	altos_dff_r_err (xcr_0, int_fwire_clk, int_fwire_d, int_fwire_r);
	altos_dff_r (int_fwire_Iq, notifier, int_fwire_clk, int_fwire_d, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & sdi & ~(se)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & ~(sdi) & se) | (ckb & ~(d) & sdi & ~(se)) | (ckb & ~(d) & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & ~(sdi) & ~(se)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & ~(d) & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if (~(ckb))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(negedge ckb => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if ((ckb & d & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & sdi & ~(se)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & ~(sdi) & se) | (ckb & ~(d) & sdi & ~(se)) | (ckb & ~(d) & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & ~(sdi) & ~(se)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & ~(d) & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if (~(ckb))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(negedge ckb => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, posedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, negedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, posedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$setuphold (negedge ckb, negedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$recovery (posedge rb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffnr_2 ( ckb,d,rb,sdi,se,q,qb );
	output q,qb;
	input ckb,d,rb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ckb;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_clk, int_fwire_d, int_fwire_Iq;
	wire int_fwire_Iqb, int_fwire_r, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_r, rb);
	altos_dff_r_err (xcr_0, int_fwire_clk, int_fwire_d, int_fwire_r);
	altos_dff_r (int_fwire_Iq, notifier, int_fwire_clk, int_fwire_d, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & sdi & ~(se)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & ~(sdi) & se) | (ckb & ~(d) & sdi & ~(se)) | (ckb & ~(d) & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & ~(sdi) & ~(se)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & ~(d) & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if (~(ckb))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(negedge ckb => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if ((ckb & d & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & sdi & ~(se)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & ~(sdi) & se) | (ckb & ~(d) & sdi & ~(se)) | (ckb & ~(d) & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & ~(sdi) & ~(se)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & ~(d) & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if (~(ckb))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(negedge ckb => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, posedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, negedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, posedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$setuphold (negedge ckb, negedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$recovery (posedge rb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffnr_4 ( ckb,d,rb,sdi,se,q,qb );
	output q,qb;
	input ckb,d,rb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ckb;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_clk, int_fwire_d, int_fwire_Iq;
	wire int_fwire_Iqb, int_fwire_r, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_r, rb);
	altos_dff_r_err (xcr_0, int_fwire_clk, int_fwire_d, int_fwire_r);
	altos_dff_r (int_fwire_Iq, notifier, int_fwire_clk, int_fwire_d, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & sdi & ~(se)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & ~(sdi) & se) | (ckb & ~(d) & sdi & ~(se)) | (ckb & ~(d) & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & ~(sdi) & ~(se)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & ~(d) & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if (~(ckb))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(negedge ckb => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if ((ckb & d & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & sdi & ~(se)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & ~(sdi) & se) | (ckb & ~(d) & sdi & ~(se)) | (ckb & ~(d) & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & ~(sdi) & ~(se)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & ~(d) & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if (~(ckb))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(negedge ckb => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, posedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, negedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, posedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$setuphold (negedge ckb, negedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$recovery (posedge rb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffnrs_0 ( ckb,d,rb,sb,sdi,se,q,qb );
	output q,qb;
	input ckb,d,rb,sb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_rb, delayed_sb, delayed_ckb;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_clk, int_fwire_d, int_fwire_Iq;
	wire int_fwire_Iqb, int_fwire_r, int_fwire_s;
	wire xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_dff_sr_err (xcr_0, int_fwire_clk, int_fwire_d, int_fwire_s, int_fwire_r);
	altos_dff_sr_0 (int_fwire_Iq, notifier, int_fwire_clk, int_fwire_d, int_fwire_s, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d & sb & sdi) | (ckb & d & sb & ~(sdi) & ~(se)) | (ckb & ~(d) & sb & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & sb & ~(sdi) & se) | (ckb & ~(d) & sb & sdi & ~(se)) | (ckb & ~(d) & sb & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & ~(sb) & sdi) | (ckb & d & ~(sb) & ~(sdi) & ~(se)) | (ckb & ~(d) & ~(sb) & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & ~(sb) & ~(sdi) & se) | (ckb & ~(d) & ~(sb) & sdi & ~(se)) | (ckb & ~(d) & ~(sb) & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ckb) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ckb) & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & rb & sdi) | (ckb & d & rb & ~(sdi) & ~(se)) | (ckb & ~(d) & rb & sdi & se))
			(negedge sb => (q+:1'b1)) = 0;
		if ((ckb & d & rb & ~(sdi) & se) | (ckb & ~(d) & rb & sdi & ~(se)) | (ckb & ~(d) & rb & ~(sdi)))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ckb) & rb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge ckb => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if ((ckb & d & sb & sdi) | (ckb & d & sb & ~(sdi) & ~(se)) | (ckb & ~(d) & sb & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & sb & ~(sdi) & se) | (ckb & ~(d) & sb & sdi & ~(se)) | (ckb & ~(d) & sb & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & ~(sb) & sdi) | (ckb & d & ~(sb) & ~(sdi) & ~(se)) | (ckb & ~(d) & ~(sb) & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & ~(sb) & ~(sdi) & se) | (ckb & ~(d) & ~(sb) & sdi & ~(se)) | (ckb & ~(d) & ~(sb) & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ckb) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ckb) & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & rb & sdi) | (ckb & d & rb & ~(sdi) & ~(se)) | (ckb & ~(d) & rb & sdi & se))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((ckb & d & rb & ~(sdi) & se) | (ckb & ~(d) & rb & sdi & ~(se)) | (ckb & ~(d) & rb & ~(sdi)))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ckb) & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge ckb => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, posedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, negedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, posedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$setuphold (negedge ckb, negedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$recovery (posedge rb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge rb, 0, notifier);
		$recovery (posedge sb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffnrs_1 ( ckb,d,rb,sb,sdi,se,q,qb );
	output q,qb;
	input ckb,d,rb,sb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_rb, delayed_sb, delayed_ckb;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_clk, int_fwire_d, int_fwire_Iq;
	wire int_fwire_Iqb, int_fwire_r, int_fwire_s;
	wire xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_dff_sr_err (xcr_0, int_fwire_clk, int_fwire_d, int_fwire_s, int_fwire_r);
	altos_dff_sr_0 (int_fwire_Iq, notifier, int_fwire_clk, int_fwire_d, int_fwire_s, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d & sb & sdi) | (ckb & d & sb & ~(sdi) & ~(se)) | (ckb & ~(d) & sb & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & sb & ~(sdi) & se) | (ckb & ~(d) & sb & sdi & ~(se)) | (ckb & ~(d) & sb & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & ~(sb) & sdi) | (ckb & d & ~(sb) & ~(sdi) & ~(se)) | (ckb & ~(d) & ~(sb) & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & ~(sb) & ~(sdi) & se) | (ckb & ~(d) & ~(sb) & sdi & ~(se)) | (ckb & ~(d) & ~(sb) & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ckb) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ckb) & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & rb & sdi) | (ckb & d & rb & ~(sdi) & ~(se)) | (ckb & ~(d) & rb & sdi & se))
			(negedge sb => (q+:1'b1)) = 0;
		if ((ckb & d & rb & ~(sdi) & se) | (ckb & ~(d) & rb & sdi & ~(se)) | (ckb & ~(d) & rb & ~(sdi)))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ckb) & rb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge ckb => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if ((ckb & d & sb & sdi) | (ckb & d & sb & ~(sdi) & ~(se)) | (ckb & ~(d) & sb & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & sb & ~(sdi) & se) | (ckb & ~(d) & sb & sdi & ~(se)) | (ckb & ~(d) & sb & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & ~(sb) & sdi) | (ckb & d & ~(sb) & ~(sdi) & ~(se)) | (ckb & ~(d) & ~(sb) & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & ~(sb) & ~(sdi) & se) | (ckb & ~(d) & ~(sb) & sdi & ~(se)) | (ckb & ~(d) & ~(sb) & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ckb) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ckb) & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & rb & sdi) | (ckb & d & rb & ~(sdi) & ~(se)) | (ckb & ~(d) & rb & sdi & se))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((ckb & d & rb & ~(sdi) & se) | (ckb & ~(d) & rb & sdi & ~(se)) | (ckb & ~(d) & rb & ~(sdi)))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ckb) & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge ckb => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, posedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, negedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, posedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$setuphold (negedge ckb, negedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$recovery (posedge rb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge rb, 0, notifier);
		$recovery (posedge sb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffnrs_2 ( ckb,d,rb,sb,sdi,se,q,qb );
	output q,qb;
	input ckb,d,rb,sb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_rb, delayed_sb, delayed_ckb;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_clk, int_fwire_d, int_fwire_Iq;
	wire int_fwire_Iqb, int_fwire_r, int_fwire_s;
	wire xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_dff_sr_err (xcr_0, int_fwire_clk, int_fwire_d, int_fwire_s, int_fwire_r);
	altos_dff_sr_0 (int_fwire_Iq, notifier, int_fwire_clk, int_fwire_d, int_fwire_s, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d & sb & sdi) | (ckb & d & sb & ~(sdi) & ~(se)) | (ckb & ~(d) & sb & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & sb & ~(sdi) & se) | (ckb & ~(d) & sb & sdi & ~(se)) | (ckb & ~(d) & sb & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & ~(sb) & sdi) | (ckb & d & ~(sb) & ~(sdi) & ~(se)) | (ckb & ~(d) & ~(sb) & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & ~(sb) & ~(sdi) & se) | (ckb & ~(d) & ~(sb) & sdi & ~(se)) | (ckb & ~(d) & ~(sb) & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ckb) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ckb) & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & rb & sdi) | (ckb & d & rb & ~(sdi) & ~(se)) | (ckb & ~(d) & rb & sdi & se))
			(negedge sb => (q+:1'b1)) = 0;
		if ((ckb & d & rb & ~(sdi) & se) | (ckb & ~(d) & rb & sdi & ~(se)) | (ckb & ~(d) & rb & ~(sdi)))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ckb) & rb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge ckb => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if ((ckb & d & sb & sdi) | (ckb & d & sb & ~(sdi) & ~(se)) | (ckb & ~(d) & sb & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & sb & ~(sdi) & se) | (ckb & ~(d) & sb & sdi & ~(se)) | (ckb & ~(d) & sb & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & ~(sb) & sdi) | (ckb & d & ~(sb) & ~(sdi) & ~(se)) | (ckb & ~(d) & ~(sb) & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & ~(sb) & ~(sdi) & se) | (ckb & ~(d) & ~(sb) & sdi & ~(se)) | (ckb & ~(d) & ~(sb) & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ckb) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ckb) & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & rb & sdi) | (ckb & d & rb & ~(sdi) & ~(se)) | (ckb & ~(d) & rb & sdi & se))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((ckb & d & rb & ~(sdi) & se) | (ckb & ~(d) & rb & sdi & ~(se)) | (ckb & ~(d) & rb & ~(sdi)))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ckb) & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge ckb => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, posedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, negedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, posedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$setuphold (negedge ckb, negedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$recovery (posedge rb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge rb, 0, notifier);
		$recovery (posedge sb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffnrs_4 ( ckb,d,rb,sb,sdi,se,q,qb );
	output q,qb;
	input ckb,d,rb,sb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_rb, delayed_sb, delayed_ckb;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_clk, int_fwire_d, int_fwire_Iq;
	wire int_fwire_Iqb, int_fwire_r, int_fwire_s;
	wire xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_dff_sr_err (xcr_0, int_fwire_clk, int_fwire_d, int_fwire_s, int_fwire_r);
	altos_dff_sr_0 (int_fwire_Iq, notifier, int_fwire_clk, int_fwire_d, int_fwire_s, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d & sb & sdi) | (ckb & d & sb & ~(sdi) & ~(se)) | (ckb & ~(d) & sb & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & sb & ~(sdi) & se) | (ckb & ~(d) & sb & sdi & ~(se)) | (ckb & ~(d) & sb & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & ~(sb) & sdi) | (ckb & d & ~(sb) & ~(sdi) & ~(se)) | (ckb & ~(d) & ~(sb) & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & ~(sb) & ~(sdi) & se) | (ckb & ~(d) & ~(sb) & sdi & ~(se)) | (ckb & ~(d) & ~(sb) & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ckb) & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ckb) & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((ckb & d & rb & sdi) | (ckb & d & rb & ~(sdi) & ~(se)) | (ckb & ~(d) & rb & sdi & se))
			(negedge sb => (q+:1'b1)) = 0;
		if ((ckb & d & rb & ~(sdi) & se) | (ckb & ~(d) & rb & sdi & ~(se)) | (ckb & ~(d) & rb & ~(sdi)))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ckb) & rb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge ckb => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if ((ckb & d & sb & sdi) | (ckb & d & sb & ~(sdi) & ~(se)) | (ckb & ~(d) & sb & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & sb & ~(sdi) & se) | (ckb & ~(d) & sb & sdi & ~(se)) | (ckb & ~(d) & sb & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & ~(sb) & sdi) | (ckb & d & ~(sb) & ~(sdi) & ~(se)) | (ckb & ~(d) & ~(sb) & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & ~(sb) & ~(sdi) & se) | (ckb & ~(d) & ~(sb) & sdi & ~(se)) | (ckb & ~(d) & ~(sb) & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ckb) & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ckb) & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((ckb & d & rb & sdi) | (ckb & d & rb & ~(sdi) & ~(se)) | (ckb & ~(d) & rb & sdi & se))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((ckb & d & rb & ~(sdi) & se) | (ckb & ~(d) & rb & sdi & ~(se)) | (ckb & ~(d) & rb & ~(sdi)))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ckb) & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge ckb => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, posedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, negedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, posedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$setuphold (negedge ckb, negedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$recovery (posedge rb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge rb, 0, notifier);
		$recovery (posedge sb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffns_0 ( ckb,d,sb,sdi,se,q,qb );
	output q,qb;
	input ckb,d,sb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ckb;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_clk, int_fwire_d, int_fwire_Iq;
	wire int_fwire_Iqb, int_fwire_s, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_s, sb);
	altos_dff_s_err (xcr_0, int_fwire_clk, int_fwire_d, int_fwire_s);
	altos_dff_s (int_fwire_Iq, notifier, int_fwire_clk, int_fwire_d, int_fwire_s, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d & sdi) | (ckb & d & ~(sdi) & ~(se)) | (ckb & ~(d) & sdi & se))
			(negedge sb => (q+:1'b1)) = 0;
		if ((ckb & d & ~(sdi) & se) | (ckb & ~(d) & sdi & ~(se)) | (ckb & ~(d) & ~(sdi)))
			(negedge sb => (q+:1'b1)) = 0;
		if (~(ckb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge ckb => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if ((ckb & d & sdi) | (ckb & d & ~(sdi) & ~(se)) | (ckb & ~(d) & sdi & se))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((ckb & d & ~(sdi) & se) | (ckb & ~(d) & sdi & ~(se)) | (ckb & ~(d) & ~(sdi)))
			(negedge sb => (qb-:1'b1)) = 0;
		if (~(ckb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge ckb => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, posedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, negedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, posedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$setuphold (negedge ckb, negedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$recovery (posedge sb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffns_1 ( ckb,d,sb,sdi,se,q,qb );
	output q,qb;
	input ckb,d,sb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ckb;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_clk, int_fwire_d, int_fwire_Iq;
	wire int_fwire_Iqb, int_fwire_s, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_s, sb);
	altos_dff_s_err (xcr_0, int_fwire_clk, int_fwire_d, int_fwire_s);
	altos_dff_s (int_fwire_Iq, notifier, int_fwire_clk, int_fwire_d, int_fwire_s, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d & sdi) | (ckb & d & ~(sdi) & ~(se)) | (ckb & ~(d) & sdi & se))
			(negedge sb => (q+:1'b1)) = 0;
		if ((ckb & d & ~(sdi) & se) | (ckb & ~(d) & sdi & ~(se)) | (ckb & ~(d) & ~(sdi)))
			(negedge sb => (q+:1'b1)) = 0;
		if (~(ckb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge ckb => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if ((ckb & d & sdi) | (ckb & d & ~(sdi) & ~(se)) | (ckb & ~(d) & sdi & se))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((ckb & d & ~(sdi) & se) | (ckb & ~(d) & sdi & ~(se)) | (ckb & ~(d) & ~(sdi)))
			(negedge sb => (qb-:1'b1)) = 0;
		if (~(ckb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge ckb => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, posedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, negedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, posedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$setuphold (negedge ckb, negedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$recovery (posedge sb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffns_2 ( ckb,d,sb,sdi,se,q,qb );
	output q,qb;
	input ckb,d,sb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ckb;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_clk, int_fwire_d, int_fwire_Iq;
	wire int_fwire_Iqb, int_fwire_s, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_s, sb);
	altos_dff_s_err (xcr_0, int_fwire_clk, int_fwire_d, int_fwire_s);
	altos_dff_s (int_fwire_Iq, notifier, int_fwire_clk, int_fwire_d, int_fwire_s, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d & sdi) | (ckb & d & ~(sdi) & ~(se)) | (ckb & ~(d) & sdi & se))
			(negedge sb => (q+:1'b1)) = 0;
		if ((ckb & d & ~(sdi) & se) | (ckb & ~(d) & sdi & ~(se)) | (ckb & ~(d) & ~(sdi)))
			(negedge sb => (q+:1'b1)) = 0;
		if (~(ckb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge ckb => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if ((ckb & d & sdi) | (ckb & d & ~(sdi) & ~(se)) | (ckb & ~(d) & sdi & se))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((ckb & d & ~(sdi) & se) | (ckb & ~(d) & sdi & ~(se)) | (ckb & ~(d) & ~(sdi)))
			(negedge sb => (qb-:1'b1)) = 0;
		if (~(ckb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge ckb => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, posedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, negedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, posedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$setuphold (negedge ckb, negedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$recovery (posedge sb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffns_4 ( ckb,d,sb,sdi,se,q,qb );
	output q,qb;
	input ckb,d,sb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ckb;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_clk, int_fwire_d, int_fwire_Iq;
	wire int_fwire_Iqb, int_fwire_s, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_clk, delayed_ckb);
	not (int_fwire_s, sb);
	altos_dff_s_err (xcr_0, int_fwire_clk, int_fwire_d, int_fwire_s);
	altos_dff_s (int_fwire_Iq, notifier, int_fwire_clk, int_fwire_d, int_fwire_s, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ckb & d & sdi) | (ckb & d & ~(sdi) & ~(se)) | (ckb & ~(d) & sdi & se))
			(negedge sb => (q+:1'b1)) = 0;
		if ((ckb & d & ~(sdi) & se) | (ckb & ~(d) & sdi & ~(se)) | (ckb & ~(d) & ~(sdi)))
			(negedge sb => (q+:1'b1)) = 0;
		if (~(ckb))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(negedge ckb => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if ((ckb & d & sdi) | (ckb & d & ~(sdi) & ~(se)) | (ckb & ~(d) & sdi & se))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((ckb & d & ~(sdi) & se) | (ckb & ~(d) & sdi & ~(se)) | (ckb & ~(d) & ~(sdi)))
			(negedge sb => (qb-:1'b1)) = 0;
		if (~(ckb))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(negedge ckb => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (negedge ckb, posedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, negedge d, 0, 0, notifier,,, delayed_ckb, delayed_d);
		$setuphold (negedge ckb, posedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, negedge sdi, 0, 0, notifier,,, delayed_ckb, delayed_sdi);
		$setuphold (negedge ckb, posedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$setuphold (negedge ckb, negedge se, 0, 0, notifier,,, delayed_ckb, delayed_se);
		$recovery (posedge sb, negedge ckb, 0, notifier);
		$hold (negedge ckb, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ckb, 0, 0, notifier);
		$width (negedge ckb, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffp_0 ( ck,d,sdi,se,q,qb );
	output q,qb;
	input ck,d,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ck;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_d, int_fwire_Iq, int_fwire_Iqb;
	wire xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	altos_dff_err (xcr_0, delayed_ck, int_fwire_d);
	altos_dff (int_fwire_Iq, notifier, delayed_ck, int_fwire_d, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(posedge ck => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		(posedge ck => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, posedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, negedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, posedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$setuphold (posedge ck, negedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffp_1 ( ck,d,sdi,se,q,qb );
	output q,qb;
	input ck,d,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ck;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_d, int_fwire_Iq, int_fwire_Iqb;
	wire xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	altos_dff_err (xcr_0, delayed_ck, int_fwire_d);
	altos_dff (int_fwire_Iq, notifier, delayed_ck, int_fwire_d, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(posedge ck => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		(posedge ck => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, posedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, negedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, posedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$setuphold (posedge ck, negedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffp_2 ( ck,d,sdi,se,q,qb );
	output q,qb;
	input ck,d,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ck;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_d, int_fwire_Iq, int_fwire_Iqb;
	wire xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	altos_dff_err (xcr_0, delayed_ck, int_fwire_d);
	altos_dff (int_fwire_Iq, notifier, delayed_ck, int_fwire_d, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(posedge ck => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		(posedge ck => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, posedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, negedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, posedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$setuphold (posedge ck, negedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffp_4 ( ck,d,sdi,se,q,qb );
	output q,qb;
	input ck,d,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ck;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_d, int_fwire_Iq, int_fwire_Iqb;
	wire xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	altos_dff_err (xcr_0, delayed_ck, int_fwire_d);
	altos_dff (int_fwire_Iq, notifier, delayed_ck, int_fwire_d, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		(posedge ck => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		(posedge ck => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, posedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, negedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, posedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$setuphold (posedge ck, negedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffpr_0 ( ck,d,rb,sdi,se,q,qb );
	output q,qb;
	input ck,d,rb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ck;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_d, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_r, rb);
	altos_dff_r_err (xcr_0, delayed_ck, int_fwire_d, int_fwire_r);
	altos_dff_r (int_fwire_Iq, notifier, delayed_ck, int_fwire_d, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if (ck)
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & sdi & ~(se)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & ~(sdi) & se) | (~(ck) & ~(d) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & ~(sdi) & ~(se)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & ~(d) & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(posedge ck => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if (ck)
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & sdi & ~(se)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & ~(sdi) & se) | (~(ck) & ~(d) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & ~(sdi) & ~(se)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & ~(d) & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(posedge ck => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, posedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, negedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, posedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$setuphold (posedge ck, negedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$recovery (posedge rb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffpr_1 ( ck,d,rb,sdi,se,q,qb );
	output q,qb;
	input ck,d,rb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ck;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_d, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_r, rb);
	altos_dff_r_err (xcr_0, delayed_ck, int_fwire_d, int_fwire_r);
	altos_dff_r (int_fwire_Iq, notifier, delayed_ck, int_fwire_d, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if (ck)
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & sdi & ~(se)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & ~(sdi) & se) | (~(ck) & ~(d) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & ~(sdi) & ~(se)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & ~(d) & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(posedge ck => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if (ck)
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & sdi & ~(se)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & ~(sdi) & se) | (~(ck) & ~(d) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & ~(sdi) & ~(se)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & ~(d) & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(posedge ck => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, posedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, negedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, posedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$setuphold (posedge ck, negedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$recovery (posedge rb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffpr_2 ( ck,d,rb,sdi,se,q,qb );
	output q,qb;
	input ck,d,rb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ck;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_d, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_r, rb);
	altos_dff_r_err (xcr_0, delayed_ck, int_fwire_d, int_fwire_r);
	altos_dff_r (int_fwire_Iq, notifier, delayed_ck, int_fwire_d, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if (ck)
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & sdi & ~(se)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & ~(sdi) & se) | (~(ck) & ~(d) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & ~(sdi) & ~(se)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & ~(d) & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(posedge ck => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if (ck)
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & sdi & ~(se)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & ~(sdi) & se) | (~(ck) & ~(d) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & ~(sdi) & ~(se)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & ~(d) & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(posedge ck => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, posedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, negedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, posedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$setuphold (posedge ck, negedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$recovery (posedge rb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffpr_4 ( ck,d,rb,sdi,se,q,qb );
	output q,qb;
	input ck,d,rb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ck;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_d, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_r, rb);
	altos_dff_r_err (xcr_0, delayed_ck, int_fwire_d, int_fwire_r);
	altos_dff_r (int_fwire_Iq, notifier, delayed_ck, int_fwire_d, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if (ck)
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & sdi & ~(se)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & ~(sdi) & se) | (~(ck) & ~(d) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & ~(sdi) & ~(se)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & ~(d) & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		(posedge ck => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if (ck)
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & sdi & ~(se)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & ~(sdi) & se) | (~(ck) & ~(d) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & ~(sdi) & ~(se)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & ~(d) & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		(posedge ck => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, posedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, negedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, posedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$setuphold (posedge ck, negedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$recovery (posedge rb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge rb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffprs_0 ( ck,d,rb,sb,sdi,se,q,qb );
	output q,qb;
	input ck,d,rb,sb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_rb, delayed_sb, delayed_ck;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_d, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r, int_fwire_s, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_dff_sr_err (xcr_0, delayed_ck, int_fwire_d, int_fwire_s, int_fwire_r);
	altos_dff_sr_0 (int_fwire_Iq, notifier, delayed_ck, int_fwire_d, int_fwire_s, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ck & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ck & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & sb & sdi) | (~(ck) & d & sb & ~(sdi) & ~(se)) | (~(ck) & ~(d) & sb & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & sb & ~(sdi) & se) | (~(ck) & ~(d) & sb & sdi & ~(se)) | (~(ck) & ~(d) & sb & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & ~(sb) & sdi) | (~(ck) & d & ~(sb) & ~(sdi) & ~(se)) | (~(ck) & ~(d) & ~(sb) & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & ~(sb) & ~(sdi) & se) | (~(ck) & ~(d) & ~(sb) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sb) & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((ck & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d & rb & sdi) | (~(ck) & d & rb & ~(sdi) & ~(se)) | (~(ck) & ~(d) & rb & sdi & se))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d & rb & ~(sdi) & se) | (~(ck) & ~(d) & rb & sdi & ~(se)) | (~(ck) & ~(d) & rb & ~(sdi)))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge ck => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if ((ck & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ck & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & sb & sdi) | (~(ck) & d & sb & ~(sdi) & ~(se)) | (~(ck) & ~(d) & sb & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & sb & ~(sdi) & se) | (~(ck) & ~(d) & sb & sdi & ~(se)) | (~(ck) & ~(d) & sb & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & ~(sb) & sdi) | (~(ck) & d & ~(sb) & ~(sdi) & ~(se)) | (~(ck) & ~(d) & ~(sb) & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & ~(sb) & ~(sdi) & se) | (~(ck) & ~(d) & ~(sb) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sb) & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((ck & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d & rb & sdi) | (~(ck) & d & rb & ~(sdi) & ~(se)) | (~(ck) & ~(d) & rb & sdi & se))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d & rb & ~(sdi) & se) | (~(ck) & ~(d) & rb & sdi & ~(se)) | (~(ck) & ~(d) & rb & ~(sdi)))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge ck => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, posedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, negedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, posedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$setuphold (posedge ck, negedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$recovery (posedge rb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge rb, 0, notifier);
		$recovery (posedge sb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffprs_1 ( ck,d,rb,sb,sdi,se,q,qb );
	output q,qb;
	input ck,d,rb,sb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_rb, delayed_sb, delayed_ck;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_d, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r, int_fwire_s, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_dff_sr_err (xcr_0, delayed_ck, int_fwire_d, int_fwire_s, int_fwire_r);
	altos_dff_sr_0 (int_fwire_Iq, notifier, delayed_ck, int_fwire_d, int_fwire_s, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ck & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ck & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & sb & sdi) | (~(ck) & d & sb & ~(sdi) & ~(se)) | (~(ck) & ~(d) & sb & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & sb & ~(sdi) & se) | (~(ck) & ~(d) & sb & sdi & ~(se)) | (~(ck) & ~(d) & sb & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & ~(sb) & sdi) | (~(ck) & d & ~(sb) & ~(sdi) & ~(se)) | (~(ck) & ~(d) & ~(sb) & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & ~(sb) & ~(sdi) & se) | (~(ck) & ~(d) & ~(sb) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sb) & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((ck & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d & rb & sdi) | (~(ck) & d & rb & ~(sdi) & ~(se)) | (~(ck) & ~(d) & rb & sdi & se))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d & rb & ~(sdi) & se) | (~(ck) & ~(d) & rb & sdi & ~(se)) | (~(ck) & ~(d) & rb & ~(sdi)))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge ck => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if ((ck & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ck & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & sb & sdi) | (~(ck) & d & sb & ~(sdi) & ~(se)) | (~(ck) & ~(d) & sb & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & sb & ~(sdi) & se) | (~(ck) & ~(d) & sb & sdi & ~(se)) | (~(ck) & ~(d) & sb & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & ~(sb) & sdi) | (~(ck) & d & ~(sb) & ~(sdi) & ~(se)) | (~(ck) & ~(d) & ~(sb) & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & ~(sb) & ~(sdi) & se) | (~(ck) & ~(d) & ~(sb) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sb) & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((ck & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d & rb & sdi) | (~(ck) & d & rb & ~(sdi) & ~(se)) | (~(ck) & ~(d) & rb & sdi & se))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d & rb & ~(sdi) & se) | (~(ck) & ~(d) & rb & sdi & ~(se)) | (~(ck) & ~(d) & rb & ~(sdi)))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge ck => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, posedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, negedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, posedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$setuphold (posedge ck, negedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$recovery (posedge rb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge rb, 0, notifier);
		$recovery (posedge sb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffprs_2 ( ck,d,rb,sb,sdi,se,q,qb );
	output q,qb;
	input ck,d,rb,sb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_rb, delayed_sb, delayed_ck;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_d, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r, int_fwire_s, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_dff_sr_err (xcr_0, delayed_ck, int_fwire_d, int_fwire_s, int_fwire_r);
	altos_dff_sr_0 (int_fwire_Iq, notifier, delayed_ck, int_fwire_d, int_fwire_s, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ck & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ck & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & sb & sdi) | (~(ck) & d & sb & ~(sdi) & ~(se)) | (~(ck) & ~(d) & sb & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & sb & ~(sdi) & se) | (~(ck) & ~(d) & sb & sdi & ~(se)) | (~(ck) & ~(d) & sb & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & ~(sb) & sdi) | (~(ck) & d & ~(sb) & ~(sdi) & ~(se)) | (~(ck) & ~(d) & ~(sb) & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & ~(sb) & ~(sdi) & se) | (~(ck) & ~(d) & ~(sb) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sb) & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((ck & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d & rb & sdi) | (~(ck) & d & rb & ~(sdi) & ~(se)) | (~(ck) & ~(d) & rb & sdi & se))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d & rb & ~(sdi) & se) | (~(ck) & ~(d) & rb & sdi & ~(se)) | (~(ck) & ~(d) & rb & ~(sdi)))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge ck => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if ((ck & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ck & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & sb & sdi) | (~(ck) & d & sb & ~(sdi) & ~(se)) | (~(ck) & ~(d) & sb & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & sb & ~(sdi) & se) | (~(ck) & ~(d) & sb & sdi & ~(se)) | (~(ck) & ~(d) & sb & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & ~(sb) & sdi) | (~(ck) & d & ~(sb) & ~(sdi) & ~(se)) | (~(ck) & ~(d) & ~(sb) & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & ~(sb) & ~(sdi) & se) | (~(ck) & ~(d) & ~(sb) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sb) & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((ck & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d & rb & sdi) | (~(ck) & d & rb & ~(sdi) & ~(se)) | (~(ck) & ~(d) & rb & sdi & se))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d & rb & ~(sdi) & se) | (~(ck) & ~(d) & rb & sdi & ~(se)) | (~(ck) & ~(d) & rb & ~(sdi)))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge ck => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, posedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, negedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, posedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$setuphold (posedge ck, negedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$recovery (posedge rb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge rb, 0, notifier);
		$recovery (posedge sb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffprs_4 ( ck,d,rb,sb,sdi,se,q,qb );
	output q,qb;
	input ck,d,rb,sb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_rb, delayed_sb, delayed_ck;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_d, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_r, int_fwire_s, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_s, delayed_sb);
	not (int_fwire_r, delayed_rb);
	altos_dff_sr_err (xcr_0, delayed_ck, int_fwire_d, int_fwire_s, int_fwire_r);
	altos_dff_sr_0 (int_fwire_Iq, notifier, delayed_ck, int_fwire_d, int_fwire_s, int_fwire_r, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if ((ck & sb))
			(negedge rb => (q+:1'b0)) = 0;
		if ((ck & ~(sb)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & sb & sdi) | (~(ck) & d & sb & ~(sdi) & ~(se)) | (~(ck) & ~(d) & sb & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & sb & ~(sdi) & se) | (~(ck) & ~(d) & sb & sdi & ~(se)) | (~(ck) & ~(d) & sb & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & ~(sb) & sdi) | (~(ck) & d & ~(sb) & ~(sdi) & ~(se)) | (~(ck) & ~(d) & ~(sb) & sdi & se))
			(negedge rb => (q+:1'b0)) = 0;
		if ((~(ck) & d & ~(sb) & ~(sdi) & se) | (~(ck) & ~(d) & ~(sb) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sb) & ~(sdi)))
			(negedge rb => (q+:1'b0)) = 0;
		ifnone (negedge rb => (q+:1'b0)) = 0;
		if ((ck & rb))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d & rb & sdi) | (~(ck) & d & rb & ~(sdi) & ~(se)) | (~(ck) & ~(d) & rb & sdi & se))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d & rb & ~(sdi) & se) | (~(ck) & ~(d) & rb & sdi & ~(se)) | (~(ck) & ~(d) & rb & ~(sdi)))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge ck => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if ((ck & sb))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((ck & ~(sb)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & sb & sdi) | (~(ck) & d & sb & ~(sdi) & ~(se)) | (~(ck) & ~(d) & sb & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & sb & ~(sdi) & se) | (~(ck) & ~(d) & sb & sdi & ~(se)) | (~(ck) & ~(d) & sb & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & ~(sb) & sdi) | (~(ck) & d & ~(sb) & ~(sdi) & ~(se)) | (~(ck) & ~(d) & ~(sb) & sdi & se))
			(negedge rb => (qb-:1'b0)) = 0;
		if ((~(ck) & d & ~(sb) & ~(sdi) & se) | (~(ck) & ~(d) & ~(sb) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sb) & ~(sdi)))
			(negedge rb => (qb-:1'b0)) = 0;
		ifnone (negedge rb => (qb-:1'b0)) = 0;
		if ((ck & rb))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d & rb & sdi) | (~(ck) & d & rb & ~(sdi) & ~(se)) | (~(ck) & ~(d) & rb & sdi & se))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d & rb & ~(sdi) & se) | (~(ck) & ~(d) & rb & sdi & ~(se)) | (~(ck) & ~(d) & rb & ~(sdi)))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge ck => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, posedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, negedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, posedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$setuphold (posedge ck, negedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$setuphold (posedge sb, posedge rb, 0, 0, notifier,,, delayed_sb, delayed_rb);
		$recovery (posedge rb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge rb, 0, notifier);
		$recovery (posedge sb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge sb, 0, notifier);
		$width (negedge rb, 0, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffps_0 ( ck,d,sb,sdi,se,q,qb );
	output q,qb;
	input ck,d,sb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ck;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_d, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_s, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_s, sb);
	altos_dff_s_err (xcr_0, delayed_ck, int_fwire_d, int_fwire_s);
	altos_dff_s (int_fwire_Iq, notifier, delayed_ck, int_fwire_d, int_fwire_s, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if (ck)
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d & sdi) | (~(ck) & d & ~(sdi) & ~(se)) | (~(ck) & ~(d) & sdi & se))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d & ~(sdi) & se) | (~(ck) & ~(d) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sdi)))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge ck => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if (ck)
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d & sdi) | (~(ck) & d & ~(sdi) & ~(se)) | (~(ck) & ~(d) & sdi & se))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d & ~(sdi) & se) | (~(ck) & ~(d) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sdi)))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge ck => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, posedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, negedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, posedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$setuphold (posedge ck, negedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$recovery (posedge sb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffps_1 ( ck,d,sb,sdi,se,q,qb );
	output q,qb;
	input ck,d,sb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ck;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_d, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_s, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_s, sb);
	altos_dff_s_err (xcr_0, delayed_ck, int_fwire_d, int_fwire_s);
	altos_dff_s (int_fwire_Iq, notifier, delayed_ck, int_fwire_d, int_fwire_s, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if (ck)
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d & sdi) | (~(ck) & d & ~(sdi) & ~(se)) | (~(ck) & ~(d) & sdi & se))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d & ~(sdi) & se) | (~(ck) & ~(d) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sdi)))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge ck => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if (ck)
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d & sdi) | (~(ck) & d & ~(sdi) & ~(se)) | (~(ck) & ~(d) & sdi & se))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d & ~(sdi) & se) | (~(ck) & ~(d) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sdi)))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge ck => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, posedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, negedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, posedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$setuphold (posedge ck, negedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$recovery (posedge sb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffps_2 ( ck,d,sb,sdi,se,q,qb );
	output q,qb;
	input ck,d,sb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ck;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_d, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_s, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_s, sb);
	altos_dff_s_err (xcr_0, delayed_ck, int_fwire_d, int_fwire_s);
	altos_dff_s (int_fwire_Iq, notifier, delayed_ck, int_fwire_d, int_fwire_s, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if (ck)
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d & sdi) | (~(ck) & d & ~(sdi) & ~(se)) | (~(ck) & ~(d) & sdi & se))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d & ~(sdi) & se) | (~(ck) & ~(d) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sdi)))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge ck => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if (ck)
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d & sdi) | (~(ck) & d & ~(sdi) & ~(se)) | (~(ck) & ~(d) & sdi & se))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d & ~(sdi) & se) | (~(ck) & ~(d) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sdi)))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge ck => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, posedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, negedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, posedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$setuphold (posedge ck, negedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$recovery (posedge sb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module sdffps_4 ( ck,d,sb,sdi,se,q,qb );
	output q,qb;
	input ck,d,sb,sdi,se;
	reg notifier;
	wire delayed_d, delayed_sdi, delayed_se, delayed_ck;

	// Function
	wire delayed_se__bar, int_fwire_0, int_fwire_1;
	wire int_fwire_d, int_fwire_Iq, int_fwire_Iqb;
	wire int_fwire_s, xcr_0;

	and (int_fwire_0, delayed_sdi, delayed_se);
	not (delayed_se__bar, delayed_se);
	and (int_fwire_1, delayed_d, delayed_se__bar);
	or (int_fwire_d, int_fwire_1, int_fwire_0);
	not (int_fwire_s, sb);
	altos_dff_s_err (xcr_0, delayed_ck, int_fwire_d, int_fwire_s);
	altos_dff_s (int_fwire_Iq, notifier, delayed_ck, int_fwire_d, int_fwire_s, xcr_0);
	buf (q, int_fwire_Iq);
	not (int_fwire_Iqb, int_fwire_Iq);
	buf (qb, int_fwire_Iqb);

	// Timing
	specify
		if (ck)
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d & sdi) | (~(ck) & d & ~(sdi) & ~(se)) | (~(ck) & ~(d) & sdi & se))
			(negedge sb => (q+:1'b1)) = 0;
		if ((~(ck) & d & ~(sdi) & se) | (~(ck) & ~(d) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sdi)))
			(negedge sb => (q+:1'b1)) = 0;
		ifnone (negedge sb => (q+:1'b1)) = 0;
		(posedge ck => (q+:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		if (ck)
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d & sdi) | (~(ck) & d & ~(sdi) & ~(se)) | (~(ck) & ~(d) & sdi & se))
			(negedge sb => (qb-:1'b1)) = 0;
		if ((~(ck) & d & ~(sdi) & se) | (~(ck) & ~(d) & sdi & ~(se)) | (~(ck) & ~(d) & ~(sdi)))
			(negedge sb => (qb-:1'b1)) = 0;
		ifnone (negedge sb => (qb-:1'b1)) = 0;
		(posedge ck => (qb-:((d && sdi) || (d && !(sdi) && !(se)) || (!(d) && sdi && se)))) = 0;
		$setuphold (posedge ck, posedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, negedge d, 0, 0, notifier,,, delayed_ck, delayed_d);
		$setuphold (posedge ck, posedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, negedge sdi, 0, 0, notifier,,, delayed_ck, delayed_sdi);
		$setuphold (posedge ck, posedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$setuphold (posedge ck, negedge se, 0, 0, notifier,,, delayed_ck, delayed_se);
		$recovery (posedge sb, posedge ck, 0, notifier);
		$hold (posedge ck, posedge sb, 0, notifier);
		$width (negedge sb, 0, 0, notifier);
		$width (posedge ck, 0, 0, notifier);
		$width (negedge ck, 0, 0, notifier);
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module tbufh_0 ( a,en,x );
	output x;
	input a,en;

	// Function
	bufif1 (x, a, en);

	// Timing
	specify
		(a => x) = 0;
		(en => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module tbufh_1 ( a,en,x );
	output x;
	input a,en;

	// Function
	bufif1 (x, a, en);

	// Timing
	specify
		(a => x) = 0;
		(en => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module tbufh_12 ( a,en,x );
	output x;
	input a,en;

	// Function
	bufif1 (x, a, en);

	// Timing
	specify
		(a => x) = 0;
		(en => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module tbufh_16 ( a,en,x );
	output x;
	input a,en;

	// Function
	bufif1 (x, a, en);

	// Timing
	specify
		(a => x) = 0;
		(en => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module tbufh_2 ( a,en,x );
	output x;
	input a,en;

	// Function
	bufif1 (x, a, en);

	// Timing
	specify
		(a => x) = 0;
		(en => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module tbufh_20 ( a,en,x );
	output x;
	input a,en;

	// Function
	bufif1 (x, a, en);

	// Timing
	specify
		(a => x) = 0;
		(en => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module tbufh_3 ( a,en,x );
	output x;
	input a,en;

	// Function
	bufif1 (x, a, en);

	// Timing
	specify
		(a => x) = 0;
		(en => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module tbufh_4 ( a,en,x );
	output x;
	input a,en;

	// Function
	bufif1 (x, a, en);

	// Timing
	specify
		(a => x) = 0;
		(en => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module tbufh_6 ( a,en,x );
	output x;
	input a,en;

	// Function
	bufif1 (x, a, en);

	// Timing
	specify
		(a => x) = 0;
		(en => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module tbufh_8 ( a,en,x );
	output x;
	input a,en;

	// Function
	bufif1 (x, a, en);

	// Timing
	specify
		(a => x) = 0;
		(en => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module tiehi (x);
	output x;

	// Function
	buf (x, 1'b1);

	// Timing
	specify
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module tielo (x);
	output x;

	// Function
	buf (x, 1'b0);

	// Timing
	specify
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module tinvh_0 ( a,en,x );
	output x;
	input a,en;

	// Function
	notif1 (x, a, en);

	// Timing
	specify
		(a => x) = 0;
		(en => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module tinvh_1 ( a,en,x );
	output x;
	input a,en;

	// Function
	notif1 (x, a, en);

	// Timing
	specify
		(a => x) = 0;
		(en => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module tinvh_12 ( a,en,x );
	output x;
	input a,en;

	// Function
	notif1 (x, a, en);

	// Timing
	specify
		(a => x) = 0;
		(en => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module tinvh_16 ( a,en,x );
	output x;
	input a,en;

	// Function
	notif1 (x, a, en);

	// Timing
	specify
		(a => x) = 0;
		(en => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module tinvh_2 ( a,en,x );
	output x;
	input a,en;

	// Function
	notif1 (x, a, en);

	// Timing
	specify
		(a => x) = 0;
		(en => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module tinvh_20 ( a,en,x );
	output x;
	input a,en;

	// Function
	notif1 (x, a, en);

	// Timing
	specify
		(a => x) = 0;
		(en => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module tinvh_3 ( a,en,x );
	output x;
	input a,en;

	// Function
	notif1 (x, a, en);

	// Timing
	specify
		(a => x) = 0;
		(en => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module tinvh_4 ( a,en,x );
	output x;
	input a,en;

	// Function
	notif1 (x, a, en);

	// Timing
	specify
		(a => x) = 0;
		(en => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module tinvh_6 ( a,en,x );
	output x;
	input a,en;

	// Function
	notif1 (x, a, en);

	// Timing
	specify
		(a => x) = 0;
		(en => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module tinvh_8 ( a,en,x );
	output x;
	input a,en;

	// Function
	notif1 (x, a, en);

	// Timing
	specify
		(a => x) = 0;
		(en => x) = 0;
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module fillercell_1 ();
	// Timing
	specify
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module fillercell_12 ();
	// Timing
	specify
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module fillercell_16 ();
	// Timing
	specify
	endspecify
endmodule
`endcelldefine


// type:  
`timescale 1ns/10ps
`celldefine
module fillercell_2 ();
	// Timing
	specify
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module fillercell_20 ();
	// Timing
	specify
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module fillercell_3 ();
	// Timing
	specify
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module fillercell_4 ();
	// Timing
	specify
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module fillercell_8 ();
	// Timing
	specify
	endspecify
endmodule
`endcelldefine

// type:  
`timescale 1ns/10ps
`celldefine
module prober ( a );
	input a;
	// Timing
	specify
	endspecify
endmodule
`endcelldefine


`ifdef _udp_def_altos_latch_
`else
`define _udp_def_altos_latch_
primitive altos_latch (q, v, clk, d);
	output q;
	reg q;
	input v, clk, d;

	table
		* ? ? : ? : x;
		? 1 0 : ? : 0;
		? 1 1 : ? : 1;
		? x 0 : 0 : -;
		? x 1 : 1 : -;
		? 0 ? : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_err_
`else
`define _udp_def_altos_dff_err_
primitive altos_dff_err (q, clk, d);
	output q;
	reg q;
	input clk, d;

	table
		(0x) ? : ? : 0;
		(1x) ? : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_
`else
`define _udp_def_altos_dff_
primitive altos_dff (q, v, clk, d, xcr);
	output q;
	reg q;
	input v, clk, d, xcr;

	table
		*  ?   ? ? : ? : x;
		? (x1) 0 0 : ? : 0;
		? (x1) 1 0 : ? : 1;
		? (x1) 0 1 : 0 : 0;
		? (x1) 1 1 : 1 : 1;
		? (x1) ? x : ? : -;
		? (bx) 0 ? : 0 : -;
		? (bx) 1 ? : 1 : -;
		? (x0) b ? : ? : -;
		? (x0) ? x : ? : -;
		? (01) 0 ? : ? : 0;
		? (01) 1 ? : ? : 1;
		? (10) ? ? : ? : -;
		?  b   * ? : ? : -;
		?  ?   ? * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_r_err_
`else
`define _udp_def_altos_dff_r_err_
primitive altos_dff_r_err (q, clk, d, r);
	output q;
	reg q;
	input clk, d, r;

	table
		 ?   0 (0x) : ? : -;
		 ?   0 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 0  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 0  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_r_
`else
`define _udp_def_altos_dff_r_
primitive altos_dff_r (q, v, clk, d, r, xcr);
	output q;
	reg q;
	input v, clk, d, r, xcr;

	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 0;
		?  b   ? (1?) ? : 0 : -;
		?  x   0 (1?) ? : 0 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 0 : -;
		? (x1) 0  ?   0 : ? : 0;
		? (x1) 1  0   0 : ? : 1;
		? (x1) 0  ?   1 : 0 : 0;
		? (x1) 1  0   1 : 1 : 1;
		? (x1) ?  ?   x : ? : -;
		? (bx) 0  ?   ? : 0 : -;
		? (bx) 1  0   ? : 1 : -;
		? (x0) 0  ?   ? : ? : -;
		? (x0) 1  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 0  ?   ? : ? : 0;
		? (01) 1  0   ? : ? : 1;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_s_err_
`else
`define _udp_def_altos_dff_s_err_
primitive altos_dff_s_err (q, clk, d, s);
	output q;
	reg q;
	input clk, d, s;

	table
		 ?   1 (0x) : ? : -;
		 ?   1 (x0) : ? : -;
		(0x) ?  0   : ? : 0;
		(0x) 1  x   : ? : 0;
		(1x) ?  0   : ? : 1;
		(1x) 1  x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_s_
`else
`define _udp_def_altos_dff_s_
primitive altos_dff_s (q, v, clk, d, s, xcr);
	output q;
	reg q;
	input v, clk, d, s, xcr;

	table
		*  ?   ?  ?   ? : ? : x;
		?  ?   ?  1   ? : ? : 1;
		?  b   ? (1?) ? : 1 : -;
		?  x   1 (1?) ? : 1 : -;
		?  ?   ? (10) ? : ? : -;
		?  ?   ? (x0) ? : ? : -;
		?  ?   ? (0x) ? : 1 : -;
		? (x1) 0  0   0 : ? : 0;
		? (x1) 1  ?   0 : ? : 1;
		? (x1) 1  ?   1 : 1 : 1;
		? (x1) 0  0   1 : 0 : 0;
		? (x1) ?  ?   x : ? : -;
		? (bx) 1  ?   ? : 1 : -;
		? (bx) 0  0   ? : 0 : -;
		? (x0) 1  ?   ? : ? : -;
		? (x0) 0  0   ? : ? : -;
		? (x0) ?  0   x : ? : -;
		? (01) 1  ?   ? : ? : 1;
		? (01) 0  0   ? : ? : 0;
		? (10) ?  ?   ? : ? : -;
		?  b   *  ?   ? : ? : -;
		?  ?   ?  ?   * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_sr_err_
`else
`define _udp_def_altos_dff_sr_err_
primitive altos_dff_sr_err (q, clk, d, s, r);
	output q;
	reg q;
	input clk, d, s, r;

	table
		 ?   1 (0x)  ?   : ? : -;
		 ?   0  ?   (0x) : ? : -;
		 ?   0  ?   (x0) : ? : -;
		(0x) ?  0    0   : ? : 0;
		(0x) 1  x    0   : ? : 0;
		(0x) 0  0    x   : ? : 0;
		(1x) ?  0    0   : ? : 1;
		(1x) 1  x    0   : ? : 1;
		(1x) 0  0    x   : ? : 1;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_sr_0
`else
`define _udp_def_altos_dff_sr_0
primitive altos_dff_sr_0 (q, v, clk, d, s, r, xcr);
	output q;
	reg q;
	input v, clk, d, s, r, xcr;

	table
	//	v,  clk, d, s, r : q' : q;

		*  ?   ?   ?   ?   ? : ? : x;
		?  ?   ?   ?   1   ? : ? : 0;
		?  ?   ?   1   0   ? : ? : 1;
		?  b   ? (1?)  0   ? : 1 : -;
		?  x   1 (1?)  0   ? : 1 : -;
		?  ?   ? (10)  0   ? : ? : -;
		?  ?   ? (x0)  0   ? : ? : -;
		?  ?   ? (0x)  0   ? : 1 : -;
		?  b   ?  0   (1?) ? : 0 : -;
		?  x   0  0   (1?) ? : 0 : -;
		?  ?   ?  0   (10) ? : ? : -;
		?  ?   ?  0   (x0) ? : ? : -;
		?  ?   ?  0   (0x) ? : 0 : -;
		? (x1) 0  0    ?   0 : ? : 0;
		? (x1) 1  ?    0   0 : ? : 1;
		? (x1) 0  0    ?   1 : 0 : 0;
		? (x1) 1  ?    0   1 : 1 : 1;
		? (x1) ?  ?    0   x : ? : -;
		? (x1) ?  0    ?   x : ? : -;
		? (1x) 0  0    ?   ? : 0 : -;
		? (1x) 1  ?    0   ? : 1 : -;
		? (x0) 0  0    ?   ? : ? : -;
		? (x0) 1  ?    0   ? : ? : -;
		? (x0) ?  0    0   x : ? : -;
		? (0x) 0  0    ?   ? : 0 : -;
		? (0x) 1  ?    0   ? : 1 : -;
		? (01) 0  0    ?   ? : ? : 0;
		? (01) 1  ?    0   ? : ? : 1;
		? (10) ?  0    ?   ? : ? : -;
		? (10) ?  ?    0   ? : ? : -;
		?  b   *  0    ?   ? : ? : -;
		?  b   *  ?    0   ? : ? : -;
		?  ?   ?  ?    ?   * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_dff_sr_1
`else
`define _udp_def_altos_dff_sr_1
primitive altos_dff_sr_1 (q, v, clk, d, s, r, xcr);
	output q;
	reg q;
	input v, clk, d, s, r, xcr;

	table
	//	v,  clk, d, s, r : q' : q;

		*  ?   ?   ?   ?   ? : ? : x;
		?  ?   ?   0   1   ? : ? : 0;
		?  ?   ?   1   ?   ? : ? : 1;
		?  b   ? (1?)  0   ? : 1 : -;
		?  x   1 (1?)  0   ? : 1 : -;
		?  ?   ? (10)  0   ? : ? : -;
		?  ?   ? (x0)  0   ? : ? : -;
		?  ?   ? (0x)  0   ? : 1 : -;
		?  b   ?  0   (1?) ? : 0 : -;
		?  x   0  0   (1?) ? : 0 : -;
		?  ?   ?  0   (10) ? : ? : -;
		?  ?   ?  0   (x0) ? : ? : -;
		?  ?   ?  0   (0x) ? : 0 : -;
		? (x1) 0  0    ?   0 : ? : 0;
		? (x1) 1  ?    0   0 : ? : 1;
		? (x1) 0  0    ?   1 : 0 : 0;
		? (x1) 1  ?    0   1 : 1 : 1;
		? (x1) ?  ?    0   x : ? : -;
		? (x1) ?  0    ?   x : ? : -;
		? (1x) 0  0    ?   ? : 0 : -;
		? (1x) 1  ?    0   ? : 1 : -;
		? (x0) 0  0    ?   ? : ? : -;
		? (x0) 1  ?    0   ? : ? : -;
		? (x0) ?  0    0   x : ? : -;
		? (0x) 0  0    ?   ? : 0 : -;
		? (0x) 1  ?    0   ? : 1 : -;
		? (01) 0  0    ?   ? : ? : 0;
		? (01) 1  ?    0   ? : ? : 1;
		? (10) ?  0    ?   ? : ? : -;
		? (10) ?  ?    0   ? : ? : -;
		?  b   *  0    ?   ? : ? : -;
		?  b   *  ?    0   ? : ? : -;
		?  ?   ?  ?    ?   * : ? : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_r_
`else
`define _udp_def_altos_latch_r_
primitive altos_latch_r (q, v, clk, d, r);
	output q;
	reg q;
	input v, clk, d, r;

	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 0;
		? 0 ? 0 : ? : -;
		? 0 ? x : 0 : -;
		? 1 0 0 : ? : 0;
		? 1 0 x : ? : 0;
		? 1 1 0 : ? : 1;
		? x 0 0 : 0 : -;
		? x 0 x : 0 : -;
		? x 1 0 : 1 : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_s_
`else
`define _udp_def_altos_latch_s_
primitive altos_latch_s (q, v, clk, d, s);
	output q;
	reg q;
	input v, clk, d, s;

	table
		* ? ? ? : ? : x;
		? ? ? 1 : ? : 1;
		? 0 ? 0 : ? : -;
		? 0 ? x : 1 : -;
		? 1 1 0 : ? : 1;
		? 1 1 x : ? : 1;
		? 1 0 0 : ? : 0;
		? x 1 0 : 1 : -;
		? x 1 x : 1 : -;
		? x 0 0 : 0 : -;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_sr_0
`else
`define _udp_def_altos_latch_sr_0
primitive altos_latch_sr_0 (q, v, clk, d, s, r);
	output q;
	reg q;
	input v, clk, d, s, r;

	table
		* ? ? ? ? : ? : x;
		? 1 1 ? 0 : ? : 1;
		? 1 0 0 ? : ? : 0;
		? ? ? 1 0 : ? : 1;
		? ? ? ? 1 : ? : 0;
		? 0 * ? ? : ? : -;
		? 0 ? * 0 : 1 : 1;
		? 0 ? 0 * : 0 : 0;
		? * 1 ? 0 : 1 : 1;
		? * 0 0 ? : 0 : 0;
		? ? 1 * 0 : 1 : 1;
		? ? 0 0 * : 0 : 0;
	endtable
endprimitive
`endif

`ifdef _udp_def_altos_latch_sr_1
`else
`define _udp_def_altos_latch_sr_1
primitive altos_latch_sr_1 (q, v, clk, d, s, r);
	output q;
	reg q;
	input v, clk, d, s, r;

	table
		* ? ? ? ? : ? : x;
		? 1 1 ? 0 : ? : 1;
		? 1 0 0 ? : ? : 0;
		? ? ? 1 ? : ? : 1;
		? ? ? 0 1 : ? : 0;
		? 0 * ? ? : ? : -;
		? 0 ? * 0 : 1 : 1;
		? 0 ? 0 * : 0 : 0;
		? * 1 ? 0 : 1 : 1;
		? * 0 0 ? : 0 : 0;
		? ? 1 * 0 : 1 : 1;
		? ? 0 0 * : 0 : 0;
	endtable
endprimitive
`endif
