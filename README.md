# Traffic_Controller_Verilog

This repository contains the Verilog code for a basic traffic light controller which controls 4 traffic lights at an intersection along with a pedestrian crossing light.

The main module here is the "Controller" module which simulates the controller.

The module works on the logic of "case" stataments.Two types of case statements are used-one for switching between different traffic lights and one for switching between the colors of the same traffic light.
The traffic lights follow a chronological order in their functioning with the light "a" turning on the first followed by light "b" and so on till the pedestrian light(light "e").

The output of the system is the traffic light which is green at that present moment.

