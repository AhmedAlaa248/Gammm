#version 430
out gl_PerVertex
{
   vec4 gl_Position;
};
out vec4 v_FrontColor;
out vec2 v_Texcoord0;
in vec4 a_Position0;
in vec4 a_Color0;
in vec2 a_Texcoord0;

layout( std140 ) uniform u_ModelViewProjMatrix
{
   uniform mat4 mat;
};

void main()
{
    gl_Position =  mat * a_Position0;
    v_FrontColor = a_Color0;
    v_Texcoord0  = a_Texcoord0;
};
