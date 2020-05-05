function FK = autogen_fwd_kin(l_top,l_mid,l_bot,r_com_top,r_com_mid,r_com_bot,theta_1,theta_2,theta_3)
%AUTOGEN_FWD_KIN
%    FK = AUTOGEN_FWD_KIN(L_BOT,L_MID,L_TOP,R_COM_MID,R_COM_BOT,R_COM_TOP,THETA_1,THETA_2,THETA_3)

%    This function was generated by the Symbolic Math Toolbox version 8.3.
%    04-May-2020 15:21:13

t2 = cos(theta_1);
t3 = sin(theta_1);
t4 = theta_1+theta_2;
t5 = l_top.*t2;
t6 = cos(t4);
t7 = l_top.*t3;
t8 = sin(t4);
t9 = t4+theta_3;
t10 = cos(t9);
t11 = sin(t9);
t12 = l_mid.*t6;
t13 = l_mid.*t8;
FK = reshape([r_com_top.*t2,r_com_top.*t3,t5,t7,t5+r_com_mid.*t6,t7+r_com_mid.*t8,t5+t12,t7+t13,t5+t12+r_com_bot.*t10,t7+t13+r_com_bot.*t11,t5+t12+l_bot.*t10,t7+t13+l_bot.*t11],[2,6]);
