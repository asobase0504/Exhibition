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
 21;
 0.57125;0.17318;-6.47965;,
 0.57125;7.55002;-4.07531;,
 12.33308;7.55002;-2.88168;,
 15.08191;0.17318;-4.58181;,
 13.95079;7.55002;0.00000;,
 17.98970;0.17318;0.00000;,
 12.33308;7.55002;2.88168;,
 15.08191;0.17318;4.58181;,
 0.57124;7.55002;4.07531;,
 0.57124;0.17318;6.47965;,
 -11.19060;7.55002;2.88168;,
 -14.18621;0.17318;4.58181;,
 -13.37143;7.55002;0.00000;,
 -17.75638;0.17318;0.00000;,
 -11.19060;7.55002;-2.88168;,
 -14.18621;0.17318;-4.58181;,
 0.57125;0.17318;0.00000;,
 -39.81063;18.38732;0.00000;,
 39.81063;18.38732;0.00000;,
 39.81063;69.72278;0.00000;,
 -39.81063;69.72278;0.00000;;
 
 21;
 4;0,1,2,3;,
 4;3,2,4,5;,
 4;5,4,6,7;,
 4;7,6,8,9;,
 4;9,8,10,11;,
 4;11,10,12,13;,
 4;13,12,14,15;,
 4;15,14,1,0;,
 3;16,0,3;,
 3;16,3,5;,
 3;16,5,7;,
 3;16,7,9;,
 3;16,9,11;,
 3;16,11,13;,
 3;16,13,15;,
 3;16,15,0;,
 4;2,12,10,4;,
 4;2,1,14,12;,
 4;10,8,6,4;,
 4;17,18,19,20;,
 4;20,19,18,17;;
 
 MeshMaterialList {
  4;
  21;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1;;
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   7.000000;
   0.110000;0.110000;0.110000;;
   0.060000;0.060000;0.060000;;
  }
  Material {
   0.000000;0.949000;0.651000;0.200000;;
   100.000000;
   1.000000;1.000000;1.000000;;
   0.000000;0.949000;0.651000;;
  }
  Material {
   0.715200;0.295200;0.000000;0.500000;;
   38.000000;
   0.400000;0.400000;0.400000;;
   0.339720;0.140220;0.000000;;
  }
  Material {
   0.329600;0.542400;0.800000;0.600000;;
   22.000000;
   0.220000;0.220000;0.220000;;
   0.082400;0.135600;0.200000;;
  }
 }
 MeshNormals {
  13;
  0.000548;0.290273;-0.956944;,
  0.491898;0.384401;-0.781199;,
  0.885657;0.464341;0.000000;,
  0.491898;0.384401;0.781199;,
  0.000548;0.290273;0.956944;,
  -0.445876;0.383018;0.809007;,
  -0.718929;0.422310;0.552083;,
  -0.445876;0.383018;-0.809007;,
  0.000000;-1.000000;-0.000000;,
  -0.718929;0.422310;-0.552083;,
  0.000000;1.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;-1.000000;;
  21;
  4;0,0,1,1;,
  4;1,1,2,2;,
  4;2,2,3,3;,
  4;3,3,4,4;,
  4;4,4,5,5;,
  4;5,5,6,6;,
  4;9,9,7,7;,
  4;7,7,0,0;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  3;8,8,8;,
  4;10,10,10,10;,
  4;10,10,10,10;,
  4;10,10,10,10;,
  4;11,11,11,11;,
  4;12,12,12,12;;
 }
}
