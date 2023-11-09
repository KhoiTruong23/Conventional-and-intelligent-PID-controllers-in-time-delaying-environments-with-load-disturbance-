
function y = multi_obj(k)
assignin('base','k',k);
sim("GA_PID_medium_disturbance_medium_delay.mdl");
f1= ITSE(length(ITSE))
f2= IAE(length(IAE))
y=f1+2*f2

end