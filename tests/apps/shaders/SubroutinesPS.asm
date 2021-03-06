//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.20499
//
//
///
// Buffer Definitions: 
//
// interfaces $ThisPointer
// {
//
//   interface iChangeColour gAbstractColourChanger;// Offset:    0 Size:     1
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// samLinear                         sampler      NA          NA    0        1
// g_txDiffuse                       texture  float4          2d    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// TEXCOORD                 0   xyzw        1     NONE   float       
// TEXCOORD                 1   xy          2     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Target                0   xyzw        0   TARGET   float   xyzw
//
//
// Available Class Types:
//
// Name                             ID CB Stride Texture Sampler
// ------------------------------ ---- --------- ------- -------
// cFullColour                       0         0       0       0
// cMonochromeColour                 1         0       0       0
// cBlueColour                       2         0       0       0
// cGreenColour                      3         0       0       0
// cRedColour                        4         0       0       0
//
// Interface slots, 1 total:
//
//             Slots
// +----------+---------+---------------------------------------
// | Type ID  |   0     |0    1    2    3    4    
// | Table ID |         |0    1    2    3    4    
// +----------+---------+---------------------------------------
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_function_body fb0
dcl_function_body fb1
dcl_function_body fb2
dcl_function_body fb3
dcl_function_body fb4
dcl_function_table ft0 = {fb0}
dcl_function_table ft1 = {fb1}
dcl_function_table ft2 = {fb2}
dcl_function_table ft3 = {fb3}
dcl_function_table ft4 = {fb4}
dcl_interface fp0[1][1] = {ft0, ft1, ft2, ft3, ft4}
dcl_input_ps linear v2.xy
dcl_output o0.xyzw
dcl_temps 1
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v2.xyxx, t0.zwxy, s0
fcall fp0[0][0]
mov o0.xyzw, r0.zwxy
ret 
label fb0
ret 
label fb1
dp3 r0.xyzw, r0.zwxz, l(0.212500, 0.715400, 0.072100, 0.000000)
ret 
label fb2
mov r0.zw, l(0,0,0,0)
ret 
label fb3
mov r0.xz, l(0,0,0,0)
ret 
label fb4
mov r0.xw, l(0,0,0,0)
ret 
// Approximately 13 instruction slots used
