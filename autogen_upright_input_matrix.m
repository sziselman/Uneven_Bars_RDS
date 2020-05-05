function B = autogen_upright_input_matrix(I_bot,I_mid,I_top,l_mid,l_top,m_bot,m_mid,m_top,r_com_mid,r_com_bot,r_com_top)
%AUTOGEN_UPRIGHT_INPUT_MATRIX
%    B = AUTOGEN_UPRIGHT_INPUT_MATRIX(I_BOT,I_MID,I_TOP,L_MID,L_TOP,M_BOT,M_MID,M_TOP,R_COM_MID,R_COM_BOT,R_COM_TOP)

%    This function was generated by the Symbolic Math Toolbox version 8.3.
%    04-May-2020 15:22:32

t2 = l_mid.^2;
t3 = l_top.^2;
t4 = m_bot.^2;
t5 = r_com_mid.^2;
t6 = r_com_bot.^2;
t7 = r_com_top.^2;
t8 = I_bot.*I_mid.*I_top;
t9 = l_mid.*l_top.*m_bot;
t10 = l_top.*m_mid.*r_com_mid;
t11 = m_bot.*t3;
t12 = m_mid.*t3;
t13 = m_top.*t7;
t14 = I_bot.*m_bot.*t2;
t15 = I_bot.*m_bot.*t6;
t16 = I_bot.*m_mid.*t5;
t17 = I_top.*m_bot.*t6;
t28 = I_bot.*I_mid.*t9.*2.0;
t29 = I_bot.*I_mid.*t10.*2.0;
t31 = m_bot.*m_mid.*t5.*t6;
t44 = I_mid.*m_bot.*t6.*t10.*2.0;
t45 = t2.*t4.*t6;
t46 = t3.*t4.*t6;
t51 = I_mid.*l_mid.*l_top.*t4.*t6.*2.0;
t18 = I_mid.*t14;
t19 = I_bot.*I_mid.*t11;
t20 = I_top.*t14;
t21 = I_bot.*I_mid.*t12;
t22 = I_mid.*t15;
t23 = I_top.*t15;
t24 = I_mid.*t16;
t25 = I_top.*t16;
t26 = I_mid.*t17;
t27 = I_bot.*I_mid.*t13;
t30 = m_mid.*t6.*t11;
t32 = m_bot.*t6.*t13;
t33 = I_bot.*m_mid.*t2.*t11;
t34 = t11.*t16;
t36 = t13.*t14;
t38 = t13.*t15;
t39 = I_mid.*t31;
t40 = m_mid.*t5.*t17;
t41 = t13.*t16;
t43 = I_bot.*l_mid.*m_mid.*r_com_mid.*t11.*2.0;
t47 = I_bot.*t46;
t48 = I_mid.*t45;
t49 = I_mid.*t46;
t50 = I_top.*t45;
t53 = t13.*t31;
t54 = t12.*t45;
t55 = t4.*t5.*t6.*t12;
t56 = t13.*t45;
t57 = l_mid.*r_com_mid.*t4.*t6.*t12.*2.0;
t59 = I_top+t9+t10+t11+t12+t13;
t35 = I_bot.*t30;
t37 = I_mid.*t30;
t42 = I_mid.*t32;
t52 = -t43;
t58 = -t57;
t60 = t8+t18+t19+t20+t21+t22+t23+t24+t25+t26+t27+t28+t29+t33+t34+t35+t36+t37+t38+t39+t40+t41+t42+t44+t47+t48+t49+t50+t51+t52+t53+t54+t55+t56+t58;
t61 = 1.0./t60;
t62 = m_bot.*t6.*t59.*t61;
t63 = -t62;
B = reshape([0.0,0.0,0.0,-t61.*(t14+t15+t16+t31+t45+I_bot.*t9+I_bot.*t10+m_bot.*t6.*t10+l_mid.*l_top.*t4.*t6),t61.*(t14+t15+t16+t17+t30+t31+t32+t45+t46+I_bot.*t9.*2.0+I_bot.*t10.*2.0+I_bot.*t11+I_bot.*t12+I_bot.*t13+I_bot.*I_top+m_bot.*t6.*t10.*2.0+l_mid.*l_top.*t4.*t6.*2.0),t63,0.0,0.0,0.0,m_bot.*t6.*t61.*(-I_mid+t9+t10),t63,t61.*(t17+t30+t32+t46+I_mid.*t9.*2.0+I_mid.*t10.*2.0+I_mid.*t11+I_mid.*t12+I_mid.*t13+I_mid.*I_top+I_mid.*m_bot.*t2+I_mid.*m_bot.*t6+I_top.*m_bot.*t2+I_mid.*m_mid.*t5+I_top.*m_mid.*t5+m_bot.*t2.*t13+m_mid.*t2.*t11+m_mid.*t5.*t11+m_mid.*t5.*t13-l_mid.*m_mid.*r_com_mid.*t11.*2.0)],[6,2]);