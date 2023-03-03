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
 352;
 -300.39001;0.00000;500.00000;,
 -233.63670;0.00000;500.00000;,
 -233.63670;0.00000;433.24670;,
 -300.39001;0.00000;433.24670;,
 -166.88330;0.00000;500.00000;,
 -166.88330;0.00000;433.24670;,
 -100.13000;0.00000;500.00000;,
 -100.13000;0.00000;433.24670;,
 -33.37670;0.00000;500.00000;,
 -33.37670;0.00000;433.24670;,
 33.37670;0.00000;500.00000;,
 33.37670;0.00000;433.24670;,
 100.13000;0.00000;500.00000;,
 100.13000;0.00000;433.24670;,
 166.88330;0.00000;500.00000;,
 166.88330;0.00000;433.24670;,
 233.63670;0.00000;500.00000;,
 233.63670;0.00000;433.24670;,
 300.39001;0.00000;500.00000;,
 300.39001;0.00000;433.24670;,
 -233.63670;0.00000;366.49329;,
 -300.39001;0.00000;366.49329;,
 -166.88330;0.00000;366.49329;,
 -100.13000;0.00000;366.49329;,
 -33.37670;0.00000;366.49329;,
 33.37670;0.00000;366.49329;,
 100.13000;0.00000;366.49329;,
 166.88330;0.00000;366.49329;,
 233.63670;0.00000;366.49329;,
 300.39001;0.00000;366.49329;,
 -233.63670;0.00000;299.73999;,
 -300.39001;0.00000;299.73999;,
 -166.88330;0.00000;299.73999;,
 -100.13000;0.00000;299.73999;,
 -33.37670;0.00000;299.73999;,
 33.37670;0.00000;299.73999;,
 100.13000;0.00000;299.73999;,
 166.88330;0.00000;299.73999;,
 233.63670;0.00000;299.73999;,
 300.39001;0.00000;299.73999;,
 -233.63670;0.00000;232.98669;,
 -300.39001;0.00000;232.98669;,
 -166.88330;0.00000;232.98669;,
 -100.13000;0.00000;232.98669;,
 -33.37670;0.00000;232.98669;,
 33.37670;0.00000;232.98669;,
 100.13000;0.00000;232.98669;,
 166.88330;0.00000;232.98669;,
 233.63670;0.00000;232.98669;,
 300.39001;0.00000;232.98669;,
 -233.63670;0.00000;166.23340;,
 -300.39001;0.00000;166.23340;,
 -166.88330;0.00000;166.23340;,
 -100.13000;0.00000;166.23340;,
 -33.37670;0.00000;166.23340;,
 33.37670;0.00000;166.23340;,
 100.13000;0.00000;166.23340;,
 166.88330;0.00000;166.23340;,
 233.63670;0.00000;166.23340;,
 300.39001;0.00000;166.23340;,
 -233.63670;0.00000;99.48010;,
 -300.39001;0.00000;99.48010;,
 -166.88330;0.00000;99.48010;,
 -100.13000;0.00000;99.48010;,
 -33.37670;0.00000;99.48010;,
 33.37670;0.00000;99.48010;,
 100.13000;0.00000;99.48010;,
 166.88330;0.00000;99.48010;,
 233.63670;0.00000;99.48010;,
 300.39001;0.00000;99.48010;,
 -233.63670;0.00000;32.72670;,
 -300.39001;0.00000;32.72670;,
 -166.88330;0.00000;32.72670;,
 -100.13000;0.00000;32.72670;,
 -33.37670;0.00000;32.72670;,
 33.37670;0.00000;32.72670;,
 100.13000;0.00000;32.72670;,
 166.88330;0.00000;32.72670;,
 233.63670;0.00000;32.72670;,
 300.39001;0.00000;32.72670;,
 -233.63670;0.00000;-34.02660;,
 -300.39001;0.00000;-34.02660;,
 -166.88330;0.00000;-34.02660;,
 -100.13000;0.00000;-34.02660;,
 -33.37670;0.00000;-34.02660;,
 33.37670;0.00000;-34.02660;,
 100.13000;0.00000;-34.02660;,
 166.88330;0.00000;-34.02660;,
 233.63670;0.00000;-34.02660;,
 300.39001;0.00000;-34.02660;,
 -233.63670;0.00000;-100.77980;,
 -300.39001;0.00000;-100.77980;,
 -166.88330;0.00000;-100.77980;,
 -100.13000;0.00000;-100.77980;,
 -33.37670;0.00000;-100.77980;,
 33.37670;0.00000;-100.77980;,
 100.13000;0.00000;-100.77980;,
 166.88330;0.00000;-100.77980;,
 233.63670;0.00000;-100.77980;,
 300.39001;0.00000;-100.77980;,
 -233.63670;0.00000;-167.53329;,
 -300.39001;0.00000;-167.53329;,
 -166.88330;0.00000;-167.53329;,
 -100.13000;0.00000;-167.53329;,
 -33.37670;0.00000;-167.53329;,
 33.37670;0.00000;-167.53329;,
 100.13000;0.00000;-167.53329;,
 166.88330;0.00000;-167.53329;,
 233.63670;0.00000;-167.53329;,
 300.39001;0.00000;-167.53329;,
 -233.63670;0.00000;-234.28661;,
 -300.39001;0.00000;-234.28661;,
 -166.88330;0.00000;-234.28661;,
 -100.13000;0.00000;-234.28661;,
 -33.37670;0.00000;-234.28661;,
 33.37670;0.00000;-234.28661;,
 100.13000;0.00000;-234.28661;,
 166.88330;0.00000;-234.28661;,
 233.63670;0.00000;-234.28661;,
 300.39001;0.00000;-234.28661;,
 -233.63670;0.00000;-301.04019;,
 -300.39001;0.00000;-301.04019;,
 -166.88330;0.00000;-301.04019;,
 -100.13000;0.00000;-301.04019;,
 -33.37670;0.00000;-301.04019;,
 33.37670;0.00000;-301.04019;,
 100.13000;0.00000;-301.04019;,
 166.88330;0.00000;-301.04019;,
 233.63670;0.00000;-301.04019;,
 300.39001;0.00000;-301.04019;,
 -233.63670;0.00000;-367.79379;,
 -300.39001;0.00000;-367.79379;,
 -166.88330;0.00000;-367.79379;,
 -100.13000;0.00000;-367.79379;,
 -33.37670;0.00000;-367.79379;,
 33.37670;0.00000;-367.79379;,
 100.13000;0.00000;-367.79379;,
 166.88330;0.00000;-367.79379;,
 233.63670;0.00000;-367.79379;,
 300.39001;0.00000;-367.79379;,
 -233.63670;0.00000;-434.54700;,
 -300.39001;0.00000;-434.54700;,
 -166.88330;0.00000;-434.54700;,
 -100.13000;0.00000;-434.54700;,
 -33.37670;0.00000;-434.54700;,
 33.37670;0.00000;-434.54700;,
 100.13000;0.00000;-434.54700;,
 166.88330;0.00000;-434.54700;,
 233.63670;0.00000;-434.54700;,
 300.39001;0.00000;-434.54700;,
 -233.63670;0.00000;-501.30020;,
 -300.39001;0.00000;-501.30020;,
 -166.88330;0.00000;-501.30020;,
 -100.13000;0.00000;-501.30020;,
 -33.37670;0.00000;-501.30020;,
 33.37670;0.00000;-501.30020;,
 100.13000;0.00000;-501.30020;,
 166.88330;0.00000;-501.30020;,
 233.63670;0.00000;-501.30020;,
 300.39001;0.00000;-501.30020;,
 -433.89670;19.51490;500.00000;,
 -500.64999;19.51490;500.00000;,
 -500.64999;0.00000;500.00000;,
 -433.89670;0.00000;500.00000;,
 -500.64999;19.51490;433.24670;,
 -500.64999;0.00000;433.24670;,
 -433.89670;19.51490;433.24670;,
 -367.14331;19.51490;500.00000;,
 -367.14331;0.00000;500.00000;,
 -367.14331;19.51490;433.24670;,
 -300.39001;19.51490;500.00000;,
 -300.39001;19.51490;433.24670;,
 367.14331;19.51490;500.00000;,
 300.39001;19.51490;500.00000;,
 367.14331;0.00000;500.00000;,
 300.39001;19.51490;433.24670;,
 367.14331;19.51490;433.24670;,
 433.89670;19.51490;500.00000;,
 433.89670;0.00000;500.00000;,
 433.89670;19.51490;433.24670;,
 500.64999;19.51490;500.00000;,
 500.64999;0.00000;500.00000;,
 500.64999;19.51490;433.24670;,
 500.64999;0.00000;433.24670;,
 -500.64999;19.51490;366.49329;,
 -500.64999;0.00000;366.49329;,
 -433.89670;19.51490;366.49329;,
 -367.14331;19.51490;366.49329;,
 -300.39001;19.51490;366.49329;,
 300.39001;19.51490;366.49329;,
 367.14331;19.51490;366.49329;,
 433.89670;19.51490;366.49329;,
 500.64999;19.51490;366.49329;,
 500.64999;0.00000;366.49329;,
 -500.64999;19.51490;299.73999;,
 -433.89670;19.51490;299.73999;,
 -433.89670;0.00000;299.73999;,
 -500.64999;0.00000;299.73999;,
 -367.14331;19.51490;299.73999;,
 -367.14331;0.00000;299.73999;,
 -300.39001;19.51490;299.73999;,
 300.39001;19.51490;299.73999;,
 367.14331;19.51490;299.73999;,
 367.14331;0.00000;299.73999;,
 433.89670;19.51490;299.73999;,
 433.89670;0.00000;299.73999;,
 500.64999;19.51490;299.73999;,
 500.64999;0.00000;299.73999;,
 -433.89670;19.51490;-301.04019;,
 -500.64999;19.51490;-301.04019;,
 -500.64999;0.00000;-301.04019;,
 -433.89670;0.00000;-301.04019;,
 -500.64999;19.51490;-367.79379;,
 -500.64999;0.00000;-367.79379;,
 -433.89670;19.51490;-367.79379;,
 -367.14331;19.51490;-301.04019;,
 -367.14331;0.00000;-301.04019;,
 -367.14331;19.51490;-367.79379;,
 -300.39001;19.51490;-301.04019;,
 -300.39001;19.51490;-367.79379;,
 367.14331;19.51490;-301.04019;,
 300.39001;19.51490;-301.04019;,
 367.14331;0.00000;-301.04019;,
 300.39001;19.51490;-367.79379;,
 367.14331;19.51490;-367.79379;,
 433.89670;19.51490;-301.04019;,
 433.89670;0.00000;-301.04019;,
 433.89670;19.51490;-367.79379;,
 500.64999;19.51490;-301.04019;,
 500.64999;0.00000;-301.04019;,
 500.64999;19.51490;-367.79379;,
 500.64999;0.00000;-367.79379;,
 -500.64999;19.51490;-434.54700;,
 -500.64999;0.00000;-434.54700;,
 -433.89670;19.51490;-434.54700;,
 -367.14331;19.51490;-434.54700;,
 -300.39001;19.51490;-434.54700;,
 300.39001;19.51490;-434.54700;,
 367.14331;19.51490;-434.54700;,
 433.89670;19.51490;-434.54700;,
 500.64999;19.51490;-434.54700;,
 500.64999;0.00000;-434.54700;,
 -500.64999;19.51490;-501.30020;,
 -433.89670;19.51490;-501.30020;,
 -433.89670;0.00000;-501.30020;,
 -500.64999;0.00000;-501.30020;,
 -367.14331;19.51490;-501.30020;,
 -367.14331;0.00000;-501.30020;,
 -300.39001;19.51490;-501.30020;,
 300.39001;19.51490;-501.30020;,
 367.14331;19.51490;-501.30020;,
 367.14331;0.00000;-501.30020;,
 433.89670;19.51490;-501.30020;,
 433.89670;0.00000;-501.30020;,
 500.64999;19.51490;-501.30020;,
 500.64999;0.00000;-501.30020;,
 -433.89670;13.00000;299.73999;,
 -500.64999;13.00000;299.73999;,
 -500.64999;13.00000;232.98669;,
 -500.64999;0.00000;232.98669;,
 -433.89670;13.00000;232.98669;,
 -367.14331;13.00000;299.73999;,
 -367.14331;13.00000;232.98669;,
 -300.39001;13.00000;299.73999;,
 -300.39001;13.00000;232.98669;,
 367.14331;13.00000;299.73999;,
 300.39001;13.00000;299.73999;,
 300.39001;13.00000;232.98669;,
 367.14331;13.00000;232.98669;,
 433.89670;13.00000;299.73999;,
 433.89670;13.00000;232.98669;,
 500.64999;13.00000;299.73999;,
 500.64999;13.00000;232.98669;,
 500.64999;0.00000;232.98669;,
 -500.64999;13.00000;166.23340;,
 -500.64999;0.00000;166.23340;,
 -433.89670;13.00000;166.23340;,
 -367.14331;13.00000;166.23340;,
 -300.39001;13.00000;166.23340;,
 300.39001;13.00000;166.23340;,
 367.14331;13.00000;166.23340;,
 433.89670;13.00000;166.23340;,
 500.64999;13.00000;166.23340;,
 500.64999;0.00000;166.23340;,
 -500.64999;13.00000;99.48010;,
 -500.64999;0.00000;99.48010;,
 -433.89670;13.00000;99.48010;,
 -367.14331;13.00000;99.48010;,
 -300.39001;13.00000;99.48010;,
 300.39001;13.00000;99.48010;,
 367.14331;13.00000;99.48010;,
 433.89670;13.00000;99.48010;,
 500.64999;13.00000;99.48010;,
 500.64999;0.00000;99.48010;,
 -500.64999;13.00000;32.72670;,
 -500.64999;0.00000;32.72670;,
 -433.89670;13.00000;32.72670;,
 -367.14331;13.00000;32.72670;,
 -300.39001;13.00000;32.72670;,
 300.39001;13.00000;32.72670;,
 367.14331;13.00000;32.72670;,
 433.89670;13.00000;32.72670;,
 500.64999;13.00000;32.72670;,
 500.64999;0.00000;32.72670;,
 -500.64999;13.00000;-34.02660;,
 -500.64999;0.00000;-34.02660;,
 -433.89670;13.00000;-34.02660;,
 -367.14331;13.00000;-34.02660;,
 -300.39001;13.00000;-34.02660;,
 300.39001;13.00000;-34.02660;,
 367.14331;13.00000;-34.02660;,
 433.89670;13.00000;-34.02660;,
 500.64999;13.00000;-34.02660;,
 500.64999;0.00000;-34.02660;,
 -500.64999;13.00000;-100.77980;,
 -500.64999;0.00000;-100.77980;,
 -433.89670;13.00000;-100.77980;,
 -367.14331;13.00000;-100.77980;,
 -300.39001;13.00000;-100.77980;,
 300.39001;13.00000;-100.77980;,
 367.14331;13.00000;-100.77980;,
 433.89670;13.00000;-100.77980;,
 500.64999;13.00000;-100.77980;,
 500.64999;0.00000;-100.77980;,
 -500.64999;13.00000;-167.53329;,
 -500.64999;0.00000;-167.53329;,
 -433.89670;13.00000;-167.53329;,
 -367.14331;13.00000;-167.53329;,
 -300.39001;13.00000;-167.53329;,
 300.39001;13.00000;-167.53329;,
 367.14331;13.00000;-167.53329;,
 433.89670;13.00000;-167.53329;,
 500.64999;13.00000;-167.53329;,
 500.64999;0.00000;-167.53329;,
 -500.64999;13.00000;-234.28661;,
 -500.64999;0.00000;-234.28661;,
 -433.89670;13.00000;-234.28661;,
 -367.14331;13.00000;-234.28661;,
 -300.39001;13.00000;-234.28661;,
 300.39001;13.00000;-234.28661;,
 367.14331;13.00000;-234.28661;,
 433.89670;13.00000;-234.28661;,
 500.64999;13.00000;-234.28661;,
 500.64999;0.00000;-234.28661;,
 -500.64999;13.00000;-301.04019;,
 -433.89670;13.00000;-301.04019;,
 -367.14331;13.00000;-301.04019;,
 -300.39001;13.00000;-301.04019;,
 300.39001;13.00000;-301.04019;,
 367.14331;13.00000;-301.04019;,
 433.89670;13.00000;-301.04019;,
 500.64999;13.00000;-301.04019;;
 
 321;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,8,9,7;,
 4;8,10,11,9;,
 4;10,12,13,11;,
 4;12,14,15,13;,
 4;14,16,17,15;,
 4;16,18,19,17;,
 4;3,2,20,21;,
 4;2,5,22,20;,
 4;5,7,23,22;,
 4;7,9,24,23;,
 4;9,11,25,24;,
 4;11,13,26,25;,
 4;13,15,27,26;,
 4;15,17,28,27;,
 4;17,19,29,28;,
 4;21,20,30,31;,
 4;20,22,32,30;,
 4;22,23,33,32;,
 4;23,24,34,33;,
 4;24,25,35,34;,
 4;25,26,36,35;,
 4;26,27,37,36;,
 4;27,28,38,37;,
 4;28,29,39,38;,
 4;31,30,40,41;,
 4;30,32,42,40;,
 4;32,33,43,42;,
 4;33,34,44,43;,
 4;34,35,45,44;,
 4;35,36,46,45;,
 4;36,37,47,46;,
 4;37,38,48,47;,
 4;38,39,49,48;,
 4;41,40,50,51;,
 4;40,42,52,50;,
 4;42,43,53,52;,
 4;43,44,54,53;,
 4;44,45,55,54;,
 4;45,46,56,55;,
 4;46,47,57,56;,
 4;47,48,58,57;,
 4;48,49,59,58;,
 4;51,50,60,61;,
 4;50,52,62,60;,
 4;52,53,63,62;,
 4;53,54,64,63;,
 4;54,55,65,64;,
 4;55,56,66,65;,
 4;56,57,67,66;,
 4;57,58,68,67;,
 4;58,59,69,68;,
 4;61,60,70,71;,
 4;60,62,72,70;,
 4;62,63,73,72;,
 4;63,64,74,73;,
 4;64,65,75,74;,
 4;65,66,76,75;,
 4;66,67,77,76;,
 4;67,68,78,77;,
 4;68,69,79,78;,
 4;71,70,80,81;,
 4;70,72,82,80;,
 4;72,73,83,82;,
 4;73,74,84,83;,
 4;74,75,85,84;,
 4;75,76,86,85;,
 4;76,77,87,86;,
 4;77,78,88,87;,
 4;78,79,89,88;,
 4;81,80,90,91;,
 4;80,82,92,90;,
 4;82,83,93,92;,
 4;83,84,94,93;,
 4;84,85,95,94;,
 4;85,86,96,95;,
 4;86,87,97,96;,
 4;87,88,98,97;,
 4;88,89,99,98;,
 4;91,90,100,101;,
 4;90,92,102,100;,
 4;92,93,103,102;,
 4;93,94,104,103;,
 4;94,95,105,104;,
 4;95,96,106,105;,
 4;96,97,107,106;,
 4;97,98,108,107;,
 4;98,99,109,108;,
 4;101,100,110,111;,
 4;100,102,112,110;,
 4;102,103,113,112;,
 4;103,104,114,113;,
 4;104,105,115,114;,
 4;105,106,116,115;,
 4;106,107,117,116;,
 4;107,108,118,117;,
 4;108,109,119,118;,
 4;111,110,120,121;,
 4;110,112,122,120;,
 4;112,113,123,122;,
 4;113,114,124,123;,
 4;114,115,125,124;,
 4;115,116,126,125;,
 4;116,117,127,126;,
 4;117,118,128,127;,
 4;118,119,129,128;,
 4;121,120,130,131;,
 4;120,122,132,130;,
 4;122,123,133,132;,
 4;123,124,134,133;,
 4;124,125,135,134;,
 4;125,126,136,135;,
 4;126,127,137,136;,
 4;127,128,138,137;,
 4;128,129,139,138;,
 4;131,130,140,141;,
 4;130,132,142,140;,
 4;132,133,143,142;,
 4;133,134,144,143;,
 4;134,135,145,144;,
 4;135,136,146,145;,
 4;136,137,147,146;,
 4;137,138,148,147;,
 4;138,139,149,148;,
 4;141,140,150,151;,
 4;140,142,152,150;,
 4;142,143,153,152;,
 4;143,144,154,153;,
 4;144,145,155,154;,
 4;145,146,156,155;,
 4;146,147,157,156;,
 4;147,148,158,157;,
 4;148,149,159,158;,
 4;160,161,162,163;,
 4;161,164,165,162;,
 4;161,160,166,164;,
 4;167,160,163,168;,
 4;160,167,169,166;,
 4;170,167,168,0;,
 4;171,170,0,3;,
 4;167,170,171,169;,
 4;172,173,18,174;,
 4;173,175,19,18;,
 4;173,172,176,175;,
 4;177,172,174,178;,
 4;172,177,179,176;,
 4;180,177,178,181;,
 4;182,180,181,183;,
 4;177,180,182,179;,
 4;164,184,185,165;,
 4;164,166,186,184;,
 4;166,169,187,186;,
 4;188,171,3,21;,
 4;169,171,188,187;,
 4;175,189,29,19;,
 4;175,176,190,189;,
 4;176,179,191,190;,
 4;192,182,183,193;,
 4;179,182,192,191;,
 4;194,195,196,197;,
 4;184,194,197,185;,
 4;184,186,195,194;,
 4;195,198,199,196;,
 4;186,187,198,195;,
 4;200,188,21,31;,
 4;198,200,31,199;,
 4;187,188,200,198;,
 4;201,202,203,39;,
 4;189,201,39,29;,
 4;189,190,202,201;,
 4;202,204,205,203;,
 4;190,191,204,202;,
 4;206,192,193,207;,
 4;204,206,207,205;,
 4;191,192,206,204;,
 4;208,209,210,211;,
 4;209,212,213,210;,
 4;209,208,214,212;,
 4;215,208,211,216;,
 4;208,215,217,214;,
 4;218,215,216,121;,
 4;219,218,121,131;,
 4;215,218,219,217;,
 4;220,221,129,222;,
 4;221,223,139,129;,
 4;221,220,224,223;,
 4;225,220,222,226;,
 4;220,225,227,224;,
 4;228,225,226,229;,
 4;230,228,229,231;,
 4;225,228,230,227;,
 4;212,232,233,213;,
 4;212,214,234,232;,
 4;214,217,235,234;,
 4;236,219,131,141;,
 4;217,219,236,235;,
 4;223,237,149,139;,
 4;223,224,238,237;,
 4;224,227,239,238;,
 4;240,230,231,241;,
 4;227,230,240,239;,
 4;242,243,244,245;,
 4;232,242,245,233;,
 4;232,234,243,242;,
 4;243,246,247,244;,
 4;234,235,246,243;,
 4;248,236,141,151;,
 4;246,248,151,247;,
 4;235,236,248,246;,
 4;249,250,251,159;,
 4;237,249,159,149;,
 4;237,238,250,249;,
 4;250,252,253,251;,
 4;238,239,252,250;,
 4;254,240,241,255;,
 4;252,254,255,253;,
 4;239,240,254,252;,
 4;256,257,197,196;,
 4;257,258,259,197;,
 4;257,256,260,258;,
 4;261,256,196,199;,
 4;256,261,262,260;,
 4;263,261,199,31;,
 4;264,263,31,41;,
 4;261,263,264,262;,
 4;265,266,39,203;,
 4;266,267,49,39;,
 4;266,265,268,267;,
 4;269,265,203,205;,
 4;265,269,270,268;,
 4;271,269,205,207;,
 4;272,271,207,273;,
 4;269,271,272,270;,
 4;258,274,275,259;,
 4;258,260,276,274;,
 4;260,262,277,276;,
 4;278,264,41,51;,
 4;262,264,278,277;,
 4;267,279,59,49;,
 4;267,268,280,279;,
 4;268,270,281,280;,
 4;282,272,273,283;,
 4;270,272,282,281;,
 4;274,284,285,275;,
 4;274,276,286,284;,
 4;276,277,287,286;,
 4;288,278,51,61;,
 4;277,278,288,287;,
 4;279,289,69,59;,
 4;279,280,290,289;,
 4;280,281,291,290;,
 4;292,282,283,293;,
 4;281,282,292,291;,
 4;284,294,295,285;,
 4;284,286,296,294;,
 4;286,287,297,296;,
 4;298,288,61,71;,
 4;287,288,298,297;,
 4;289,299,79,69;,
 4;289,290,300,299;,
 4;290,291,301,300;,
 4;302,292,293,303;,
 4;291,292,302,301;,
 4;294,304,305,295;,
 4;294,296,306,304;,
 4;296,297,307,306;,
 4;308,298,71,81;,
 4;297,298,308,307;,
 4;299,309,89,79;,
 4;299,300,310,309;,
 4;300,301,311,310;,
 4;312,302,303,313;,
 4;301,302,312,311;,
 4;304,314,315,305;,
 4;304,306,316,314;,
 4;306,307,317,316;,
 4;318,308,81,91;,
 4;307,308,318,317;,
 4;309,319,99,89;,
 4;309,310,320,319;,
 4;310,311,321,320;,
 4;322,312,313,323;,
 4;311,312,322,321;,
 4;314,324,325,315;,
 4;314,316,326,324;,
 4;316,317,327,326;,
 4;328,318,91,101;,
 4;317,318,328,327;,
 4;319,329,109,99;,
 4;319,320,330,329;,
 4;320,321,331,330;,
 4;332,322,323,333;,
 4;321,322,332,331;,
 4;324,334,335,325;,
 4;324,326,336,334;,
 4;326,327,337,336;,
 4;338,328,101,111;,
 4;327,328,338,337;,
 4;329,339,119,109;,
 4;329,330,340,339;,
 4;330,331,341,340;,
 4;342,332,333,343;,
 4;331,332,342,341;,
 4;344,345,211,210;,
 4;334,344,210,335;,
 4;334,336,345,344;,
 4;345,346,216,211;,
 4;336,337,346,345;,
 4;347,338,111,121;,
 4;346,347,121,216;,
 4;337,338,347,346;,
 4;348,349,222,129;,
 4;339,348,129,119;,
 4;339,340,349,348;,
 4;349,350,226,222;,
 4;340,341,350,349;,
 4;351,342,343,229;,
 4;350,351,229,226;,
 4;341,342,351,350;;
 
 MeshMaterialList {
  7;
  321;
  0,
  0,
  0,
  0,
  2,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  2,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
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
  2,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  2,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
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
  2,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  2,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  2,
  0,
  0,
  0,
  0,
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
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1;;
  Material {
   0.351200;0.351200;0.351200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.605600;0.605600;0.605600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.125600;0.125600;0.125600;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   1.000000;0.000000;0.020000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.420000;0.000000;0.008400;;
  }
  Material {
   0.423200;0.442400;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.053600;0.536800;0.288800;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  5;
  0.000000;0.000000;1.000000;,
  0.000000;1.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;-1.000000;;
  321;
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;4,4,4,4;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;4,4,4,4;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;4,4,4,4;,
  4;1,1,1,1;,
  4;4,4,4,4;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;4,4,4,4;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;4,4,4,4;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;4,4,4,4;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;4,4,4,4;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;4,4,4,4;,
  4;1,1,1,1;,
  4;4,4,4,4;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;4,4,4,4;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;4,4,4,4;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;4,4,4,4;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;4,4,4,4;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;4,4,4,4;,
  4;1,1,1,1;,
  4;4,4,4,4;,
  4;2,2,2,2;,
  4;1,1,1,1;,
  4;4,4,4,4;,
  4;1,1,1,1;,
  4;3,3,3,3;,
  4;4,4,4,4;,
  4;1,1,1,1;;
 }
}
