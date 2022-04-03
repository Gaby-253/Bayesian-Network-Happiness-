%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%
%%%% VPI - Value of Perfect Information
%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
P_HLow = 0.1865955;
P_HHigh = 0.3916762;
P_LLow =0.4966443;
P_LHigh =0.34899329;
%Utility values
U_mvout_LLow_HLow = 1000;
U_mvout_LLow_HHigh = 900;
U_mvout_LHigh_HLow = -900;
U_mvout_LHigh_HHigh = -900;

%Expected Utilies EU(move_out)
EU_out = P_LLow*P_HLow*U_mvout_LLow_HLow + P_LLow*P_HHigh*U_mvout_LLow_HHigh + ...
    P_LHigh*P_HHigh*U_mvout_LHigh_HHigh + P_LHigh*P_HLow*U_mvout_LHigh_HLow

P_HLow_giv_LLow = 0.32832424;
P_HHigh_giv_LLow = 0.14552094;
P_HHigh_giv_LHigh = 0.67317882;
P_HLow_giv_LHigh = 0.047539256;

P_HLow_a_LLow = P_HLow_giv_LLow * P_LLow 
P_HHigh_a_LLow = P_HHigh_giv_LLow * P_LHigh
P_HHigh_a_LHigh = P_HHigh_giv_LHigh * P_LHigh 
P_HLow_a_LHigh = P_HLow_giv_LHigh * P_LLow 

P_LLow_giv_HLow = 0.87387084;
P_LHigh_giv_HLow = 0.088913621;
P_LHigh_giv_HHigh = 0.59981916;
P_LLow_giv_HHigh = 0.18452013;

P_LLow_a_HLow = P_LLow_giv_HLow * P_HLow 
P_LHigh_a_HLow = P_LHigh_giv_HLow * P_HHigh
P_LHigh_a_HHigh = P_LHigh_giv_HHigh * P_HHigh 
P_LLow_a_HHigh = P_LLow_giv_HHigh * P_HLow 

%Utility values
U_mvout_LLow_HLow = 1000;
U_mvout_LLow_HHigh = 900;
U_mvout_LHigh_HLow = -900;
U_mvout_LHigh_HHigh = -900;

%Expected Utilies EU(move_out)
EU_out = P_LLow*P_HLow*U_mvout_LLow_HLow + P_LLow*P_HHigh*U_mvout_LLow_HHigh + ...
    P_LHigh*P_HHigh*U_mvout_LHigh_HHigh + P_LHigh*P_HLow*U_mvout_LHigh_HLow

%EU_out = P_HLow_a_LLow*(U_mvout_LLow_HLow^0.5) + P_HHigh_a_LLow*(U_mvout_LLow_HHigh^0.5) + ...
 %   P_HHigh_a_LHigh*-((-U_mvout_LHigh_HHigh)^0.5) + P_HLow_a_LHigh*-((-U_mvout_LHigh_HLow)^0.5)

U_nmvout_LLow_HLow = -1000;
U_nmvout_LLow_HHigh = -900;
U_nmvout_LHigh_HLow = 900;
U_nmvout_LHigh_HHigh = 1000;

%Expected Utilies EU(move_out)
EU_nout = P_HLow*P_LLow*U_nmvout_LLow_HLow + P_HHigh*P_LLow*U_nmvout_LLow_HHigh + ...
    P_HHigh*P_LHigh*U_nmvout_LHigh_HHigh + P_HLow*P_LHigh*U_nmvout_LHigh_HLow

%%% VPI of Social Support with GeNIe EU values

EU_out = 1.7320989;
EU_Nout = 21.76139;
MEU_alp = EU_Nout;

%Socia HIG
MEU_alp_High = 259.18426;  %no move out
MEU_alp_Med = 348.23847;  %Move out
MEU_alp_Low = 411.11978; % Move out;

P_Soc_Low = 0.097994371;
P_Soc_Medium = 0.28585681;
P_Soc_High = 0.61614882;

VPI_soc = P_Soc_Low*MEU_alp_Low+P_Soc_Medium*MEU_alp_Med + P_Soc_High * ...
    MEU_alp_High - MEU_alp