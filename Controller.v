`timescale 1ns / 1ps

module Controller(
    input clk,
    input rst,
    output reg [2:0] y
);
       
reg [2:0] light;
reg [1:0] color;

parameter light_a = 3'b000; // Traffic Light 'A'
parameter light_b = 3'b001; // Traffic Light 'B'
parameter light_c = 3'b010; // Traffic Light 'C'
parameter light_d = 3'b011; // Traffic Light 'D'
parameter light_e = 3'b100; // Pedestrian light

parameter red = 2'b00; // Red Light
parameter yellow1 = 2'b01; // Yellow Light-1
parameter green = 2'b10; // Green Light
parameter yellow2 = 2'b11; // Yellow Light-2

always @(posedge clk) begin
    if(rst) begin
        light <= light_e;
        color <= red;
        y <= 3'b100;
    end else begin
        case(light)
            light_a: begin
                case(color)
                    red: color <= yellow1;
                    yellow1: color <= green;
                    green: begin
                        color <= yellow2;
                        y <= 3'b000;
                    end
                    yellow2: begin 
                        color <= red; 
                        light <= light_b; 
                    end
                    default: color <= red;
                endcase
            end
            
            light_b: begin
                case(color)
                    red:     color <= yellow1;
                    yellow1: color <= green;
                    green: begin
                        color <= yellow2;
                        y <= 3'b001;
                    end
                    yellow2: begin 
                        color <= red; 
                        light <= light_c; 
                    end
                    default: color <= red;
                endcase
            end
            
            light_c: begin
                case(color)
                    red:     color <= yellow1;
                    yellow1: color <= green;
                    green: begin
                        color <= yellow2;
                        y <= 3'b010;
                    end
                    yellow2: begin 
                        color <= red; 
                        light <= light_d; 
                    end
                    default: color <= red;
                endcase
            end
            
            light_d: begin
                case(color)
                    red:     color <= yellow1;
                    yellow1: color <= green;
                    green: begin
                        color <= yellow2;
                        y <= 3'b011;
                    end
                    yellow2: begin 
                        color <= red; 
                        light <= light_e;
                    end
                    default: color <= red;
                endcase
            end
            
            light_e: begin
                case(color)
                    red: color <= green;
                    green: begin
                        y  <= 3'b100;
                        color <= red;
                        light <= light_a; 
                    end
                    default: color <= red;
                endcase
            end
            
            default: light <= light_e;
        endcase
    end
end

endmodule
    