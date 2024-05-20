module sigmoid (
	input         clk,
	input         rst_n,
	input         i_in_valid,
	input  [ 7:0] i_x,
	output [15:0] o_y,
	output        o_out_valid,
	output [50:0] number
);

	wire [50:0] num[205:0];

	EO PART00(X0, i_x[0], 1'b1, num[7]);
	EO PART01(X1, i_x[1], 1'b1, num[8]);
	EO PART02(X2, i_x[2], 1'b1, num[9]);
	EO PART03(X3, i_x[3], 1'b1, num[10]);
	EO PART04(X4, i_x[4], 1'b1, num[11]);
	EO PART05(X5, i_x[5], 1'b1, num[12]);
	EO PART06(X6, i_x[6], 1'b1, num[13]);

	HA1 PART10(CK0, L0, X0, 1'b1, num[0]);
	HA1 PART11_inst1 (CK1, L1, X1, CK0, num[1]);
	HA1 PART11_inst2 (CK2, L2, X2, CK1, num[2]);
	HA1 PART11_inst3 (CK3, L3, X3, CK2, num[3]);
	HA1 PART11_inst4 (CK4, L4, X4, CK3, num[4]);
	HA1 PART11_inst5 (CK5, L5, X5, CK4, num[5]);
	HA1 PART11_inst6 (L7, L6, X6, CK5, num[6]);

	AN2 PART30_inst0 (P00, L0, L0, num[15]);
	AN2 PART30_inst1 (P01, L0, L1, num[16]);
	AN2 PART30_inst2 (P02, L0, L2, num[17]);
	AN2 PART30_inst3 (P03, L0, L3, num[18]);
	AN2 PART30_inst4 (P04, L0, L4, num[19]);
	AN2 PART30_inst5 (P05, L0, L5, num[20]);
	AN2 PART30_inst6 (P06, L0, L6, num[21]);
	AN2 PART30_inst7 (P07, L0, L7, num[22]);

	AN2 PART30_inst8 (P10, L1, L0, num[23]);
	AN2 PART30_inst9 (P11, L1, L1, num[24]);
	AN2 PART30_inst10 (P12, L1, L2, num[25]);
	AN2 PART30_inst11 (P13, L1, L3, num[26]);
	AN2 PART30_inst12 (P14, L1, L4, num[27]);
	AN2 PART30_inst13 (P15, L1, L5, num[28]);
	AN2 PART30_inst14 (P16, L1, L6, num[29]);
	AN2 PART30_inst15 (P17, L1, L7, num[30]);

	AN2 PART30_inst16 (P20, L2, L0, num[31]);
	AN2 PART30_inst17 (P21, L2, L1, num[32]);
	AN2 PART30_inst18 (P22, L2, L2, num[33]);
	AN2 PART30_inst19 (P23, L2, L3, num[34]);
	AN2 PART30_inst20 (P24, L2, L4, num[35]);
	AN2 PART30_inst21 (P25, L2, L5, num[36]);
	AN2 PART30_inst22 (P26, L2, L6, num[37]);
	AN2 PART30_inst23 (P27, L2, L7, num[38]);

	AN2 PART30_inst24 (P30, L3, L0, num[39]);
	AN2 PART30_inst25 (P31, L3, L1, num[40]);
	AN2 PART30_inst26 (P32, L3, L2, num[41]);
	AN2 PART30_inst27 (P33, L3, L3, num[42]);
	AN2 PART30_inst28 (P34, L3, L4, num[43]);
	AN2 PART30_inst29 (P35, L3, L5, num[44]);
	AN2 PART30_inst30 (P36, L3, L6, num[45]);
	AN2 PART30_inst31 (P37, L3, L7, num[46]);

	AN2 PART30_inst32 (P40, L4, L0, num[47]);
	AN2 PART30_inst33 (P41, L4, L1, num[48]);
	AN2 PART30_inst34 (P42, L4, L2, num[49]);
	AN2 PART30_inst35 (P43, L4, L3, num[50]);
	AN2 PART30_inst36 (P44, L4, L4, num[51]);
	AN2 PART30_inst37 (P45, L4, L5, num[52]);
	AN2 PART30_inst38 (P46, L4, L6, num[53]);
	AN2 PART30_inst39 (P47, L4, L7, num[54]);

	AN2 PART30_inst40 (P50, L5, L0, num[55]);
	AN2 PART30_inst41 (P51, L5, L1, num[56]);
	AN2 PART30_inst42 (P52, L5, L2, num[57]);
	AN2 PART30_inst43 (P53, L5, L3, num[58]);
	AN2 PART30_inst44 (P54, L5, L4, num[59]);
	AN2 PART30_inst45 (P55, L5, L5, num[60]);
	AN2 PART30_inst46 (P56, L5, L6, num[61]);
	AN2 PART30_inst47 (P57, L5, L7, num[62]);

	AN2 PART30_inst48 (P60, L6, L0, num[63]);
	AN2 PART30_inst49 (P61, L6, L1, num[64]);
	AN2 PART30_inst50 (P62, L6, L2, num[65]);
	AN2 PART30_inst51 (P63, L6, L3, num[66]);
	AN2 PART30_inst52 (P64, L6, L4, num[67]);
	AN2 PART30_inst53 (P65, L6, L5, num[68]);
	AN2 PART30_inst54 (P66, L6, L6, num[69]);
	AN2 PART30_inst55 (P67, L6, L7, num[70]);

	AN2 PART30_inst56 (P70, L7, L0, num[71]);
	AN2 PART30_inst57 (P71, L7, L1, num[72]);
	AN2 PART30_inst58 (P72, L7, L2, num[73]);
	AN2 PART30_inst59 (P73, L7, L3, num[74]);
	AN2 PART30_inst60 (P74, L7, L4, num[75]);
	AN2 PART30_inst61 (P75, L7, L5, num[76]);
	AN2 PART30_inst62 (P76, L7, L6, num[77]);
	AN2 PART30_inst63 (P77, L7, L7, num[78]);


	

	HA1 PART31(CH11, PP1, P10, P01, num[79]);

	FA1 PART32(CF12, SF11, P11, P20, CH11, num[80]);
	HA1 PART33(CH21, PP2, P02, SF11, num[81]);

	FA1 PART34(CF13, SF12, P21, P30, CF12, num[82]);
	FA1 PART35(CF22, SF21, P12, SF12, CH21, num[83]);
	HA1 PART36(CH31, PP3, SF21, P03, num[84]);

	FA1 PART37(CF14, SF13, P31, P40, CF13, num[85]);
	FA1 PART38(CF23, SF22, P22, SF13, CF22, num[86]);
	FA1 PART39(CF32, SF31, P13, SF22, CH31, num[87]);
	HA1 PART310(CH41, PP4, P04, SF31, num[88]);

	FA1 PART311(CF15, SF14, P41, P50, CF14, num[89]);
	FA1 PART312(CF24, SF23, P32, SF14, CF23, num[90]);
	FA1 PART313(CF33, SF32, P23, SF23, CF32, num[91]);
	FA1 PART314(CF42, SF41, P14, SF32, CH41, num[92]);
	HA1 PART315(CH51, PP5, P05, SF41, num[93]);

	FA1 PART316(CF16, SF15, P51, P60, CF15, num[94]);
	FA1 PART317(CF25, SF24, P42, SF15, CF24, num[95]);
	FA1 PART318(CF34, SF33, P33, SF24, CF33, num[96]);
	FA1 PART319(CF43, SF42, P24, SF33, CF42, num[97]);
	FA1 PART320(CF52, SF51, P15, SF42, CH51, num[98]);
	HA1 PART321(CH61, PP6, P06, SF51, num[99]);

	FA1 PART322(CF17, SF16, P61, P70, CF16, num[100]);
	FA1 PART323(CF26, SF25, P52, SF16, CF25, num[101]);
	FA1 PART324(CF35, SF34, P43, SF25, CF34, num[102]);
	FA1 PART325(CF44, SF43, P34, SF34, CF43, num[103]);
	FA1 PART326(CF53, SF52, P25, SF43, CF52, num[104]);
	FA1 PART327(CF62, SF61, P16, SF52, CH61, num[105]);
	HA1 PART328(CH71, PP7, P07, SF61, num[106]);
	
	FA1 PART329(CF18, SF17, P62, P71, CF17, num[107]);
	FA1 PART330(CF27, SF26, P53, SF17, CF26, num[108]);
	FA1 PART331(CF36, SF35, P44, SF26, CF35, num[109]);
	FA1 PART332(CF45, SF44, P35, SF35, CF44, num[110]);
	FA1 PART333(CF54, SF53, P26, SF44, CF53, num[111]);
	FA1 PART334(CF63, SF62, P17, SF53, CF62, num[112]);
	HA1 PART335(CH72, PP8, CH71, SF62, num[113]);

	FA1 PART336(CF19, SF18, P63, P72, CF18, num[114]);
	FA1 PART337(CF28, SF27, P54, SF18, CF27, num[115]);
	FA1 PART338(CF37, SF36, P45, SF27, CF36, num[116]);
	FA1 PART339(CF46, SF45, P36, SF36, CF45, num[117]);
	FA1 PART340(CF55, SF54, P27, SF45, CF54, num[118]);
	FA1 PART341(CF64, PP9, CH72, SF54, CF63, num[119]);

	FA1 PART342(CF110, SF19, P64, P73, CF19, num[120]);
	FA1 PART343(CF29, SF28, P55, SF19, CF28, num[121]);
	FA1 PART344(CF38, SF37, P46, SF28, CF37, num[122]);
	FA1 PART345(CF47, SF46, P37, SF37, CF46, num[123]);
	FA1 PART346(CF56, PP10, CF64, SF46, CF55, num[124]);

	FA1 PART347(CF111, SF110, P65, P74, CF110, num[125]);
	FA1 PART348(CF210, SF29, P56, SF110, CF29, num[126]);
	FA1 PART349(CF39, SF38, P47, SF29, CF38, num[127]);
	FA1 PART350(CF48, PP11, CF56, SF38, CF47, num[128]);

	FA1 PART351(CF112, SF111, P66, P75, CF111, num[129]);
	FA1 PART352(CF211, SF210, P77, SF111, CF210, num[130]);
	FA1 PART353(CF310, PP12, CF48, SF210, CF39, num[131]);

	FA1 PART354(CF113, SF112, P67, P76, CF112, num[132]);
	FA1 PART355(CF212, PP13, CF310, SF112, CF211, num[133]);

	FA1 PART356(PP15, PP14, CF212, P77, CF113, num[134]);

	EO PART40(M0, 1'b1, P00, num[135]);
	EO PART4_inst1 (M1, 1'b1, PP1, num[136]);
	EO PART4_inst2 (M2, 1'b1, PP2, num[137]);
	EO PART4_inst3 (M3, 1'b1, PP3, num[138]);
	EO PART4_inst4 (M4, 1'b1, PP4, num[139]);
	EO PART4_inst5 (M5, 1'b1, PP5, num[140]);
	EO PART4_inst6 (M6, 1'b1, PP6, num[141]);
	EO PART4_inst7 (M7, 1'b1, PP7, num[142]);
	EO PART4_inst8 (M8, 1'b1, PP8, num[143]);
	EO PART4_inst9 (M9, 1'b1, PP9, num[144]);
	EO PART4_inst10 (M10, 1'b1, PP10, num[145]);
	EO PART4_inst11 (M11, 1'b1, PP11, num[146]);
	EO PART4_inst12 (M12, 1'b1, PP12, num[147]);
	EO PART4_inst13 (M13, 1'b1, PP13, num[148]);
	EO PART4_inst14 (M14, 1'b1, PP14, num[149]);


	HA1 PART50(CA0, A0, M0, 1'b1, num[151]);
	HA1 PART5_inst1 (CA1, A1, M1, CA0, num[152]);
	HA1 PART5_inst2 (CA2, A2, M2, CA1, num[153]);
	HA1 PART5_inst3 (CA3, A3, M3, CA2, num[154]);
	HA1 PART5_inst4 (CA4, A4, M4, CA3, num[155]);
	HA1 PART5_inst5 (CA5, A5, M5, CA4, num[156]);
	HA1 PART5_inst6 (CA6, A6, M6, CA5, num[157]);
	HA1 PART5_inst7 (CA7, A7, M7, CA6, num[158]);
	HA1 PART5_inst8 (CA8, A8, M8, CA7, num[159]);
	HA1 PART5_inst9 (CA9, A9, M9, CA8, num[160]);
	HA1 PART5_inst10 (CA10, A10, M10, CA9, num[161]);
	HA1 PART5_inst11 (CA11, A11, M11, CA10, num[162]);
	HA1 PART5_inst12 (CA12, A12, M12, CA11, num[163]);
	HA1 PART5_inst13 (CA13, A13, M13, CA12, num[164]);
	HA1 PART5_inst14 (CA14, A14, M14, CA13, num[165]);

	MUX21H PART6_inst0 (AS0, A0, P00, i_x[7], num[166]);
	MUX21H PART6_inst1 (AS1, A1, PP1, i_x[7], num[167]);
	MUX21H PART6_inst2 (AS2, A2, PP2, i_x[7], num[168]);
	MUX21H PART6_inst3 (AS3, A3, PP3, i_x[7], num[169]);
	MUX21H PART6_inst4 (AS4, A4, PP4, i_x[7], num[170]);
	MUX21H PART6_inst5 (AS5, A5, PP5, i_x[7], num[171]);
	MUX21H PART6_inst6 (AS6, A6, PP6, i_x[7], num[172]);
	MUX21H PART6_inst7 (AS7, A7, PP7, i_x[7], num[173]);
	MUX21H PART6_inst8 (AS8, A8, PP8, i_x[7], num[174]);
	MUX21H PART6_inst9 (AS9, A9, PP9, i_x[7], num[175]);
	MUX21H PART6_inst10 (AS10, A10, PP10, i_x[7], num[176]);
	MUX21H PART6_inst11 (AS11, A11, PP11, i_x[7], num[177]);
	MUX21H PART6_inst12 (AS12, A12, PP12, i_x[7], num[178]);
	MUX21H PART6_inst13 (AS13, A13, PP13, i_x[7], num[179]);
	MUX21H PART6_inst14 (AS14, A14, PP14, i_x[7], num[180]);
	MUX21H PART615(AS15, CA14, 1'b0, i_x[7], num[181]);

	FD1 PART7_inst0 (o_y[0], AS0, clk, rst_n, num[182]);
	FD1 PART7_inst1 (o_y[1], AS1, clk, rst_n, num[183]);
	FD1 PART7_inst2 (o_y[2], AS2, clk, rst_n, num[184]);
	FD1 PART7_inst3 (o_y[3], AS3, clk, rst_n, num[185]);
	FD1 PART7_inst4 (o_y[4], AS4, clk, rst_n, num[186]);
	FD1 PART7_inst5 (o_y[5], AS5, clk, rst_n, num[187]);
	FD1 PART7_inst6 (o_y[6], AS6, clk, rst_n, num[188]);
	FD1 PART7_inst7 (o_y[7], AS7, clk, rst_n, num[189]);
	FD1 PART7_inst8 (o_y[8], AS8, clk, rst_n, num[190]);
	FD1 PART7_inst9 (o_y[9], AS9, clk, rst_n, num[191]);
	FD1 PART7_inst10 (o_y[10], AS10, clk, rst_n, num[192]);
	FD1 PART7_inst11 (o_y[11], AS11, clk, rst_n, num[193]);
	FD1 PART7_inst12 (o_y[12], AS12, clk, rst_n, num[194]);
	FD1 PART7_inst13 (o_y[13], AS13, clk, rst_n, num[195]);
	FD1 PART7_inst14 (o_y[14], AS14, clk, rst_n, num[196]);
	FD1 PART7_inst15 (o_y[15], AS15, clk, rst_n, num[150]);
	FD1 PART8(o_out_valid, i_in_valid, clk, rst_n, num[14]);

	reg [50:0] sum;
	integer j;
	always @(*) begin
		sum = 0;
		for (j=0; j<197; j=j+1) begin 
			sum = sum + num[j];
		end
	end
	assign number = sum;

endmodule
