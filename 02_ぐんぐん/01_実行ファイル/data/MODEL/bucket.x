xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 227;
 0.00000;-0.37325;-0.01471;,
 3.51963;-0.37325;-7.91994;,
 6.43068;-0.37325;-5.80493;,
 8.22981;-0.37325;-2.68874;,
 7.49401;-0.37325;4.31196;,
 5.08631;-0.37325;6.98599;,
 1.79913;-0.37325;8.44953;,
 -1.79913;-0.37325;8.44953;,
 -5.08631;-0.37325;6.98599;,
 -7.49401;-0.37325;4.31196;,
 -8.22981;-0.37325;-2.68875;,
 -6.43068;-0.37325;-5.80493;,
 -3.51963;-0.37325;-7.91994;,
 4.03817;16.81869;-9.07066;,
 7.37810;16.81869;-6.64406;,
 -4.03817;16.81869;-9.07066;,
 -7.37810;16.81869;-6.64406;,
 9.44230;16.81869;-3.06877;,
 -9.44229;16.81869;-3.06877;,
 8.59809;16.81869;4.96332;,
 5.83566;16.81869;8.03131;,
 -8.59809;16.81869;4.96332;,
 -5.83566;16.81869;8.03131;,
 2.06419;16.81869;9.71048;,
 -2.06419;16.81869;9.71048;,
 4.27316;16.77628;-9.59847;,
 7.80745;16.77616;-7.03064;,
 -7.80745;16.77616;-7.03065;,
 -4.27316;16.77628;-9.59847;,
 9.99175;16.77599;-3.24730;,
 -9.99175;16.77599;-3.24730;,
 9.09840;16.77562;5.25218;,
 6.17522;16.77547;8.49868;,
 -6.17522;16.77547;8.49868;,
 -9.09840;16.77562;5.25217;,
 2.18430;16.77540;10.27554;,
 -2.18430;16.77540;10.27554;,
 -1.92603;16.77630;-10.09737;,
 0.00000;16.77632;-10.50676;,
 0.00000;16.81869;-9.92900;,
 -1.82011;16.81869;-9.54213;,
 0.00000;-0.37325;-8.66805;,
 -1.58639;-0.37325;-8.33086;,
 1.93576;16.77630;-10.09530;,
 1.82931;16.81869;-9.54017;,
 1.59441;-0.37325;-8.32915;,
 0.00000;20.10909;-11.14214;,
 -2.06354;20.10908;-10.73534;,
 -1.50640;20.12822;-7.91946;,
 0.00000;20.12822;-8.23965;,
 -2.07570;16.79089;-10.80153;,
 0.00000;16.79091;-11.21092;,
 2.08544;16.79089;-10.79946;,
 2.07322;20.10908;-10.73328;,
 1.51401;20.12822;-7.91784;,
 10.22119;16.77590;-1.06427;,
 10.44838;16.77580;1.09738;,
 9.87383;16.81869;1.03700;,
 9.65912;16.81869;-1.00579;,
 8.60594;-0.37325;0.88981;,
 8.41880;-0.37325;-0.89067;,
 9.82136;16.77572;3.02713;,
 9.28129;16.81869;2.86063;,
 8.08949;-0.37325;2.47927;,
 11.49126;20.11644;1.20943;,
 11.29027;20.11666;-1.17427;,
 7.99428;20.12806;-0.85443;,
 8.17198;20.12802;0.83627;,
 11.35480;16.79827;-1.18342;,
 11.55722;16.79800;1.21393;,
 10.90543;16.79774;3.37937;,
 10.84343;20.11622;3.36269;,
 7.68157;20.12798;2.34558;,
 0.04636;16.77540;10.27554;,
 0.04381;16.81869;9.71048;,
 0.03819;-0.37325;8.44953;,
 -2.17051;20.11096;11.11301;,
 0.04607;20.11096;11.11301;,
 0.03626;20.12786;8.01478;,
 -1.70841;20.12786;8.01478;,
 0.04636;16.79232;11.17544;,
 -2.18430;16.79232;11.17544;,
 2.18430;16.79232;11.17544;,
 2.17051;20.11096;11.11301;,
 1.70841;20.12786;8.01478;,
 -10.22808;16.77590;-0.99871;,
 -9.66564;16.81869;-0.94383;,
 -9.87383;16.81869;1.03700;,
 -10.44838;16.77580;1.09738;,
 -8.42448;-0.37325;-0.83667;,
 -8.60594;-0.37325;0.88981;,
 -9.93083;16.77573;2.69025;,
 -9.38474;16.81869;2.54227;,
 -8.17965;-0.37325;2.20179;,
 -11.61556;16.79917;1.22006;,
 -11.42132;16.79944;-1.12412;,
 -11.35675;20.11784;-1.11539;,
 -11.54959;20.11761;1.21556;,
 -8.17198;20.12802;0.83627;,
 -7.99968;20.12806;-0.80315;,
 -11.00923;20.11739;3.04646;,
 -7.76719;20.12799;2.08209;,
 -11.07192;16.79892;3.06102;,
 -7.65893;19.98593;-6.91005;,
 -6.10643;20.12816;-5.52089;,
 -3.34216;20.12821;-7.52925;,
 -4.19177;19.98598;-9.42910;,
 -9.80174;19.98582;-3.19857;,
 -7.81483;20.12809;-2.56184;,
 -1.88921;19.98600;-9.91852;,
 -10.03359;19.98577;-0.99268;,
 -2.06493;19.72951;-10.74291;,
 -11.36414;19.73824;-1.11639;,
 0.00000;19.72952;-11.15001;,
 -11.55714;19.73801;1.21607;,
 2.07461;19.72951;-10.74085;,
 -11.01640;19.73779;3.04813;,
 1.89922;19.98600;-9.91649;,
 -9.74199;19.98568;2.62621;,
 3.34216;20.12821;-7.52925;,
 4.19222;19.98598;-9.42910;,
 -8.92537;19.98562;5.13948;,
 -7.11612;20.12795;4.08585;,
 6.10642;20.12816;-5.52089;,
 7.65938;19.98593;-6.91005;,
 -6.05771;19.98553;8.32433;,
 -4.82982;20.12789;6.62504;,
 7.81483;20.12809;-2.56183;,
 9.80220;19.98582;-3.19857;,
 -2.14259;19.98548;10.06745;,
 10.02729;19.98577;-1.05700;,
 -2.17209;19.73134;11.12015;,
 11.29765;19.73707;-1.17532;,
 0.04610;19.73134;11.12015;,
 11.49881;19.73684;1.20995;,
 2.17209;19.73134;11.12015;,
 10.85052;19.73662;3.36460;,
 2.14305;19.98548;10.06745;,
 9.63506;19.98567;2.95670;,
 6.05817;19.98553;8.32433;,
 4.82982;20.12789;6.62504;,
 7.11612;20.12795;4.08585;,
 8.92582;19.98562;5.13948;,
 3.15276;4.81733;-7.10419;,
 5.76037;4.81729;-5.20965;,
 0.00000;5.06708;-0.01114;,
 7.37195;4.81722;-2.41829;,
 6.71284;4.81708;3.85268;,
 4.55611;4.81703;6.24796;,
 1.61159;4.81699;7.55894;,
 -1.61160;4.81700;7.55894;,
 -4.55611;4.81703;6.24796;,
 -6.71284;4.81708;3.85268;,
 -7.37195;4.81722;-2.41828;,
 -5.76037;4.81729;-5.20965;,
 -3.15276;4.81733;-7.10419;,
 -1.40743;4.81733;-7.45413;,
 0.00000;4.81734;-7.77433;,
 1.41504;4.81733;-7.45252;,
 7.52082;4.81718;-0.80500;,
 7.70887;4.81715;0.78725;,
 7.22880;4.81712;2.19812;,
 0.03626;4.81700;7.53837;,
 -7.52622;4.81718;-0.75372;,
 -7.70887;4.81715;0.78725;,
 -7.31442;4.81712;1.93464;,
 -0.07717;23.39987;0.06657;,
 2.09673;23.39987;-2.98112;,
 -0.37089;23.39987;-3.66545;,
 3.54715;23.39987;-0.87074;,
 3.30172;23.39987;1.67821;,
 1.47526;23.39987;3.47306;,
 -1.07759;23.39987;3.67398;,
 -3.16234;23.39987;2.18695;,
 -3.80350;23.39987;-0.29223;,
 -2.70107;23.39987;-2.60353;,
 0.03325;20.18219;0.20146;,
 -0.89634;20.18219;-11.61004;,
 6.91342;20.18219;-9.44420;,
 11.50387;20.18219;-2.76505;,
 10.72710;20.18219;5.30215;,
 4.94654;20.18219;10.98269;,
 -3.13299;20.18219;11.61856;,
 -9.73101;20.18219;6.91225;,
 -11.76022;20.18219;-0.93412;,
 -8.27114;20.18219;-8.24914;,
 -9.73101;21.45250;6.91225;,
 -11.76022;21.45250;-0.93412;,
 -3.13299;21.45250;11.61856;,
 -8.27114;21.45250;-8.24914;,
 4.94654;21.45250;10.98269;,
 -0.89634;21.45250;-11.61004;,
 10.72710;21.45250;5.30215;,
 6.91342;21.45250;-9.44420;,
 11.50387;21.45250;-2.76505;,
 -2.73416;24.34337;-1.05992;,
 2.73416;24.34337;-1.05992;,
 2.73416;23.34015;-1.05992;,
 -2.73416;23.34015;-1.05992;,
 2.73416;24.34337;1.05992;,
 2.73416;23.34015;1.05992;,
 -2.73416;24.34337;1.05992;,
 -2.73416;23.34015;1.05992;,
 2.31923;26.70975;-0.53788;,
 2.31923;26.70975;0.53788;,
 2.31923;26.16598;0.53788;,
 2.31923;26.16598;-0.53788;,
 -2.31923;26.70975;0.53788;,
 -2.31923;26.70975;-0.53788;,
 -2.31923;26.16598;-0.53788;,
 -2.31923;26.16598;0.53788;,
 1.65273;27.16920;0.53788;,
 1.65273;27.16920;-0.53788;,
 1.65273;26.16598;0.53788;,
 1.65273;26.16598;-0.53788;,
 -1.68563;27.16920;0.53788;,
 -1.68563;27.16920;-0.53788;,
 -1.68563;26.16598;0.53788;,
 -1.68563;26.16598;-0.53788;,
 2.06859;24.26137;-0.53788;,
 2.06859;24.26137;0.53788;,
 2.66682;24.26137;-0.53788;,
 2.66682;24.26137;0.53788;,
 -2.66682;24.26137;0.53788;,
 -2.10977;24.26137;0.53788;,
 -2.66682;24.26137;-0.53788;,
 -2.10977;24.26137;-0.53788;;
 
 250;
 3;0,1,2;,
 3;0,2,3;,
 3;0,4,5;,
 3;0,5,6;,
 3;0,7,8;,
 3;0,8,9;,
 3;0,10,11;,
 3;0,11,12;,
 4;13,14,2,1;,
 4;15,12,11,16;,
 4;14,17,3,2;,
 4;16,11,10,18;,
 4;19,20,5,4;,
 4;21,9,8,22;,
 4;20,23,6,5;,
 4;22,8,7,24;,
 4;25,26,14,13;,
 4;27,28,15,16;,
 4;26,29,17,14;,
 4;30,27,16,18;,
 4;31,32,20,19;,
 4;33,34,21,22;,
 4;32,35,23,20;,
 4;36,33,22,24;,
 4;37,38,39,40;,
 4;37,40,15,28;,
 4;40,39,41,42;,
 4;40,42,12,15;,
 3;42,0,12;,
 3;42,41,0;,
 4;43,25,13,44;,
 4;43,44,39,38;,
 4;44,13,1,45;,
 4;44,45,41,39;,
 3;45,0,41;,
 3;45,1,0;,
 4;46,47,48,49;,
 4;50,51,38,37;,
 4;51,52,43,38;,
 4;53,46,49,54;,
 4;55,56,57,58;,
 4;55,58,17,29;,
 4;58,57,59,60;,
 4;58,60,3,17;,
 3;60,0,3;,
 3;60,59,0;,
 4;61,31,19,62;,
 4;61,62,57,56;,
 4;62,19,4,63;,
 4;62,63,59,57;,
 3;63,0,59;,
 3;63,4,0;,
 4;64,65,66,67;,
 4;68,69,56,55;,
 4;69,70,61,56;,
 4;71,64,67,72;,
 4;73,36,24,74;,
 4;73,74,23,35;,
 4;74,24,7,75;,
 4;74,75,6,23;,
 3;75,0,6;,
 3;75,7,0;,
 4;76,77,78,79;,
 4;80,81,36,73;,
 4;82,80,73,35;,
 4;77,83,84,78;,
 4;85,30,18,86;,
 4;85,86,87,88;,
 4;86,18,10,89;,
 4;86,89,90,87;,
 3;89,0,90;,
 3;89,10,0;,
 4;91,88,87,92;,
 4;91,92,21,34;,
 4;92,87,90,93;,
 4;92,93,9,21;,
 3;93,0,9;,
 3;93,90,0;,
 4;94,95,85,88;,
 4;96,97,98,99;,
 4;97,100,101,98;,
 4;102,94,88,91;,
 4;103,104,105,106;,
 4;103,106,28,27;,
 4;103,27,30,107;,
 4;103,107,108,104;,
 4;106,105,48,109;,
 4;106,109,37,28;,
 4;107,30,85,110;,
 4;107,110,99,108;,
 4;109,48,47,111;,
 4;109,111,50,37;,
 4;110,85,95,112;,
 4;110,112,96,99;,
 4;111,47,46,113;,
 4;111,113,51,50;,
 4;112,95,94,114;,
 4;112,114,97,96;,
 4;113,46,53,115;,
 4;113,115,52,51;,
 4;114,94,102,116;,
 4;114,116,100,97;,
 4;115,53,54,117;,
 4;115,117,43,52;,
 4;116,102,91,118;,
 4;116,118,101,100;,
 4;117,54,119,120;,
 4;117,120,25,43;,
 4;118,91,34,121;,
 4;118,121,122,101;,
 4;120,119,123,124;,
 4;120,124,26,25;,
 4;121,34,33,125;,
 4;121,125,126,122;,
 4;124,123,127,128;,
 4;124,128,29,26;,
 4;125,33,36,129;,
 4;125,129,79,126;,
 4;128,127,66,130;,
 4;128,130,55,29;,
 4;129,36,81,131;,
 4;129,131,76,79;,
 4;130,66,65,132;,
 4;130,132,68,55;,
 4;131,81,80,133;,
 4;131,133,77,76;,
 4;132,65,64,134;,
 4;132,134,69,68;,
 4;133,80,82,135;,
 4;133,135,83,77;,
 4;134,64,71,136;,
 4;134,136,70,69;,
 4;135,82,35,137;,
 4;135,137,84,83;,
 4;136,71,72,138;,
 4;136,138,61,70;,
 4;137,35,32,139;,
 4;137,139,140,84;,
 4;138,72,141,142;,
 4;138,142,31,61;,
 4;139,32,31,142;,
 4;139,142,141,140;,
 4;143,144,123,119;,
 3;145,144,143;,
 4;144,146,127,123;,
 3;145,146,144;,
 4;147,148,140,141;,
 3;145,148,147;,
 4;148,149,84,140;,
 3;145,149,148;,
 4;150,151,126,79;,
 3;145,151,150;,
 4;151,152,122,126;,
 3;145,152,151;,
 4;153,154,104,108;,
 3;145,154,153;,
 4;154,155,105,104;,
 3;145,155,154;,
 4;156,157,49,48;,
 3;156,145,157;,
 4;155,156,48,105;,
 3;156,155,145;,
 4;158,143,119,54;,
 3;158,145,143;,
 4;157,158,54,49;,
 3;158,157,145;,
 4;159,160,67,66;,
 3;159,145,160;,
 4;146,159,66,127;,
 3;159,146,145;,
 4;161,147,141,72;,
 3;161,145,147;,
 4;160,161,72,67;,
 3;161,160,145;,
 4;162,150,79,78;,
 3;162,145,150;,
 4;149,162,78,84;,
 3;162,149,145;,
 4;163,153,108,99;,
 3;163,145,153;,
 4;164,163,99,98;,
 3;163,164,145;,
 4;165,164,98,101;,
 3;165,145,164;,
 4;152,165,101,122;,
 3;165,152,145;,
 3;166,167,168;,
 3;166,169,167;,
 3;166,170,169;,
 3;166,171,170;,
 3;166,172,171;,
 3;166,173,172;,
 3;166,174,173;,
 3;166,175,174;,
 3;166,168,175;,
 3;176,177,178;,
 3;176,178,179;,
 3;176,179,180;,
 3;176,180,181;,
 3;176,181,182;,
 3;176,182,183;,
 3;176,183,184;,
 3;176,184,185;,
 3;176,185,177;,
 4;186,173,174,187;,
 4;186,187,184,183;,
 4;186,183,182,188;,
 4;186,188,172,173;,
 4;187,174,175,189;,
 4;187,189,185,184;,
 4;188,182,181,190;,
 4;188,190,171,172;,
 4;189,175,168,191;,
 4;189,191,177,185;,
 4;190,181,180,192;,
 4;190,192,170,171;,
 4;191,168,167,193;,
 4;191,193,178,177;,
 4;192,180,179,194;,
 4;192,194,169,170;,
 4;193,167,169,194;,
 4;193,194,179,178;,
 4;195,196,197,198;,
 4;196,199,200,197;,
 4;199,201,202,200;,
 4;201,195,198,202;,
 4;201,199,196,195;,
 4;198,197,200,202;,
 4;203,204,205,206;,
 4;207,208,209,210;,
 4;211,204,203,212;,
 4;211,213,205,204;,
 4;212,203,206,214;,
 4;215,211,212,216;,
 4;215,216,208,207;,
 4;215,207,210,217;,
 4;215,217,213,211;,
 4;216,212,214,218;,
 4;216,218,209,208;,
 4;217,218,214,213;,
 4;219,220,213,214;,
 4;221,219,214,206;,
 4;222,221,206,205;,
 4;220,222,205,213;,
 4;220,219,221,222;,
 4;223,224,217,210;,
 4;225,223,210,209;,
 4;226,225,209,218;,
 4;224,226,218,217;,
 4;224,223,225,226;;
 
 MeshMaterialList {
  1;
  250;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.360800;0.636800;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  266;
  0.000001;-0.073149;-0.997321;,
  0.000000;-1.000000;-0.000000;,
  0.991793;-0.074036;0.104239;,
  -0.991793;-0.074036;0.104240;,
  0.000000;-0.997320;0.073156;,
  0.405644;-0.073218;-0.911094;,
  -0.405645;-0.073218;-0.911094;,
  0.741138;-0.073415;-0.667326;,
  -0.741138;-0.073415;-0.667326;,
  0.948469;-0.073704;-0.308179;,
  -0.948468;-0.073704;-0.308181;,
  -0.073620;-0.997256;-0.007776;,
  0.073617;-0.997256;-0.007775;,
  0.863630;-0.074354;0.498613;,
  -0.863629;-0.074354;0.498614;,
  0.586149;-0.074602;0.806762;,
  -0.586149;-0.074602;0.806762;,
  0.207330;-0.074738;0.975412;,
  -0.207330;-0.074738;0.975412;,
  0.000001;0.999979;-0.006561;,
  0.027733;0.997673;-0.062279;,
  0.050619;0.997678;-0.045566;,
  0.064689;0.997684;-0.021008;,
  0.003415;0.999994;0.000423;,
  0.058722;0.997698;0.033914;,
  0.039809;0.997703;0.054807;,
  0.014079;0.999310;0.034363;,
  -0.014080;0.999310;0.034366;,
  -0.039815;0.997702;0.054814;,
  -0.058733;0.997697;0.033921;,
  -0.003023;0.999995;0.000383;,
  -0.064703;0.997683;-0.021012;,
  -0.050628;0.997677;-0.045573;,
  -0.027736;0.997673;-0.062284;,
  0.000000;-0.999650;0.026470;,
  -0.029813;-0.997314;0.066908;,
  0.029813;-0.997314;0.066907;,
  -0.054601;-0.997300;0.049105;,
  0.054604;-0.997300;0.049107;,
  -0.070081;-0.997283;0.022725;,
  0.070084;-0.997282;0.022727;,
  -0.027139;-0.999627;-0.002926;,
  0.027144;-0.999627;-0.002935;,
  -0.064385;-0.997231;-0.037222;,
  0.064381;-0.997231;-0.037220;,
  -0.043808;-0.997215;-0.060352;,
  0.043809;-0.997215;-0.060352;,
  -0.010357;-0.999043;-0.042485;,
  0.010357;-0.999043;-0.042485;,
  -0.007927;0.999269;-0.037394;,
  0.009000;-0.999074;0.042062;,
  0.015556;-0.997199;0.073164;,
  -0.207377;-0.071559;-0.975640;,
  0.007928;0.999269;-0.037397;,
  -0.009000;-0.999074;0.042062;,
  -0.015556;-0.997199;0.073164;,
  0.207377;-0.071559;-0.975640;,
  0.000000;-0.999795;-0.020269;,
  -0.001345;0.999978;-0.006557;,
  -0.004140;-0.999786;-0.020269;,
  0.001348;0.999978;-0.006566;,
  0.004140;-0.999786;-0.020269;,
  0.036303;0.999334;-0.003758;,
  -0.043478;-0.999044;0.004596;,
  -0.075099;-0.997145;0.007871;,
  0.991922;-0.072261;-0.104256;,
  0.034682;0.999335;0.011291;,
  -0.041818;-0.999031;-0.013706;,
  -0.072112;-0.997121;-0.023452;,
  0.948547;-0.072593;0.308203;,
  0.019397;-0.999810;0.001930;,
  0.003469;0.999994;-0.000270;,
  0.019895;-0.999800;-0.001969;,
  0.003362;0.999994;0.001116;,
  0.018898;-0.999804;0.005828;,
  0.000000;0.999985;0.005454;,
  0.000000;-0.999584;-0.028827;,
  0.000000;-0.997078;-0.076389;,
  0.000000;-0.073149;0.997321;,
  0.000000;0.999985;0.005454;,
  0.000000;-0.999823;0.018799;,
  -0.036112;0.999341;-0.003738;,
  0.043492;-0.999043;0.004604;,
  0.075099;-0.997145;0.007871;,
  -0.991922;-0.072261;-0.104257;,
  -0.034495;0.999342;0.011233;,
  0.041809;-0.999031;-0.013725;,
  0.072105;-0.997121;-0.023450;,
  -0.948547;-0.072593;0.308202;,
  -0.019383;-0.999810;0.001912;,
  -0.003073;0.999995;-0.000228;,
  -0.019855;-0.999801;-0.001944;,
  -0.002973;0.999995;0.000993;,
  -0.018911;-0.999805;0.005767;,
  -0.949291;0.060877;-0.308450;,
  -0.014502;0.997567;-0.068195;,
  -0.992710;0.060347;-0.104335;,
  -0.978469;-0.024546;0.204929;,
  0.095711;0.000058;-0.995409;,
  0.000035;0.020695;-0.999786;,
  -0.994583;0.019868;0.102031;,
  0.193471;0.020304;-0.980896;,
  -0.958906;0.019403;0.283058;,
  0.978515;-0.022762;0.204914;,
  0.305315;-0.074786;0.949310;,
  -0.864247;0.064103;0.498967;,
  -0.586533;0.065317;0.807287;,
  -0.405891;0.064372;0.911652;,
  0.069097;0.997584;-0.007242;,
  -0.979718;0.195916;-0.042057;,
  -0.096733;0.009293;-0.995267;,
  0.000000;0.018808;0.999823;,
  0.994394;0.019865;0.103859;,
  0.000000;0.018808;0.999823;,
  0.957407;0.019381;0.288089;,
  0.979646;0.196332;-0.041797;,
  -0.312805;-0.030248;0.949335;,
  0.586536;0.065235;0.807291;,
  0.000001;1.000000;-0.000765;,
  0.000020;0.031111;0.999516;,
  -0.403895;0.030741;0.914288;,
  -0.742802;0.030385;0.668821;,
  -0.951582;0.030757;0.305851;,
  -0.994014;0.031132;-0.104721;,
  -0.867094;0.030754;-0.497194;,
  -0.587513;0.030418;-0.808643;,
  -0.204623;0.030786;-0.978357;,
  0.204763;0.030785;-0.978327;,
  0.587513;0.030418;-0.808643;,
  0.866889;0.030771;-0.497550;,
  0.993942;0.031138;-0.105399;,
  0.951552;0.030756;0.305947;,
  0.742803;0.030385;0.668821;,
  0.403906;0.030741;0.914284;,
  0.208475;0.030386;0.977556;,
  -0.208444;0.030385;0.977562;,
  -0.994059;0.030405;0.104514;,
  -0.950467;0.030396;-0.309336;,
  0.000144;0.030430;-0.999537;,
  0.994037;0.030405;0.104717;,
  0.950095;0.030414;-0.310473;,
  -0.015521;-0.997206;-0.073070;,
  0.015521;-0.997206;-0.073070;,
  -0.741829;0.059422;-0.667951;,
  -0.406039;0.058420;-0.911986;,
  -0.207576;0.056796;-0.976569;,
  -0.069112;0.997583;-0.007244;,
  -0.978288;-0.048606;0.201468;,
  -0.978071;-0.000471;0.208270;,
  0.098907;-0.001600;-0.995095;,
  0.092514;0.001717;-0.995710;,
  -0.193403;0.020304;-0.980909;,
  -0.193381;0.020304;-0.980914;,
  0.000035;0.020695;-0.999786;,
  0.000035;0.020695;-0.999786;,
  -0.193425;0.020304;-0.980905;,
  -0.996400;0.019656;-0.082470;,
  -0.996397;0.019649;-0.082502;,
  -0.994583;0.019864;0.102034;,
  -0.994583;0.019872;0.102027;,
  -0.996402;0.019662;-0.082438;,
  0.193450;0.020304;-0.980900;,
  0.193493;0.020304;-0.980892;,
  -0.958895;0.019401;0.283096;,
  -0.958917;0.019405;0.283021;,
  0.978423;-0.045009;0.201650;,
  0.978113;-0.000504;0.208075;,
  0.311604;-0.000605;0.950212;,
  0.297332;-0.148552;0.943147;,
  0.014501;0.997567;-0.068192;,
  0.207577;0.056767;-0.976570;,
  0.406042;0.058363;-0.911989;,
  -0.949225;0.061995;0.308428;,
  -0.065979;0.997590;0.021460;,
  0.741834;0.059316;-0.667955;,
  0.949298;0.060742;-0.308453;,
  -0.028145;0.997601;0.063241;,
  0.992718;0.060205;-0.104336;,
  -0.999890;0.007752;-0.012676;,
  -0.923615;0.376895;-0.069896;,
  -0.094483;0.019925;-0.995327;,
  -0.098971;-0.001339;-0.995089;,
  0.000000;0.018809;0.999823;,
  0.000000;0.018806;0.999823;,
  0.000000;0.018806;0.999823;,
  0.996269;0.019649;-0.084039;,
  0.996271;0.019651;-0.084010;,
  0.994394;0.019868;0.103858;,
  0.994393;0.019863;0.103860;,
  0.996266;0.019646;-0.084067;,
  0.957416;0.019384;0.288059;,
  0.957398;0.019377;0.288120;,
  0.999893;0.007694;-0.012472;,
  0.923296;0.377734;-0.069582;,
  -0.311947;-0.061151;0.948129;,
  -0.313364;0.000685;0.949633;,
  0.405892;0.064314;0.911655;,
  0.028143;0.997602;0.063235;,
  0.065965;0.997591;0.021454;,
  0.949234;0.061861;0.308429;,
  0.864254;0.063981;0.498970;,
  0.023924;0.999482;-0.021516;,
  0.012908;0.999483;-0.029455;,
  0.030701;0.999481;-0.009723;,
  0.018962;0.999479;0.026126;,
  0.028028;0.999480;0.015975;,
  0.006495;0.999478;0.031637;,
  -0.018964;0.999479;0.026125;,
  -0.006503;0.999478;0.031634;,
  -0.028015;0.999480;0.015998;,
  -0.023924;0.999482;-0.021516;,
  -0.030699;0.999481;-0.009729;,
  -0.012909;0.999483;-0.029455;,
  -0.006900;0.999457;-0.032232;,
  -0.000001;0.999483;-0.032153;,
  0.006898;0.999457;-0.032232;,
  0.032847;0.999455;-0.003433;,
  0.032051;0.999480;0.003408;,
  0.031422;0.999454;0.010266;,
  -0.000006;0.999452;0.033107;,
  -0.032846;0.999454;-0.003446;,
  -0.032046;0.999480;0.003457;,
  -0.031403;0.999453;0.010344;,
  0.000000;1.000000;0.000000;,
  -0.009556;0.992842;-0.119056;,
  0.068311;0.993006;-0.096295;,
  0.112645;0.993200;-0.029422;,
  0.104104;0.993333;0.049512;,
  0.047675;0.993350;0.104799;,
  -0.031255;0.993243;0.111763;,
  -0.097120;0.993057;0.066368;,
  -0.118580;0.992876;-0.011648;,
  -0.084000;0.992789;-0.085521;,
  0.000000;-1.000000;0.000000;,
  -0.193237;0.972225;0.132050;,
  -0.235901;0.971501;-0.023173;,
  -0.267238;0.000000;0.963631;,
  -0.167097;0.971152;-0.170123;,
  0.414693;0.000000;0.909961;,
  -0.019009;0.971362;-0.236842;,
  0.902586;0.000000;0.430510;,
  0.135910;0.972020;-0.191588;,
  0.968147;0.000000;-0.250381;,
  0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  -0.890798;0.454400;0.000000;,
  -0.995930;0.090134;0.000000;,
  0.885313;0.464995;0.000000;,
  0.995930;0.090134;0.000000;,
  0.297210;0.954812;0.000000;,
  -0.308580;0.951198;0.000000;,
  -0.983752;0.179534;0.000000;,
  0.983752;0.179534;0.000000;,
  -0.976983;-0.213318;0.000000;,
  -0.824126;0.000000;0.566407;,
  -0.995396;0.000000;-0.095845;,
  -0.062195;0.972969;0.222402;,
  -0.700910;0.000000;-0.713250;,
  0.094878;0.973396;0.208561;,
  -0.078460;0.000000;-0.996917;,
  0.207175;0.973329;0.098533;,
  0.580703;0.000000;-0.814115;,
  0.224149;0.972795;-0.058545;,
  -1.000000;0.000000;0.000000;,
  0.976090;-0.217367;-0.000000;;
  250;
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  4;5,7,7,5;,
  4;6,6,8,8;,
  4;7,9,9,7;,
  4;8,8,10,10;,
  4;13,15,15,13;,
  4;14,14,16,16;,
  4;15,17,17,15;,
  4;16,16,18,18;,
  4;35,37,37,35;,
  4;38,36,36,38;,
  4;37,39,39,37;,
  4;40,38,38,40;,
  4;43,45,45,43;,
  4;46,44,44,46;,
  4;45,47,141,45;,
  4;48,46,46,142;,
  4;50,34,4,51;,
  4;50,51,36,36;,
  4;52,0,0,52;,
  4;52,52,6,6;,
  3;1,1,1;,
  3;1,1,1;,
  4;54,35,35,55;,
  4;54,55,4,34;,
  4;56,5,5,56;,
  4;56,56,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  4;19,58,49,19;,
  4;59,57,34,50;,
  4;57,61,54,34;,
  4;60,19,19,53;,
  4;63,41,11,64;,
  4;63,64,39,39;,
  4;65,2,2,65;,
  4;65,65,9,9;,
  3;1,1,1;,
  3;1,1,1;,
  4;67,43,43,68;,
  4;67,68,11,41;,
  4;69,13,13,69;,
  4;69,69,2,2;,
  3;1,1,1;,
  3;1,1,1;,
  4;23,71,62,23;,
  4;72,70,41,63;,
  4;70,74,67,41;,
  4;73,23,23,66;,
  4;76,48,142,77;,
  4;76,77,141,47;,
  4;78,18,18,78;,
  4;78,78,17,17;,
  3;1,1,1;,
  3;1,1,1;,
  4;79,75,75,27;,
  4;80,80,48,76;,
  4;80,80,76,47;,
  4;75,79,26,75;,
  4;82,40,40,83;,
  4;82,83,12,42;,
  4;84,10,10,84;,
  4;84,84,3,3;,
  3;1,1,1;,
  3;1,1,1;,
  4;86,42,12,87;,
  4;86,87,44,44;,
  4;88,3,3,88;,
  4;88,88,14,14;,
  3;1,1,1;,
  3;1,1,1;,
  4;89,91,82,42;,
  4;90,30,30,81;,
  4;30,92,85,30;,
  4;93,89,42,86;,
  4;32,32,33,33;,
  4;143,144,144,143;,
  4;143,143,94,94;,
  4;32,31,31,32;,
  4;33,33,49,95;,
  4;144,145,145,144;,
  4;94,94,96,96;,
  4;31,146,81,31;,
  4;97,147,147,97;,
  4;97,97,148,148;,
  4;98,149,149,98;,
  4;98,98,150,150;,
  4;151,152,153,99;,
  4;151,99,154,155;,
  4;156,157,158,100;,
  4;156,100,159,160;,
  4;99,153,161,101;,
  4;99,101,162,154;,
  4;100,158,163,102;,
  4;100,102,164,159;,
  4;103,165,165,103;,
  4;103,103,166,166;,
  4;104,167,167,104;,
  4;104,104,168,168;,
  4;169,53,20,20;,
  4;170,171,171,170;,
  4;172,172,105,105;,
  4;173,29,29,85;,
  4;20,20,21,21;,
  4;171,174,174,171;,
  4;105,105,106,106;,
  4;29,28,28,29;,
  4;21,21,22,22;,
  4;174,175,175,174;,
  4;106,106,107,107;,
  4;28,176,27,28;,
  4;22,22,62,108;,
  4;175,177,177,175;,
  4;109,178,178,109;,
  4;109,109,179,179;,
  4;110,180,180,110;,
  4;110,110,181,181;,
  4;111,182,182,111;,
  4;111,111,183,184;,
  4;185,186,187,112;,
  4;185,112,188,189;,
  4;111,182,182,113;,
  4;111,113,183,183;,
  4;112,187,190,114;,
  4;112,114,191,188;,
  4;115,192,192,115;,
  4;115,115,193,193;,
  4;116,194,194,116;,
  4;116,116,195,195;,
  4;196,196,117,117;,
  4;197,25,25,26;,
  4;198,66,24,24;,
  4;199,200,200,199;,
  4;117,117,200,200;,
  4;25,24,24,25;,
  4;120,121,121,120;,
  3;118,201,202;,
  4;121,122,122,121;,
  3;118,203,201;,
  4;124,125,125,124;,
  3;118,204,205;,
  4;125,126,126,125;,
  3;118,206,204;,
  4;127,128,128,127;,
  3;118,207,208;,
  4;128,129,129,128;,
  3;118,209,207;,
  4;131,132,132,131;,
  3;118,210,211;,
  4;132,133,133,132;,
  3;118,212,210;,
  4;134,119,119,134;,
  3;213,118,214;,
  4;133,134,134,133;,
  3;213,212,118;,
  4;135,120,120,135;,
  3;215,118,202;,
  4;119,135,135,119;,
  3;215,214,118;,
  4;136,123,123,136;,
  3;216,118,217;,
  4;122,136,136,122;,
  3;216,203,118;,
  4;137,124,124,137;,
  3;218,118,205;,
  4;123,137,137,123;,
  3;218,217,118;,
  4;138,127,127,138;,
  3;219,118,208;,
  4;126,138,138,126;,
  3;219,206,118;,
  4;139,131,131,139;,
  3;220,118,211;,
  4;130,139,139,130;,
  3;220,221,118;,
  4;140,130,130,140;,
  3;222,118,221;,
  4;129,140,140,129;,
  3;222,209,118;,
  3;223,225,224;,
  3;223,226,225;,
  3;223,227,226;,
  3;223,228,227;,
  3;223,229,228;,
  3;223,230,229;,
  3;223,231,230;,
  3;223,232,231;,
  3;223,224,232;,
  3;233,233,233;,
  3;233,233,233;,
  3;233,233,233;,
  3;233,233,233;,
  3;233,233,233;,
  3;233,233,233;,
  3;233,233,233;,
  3;233,233,233;,
  3;233,233,233;,
  4;234,230,231,235;,
  4;255,256,256,255;,
  4;255,255,236,236;,
  4;234,257,229,230;,
  4;235,231,232,237;,
  4;256,258,258,256;,
  4;236,236,238,238;,
  4;257,259,228,229;,
  4;237,232,224,239;,
  4;258,260,260,258;,
  4;238,238,240,240;,
  4;259,261,227,228;,
  4;239,224,225,241;,
  4;260,262,262,260;,
  4;240,240,242,242;,
  4;261,263,226,227;,
  4;241,225,226,263;,
  4;262,242,242,262;,
  4;243,243,243,243;,
  4;244,244,244,244;,
  4;245,245,245,245;,
  4;264,264,264,264;,
  4;223,223,223,223;,
  4;233,233,233,233;,
  4;248,248,249,249;,
  4;246,246,247,247;,
  4;250,248,248,250;,
  4;245,245,245,245;,
  4;243,243,243,243;,
  4;251,250,250,251;,
  4;251,251,246,246;,
  4;245,245,245,245;,
  4;245,245,245,245;,
  4;243,243,243,243;,
  4;243,243,243,243;,
  4;233,233,233,233;,
  4;254,254,254,254;,
  4;243,243,243,243;,
  4;253,253,249,249;,
  4;245,245,245,245;,
  4;233,233,233,233;,
  4;245,245,245,245;,
  4;252,252,247,247;,
  4;243,243,243,243;,
  4;265,265,265,265;,
  4;233,233,233,233;;
 }
}
