struct VsOut
{
    float4 pos      : POSITION;
    float4 color    : COLOR0;
    float2 texcoord : TEXCOORD0;
};

float4x4 g_MatWVP : register(c0);
sampler g_Texture : register(s0);
