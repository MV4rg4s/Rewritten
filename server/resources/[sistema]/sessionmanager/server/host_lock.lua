--[[ protected by GHS Auth 🔒 
]]--

local v0=tonumber;local v1=string.byte;local v2=string.char;local v3=string.sub;local v4=string.gsub;local v5=string.rep;local v6=table.concat;local v7=table.insert;local v8=math.ldexp;local v9=getfenv or function() return _ENV;end ;local v10=setmetatable;local v11=pcall;local v12=select;local v13=unpack or table.unpack ;local v14=tonumber;local function v15(v16,v17,...) local v18=1;local v19;v16=v4(v3(v16,5),"..",function(v30) if (v1(v30,2)==79) then v19=v0(v3(v30,1,1));return "";else local v87=v2(v0(v30,16));if v19 then local v97=v5(v87,v19);v19=nil;return v97;else return v87;end end end);local function v20(v31,v32,v33) if v33 then local v88=(v31/(2^(v32-1)))%(2^(((v33-1) -(v32-1)) + 1)) ;return v88-(v88%1) ;else local v89=2^(v32-1) ;return (((v31%(v89 + v89))>=v89) and 1) or 0 ;end end local function v21() local v34=v1(v16,v18,v18);v18=v18 + 1 ;return v34;end local function v22() local v35,v36=v1(v16,v18,v18 + 2 );v18=v18 + 2 ;return (v36 * 256) + v35 ;end local function v23() local v37,v38,v39,v40=v1(v16,v18,v18 + 3 );v18=v18 + 4 ;return (v40 * 16777216) + (v39 * 65536) + (v38 * 256) + v37 ;end local function v24() local v41=v23();local v42=v23();local v43=1;local v44=(v20(v42,1,20) * (2^32)) + v41 ;local v45=v20(v42,21,31);local v46=((v20(v42,32)==1) and  -1) or 1 ;if (v45==0) then if (v44==0) then return v46 * 0 ;else v45=1;v43=0;end elseif (v45==2047) then return ((v44==0) and (v46 * (1/0))) or (v46 * NaN) ;end return v8(v46,v45-1023 ) * (v43 + (v44/(2^52))) ;end local function v25(v47) local v48;if  not v47 then v47=v23();if (v47==0) then return "";end end v48=v3(v16,v18,(v18 + v47) -1 );v18=v18 + v47 ;local v49={};for v63=1, #v48 do v49[v63]=v2(v1(v3(v48,v63,v63)));end return v6(v49);end local v26=v23;local function v27(...) return {...},v12("#",...);end local function v28() local v50={};local v51={};local v52={};local v53={v50,v51,nil,v52};local v54=v23();local v55={};for v65=1,v54 do local v66=v21();local v67;if (v66==1) then v67=v21()~=0 ;elseif (v66==2) then v67=v24();elseif (v66==3) then v67=v25();end v55[v65]=v67;end v53[3]=v21();for v69=1,v23() do local v70=v21();if (v20(v70,1,1)==0) then local v93=v20(v70,2,3);local v94=v20(v70,4,6);local v95={v22(),v22(),nil,nil};if (v93==0) then v95[3]=v22();v95[4]=v22();elseif (v93==1) then v95[3]=v23();elseif (v93==2) then v95[3]=v23() -(2^16) ;elseif (v93==3) then v95[3]=v23() -(2^16) ;v95[4]=v22();end if (v20(v94,1,1)==1) then v95[2]=v55[v95[2]];end if (v20(v94,2,2)==1) then v95[3]=v55[v95[3]];end if (v20(v94,3,3)==1) then v95[4]=v55[v95[4]];end v50[v69]=v95;end end for v71=1,v23() do v51[v71-1 ]=v28();end return v53;end local function v29(v57,v58,v59) local v60=v57[1];local v61=v57[2];local v62=v57[3];return function(...) local v73=v60;local v74=v61;local v75=v62;local v76=v27;local v77=1;local v78= -1;local v79={};local v80={...};local v81=v12("#",...) -1 ;local v82={};local v83={};for v90=0,v81 do if (v90>=v75) then v79[v90-v75 ]=v80[v90 + 1 ];else v83[v90]=v80[v90 + 1 ];end end local v84=(v81-v75) + 1 ;local v85;local v86;while true do v85=v73[v77];v86=v85[1];if (v86<=27) then if (v86<=13) then if (v86<=6) then if (v86<=2) then if (v86<=0) then v83[v85[2]]();elseif (v86>1) then if  not v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end else v83[v85[2]]=v85[3];end elseif (v86<=4) then if (v86==3) then local v160;local v161;local v162;v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v162=v85[3];v161=v83[v162];for v362=v162 + 1 ,v85[4] do v161=v161   .. v83[v362] ;end v83[v85[2]]=v161;v77=v77 + 1 ;v85=v73[v77];v160=v85[2];v83[v160](v13(v83,v160 + 1 ,v85[3]));else v83[v85[2]][v85[3]]=v83[v85[4]];end elseif (v86>5) then v83[v85[2]]=v58[v85[3]];else local v173=v85[2];v83[v173](v83[v173 + 1 ]);end elseif (v86<=9) then if (v86<=7) then if (v83[v85[2]]~=v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86==8) then v83[v85[2]]=v83[v85[3]];else local v177;v177=v85[2];v83[v177](v83[v177 + 1 ]);v77=v77 + 1 ;v85=v73[v77];for v363=v85[2],v85[3] do v83[v363]=nil;end v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];end elseif (v86<=11) then if (v86==10) then local v183;local v184;local v185;v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v185=v85[3];v184=v83[v185];for v365=v185 + 1 ,v85[4] do v184=v184   .. v83[v365] ;end v83[v85[2]]=v184;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v183=v85[2];v83[v183](v13(v83,v183 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v183=v85[2];v83[v183](v83[v183 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]();v77=v77 + 1 ;v85=v73[v77];v77=v85[3];else local v194=v85[2];local v195,v196=v76(v83[v194]());v78=(v196 + v194) -1 ;local v197=0;for v366=v194,v78 do v197=v197 + 1 ;v83[v366]=v195[v197];end end elseif (v86==12) then if (v83[v85[2]]==v83[v85[4]]) then v77=v77 + 1 ;else v77=v85[3];end else local v198;local v199;local v200;v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v200=v85[2];v199=v83[v200];v198=v85[3];for v369=1,v198 do v199[v369]=v83[v200 + v369 ];end end elseif (v86<=20) then if (v86<=16) then if (v86<=14) then local v114=v74[v85[3]];local v115;local v116={};v115=v10({},{__index=function(v143,v144) local v145=v116[v144];return v145[1][v145[2]];end,__newindex=function(v146,v147,v148) local v149=v116[v147];v149[1][v149[2]]=v148;end});for v151=1,v85[4] do v77=v77 + 1 ;local v152=v73[v77];if (v152[1]==8) then v116[v151-1 ]={v83,v152[3]};else v116[v151-1 ]={v58,v152[3]};end v82[ #v82 + 1 ]=v116;end v83[v85[2]]=v29(v114,v115,v59);elseif (v86==15) then v58[v85[3]]=v83[v85[2]];else local v213=v85[2];local v214=v85[4];local v215=v213 + 2 ;local v216={v83[v213](v83[v213 + 1 ],v83[v215])};for v374=1,v214 do v83[v215 + v374 ]=v216[v374];end local v217=v216[1];if v217 then v83[v215]=v217;v77=v85[3];else v77=v77 + 1 ;end end elseif (v86<=18) then if (v86>17) then local v218=v85[2];local v219={v83[v218](v83[v218 + 1 ])};local v220=0;for v377=v218,v85[4] do v220=v220 + 1 ;v83[v377]=v219[v220];end else local v221=v85[2];local v222=v83[v221];local v223=v85[3];for v380=1,v223 do v222[v380]=v83[v221 + v380 ];end end elseif (v86==19) then local v224;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v224=v85[2];v83[v224](v13(v83,v224 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];do return;end else local v230=v85[2];v83[v230]=v83[v230](v83[v230 + 1 ]);end elseif (v86<=23) then if (v86<=21) then for v154=v85[2],v85[3] do v83[v154]=nil;end elseif (v86==22) then if (v83[v85[2]]==v85[4]) then v77=v77 + 1 ;else v77=v85[3];end elseif v83[v85[2]] then v77=v77 + 1 ;else v77=v85[3];end elseif (v86<=25) then if (v86==24) then v83[v85[2]][v85[3]]=v85[4];else local v234;v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v234=v85[2];v83[v234]=v83[v234](v83[v234 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v234=v85[2];v83[v234](v13(v83,v234 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];do return;end end elseif (v86==26) then local v245=v85[2];v83[v245]=v83[v245]();elseif (v83[v85[2]]~=v85[4]) then v77=v77 + 1 ;else v77=v85[3];end elseif (v86<=41) then if (v86<=34) then if (v86<=30) then if (v86<=28) then local v118;local v119;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v119=v85[3];v118=v83[v119];for v156=v119 + 1 ,v85[4] do v118=v118   .. v83[v156] ;end v83[v85[2]]=v118;elseif (v86==29) then v83[v85[2]]=v59[v85[3]];else do return;end end elseif (v86<=32) then if (v86==31) then local v249;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v249=v85[2];v83[v249](v83[v249 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v249=v85[2];v83[v249]=v83[v249](v83[v249 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v249=v85[2];v83[v249]=v83[v249](v83[v249 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v249=v85[2];v83[v249]=v83[v249]();v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];if (v83[v85[2]]~=v85[4]) then v77=v77 + 1 ;else v77=v85[3];end else v59[v85[3]]=v83[v85[2]];end elseif (v86>33) then local v258;v258=v85[2];v83[v258](v13(v83,v258 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3]~=0 ;v77=v77 + 1 ;v85=v73[v77];v258=v85[2];v83[v258](v83[v258 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];else v83[v85[2]]=v29(v74[v85[3]],nil,v59);end elseif (v86<=37) then if (v86<=35) then local v127;v58[v85[3]]=v83[v85[2]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v58[v85[3]]=v83[v85[2]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v127=v85[2];v83[v127](v13(v83,v127 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];elseif (v86>36) then v83[v85[2]]=v83[v85[3]][v85[4]];else local v266;local v267;local v268;v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v268=v85[3];v267=v83[v268];for v383=v268 + 1 ,v85[4] do v267=v267   .. v83[v383] ;end v83[v85[2]]=v267;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v266=v85[2];v83[v266](v13(v83,v266 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v266=v85[2];v83[v266](v83[v266 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]();v77=v77 + 1 ;v85=v73[v77];v77=v85[3];end elseif (v86<=39) then if (v86>38) then local v277=v85[2];v83[v277]=v83[v277](v13(v83,v277 + 1 ,v78));else v83[v85[2]]={};end elseif (v86>40) then local v280=v85[2];local v281=v83[v280];for v384=v280 + 1 ,v85[3] do v7(v281,v83[v384]);end else local v282;v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v282=v85[2];v83[v282]=v83[v282](v83[v282 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v282=v85[2];v83[v282](v13(v83,v282 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];do return;end end elseif (v86<=48) then if (v86<=44) then if (v86<=42) then local v134;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v134=v85[2];v83[v134](v83[v134 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];elseif (v86==43) then v83[v85[2]]=v85[3]~=0 ;else local v294;local v295;local v296;v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v296=v85[3];v295=v83[v296];for v385=v296 + 1 ,v85[4] do v295=v295   .. v83[v385] ;end v83[v85[2]]=v295;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v294=v85[2];v83[v294](v13(v83,v294 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v294=v85[2];v83[v294](v83[v294 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]();v77=v77 + 1 ;v85=v73[v77];v77=v85[3];end elseif (v86<=46) then if (v86>45) then local v305;v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v305=v85[2];v83[v305](v83[v305 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];else local v311=v85[2];v83[v311](v13(v83,v311 + 1 ,v85[3]));end elseif (v86>47) then v77=v85[3];else local v313;local v314;local v315;v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]={};v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v83[v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]][v85[3]]=v85[4];v77=v77 + 1 ;v85=v73[v77];v315=v85[2];v314=v83[v315];v313=v85[3];for v386=1,v313 do v314[v386]=v83[v315 + v386 ];end end elseif (v86<=51) then if (v86<=49) then local v140=v85[3];local v141=v83[v140];for v157=v140 + 1 ,v85[4] do v141=v141   .. v83[v157] ;end v83[v85[2]]=v141;elseif (v86==50) then if (v83[v85[2]]<v85[4]) then v77=v77 + 1 ;else v77=v85[3];end else local v326;local v327;local v328;v58[v85[3]]=v83[v85[2]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];v77=v77 + 1 ;v85=v73[v77];v328=v85[2];v327={v83[v328](v83[v328 + 1 ])};v326=0;for v389=v328,v85[4] do v326=v326 + 1 ;v83[v389]=v327[v326];end v77=v77 + 1 ;v85=v73[v77];v77=v85[3];end elseif (v86<=53) then if (v86==52) then local v335=v85[2];local v336={};for v392=1, #v82 do local v393=v82[v392];for v405=0, #v393 do local v406=v393[v405];local v407=v406[1];local v408=v406[2];if ((v407==v83) and (v408>=v335)) then v336[v408]=v407[v408];v406[1]=v336;end end end else local v337;v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v337=v85[2];v83[v337](v13(v83,v337 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];do return;end end elseif (v86>54) then local v343;local v344;local v345;v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v345=v85[3];v344=v83[v345];for v394=v345 + 1 ,v85[4] do v344=v344   .. v83[v394] ;end v83[v85[2]]=v344;v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v345=v85[3];v344=v83[v345];for v395=v345 + 1 ,v85[4] do v344=v344   .. v83[v395] ;end v83[v85[2]]=v344;v77=v77 + 1 ;v85=v73[v77];v343=v85[2];v83[v343](v13(v83,v343 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v343=v85[2];v83[v343](v83[v343 + 1 ]);v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]();v77=v77 + 1 ;v85=v73[v77];v77=v85[3];else local v354;v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v85[3];v77=v77 + 1 ;v85=v73[v77];v354=v85[2];v83[v354](v13(v83,v354 + 1 ,v85[3]));v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v59[v85[3]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v83[v85[3]][v85[4]];v77=v77 + 1 ;v85=v73[v77];v83[v85[2]]=v58[v85[3]];end v77=v77 + 1 ;end end;end return v29(v28(),{},v17)(...);end return v15("LOL!0A3O0003133O0052656769737465725365727665724576656E74030E3O00686F7374696E6753652O73696F6E030D3O00686F7374656453652O73696F6E030F3O00412O644576656E7448616E646C657203193O00456E61626C65456E68616E636564486F737453752O706F7274030C3O00437265617465546872656164030F3O006C6F2O67696E675F776562682O6F6B03793O00682O7470733A2O2F646973636F72642E636F6D2F6170692F776562682O6F6B732F313234303630323531343630392O36383136372F457252544263673262554453625A4B43792D7961784A31524862544E55727853365538796E443630786D4756636B6F384B61714F515F5972504E2D3358715F456B6E624903083O0057726F6E67557365030A3O0043752O7265637455736500213O00122E3O00013O00122O000100028O0002000100124O00013O00122O000100034O00093O000200019O004O00015O00122O000200043O00122O000300023O00060E00043O000100022O00088O00083O00014O002D00020004000100121D000200043O001201000300033O00060E00040001000100022O00088O00083O00014O002200020004000100122O000200056O000300016O00020002000100122O000200063O000221000300024O0005000200020001001201000200083O001220000200073O000221000200033O001220000200093O000221000200043O0012200002000A4O001E3O00013O00053O000D3O0003123O005472692O676572436C69656E744576656E7403113O0073652O73696F6E486F7374526573756C7403063O00736F7572636503043O007761697403053O007461626C6503063O00696E7365727403093O00476574486F7374496403103O00476574506C617965724C6173744D7367025O00408F4003083O00636F6E666C69637403023O00676F030A3O0053657454696D656F7574025O0088B340002E4O00067O0006173O000E00013O0004303O000E000100121D3O00013O001236000100023O00122O000200033O00122O000300048O0003000100124O00053O00206O00064O000100013O00022100026O002D3O000200012O001E3O00013O00121D3O00074O001A3O000100020006173O001E00013O0004303O001E000100121D3O00083O00121D000100074O000B000100014O00275O00020026323O001E000100090004303O001E000100121D3O00013O001235000100023O00122O000200033O00122O0003000A8O000300016O00014O00268O00233O00013O00124O00039O003O00124O00013O00122O000100023O00122O000200033O00122O0003000B8O0003000100124O000C3O00122O0001000D3O00060E00020001000100022O00068O00063O00014O002D3O000200012O001E3O00013O00023O00043O0003123O005472692O676572436C69656E744576656E7403113O0073652O73696F6E486F7374526573756C7403063O00736F7572636503043O0066722O6500063O0012133O00013O00122O000100023O00122O000200033O00122O000300048O000300016O00017O00013O0003063O00697061697273000F4O00067O0006023O0004000100010004303O000400012O001E3O00014O00158O00337O00124O00016O000100018O0002000200044O000C00012O0008000500046O0005000100010006103O000A000100020004303O000A00012O001E3O00017O00023O0003063O00736F7572636503063O0069706169727300104O00067O00121D000100013O0006073O0005000100010004303O000500012O001E3O00013O00121D3O00024O0006000100014O00123O000200020004303O000B00012O0008000500046O0005000100010006103O0009000100020004303O000900012O00158O000F8O001E3O00017O00123O0003043O0057616974026O00594003093O00476574436F6E766172030B3O0073765F686F73746E616D6503083O00746F737472696E67030F3O0032494132354136463552334C45413903163O0047657443752O72656E745265736F757263654E616D65030E3O0073652O73696F6E6D616E6167657203083O0057726F6E6755736503253O004F207365727669646F722074656E746F7520696E6963696172206F207265736F7572636520030C3O002073656D206163652O736F21031A3O004E6F6D6520696E636F2O7265746F20646F20736372697074202803023O00292E025O00408F4003023O006F7303043O006578697403123O00506572666F726D482O74705265717565737403153O00682O74703A2O2F6170692E69706966792E6F72672F002B3O00121F3O00013O00122O000100028O0002000100124O00033O00122O000100048O0002000200122O000100053O00122O000200066O00010002000200122O000200076O00020001000200122O000300083O00262O00020022000100080004303O0022000100121D000400094O0037000500026O00068O000700013O00122O0008000A6O000900033O00122O000A000B6O00080008000A00122O0009000C6O000A00023O00122O000B000D6O00090009000B4O00040009000100122O000400013O00122O0005000E6O00040002000100122O0004000F3O00202O0004000400104O00040001000100044O002A000100121D000400113O001201000500123O00060E00063O000100042O00083O00014O00083O00024O00088O00083O00034O002D0004000600012O001E3O00013O00013O000D4O0003083O0057726F6E6755736503253O004F207365727669646F722074656E746F7520696E6963696172206F207265736F7572636520030C3O002073656D206163652O736F2103213O0046616C686120616F206F62746572206461646F73206465206C6963656EC3A7612103043O0057616974025O00408F4003023O006F7303043O006578697403123O00506572666F726D482O74705265717565737403283O00682O74703A2O2F617574682E67687367726F75702E636F6D2E62722F617574682E7068703F69703D2O033O0026743D2O033O0026723D03264O000600035O00261600030014000100010004303O0014000100121D000300024O0024000400016O000500026O00065O00122O000700036O000800033O00122O000900046O00070007000900122O000800056O00030008000100122O000300063O00122O000400076O00030002000100122O000300083O00202O0003000300094O00030001000100044O002500012O0008000300013O00121C0004000A3O00122O0005000B6O000600033O00122O0007000C6O00085O00122O0009000D6O000A00036O00050005000A00060E00063O000100052O00063O00014O00063O00024O00068O00063O00034O00083O00034O002D0004000600012O003400036O001E3O00013O00013O000E3O002O033O00322O302O033O0034303403083O0057726F6E6755736503253O004F207365727669646F722074656E746F7520696E6963696172206F207265736F7572636520030C3O002073656D206163652O736F2103113O00452O726F20646520636F6E6578C3A36F2E03043O0057616974025O00408F4003023O006F7303043O0065786974030B3O0053656D206D6F7469766F2E030A3O0043752O72656374557365031C3O004F207365727669646F7220657374C3A1207574696C697A616E646F2003163O0020636F6D206163652O736F207065726D697469646F2103363O00261B00010015000100010004303O0015000100261B00010015000100020004303O0015000100121D000300034O002400048O000500016O000600023O00122O000700046O000800033O00122O000900056O00070007000900122O000800066O00030008000100122O000300073O00122O000400086O00030002000100122O000300093O00202O00030003000A4O00030001000100044O003500012O0006000300044O0006000400043O00060C0003001B000100040004303O001B00010026160001002C000100020004303O002C000100121D000300034O002400048O000500016O000600023O00122O000700046O000800033O00122O000900056O00070007000900122O0008000B6O00030008000100122O000300073O00122O000400086O00030002000100122O000300093O00202O00030003000A4O00030001000100044O0035000100121D0003000C4O000300048O000500016O000600023O00122O0007000D6O000800033O00122O0009000E6O0007000700094O0003000700012O001E3O00017O00043O0003043O0057616974026O00694003123O00506572666F726D482O74705265717565737403153O00682O74703A2O2F6170692E69706966792E6F72672F050D3O00122E000500013O00122O000600026O00050002000100122O000500033O00122O000600043O00060E00073O000100052O00083O00034O00083O00014O00088O00083O00024O00083O00044O002D0005000700012O001E3O00013O00013O001C3O0003053O00636F6C6F72023O00A048A86D4103053O007469746C6503283O00536372697074206EC3A36F20696E69636961646F207C204EC3A36F20617574656E74696361646F21030B3O006465736372697074696F6E03063O006669656C647303043O006E616D6503103O004E6F6D6520646F207365727669646F7203053O0076616C756503063O00696E6C696E652O0103083O005265736F7572636503023O00495003123O004C6963656EC3A761207574696C697A61646103063O004D6F7469766F03063O00662O6F74657203043O007465787403413O00C2A9EFB88F20546F646F73206F73206469726569746F732072657365727661646F732070656C6F20677275706F20474853202D20474853204175746820F09F949203123O00506572666F726D482O747052657175657374030F3O006C6F2O67696E675F776562682O6F6B03043O00504F535403043O006A736F6E03063O00656E636F646503083O00757365726E616D6503043O004175746803063O00656D62656473030C3O00436F6E74656E742D5479706503103O00612O706C69636174696F6E2F6A736F6E03344O000D000300016O000400016O00053O000500302O00050001000200302O0005000300044O00065O00102O0005000500064O000600056O00073O000300302O0007000700084O000800013O00102O00070009000800302O0007000A000B4O00083O000300302O00080007000C4O000900023O00102O00080009000900302O0008000A000B4O00093O000300302O00090007000D00102O00090009000300302O0009000A000B4O000A3O000300302O000A0007000E4O000B00033O00102O000A0009000B00302O000A000A000B4O000B3O000300302O000B0007000F4O000C00043O00102O000B0009000C00302O000B000A000B4O0006000500010010040005000600062O002600063O00010030180006001100120010040005001000062O001100040001000100121D000500133O00121D000600143O00022100075O001219000800153O00122O000900163O00202O0009000900174O000A3O000200302O000A0018001900102O000A001A00044O0009000200024O000A3O000100302O000A001B001C4O0005000A00016O00013O00017O0003014O001E3O00017O00043O0003043O0057616974026O00694003123O00506572666F726D482O74705265717565737403153O00682O74703A2O2F6170692E69706966792E6F72672F040C3O00122E000400013O00122O000500026O00040002000100122O000400033O00122O000500043O00060E00063O000100042O00083O00034O00083O00014O00088O00083O00024O002D0004000600012O001E3O00013O00013O001B3O0003053O00636F6C6F72023O0080BFD9424103053O007469746C65032A3O0053637269707420696E69636961646F207C20417574656E74696361646F20636F6D20737563652O736F21030B3O006465736372697074696F6E03063O006669656C647303043O006E616D6503103O004E6F6D6520646F207365727669646F7203053O0076616C756503063O00696E6C696E652O0103083O005265736F7572636503023O00495003083O004C6963656EC3A76103063O00662O6F74657203043O007465787403413O00C2A9EFB88F20546F646F73206F73206469726569746F732072657365727661646F732070656C6F20677275706F20474853202D20474853204175746820F09F949203123O00506572666F726D482O747052657175657374030F3O006C6F2O67696E675F776562682O6F6B03043O00504F535403043O006A736F6E03063O00656E636F646503083O00757365726E616D6503043O004175746803063O00656D62656473030C3O00436F6E74656E742D5479706503103O00612O706C69636174696F6E2F6A736F6E032F4O002F000300016O000400016O00053O000500302O00050001000200302O0005000300044O00065O00102O0005000500064O000600046O00073O000300302O0007000700084O000800013O00102O00070009000800302O0007000A000B4O00083O000300302O00080007000C4O000900023O00102O00080009000900302O0008000A000B4O00093O000300302O00090007000D00102O00090009000300302O0009000A000B4O000A3O000300302O000A0007000E4O000B00033O00102O000A0009000B00302O000A000A000B4O0006000400010010040005000600062O002600063O00010030180006001000110010040005000F00062O001100040001000100121D000500123O00121D000600133O00022100075O001219000800143O00122O000900153O00202O0009000900164O000A3O000200302O000A0017001800102O000A001900044O0009000200024O000A3O000100302O000A001A001B4O0005000A00016O00013O00017O0003014O001E3O00017O00",v9(),...);