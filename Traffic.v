`timescale 1ns / 1ps
module Traffic(


    input clk,rst,
	 output reg clock_out,
    output reg [2:0]light_M1,
    output reg [2:0]light_S,
    output reg [2:0]light_MT,
    output reg [2:0]light_M2,
	 output light_M1_R, light_M1_Y, light_M1_G, light_S_R, light_S_Y, light_S_G, light_MT_R, light_MT_Y, light_MT_G, light_M2_R, light_M2_Y, light_M2_G
    );
    
 
	 reg[27:0] counter=28'd0;
	 parameter DIVISOR = 28'd12000000;

    parameter  S1=0, S2=1, S3 =2, S4=3, S5=4, S6=5;
    reg [3:0]count;
    reg [2:0] ps;
    parameter  sec7=7,sec5=5,sec2=2,sec3=3;


	 
	 always @(posedge clk)
	 begin
		counter <= counter + 28'd1;
		if(counter>=(DIVISOR-1))
		counter <= 28'd0;
		clock_out <= (counter<DIVISOR/2)?1'b1:1'b0;
	 end
    
    always@(posedge clock_out or posedge rst)
        begin
        if(rst==1)
        begin
        ps<=S1;
        count<=0;
        end
        else
           
       
             case(ps)
                S1: if(count<sec7)
                        begin
                        ps<=S1;
                        count<=count+1;
                        end
                    else
                        begin
                        ps<=S2;
                        count<=0;
                        end
                S2: if(count<sec2)
                        begin
                        ps<=S2;
                        count<=count+1;
                        end

                    else
                        begin
                        ps<=S3;
                        count<=0;
                        end
                S3: if(count<sec5)
                        begin
                        ps<=S3;
                        count<=count+1;
                        end

                    else
                        begin
                        ps<=S4;
                        count<=0;
                        end
                S4:if(count<sec2)
                        begin
                        ps<=S4;
                        count<=count+1;
                        end

                    else
                        begin
                        ps<=S5;
                        count<=0;
                        end
                S5:if(count<sec3)
                        begin
                        ps<=S5;
                        count<=count+1;
                        end

                    else
                        begin
                        ps<=S6;
                        count<=0;
                        end

                S6:if(count<sec2)
                        begin
                        ps<=S6;
                        count<=count+1;
                        end

                    else
                        begin
                        ps<=S1;
                        count<=0;
                        end
                default: ps<=S1;
                endcase
            end   

            always@(ps)    
            begin
                
                case(ps)
                     
                    S1:
                    begin
                       light_M1<=3'b001;
                       light_M2<=3'b001;
                       light_MT<=3'b100;
                       light_S<=3'b100; 
                    end
						  	    
                    S2:
                    begin 
                       light_M1<=3'b001;
                       light_M2<=3'b010;
                       light_MT<=3'b100;
                       light_S<=3'b100;
                    end
                    S3:
                    begin
                       light_M1<=3'b001;
                       light_M2<=3'b100;
                       light_MT<=3'b001;
                       light_S<=3'b100;
                    end
                    S4:
                    begin
                       light_M1<=3'b010;
                       light_M2<=3'b100;
                       light_MT<=3'b010;
                       light_S<=3'b100;
                    end
                    S5:
                    begin
                       light_M1<=3'b100;
                       light_M2<=3'b100;
                       light_MT<=3'b100;
                       light_S<=3'b001;
                    end
                    S6:
                    begin 
                       light_M1<=3'b100;
                       light_M2<=3'b100;
                       light_MT<=3'b100;
                       light_S<=3'b010;
                    end
                    default:
                    begin 
                       light_M1<=3'b000;
                       light_M2<=3'b000;
                       light_MT<=3'b000;
                       light_S<=3'b000;
                    end
						
                    endcase
								 
						
            end
				assign light_M1_R=light_M1[2];
				assign light_M1_Y=light_M1[1];
				assign light_M1_G=light_M1[0];
					 
				assign light_S_R=light_S[2];
				assign light_S_Y=light_S[1];
				assign light_S_G=light_S[0];
								 
				assign light_MT_R=light_MT[2];
				assign light_MT_Y=light_MT[1];
				assign light_MT_G=light_MT[0];
								 
				assign light_M2_R=light_M2[2];
				assign light_M2_Y=light_M2[1];
				assign light_M2_G=light_M2[0];				
              

endmodule



