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
 200;
 0.00000;88.72388;0.00000;,
 13.06061;88.72388;-13.06061;,
 0.00000;88.72388;-18.47049;,
 18.47049;88.72388;0.00000;,
 13.06061;88.72388;13.06061;,
 0.00000;88.72388;18.47049;,
 -13.06061;88.72388;13.06060;,
 -18.47049;88.72388;0.00000;,
 -13.06061;88.72388;-13.06061;,
 0.00000;7.53592;0.00000;,
 0.00000;7.53592;-18.47049;,
 13.06061;7.53592;-13.06061;,
 18.47049;7.53592;0.00000;,
 13.06061;7.53592;13.06061;,
 0.00000;7.53592;18.47049;,
 -13.06061;7.53592;13.06060;,
 -18.47049;7.53592;0.00000;,
 -13.06061;7.53592;-13.06061;,
 0.00000;58.22742;-18.47049;,
 13.06061;58.04811;-13.06061;,
 4.74179;49.62978;-4.74018;,
 -0.02710;49.70872;-6.71552;,
 18.47049;58.60066;0.00000;,
 6.71713;49.70324;0.02871;,
 13.06061;58.55319;13.06061;,
 4.74179;49.88606;4.79759;,
 0.00000;58.64782;18.47049;,
 0.02155;49.77719;6.88502;,
 -13.06061;58.32133;13.06060;,
 -4.79598;50.15009;4.79759;,
 -18.47049;57.76498;0.00000;,
 -6.77132;50.07664;0.02871;,
 -13.06061;58.07460;-13.06061;,
 -4.79598;49.89381;-4.74018;,
 -0.06967;47.32170;-6.63623;,
 4.74557;47.21148;-4.70533;,
 13.06061;40.60131;-13.06061;,
 0.00000;40.75241;-18.47049;,
 6.65621;47.25744;0.07591;,
 18.47049;40.48806;0.00000;,
 4.76855;47.23441;4.91414;,
 13.06061;40.47896;13.06061;,
 -0.06967;47.23827;7.02599;,
 0.00000;40.57936;18.47049;,
 -4.95009;47.12382;4.88812;,
 -13.06061;40.73045;13.06060;,
 -7.01019;47.30475;0.07591;,
 -18.47049;40.84373;0.00000;,
 -4.89629;47.32692;-4.75071;,
 -13.06061;40.85280;-13.06061;,
 13.06061;15.91924;-13.06061;,
 0.00000;15.88761;-18.47049;,
 18.47049;16.07773;0.00000;,
 13.06061;16.27023;13.06061;,
 0.00000;16.38401;18.47049;,
 -13.06061;16.35238;13.06060;,
 -18.47049;16.19390;0.00000;,
 -13.06061;16.00138;-13.06061;,
 0.00000;78.26696;-18.47049;,
 13.06061;78.34609;-13.06061;,
 18.47049;78.13747;0.00000;,
 13.06061;77.76327;13.06061;,
 0.00000;77.44272;18.47049;,
 -13.06061;77.36357;13.06060;,
 -18.47049;77.57220;0.00000;,
 -13.06061;77.94639;-13.06061;,
 0.00000;7.70010;0.00000;,
 14.94330;7.70010;-14.94330;,
 0.00000;7.70010;-21.13302;,
 21.13302;7.70010;0.00000;,
 14.94330;7.70010;14.94330;,
 0.00000;7.70010;21.13302;,
 -14.94330;7.70010;14.94330;,
 -21.13302;7.70010;0.00000;,
 -14.94330;7.70010;-14.94330;,
 0.00000;0.61963;0.00000;,
 0.00000;0.61963;-24.30031;,
 17.18291;0.61963;-17.18291;,
 24.30031;0.61963;0.00000;,
 17.18291;0.61963;17.18291;,
 0.00000;0.61963;24.30031;,
 -17.18291;0.61963;17.18290;,
 -24.30031;0.61963;0.00000;,
 -17.18291;0.61963;-17.18291;,
 0.00000;5.35396;-22.77470;,
 16.10414;5.28854;-16.10414;,
 16.10414;3.23708;-16.10414;,
 0.00000;3.20039;-22.77470;,
 22.77470;5.28235;0.00000;,
 22.77470;3.30862;0.00000;,
 16.10414;5.33904;16.10414;,
 16.10414;3.37313;16.10414;,
 0.00000;5.42539;22.77470;,
 0.00000;3.39281;22.77470;,
 -16.10414;5.49082;16.10414;,
 -16.10414;3.35614;16.10414;,
 -22.77470;5.49700;0.00000;,
 -22.77470;3.28459;0.00000;,
 -16.10414;5.44031;-16.10414;,
 -16.10414;3.22007;-16.10414;,
 17.18291;3.25343;-17.18291;,
 0.00000;3.13802;-24.30031;,
 24.30031;3.35015;0.00000;,
 17.18291;3.37151;17.18291;,
 0.00000;3.30500;24.30031;,
 -17.18291;3.18958;17.18290;,
 -24.30031;3.09287;0.00000;,
 -17.18291;3.07151;-17.18291;,
 0.00000;5.45666;-21.13302;,
 14.94330;5.42407;-14.94330;,
 21.13302;5.46255;0.00000;,
 14.94330;5.54955;14.94330;,
 0.00000;5.63410;21.13302;,
 -14.94330;5.66668;14.94330;,
 -21.13302;5.62820;0.00000;,
 -14.94330;5.54121;-14.94330;,
 0.00000;95.73928;0.00000;,
 14.94330;95.73928;-14.94330;,
 0.00000;95.73928;-21.13302;,
 21.13302;95.73928;0.00000;,
 14.94330;95.73928;14.94330;,
 0.00000;95.73928;21.13302;,
 -14.94330;95.73928;14.94330;,
 -21.13302;95.73928;0.00000;,
 -14.94330;95.73928;-14.94330;,
 0.00000;88.65881;0.00000;,
 0.00000;88.65881;-24.30031;,
 17.18291;88.65881;-17.18291;,
 24.30031;88.65881;0.00000;,
 17.18291;88.65881;17.18291;,
 0.00000;88.65881;24.30031;,
 -17.18291;88.65881;17.18290;,
 -24.30031;88.65881;0.00000;,
 -17.18291;88.65881;-17.18291;,
 0.00000;93.39315;-22.77470;,
 16.10414;93.32772;-16.10414;,
 16.10414;91.27626;-16.10414;,
 0.00000;91.23958;-22.77470;,
 22.77470;93.32155;0.00000;,
 22.77470;91.34780;0.00000;,
 16.10414;93.37824;16.10414;,
 16.10414;91.41232;16.10414;,
 0.00000;93.46458;22.77470;,
 0.00000;91.43200;22.77470;,
 -16.10414;93.53001;16.10414;,
 -16.10414;91.39531;16.10414;,
 -22.77470;93.53618;0.00000;,
 -22.77470;91.32377;0.00000;,
 -16.10414;93.47949;-16.10414;,
 -16.10414;91.25925;-16.10414;,
 17.18291;91.29262;-17.18291;,
 0.00000;91.17720;-24.30031;,
 24.30031;91.38933;0.00000;,
 17.18291;91.41069;17.18291;,
 0.00000;91.34419;24.30031;,
 -17.18291;91.22877;17.18290;,
 -24.30031;91.13206;0.00000;,
 -17.18291;91.11069;-17.18291;,
 0.00000;93.49584;-21.13302;,
 14.94330;93.46326;-14.94330;,
 21.13302;93.50173;0.00000;,
 14.94330;93.58873;14.94330;,
 0.00000;93.67328;21.13302;,
 -14.94330;93.70586;14.94330;,
 -21.13302;93.66738;0.00000;,
 -14.94330;93.58040;-14.94330;,
 0.00000;95.52166;0.00000;,
 0.00000;95.52166;-18.28713;,
 12.93095;95.52166;-12.93095;,
 18.28713;95.52166;0.00000;,
 12.93095;95.52166;12.93095;,
 0.00000;95.52166;18.28713;,
 -12.93095;95.52166;12.93095;,
 -18.28713;95.52166;0.00000;,
 -12.93095;95.52166;-12.93095;,
 -0.01778;112.98447;-1.91383;,
 0.00000;124.89727;0.00000;,
 1.33182;113.00484;-1.34462;,
 5.33241;110.75110;-5.33823;,
 -0.00869;110.84636;-7.50297;,
 1.88934;113.00789;0.00498;,
 7.54946;110.74177;0.00287;,
 1.33640;112.99195;1.35916;,
 5.30662;110.82415;5.31818;,
 -0.01778;112.96602;1.93302;,
 -0.00869;110.94798;7.45789;,
 -1.38848;112.94517;1.37569;,
 -5.24738;111.04077;5.24155;,
 -1.95776;112.94212;0.00498;,
 -7.41284;111.04968;0.00287;,
 -1.38377;112.95850;-1.36101;,
 -5.27243;110.96992;-5.26088;,
 10.72740;106.22288;-10.74904;,
 -0.02119;106.33093;-15.14724;,
 15.20306;106.17608;-0.00043;,
 10.72896;106.21856;10.74972;,
 -0.02119;106.32476;15.14945;,
 -10.69582;106.43213;10.67420;,
 -15.09435;106.47813;-0.00043;,
 -10.69430;106.43643;-10.67354;;
 
 224;
 3;0,1,2;,
 3;0,3,1;,
 3;0,4,3;,
 3;0,5,4;,
 3;0,6,5;,
 3;0,7,6;,
 3;0,8,7;,
 3;0,2,8;,
 3;9,10,11;,
 3;9,11,12;,
 3;9,12,13;,
 3;9,13,14;,
 3;9,14,15;,
 3;9,15,16;,
 3;9,16,17;,
 3;9,17,10;,
 4;18,19,20,21;,
 4;19,22,23,20;,
 4;22,24,25,23;,
 4;24,26,27,25;,
 4;26,28,29,27;,
 4;28,30,31,29;,
 4;30,32,33,31;,
 4;32,18,21,33;,
 4;34,21,20,35;,
 4;34,35,36,37;,
 4;35,20,23,38;,
 4;35,38,39,36;,
 4;38,23,25,40;,
 4;38,40,41,39;,
 4;40,25,27,42;,
 4;40,42,43,41;,
 4;42,27,29,44;,
 4;42,44,45,43;,
 4;44,29,31,46;,
 4;44,46,47,45;,
 4;46,31,33,48;,
 4;46,48,49,47;,
 4;48,33,21,34;,
 4;48,34,37,49;,
 4;50,11,10,51;,
 4;50,51,37,36;,
 4;52,12,11,50;,
 4;52,50,36,39;,
 4;53,13,12,52;,
 4;53,52,39,41;,
 4;54,14,13,53;,
 4;54,53,41,43;,
 4;55,15,14,54;,
 4;55,54,43,45;,
 4;56,16,15,55;,
 4;56,55,45,47;,
 4;57,17,16,56;,
 4;57,56,47,49;,
 4;51,10,17,57;,
 4;51,57,49,37;,
 4;58,2,1,59;,
 4;58,59,19,18;,
 4;59,1,3,60;,
 4;59,60,22,19;,
 4;60,3,4,61;,
 4;60,61,24,22;,
 4;61,4,5,62;,
 4;61,62,26,24;,
 4;62,5,6,63;,
 4;62,63,28,26;,
 4;63,6,7,64;,
 4;63,64,30,28;,
 4;64,7,8,65;,
 4;64,65,32,30;,
 4;65,8,2,58;,
 4;65,58,18,32;,
 3;66,67,68;,
 3;66,69,67;,
 3;66,70,69;,
 3;66,71,70;,
 3;66,72,71;,
 3;66,73,72;,
 3;66,74,73;,
 3;66,68,74;,
 3;75,76,77;,
 3;75,77,78;,
 3;75,78,79;,
 3;75,79,80;,
 3;75,80,81;,
 3;75,81,82;,
 3;75,82,83;,
 3;75,83,76;,
 4;84,85,86,87;,
 4;85,88,89,86;,
 4;88,90,91,89;,
 4;90,92,93,91;,
 4;92,94,95,93;,
 4;94,96,97,95;,
 4;96,98,99,97;,
 4;98,84,87,99;,
 4;100,77,76,101;,
 4;100,101,87,86;,
 4;102,78,77,100;,
 4;102,100,86,89;,
 4;103,79,78,102;,
 4;103,102,89,91;,
 4;104,80,79,103;,
 4;104,103,91,93;,
 4;105,81,80,104;,
 4;105,104,93,95;,
 4;106,82,81,105;,
 4;106,105,95,97;,
 4;107,83,82,106;,
 4;107,106,97,99;,
 4;101,76,83,107;,
 4;101,107,99,87;,
 4;108,68,67,109;,
 4;108,109,85,84;,
 4;109,67,69,110;,
 4;109,110,88,85;,
 4;110,69,70,111;,
 4;110,111,90,88;,
 4;111,70,71,112;,
 4;111,112,92,90;,
 4;112,71,72,113;,
 4;112,113,94,92;,
 4;113,72,73,114;,
 4;113,114,96,94;,
 4;114,73,74,115;,
 4;114,115,98,96;,
 4;115,74,68,108;,
 4;115,108,84,98;,
 3;116,117,118;,
 3;116,119,117;,
 3;116,120,119;,
 3;116,121,120;,
 3;116,122,121;,
 3;116,123,122;,
 3;116,124,123;,
 3;116,118,124;,
 3;125,126,127;,
 3;125,127,128;,
 3;125,128,129;,
 3;125,129,130;,
 3;125,130,131;,
 3;125,131,132;,
 3;125,132,133;,
 3;125,133,126;,
 4;134,135,136,137;,
 4;135,138,139,136;,
 4;138,140,141,139;,
 4;140,142,143,141;,
 4;142,144,145,143;,
 4;144,146,147,145;,
 4;146,148,149,147;,
 4;148,134,137,149;,
 4;150,127,126,151;,
 4;150,151,137,136;,
 4;152,128,127,150;,
 4;152,150,136,139;,
 4;153,129,128,152;,
 4;153,152,139,141;,
 4;154,130,129,153;,
 4;154,153,141,143;,
 4;155,131,130,154;,
 4;155,154,143,145;,
 4;156,132,131,155;,
 4;156,155,145,147;,
 4;157,133,132,156;,
 4;157,156,147,149;,
 4;151,126,133,157;,
 4;151,157,149,137;,
 4;158,118,117,159;,
 4;158,159,135,134;,
 4;159,117,119,160;,
 4;159,160,138,135;,
 4;160,119,120,161;,
 4;160,161,140,138;,
 4;161,120,121,162;,
 4;161,162,142,140;,
 4;162,121,122,163;,
 4;162,163,144,142;,
 4;163,122,123,164;,
 4;163,164,146,144;,
 4;164,123,124,165;,
 4;164,165,148,146;,
 4;165,124,118,158;,
 4;165,158,134,148;,
 3;166,167,168;,
 3;166,168,169;,
 3;166,169,170;,
 3;166,170,171;,
 3;166,171,172;,
 3;166,172,173;,
 3;166,173,174;,
 3;166,174,167;,
 3;175,176,177;,
 4;175,177,178,179;,
 3;177,176,180;,
 4;177,180,181,178;,
 3;180,176,182;,
 4;180,182,183,181;,
 3;182,176,184;,
 4;182,184,185,183;,
 3;184,176,186;,
 4;184,186,187,185;,
 3;186,176,188;,
 4;186,188,189,187;,
 3;188,176,190;,
 4;188,190,191,189;,
 3;190,176,175;,
 4;190,175,179,191;,
 4;192,168,167,193;,
 4;192,193,179,178;,
 4;194,169,168,192;,
 4;194,192,178,181;,
 4;195,170,169,194;,
 4;195,194,181,183;,
 4;196,171,170,195;,
 4;196,195,183,185;,
 4;197,172,171,196;,
 4;197,196,185,187;,
 4;198,173,172,197;,
 4;198,197,187,189;,
 4;199,174,173,198;,
 4;199,198,189,191;,
 4;193,167,174,199;,
 4;193,199,191,179;;
 
 MeshMaterialList {
  3;
  224;
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  2,
  1,
  2,
  1,
  2,
  1,
  2,
  1,
  2,
  1,
  2,
  1,
  2,
  1,
  2,
  1,
  1,
  2,
  1,
  2,
  1,
  2,
  1,
  2,
  1,
  2,
  1,
  2,
  1,
  2,
  1,
  2,
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
   0.800000;0.568000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.765600;0.787200;0.796800;0.700000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.191400;0.196800;0.199200;;
  }
  Material {
   0.241600;0.517600;0.360800;0.700000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  170;
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  -0.004656;-0.473096;-0.880998;,
  0.623720;-0.477501;-0.618843;,
  0.886867;-0.461928;0.009460;,
  0.639454;-0.446077;0.626189;,
  -0.002106;-0.439456;0.898261;,
  -0.408803;-0.810502;0.419484;,
  -0.560580;-0.828027;0.011053;,
  -0.447503;-0.608663;-0.655187;,
  0.009646;0.874210;-0.485452;,
  0.353185;0.870750;-0.342131;,
  0.497152;0.867663;0.000720;,
  0.357660;0.865396;0.350955;,
  0.001946;0.870127;0.492823;,
  -0.347359;0.868491;0.353645;,
  -0.486822;0.873447;0.009708;,
  -0.339571;0.874403;-0.346570;,
  -0.005643;-0.467339;-0.884060;,
  0.627574;-0.467114;-0.622860;,
  0.887953;-0.459815;0.010439;,
  0.629508;-0.457097;0.628317;,
  -0.003145;-0.460452;0.887679;,
  -0.621898;-0.467739;0.628063;,
  -0.876942;-0.480553;0.006415;,
  -0.624786;-0.472249;-0.621790;,
  0.001752;-0.015128;-0.999884;,
  0.707090;-0.022944;-0.706751;,
  0.858628;0.512598;-0.000547;,
  0.610503;0.523558;0.594284;,
  0.002238;0.541158;0.840918;,
  -0.593265;0.544568;0.592860;,
  -0.835448;0.549552;0.004385;,
  -0.591761;0.533679;-0.604157;,
  0.000000;0.000000;-1.000000;,
  0.707107;0.000000;-0.707107;,
  1.000000;0.000000;0.000000;,
  0.707107;0.000000;0.707107;,
  -0.000000;0.000000;1.000000;,
  -0.707107;0.000000;0.707107;,
  -1.000000;0.000000;0.000000;,
  -0.707107;0.000000;-0.707107;,
  0.000000;0.000000;-1.000000;,
  1.000000;0.000000;0.000000;,
  -0.000000;0.000000;1.000000;,
  -0.709096;0.069198;0.701709;,
  -0.997618;0.068936;-0.002356;,
  -0.918406;0.054793;-0.391827;,
  0.707107;0.000000;-0.707107;,
  1.000000;0.000000;0.000000;,
  0.707107;0.000000;0.707107;,
  0.707107;0.000000;0.707107;,
  -0.000000;0.000000;1.000000;,
  -0.707107;0.000000;0.707107;,
  -0.707107;0.000000;-0.707107;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;0.000000;-1.000000;,
  0.707107;0.000000;-0.707107;,
  1.000000;0.000000;0.000000;,
  0.707107;0.000000;0.707107;,
  -0.000000;0.000000;1.000000;,
  -0.707107;0.000000;0.707107;,
  -1.000000;0.000000;0.000000;,
  -0.707107;0.000000;-0.707107;,
  0.000000;0.000000;-1.000000;,
  0.707107;0.000000;-0.707107;,
  1.000000;0.000000;0.000000;,
  0.707107;0.000000;0.707107;,
  -0.000000;0.000000;1.000000;,
  -0.707107;0.000000;0.707107;,
  -1.000000;0.000000;0.000000;,
  -0.707107;0.000000;-0.707107;,
  -0.000000;0.000001;-1.000000;,
  0.707107;0.000001;-0.707107;,
  1.000000;0.000001;0.000000;,
  -0.000000;0.000000;1.000000;,
  -0.009114;0.999935;-0.006901;,
  -0.013658;0.998965;-0.043393;,
  -0.016794;0.999857;-0.002106;,
  -0.000636;0.999935;0.011391;,
  -0.013585;0.998314;0.056433;,
  -0.078353;0.994927;0.063090;,
  -0.114264;0.993448;-0.002188;,
  -0.070199;0.995796;-0.058835;,
  0.005922;0.997689;-0.067684;,
  0.064292;0.996348;-0.056187;,
  0.108004;0.994148;0.002173;,
  0.088646;0.992438;0.084902;,
  0.005846;0.992650;0.120883;,
  -0.069711;0.994555;0.077468;,
  -0.081636;0.996660;0.002244;,
  -0.045091;0.997802;-0.048567;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;0.000000;-1.000000;,
  0.707107;0.000000;-0.707107;,
  1.000000;0.000000;0.000000;,
  0.707107;0.000000;0.707107;,
  -0.000000;0.000000;1.000000;,
  -0.707107;0.000000;0.707107;,
  -1.000000;0.000000;0.000000;,
  -0.707107;0.000000;-0.707107;,
  0.000000;0.000000;-1.000000;,
  0.707107;0.000000;-0.707107;,
  1.000000;0.000000;0.000000;,
  0.707107;0.000000;0.707107;,
  -0.000000;0.000000;1.000000;,
  -0.707107;0.000000;0.707107;,
  -1.000000;0.000000;0.000000;,
  -0.707107;0.000000;-0.707107;,
  -0.000000;0.000001;-1.000000;,
  0.707107;0.000001;-0.707107;,
  1.000000;0.000001;0.000000;,
  -0.000000;0.000000;1.000000;,
  -1.000000;0.000000;0.000000;,
  -0.008905;0.999936;-0.006987;,
  -0.013658;0.998965;-0.043393;,
  -0.016586;0.999860;-0.002193;,
  -0.000635;0.999935;0.011392;,
  -0.013584;0.998314;0.056431;,
  -0.078554;0.994906;0.063171;,
  -0.114466;0.993425;-0.002104;,
  -0.070199;0.995796;-0.058835;,
  0.005900;0.997686;-0.067733;,
  0.064290;0.996348;-0.056186;,
  0.107999;0.994149;0.002172;,
  0.088663;0.992433;0.084950;,
  0.005733;0.992604;0.121258;,
  -0.069844;0.994520;0.077794;,
  -0.081635;0.996660;0.002243;,
  -0.045112;0.997798;-0.048617;,
  0.000000;-1.000000;0.000000;,
  0.700091;0.157158;-0.696545;,
  0.006003;0.899704;-0.436460;,
  0.314119;0.897315;-0.310088;,
  0.443029;0.896507;-0.001024;,
  0.315186;0.897698;0.307891;,
  0.006283;0.901272;0.433209;,
  -0.297968;0.905122;0.303266;,
  -0.423275;0.905999;-0.001869;,
  -0.299299;0.903349;-0.307215;,
  0.005196;0.643858;-0.765127;,
  0.545069;0.639424;-0.542251;,
  0.769232;0.638968;-0.001340;,
  0.545202;0.642538;0.538423;,
  0.005498;0.649775;0.760107;,
  -0.696063;0.161387;0.699608;,
  -0.986855;0.161605;-0.001397;,
  -0.694784;0.160453;-0.701092;,
  0.003909;0.620478;-0.784214;,
  0.556525;0.619783;-0.553307;,
  0.785727;0.618573;-0.000608;,
  0.558376;0.617670;0.553805;,
  0.003945;0.617894;0.786251;,
  -0.553639;0.619085;0.556972;,
  -0.784508;0.620118;-0.000801;,
  -0.552179;0.620529;-0.556815;,
  0.701364;0.158080;0.695054;,
  -0.234624;0.942419;0.238323;,
  -0.332878;0.942967;-0.002277;,
  -0.240800;0.938516;-0.247391;,
  0.678669;0.278684;-0.679517;,
  -0.000830;0.279026;-0.960283;,
  0.960431;0.278518;-0.000017;,
  0.678689;0.278668;0.679503;,
  -0.000831;0.279008;0.960288;,
  -0.679405;0.279252;0.678548;,
  -0.960199;0.279317;-0.000017;,
  -0.679386;0.279265;-0.678562;;
  224;
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  3;1,1,1;,
  4;18,19,3,2;,
  4;19,20,4,3;,
  4;20,21,5,4;,
  4;21,22,6,5;,
  4;22,23,7,6;,
  4;23,24,8,7;,
  4;24,25,9,8;,
  4;25,18,2,9;,
  4;26,2,3,27;,
  4;10,11,11,10;,
  4;27,3,4,28;,
  4;11,28,12,11;,
  4;28,4,5,29;,
  4;28,29,13,12;,
  4;29,5,6,30;,
  4;29,30,14,13;,
  4;30,6,45,31;,
  4;30,31,15,14;,
  4;31,45,46,32;,
  4;31,32,16,15;,
  4;32,46,47,33;,
  4;32,33,17,16;,
  4;33,9,2,26;,
  4;33,10,10,17;,
  4;35,48,42,34;,
  4;35,34,42,48;,
  4;36,49,48,35;,
  4;36,35,48,43;,
  4;37,50,49,36;,
  4;37,36,43,51;,
  4;38,52,50,37;,
  4;38,37,51,38;,
  4;39,39,52,38;,
  4;39,38,38,53;,
  4;40,40,39,39;,
  4;40,39,53,40;,
  4;41,54,40,40;,
  4;41,40,40,54;,
  4;34,42,54,41;,
  4;34,41,54,42;,
  4;42,42,48,35;,
  4;42,35,19,18;,
  4;35,48,43,43;,
  4;35,43,20,19;,
  4;43,43,51,37;,
  4;43,37,21,20;,
  4;37,51,52,44;,
  4;37,44,22,21;,
  4;44,52,39,39;,
  4;44,39,23,22;,
  4;39,39,40,40;,
  4;39,40,24,23;,
  4;40,40,54,41;,
  4;40,41,25,24;,
  4;41,54,42,42;,
  4;41,42,18,25;,
  3;55,55,55;,
  3;55,55,55;,
  3;55,55,55;,
  3;55,55,55;,
  3;55,55,55;,
  3;55,55,55;,
  3;55,55,55;,
  3;55,55,55;,
  3;56,56,56;,
  3;56,56,56;,
  3;56,56,56;,
  3;56,56,56;,
  3;56,56,56;,
  3;56,56,56;,
  3;56,56,56;,
  3;56,56,56;,
  4;57,58,58,57;,
  4;58,59,59,58;,
  4;59,60,60,59;,
  4;60,61,61,60;,
  4;61,62,62,61;,
  4;62,63,63,62;,
  4;63,64,64,63;,
  4;64,57,57,64;,
  4;66,66,65,65;,
  4;77,78,78,77;,
  4;67,67,66,66;,
  4;79,77,77,79;,
  4;68,68,67,67;,
  4;80,79,79,80;,
  4;69,69,68,68;,
  4;81,80,80,81;,
  4;70,70,69,69;,
  4;82,81,81,82;,
  4;71,71,70,70;,
  4;83,82,82,83;,
  4;72,72,71,71;,
  4;84,83,83,84;,
  4;65,65,72,72;,
  4;78,84,84,78;,
  4;73,73,74,74;,
  4;85,86,86,85;,
  4;74,74,75,75;,
  4;86,87,87,86;,
  4;75,75,60,60;,
  4;87,88,88,87;,
  4;60,60,76,76;,
  4;88,89,89,88;,
  4;76,76,70,70;,
  4;89,90,90,89;,
  4;70,70,71,71;,
  4;90,91,91,90;,
  4;71,71,72,72;,
  4;91,92,92,91;,
  4;72,72,73,73;,
  4;92,85,85,92;,
  3;93,93,93;,
  3;93,93,93;,
  3;93,93,93;,
  3;93,93,93;,
  3;93,93,93;,
  3;93,93,93;,
  3;93,93,93;,
  3;93,93,93;,
  3;94,94,94;,
  3;94,94,94;,
  3;94,94,94;,
  3;94,94,94;,
  3;94,94,94;,
  3;94,94,94;,
  3;94,94,94;,
  3;94,94,94;,
  4;95,96,96,95;,
  4;96,97,97,96;,
  4;97,98,98,97;,
  4;98,99,99,98;,
  4;99,100,100,99;,
  4;100,101,101,100;,
  4;101,102,102,101;,
  4;102,95,95,102;,
  4;104,104,103,103;,
  4;116,117,117,116;,
  4;105,105,104,104;,
  4;118,116,116,118;,
  4;106,106,105,105;,
  4;119,118,118,119;,
  4;107,107,106,106;,
  4;120,119,119,120;,
  4;108,108,107,107;,
  4;121,120,120,121;,
  4;109,109,108,108;,
  4;122,121,121,122;,
  4;110,110,109,109;,
  4;123,122,122,123;,
  4;103,103,110,110;,
  4;117,123,123,117;,
  4;111,111,112,112;,
  4;124,125,125,124;,
  4;112,112,113,113;,
  4;125,126,126,125;,
  4;113,113,106,106;,
  4;126,127,127,126;,
  4;106,106,114,114;,
  4;127,128,128,127;,
  4;114,114,108,108;,
  4;128,129,129,128;,
  4;108,108,115,115;,
  4;129,130,130,129;,
  4;115,115,102,102;,
  4;130,131,131,130;,
  4;102,102,111,111;,
  4;131,124,124,131;,
  3;132,132,132;,
  3;132,132,132;,
  3;132,132,132;,
  3;132,132,132;,
  3;132,132,132;,
  3;132,132,132;,
  3;132,132,132;,
  3;132,132,132;,
  3;142,133,143;,
  4;142,143,135,134;,
  3;143,133,144;,
  4;143,144,136,135;,
  3;144,158,145;,
  4;144,145,137,136;,
  3;145,158,146;,
  4;145,146,138,137;,
  3;146,147,147;,
  4;146,159,139,138;,
  3;147,147,148;,
  4;159,160,140,139;,
  3;148,149,149;,
  4;160,161,141,140;,
  3;149,149,142;,
  4;161,142,134,141;,
  4;151,162,163,150;,
  4;151,150,134,135;,
  4;152,164,162,151;,
  4;152,151,135,136;,
  4;153,165,164,152;,
  4;153,152,136,137;,
  4;154,166,165,153;,
  4;154,153,137,138;,
  4;155,167,166,154;,
  4;155,154,138,139;,
  4;156,168,167,155;,
  4;156,155,139,140;,
  4;157,169,168,156;,
  4;157,156,140,141;,
  4;150,163,169,157;,
  4;150,157,141,134;;
 }
}
