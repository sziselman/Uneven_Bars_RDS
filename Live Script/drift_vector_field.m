%% drift_vector_field.m
%
% Description:
%   Wrapper function for autogen_drift_vector_field.m
%   Computes the drift vector field for the nonlinear state-space
%   dynamics of the cart-pendulum robot.
%
% Inputs:
%   x: the state vector, x = [theta_1; theta_2; theta_3; dtheta_1; dtheta_2; dtheta_3];
%   params: a struct with many elements, generated by calling init_params.m
%
% Outputs:
%   f_ss: a 4x1 vector that maps state x to dx (time derivative of
%       the state x) when control input u = 0.

function f_ss = drift_vector_field(x,params)

% Note: x_cart does not appear in the drift vector field
theta_1 = x(1);
theta_2 = x(2);
theta_3 = x(3);
dtheta_1 = x(4);
dtheta_2 = x(5);
dtheta_3 = x(6);

f_ss = autogen_drift_vector_field(params.model.dyn.bot.I,...
                                  params.model.dyn.mid.I,...
                                  params.model.dyn.top.I,...
                                  params.model.dyn.b1,...
                                  params.model.dyn.b2,...
                                  params.model.dyn.b3,...
                                  dtheta_1,...
                                  dtheta_2,...
                                  dtheta_3,...
                                  params.model.dyn.g,...
                                  params.model.geom.mid.l,...
                                  params.model.geom.top.l,...
                                  params.model.dyn.bot.m,...
                                  params.model.dyn.mid.m,...
                                  params.model.dyn.top.m,...
                                  params.model.dyn.mid.r_com,...
                                  params.model.dyn.bot.r_com,...
                                  params.model.dyn.top.r_com,...
                                  theta_1,...
                                  theta_2,...
                                  theta_3);
end