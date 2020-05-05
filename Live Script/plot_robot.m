%% plot_robot.m
%
% Description:
%   Plots the robot in its current configuration.
%   
% Inputs:
%   q: robot configuration, q = [x_cart; theta_pend];
%   params: a struct with many elements, generated by calling init_params.m
%   varargin: optional name-value pair arguments:
%       'new_fig': (default: false), if true, plot appears on new figure
%
% Outputs:
%   none
%
% Notes:
%   1) This code is written verbosely in the hope that it is clear how to
%   extend it to visualizing other more complex robots.

function plot_robot(q,params,varargin)
%% Parse input arguments
% Note: a simple robot plotting function doesn't need this, but I want to
% write extensible code, so I'm using "varargin" which requires input
% parsing. See the reference below:
%
% https://people.umass.edu/whopper/posts/better-matlab-functions-with-the-inputparser-class/

% Step 1: instantiate an inputParser:
p = inputParser;

% Step 2: create the parsing schema:
%      2a: required inputs:
addRequired(p,'triple_pend_config', ...
    @(q) isnumeric(q) && size(q,1)==3 && size(q,3)==1);
addRequired(p,'triple_pend_params', ...
    @(params) ~isempty(params));
%      2b: optional inputs:
addParameter(p, 'new_fig', false); % if true, plot will be on a new figure

% Step 3: parse the inputs:
parse(p, q, params, varargin{:});

% Verification: display the results of parsing:
% disp(p.Results)


% %% Compute the 4 corners of the cart, clockwise from top left corner
% % First compute the cart's home position (q(1) = 0):
% cart.home.upp_left.x    = -0.5*params.model.geom.cart.w;
% cart.home.upp_left.y    = 0.5*params.model.geom.cart.h;
% 
% cart.home.upp_right.x   = 0.5*params.model.geom.cart.w;
% cart.home.upp_right.y   = 0.5*params.model.geom.cart.h;
% 
% cart.home.low_right.x   = 0.5*params.model.geom.cart.w;
% cart.home.low_right.y   = -0.5*params.model.geom.cart.h;
% 
% cart.home.low_left.x    = -0.5*params.model.geom.cart.w;
% cart.home.low_left.y    = -0.5*params.model.geom.cart.h;
% 
% cart.home.corners = horzcat([cart.home.upp_left.x; cart.home.upp_left.y],...
%                             [cart.home.upp_right.x; cart.home.upp_right.y],...
%                             [cart.home.low_right.x; cart.home.low_right.y],...
%                             [cart.home.low_left.x;  cart.home.low_left.y]);
% 
% % The cart can translate horizontally by q(1) but cannot translate
% % vertically or rotate, so we don't bother computing a homogeneous
% % transformation matrix in SE(2) for the cart. Instead we do the math
% % explicitly:
% cart.curr.corners = [q(1); 0] + cart.home.corners;
% 
% %% Compute the 4 corners of the pendulum
% % The pendulum is a rectangle whose center is q(1) = x_cart. The pendulum
% % can translate horizontally and can rotate, so we first compute a 
% % homogeneous transformation matrix T_pend in SE(2):
% % 
% T_top = [cos(q(1)), -sin(q(1)), 0;
%           sin(q(1)),  cos(q(1)),0;
%           0,          0,        1];
% T_mid = [cos(q(2)), -sin(q(2)), 0;
%          sin(q(2)),  cos(q(2)), 0;
%          0,          0,         1];
% T_bot = [cos(q(3)), -sin(q(3)), 0;
%          sin(q(3)),  cos(q(3)), 0;
%          0,          0,         1];
% 
% % We first compute the 4 corners of the pendulum when the robot is in the
% % "home" configuration (q(1) = q(2) = 0):
% top.home.upp_left.x    = 0;
% top.home.upp_left.y    = 0.5*params.model.geom.link.w;
%  
% top.home.upp_right.x   = params.model.geom.top.l;
% top.home.upp_right.y   = 0.5*params.model.geom.link.w;
% 
% top.home.low_right.x   = params.model.geom.top.l;
% top.home.low_right.y   = -0.5*params.model.geom.link.w;
% 
% top.home.low_left.x    = 0;
% top.home.low_left.y    = -0.5*params.model.geom.link.w;
% 
% top.home.corners = horzcat([top.home.upp_left.x; top.home.upp_left.y;   1],...
%                            [top.home.upp_right.x; top.home.upp_right.y; 1],...
%                            [top.home.low_right.x; top.home.low_right.y; 1],...
%                            [top.home.low_left.x;  top.home.low_left.y;  1]);
% 
% % Now compute the 4 corners of the pendulum after undergoing planar
% % translation + rotation as described by T_pend:
% top.curr.corners = T_top*top.home.corners;
% 
% mid.home.upp_left.x    = top.home.upp_right.x;
% mid.home.upp_left.y    = top.home.upp_right.y;
%  
% mid.home.upp_right.x   = mid.home.upp_left.x + params.model.geom.mid.l;
% mid.home.upp_right.y   = mid.home.upp_left.y;
% 
% mid.home.low_left.x    = top.home.low_right.x;
% mid.home.low_left.y    = top.home.low_right.y;
% 
% mid.home.low_right.x   = mid.home.low_left.x + params.model.geom.mid.l;
% mid.home.low_right.y   = mid.home.low_left.y;
% 
% mid.home.corners = horzcat([mid.home.upp_left.x; mid.home.upp_left.y;   1],...
%                            [mid.home.upp_right.x; mid.home.upp_right.y; 1],...
%                            [mid.home.low_right.x; mid.home.low_right.y; 1],...
%                            [mid.home.low_left.x;  mid.home.low_left.y;  1]);
% 
% mid.curr.corners = T_mid*mid.home.corners;
%% Evaluate forward kinematics at points of interest
FK = fwd_kin(q,params);

% (x,y) location of top link CoM:
top.curr.com.x = FK(1,1);
top.curr.com.y = FK(2,1);

% (x,y) location of top link tip:
top.curr.tip.x = FK(1,2);
top.curr.tip.y = FK(2,2);

% (x,y) location of mid link CoM:
mid.curr.com.x = FK(1,3);
mid.curr.com.y = FK(2,3);

% (x,y) location of mid link tip:
mid.curr.tip.x = FK(1,4);
mid.curr.tip.y = FK(2,4);

% (x,y) location of bot link CoM:
bot.curr.com.x = FK(1,5);
bot.curr.com.y = FK(2,5);

% (x,y) location of bot link tip:
bot.curr.tip.x = FK(1,6);
bot.curr.tip.y = FK(2,6);


%% Display the top, mid and bot link
if p.Results.new_fig
    figure;
end

% fill(cart.curr.corners(1,:),cart.curr.corners(2,:),params.viz.colors.cart);
% hold on;
% fill(top.curr.corners(1,:), top.curr.corners(2,:),[1 1 1]);
% hold on;
% fill(mid.curr.corners(1,:), mid.curr.corners(2,:),[1 1 1]);
% hold on;
plot(top.curr.com.x, top.curr.com.y,'o','MarkerSize',20,...
    'MarkerFaceColor',params.viz.colors.top_com,...
    'MarkerEdgeColor',params.viz.colors.top_com);
hold on;
plot(top.curr.tip.x, top.curr.tip.y,'o','MarkerSize',20,...
    'MarkerFaceColor',params.viz.colors.top_tip,...
    'MarkerEdgeColor',params.viz.colors.top_tip);
hold on;
plot(mid.curr.com.x, mid.curr.com.y,'o','MarkerSize',20,...
    'MarkerFaceColor',params.viz.colors.mid_com,...
    'MarkerEdgeColor',params.viz.colors.mid_com);
hold on;
plot(mid.curr.tip.x, mid.curr.tip.y,'o','MarkerSize',20,...
    'MarkerFaceColor',params.viz.colors.mid_tip,...
    'MarkerEdgeColor',params.viz.colors.mid_tip);
hold on;
plot(bot.curr.com.x, bot.curr.com.y,'o','MarkerSize',20,...
    'MarkerFaceColor',params.viz.colors.bot_com,...
    'MarkerEdgeColor',params.viz.colors.bot_com);
hold on;
plot(bot.curr.tip.x, bot.curr.tip.y,'o','MarkerSize',20,...
    'MarkerFaceColor',params.viz.colors.bot_tip,...
    'MarkerEdgeColor',params.viz.colors.bot_tip);
hold off;

axis(params.viz.axis_lims);
daspect([1 1 1]) % no distortion

xlabel('$x$');
ylabel('$y$');

end