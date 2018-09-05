﻿Shader "Custom/07_WorldRefl"
{
    Properties
    {
        _Cube ("Cube map", CUBE) = "black" {}
    }
    
    SubShader
    {
        CGPROGRAM
        #pragma surface surf Lambert
        
        samplerCUBE _Cube;
        
        struct Input
        {
            float3 worldRefl;
        };
        
        void surf(Input IN, inout SurfaceOutput o)
        {
            o.Emission= texCUBE(_Cube, IN.worldRefl);
        }
        ENDCG
    }
    Fallback "Diffuse"
}