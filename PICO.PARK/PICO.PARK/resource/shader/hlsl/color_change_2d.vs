#include "color_change_2d.h"

VsOut main( const float3 pos      : POSITION , 
            const float4 color    : COLOR0 ,
            const float2 texcoord : TEXCOORD0 )
{
    VsOut output;
    output.pos = mul( g_MatWVP , float4(pos,1.0) );
    output.color = color;
    output.texcoord = texcoord;
    return output;
}
