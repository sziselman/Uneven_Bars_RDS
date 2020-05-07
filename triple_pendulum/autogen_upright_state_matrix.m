function A = autogen_upright_state_matrix(I_bot,I_mid,I_top,b1,b2,b3,l_mid,l_top,m_bot,m_mid,m_motor1,m_motor2,m_top,r_com_mid,r_com_bot,r_com_top)
%AUTOGEN_UPRIGHT_STATE_MATRIX
%    A = AUTOGEN_UPRIGHT_STATE_MATRIX(I_BOT,I_MID,I_TOP,B1,B2,B3,L_MID,L_TOP,M_BOT,M_MID,M_MOTOR1,M_MOTOR2,M_TOP,R_COM_MID,R_COM_BOT,R_COM_TOP)

%    This function was generated by the Symbolic Math Toolbox version 8.3.
%    07-May-2020 14:36:14

t2 = I_mid.*l_mid;
t3 = I_mid.*l_top;
t4 = I_top.*l_mid;
t5 = I_mid.*r_com_bot;
t6 = I_top.*r_com_bot;
t7 = l_mid.^2;
t8 = l_top.^2;
t9 = r_com_mid.^2;
t10 = r_com_bot.^2;
t11 = r_com_top.^2;
t12 = I_bot.*I_mid.*I_top;
t13 = l_mid.*l_top.*m_mid.*r_com_mid;
t14 = l_mid.*l_top.*m_motor1.*r_com_mid;
t15 = l_mid.*l_top.*m_motor2.*r_com_mid;
t16 = l_top.*m_mid.*r_com_mid.*r_com_bot;
t17 = l_top.*m_motor1.*r_com_mid.*r_com_bot;
t18 = l_top.*m_motor2.*r_com_mid.*r_com_bot;
t19 = I_bot.*l_mid.*l_top.*m_bot;
t20 = I_bot.*l_top.*m_bot.*r_com_bot;
t21 = I_bot.*l_top.*m_mid.*r_com_mid;
t22 = I_bot.*l_top.*m_motor1.*r_com_mid;
t23 = I_bot.*l_top.*m_motor2.*r_com_mid;
t45 = I_bot.*l_mid.*m_bot.*r_com_bot.*2.0;
t24 = l_mid.*m_mid.*t8;
t25 = l_mid.*m_motor1.*t8;
t26 = l_mid.*m_motor2.*t8;
t27 = l_top.*m_mid.*t9;
t28 = m_mid.*r_com_mid.*t8;
t29 = m_mid.*r_com_bot.*t8;
t30 = l_mid.*m_top.*t11;
t31 = l_top.*m_motor1.*t9;
t32 = m_motor1.*r_com_mid.*t8;
t33 = l_top.*m_motor2.*t9;
t34 = m_motor2.*r_com_mid.*t8;
t35 = m_motor1.*r_com_bot.*t8;
t36 = m_motor2.*r_com_bot.*t8;
t37 = m_top.*r_com_bot.*t11;
t38 = I_bot.*m_bot.*t7;
t39 = I_bot.*m_bot.*t10;
t40 = I_bot.*m_mid.*t9;
t41 = m_bot.*r_com_bot.*t5;
t42 = I_bot.*m_motor1.*t9;
t43 = I_bot.*m_motor2.*t9;
t44 = m_bot.*r_com_bot.*t6;
t46 = -t13;
t47 = -t14;
t48 = -t15;
t49 = -t16;
t50 = -t17;
t51 = -t18;
t52 = I_bot.*l_mid.*m_bot.*t2;
t53 = I_bot.*l_top.*m_bot.*t3;
t54 = I_bot.*l_mid.*m_bot.*t4;
t55 = I_bot.*l_top.*m_mid.*t3;
t56 = I_bot.*l_top.*m_motor1.*t3;
t57 = I_bot.*l_top.*m_motor2.*t3;
t64 = m_bot.*t5.*t6;
t65 = I_bot.*I_mid.*m_top.*t11;
t68 = I_bot.*l_top.*m_bot.*t2.*2.0;
t69 = I_bot.*m_bot.*r_com_bot.*t2.*2.0;
t70 = I_bot.*m_bot.*r_com_bot.*t3.*2.0;
t71 = I_bot.*m_bot.*r_com_bot.*t4.*2.0;
t72 = I_bot.*m_mid.*r_com_mid.*t3.*2.0;
t73 = I_bot.*m_motor1.*r_com_mid.*t3.*2.0;
t74 = I_bot.*m_motor2.*r_com_mid.*t3.*2.0;
t81 = l_top.*m_bot.*m_mid.*r_com_mid.*t10;
t82 = l_top.*m_bot.*m_motor1.*r_com_mid.*t10;
t83 = l_top.*m_bot.*m_motor2.*r_com_mid.*t10;
t84 = m_bot.*m_mid.*t8.*t10;
t85 = m_bot.*m_motor1.*t8.*t10;
t86 = m_bot.*m_motor2.*t8.*t10;
t87 = m_bot.*m_mid.*t9.*t10;
t88 = m_bot.*m_motor1.*t9.*t10;
t89 = m_bot.*m_motor2.*t9.*t10;
t90 = m_bot.*m_top.*t10.*t11;
t101 = l_top.*m_bot.*m_mid.*t3.*t10;
t102 = l_top.*m_bot.*m_motor1.*t3.*t10;
t103 = l_top.*m_bot.*m_motor2.*t3.*t10;
t125 = m_bot.*m_mid.*r_com_mid.*t3.*t10.*2.0;
t126 = m_bot.*m_motor1.*r_com_mid.*t3.*t10.*2.0;
t127 = m_bot.*m_motor2.*r_com_mid.*t3.*t10.*2.0;
t58 = I_bot.*t41;
t59 = I_bot.*t44;
t60 = I_mid.*t40;
t61 = I_mid.*t42;
t62 = I_mid.*t43;
t63 = I_top.*t40;
t66 = I_top.*t42;
t67 = I_top.*t43;
t75 = -t27;
t76 = -t28;
t77 = -t31;
t78 = -t32;
t79 = -t33;
t80 = -t34;
t91 = m_mid.*t8.*t38;
t92 = m_motor1.*t8.*t38;
t93 = m_motor2.*t8.*t38;
t94 = m_bot.*t8.*t40;
t95 = m_mid.*t8.*t39;
t96 = m_top.*t11.*t38;
t97 = m_bot.*t8.*t42;
t98 = m_bot.*t8.*t43;
t99 = m_motor1.*t8.*t39;
t100 = m_motor2.*t8.*t39;
t104 = m_top.*t11.*t39;
t105 = m_mid.*t9.*t41;
t106 = m_motor1.*t9.*t41;
t107 = m_motor2.*t9.*t41;
t108 = m_mid.*t9.*t44;
t109 = m_top.*t11.*t40;
t110 = m_bot.*t5.*t37;
t111 = m_motor1.*t9.*t44;
t112 = m_motor2.*t9.*t44;
t113 = m_top.*t11.*t42;
t114 = m_top.*t11.*t43;
t115 = I_bot.*m_bot.*r_com_mid.*t24.*2.0;
t116 = I_bot.*m_bot.*r_com_bot.*t24.*2.0;
t117 = I_bot.*m_bot.*r_com_mid.*t25.*2.0;
t118 = I_bot.*m_bot.*r_com_mid.*t26.*2.0;
t119 = I_bot.*m_bot.*r_com_bot.*t25.*2.0;
t120 = I_bot.*m_bot.*r_com_bot.*t26.*2.0;
t121 = I_bot.*m_bot.*r_com_bot.*t28.*2.0;
t122 = I_bot.*m_bot.*r_com_bot.*t30.*2.0;
t123 = I_bot.*m_bot.*r_com_bot.*t32.*2.0;
t124 = I_bot.*m_bot.*r_com_bot.*t34.*2.0;
t134 = m_top.*t11.*t87;
t135 = m_top.*t11.*t88;
t136 = m_top.*t11.*t89;
t137 = t2+t3+t5+t27+t31+t33+t46+t47+t48+t49+t50+t51;
t138 = t19+t20+t21+t22+t23+t38+t39+t40+t42+t43+t45+t81+t82+t83+t87+t88+t89;
t128 = -t115;
t129 = -t117;
t130 = -t118;
t131 = -t121;
t132 = -t123;
t133 = -t124;
t139 = t4+t6+t13+t14+t15+t16+t17+t18+t24+t25+t26+t29+t30+t35+t36+t37+t75+t76+t77+t78+t79+t80;
t140 = t12+t52+t53+t54+t55+t56+t57+t58+t59+t60+t61+t62+t63+t64+t65+t66+t67+t68+t69+t70+t71+t72+t73+t74+t91+t92+t93+t94+t95+t96+t97+t98+t99+t100+t101+t102+t103+t104+t105+t106+t107+t108+t109+t110+t111+t112+t113+t114+t116+t119+t120+t122+t125+t126+t127+t128+t129+t130+t131+t132+t133+t134+t135+t136;
t141 = 1.0./t140;
A = reshape([0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,-b1.*t141.*(t38+t39+t40+t41+t42+t43+t45+t87+t88+t89+I_bot.*I_mid),b1.*t138.*t141,b1.*m_bot.*r_com_bot.*t137.*t141,0.0,1.0,0.0,b2.*t138.*t141,-b2.*t141.*(t19+t20+t21+t22+t23+t44+t81+t82+t83+t84+t85+t86+t90+t138+I_bot.*I_top+I_bot.*m_bot.*t8+I_bot.*m_mid.*t8+I_bot.*m_motor1.*t8+I_bot.*m_motor2.*t8+I_bot.*m_top.*t11),b2.*m_bot.*r_com_bot.*t139.*t141,0.0,0.0,1.0,b3.*m_bot.*r_com_bot.*t137.*t141,b3.*m_bot.*r_com_bot.*t139.*t141,-b3.*t141.*(t41+t44+t84+t85+t86+t90+I_mid.*I_top+I_mid.*m_mid.*t9+I_mid.*m_motor1.*t9+I_mid.*m_motor2.*t9+I_top.*m_mid.*t9+I_mid.*m_top.*t11+I_top.*m_motor1.*t9+I_top.*m_motor2.*t9+l_mid.*m_bot.*t2+l_mid.*m_bot.*t4+l_top.*m_bot.*t2.*2.0+l_top.*m_bot.*t3+l_top.*m_mid.*t3+l_top.*m_motor1.*t3+l_top.*m_motor2.*t3+m_bot.*r_com_bot.*t2.*2.0+m_bot.*r_com_bot.*t3.*2.0+m_bot.*r_com_bot.*t4.*2.0-m_bot.*r_com_mid.*t24.*2.0-m_bot.*r_com_mid.*t25.*2.0-m_bot.*r_com_mid.*t26.*2.0+m_bot.*r_com_bot.*t24.*2.0+m_bot.*r_com_bot.*t25.*2.0+m_bot.*r_com_bot.*t26.*2.0-m_bot.*r_com_bot.*t28.*2.0+m_bot.*r_com_bot.*t30.*2.0-m_bot.*r_com_bot.*t32.*2.0-m_bot.*r_com_bot.*t34.*2.0+m_mid.*r_com_mid.*t3.*2.0+m_motor1.*r_com_mid.*t3.*2.0+m_motor2.*r_com_mid.*t3.*2.0+m_bot.*m_mid.*t7.*t8+m_bot.*m_mid.*t8.*t9+m_bot.*m_motor1.*t7.*t8+m_bot.*m_motor2.*t7.*t8+m_bot.*m_motor1.*t8.*t9+m_bot.*m_motor2.*t8.*t9+m_bot.*m_top.*t7.*t11+m_mid.*m_top.*t9.*t11+m_motor1.*m_top.*t9.*t11+m_motor2.*m_top.*t9.*t11)],[6,6]);