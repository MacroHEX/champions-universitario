import {ImageResponse} from 'next/og';
import React from "react";

export async function GET(request: Request) {
  try {
    return new ImageResponse(
      (
        <div
          style={{
            display: 'flex',
            height: '100%',
            width: '100%',
            alignItems: 'center',
            justifyContent: 'center',
            flexDirection: 'column',
            backgroundImage: 'linear-gradient(to bottom, #dbf4ff, #fff1f1)',
            fontSize: 60,
            letterSpacing: -2,
            fontWeight: 700,
            textAlign: 'center',
          }}
        >
          <div
            style={{
              backgroundImage: 'linear-gradient(90deg, rgb(0, 124, 240), rgb(0, 223, 216))',
              backgroundClip: 'text',
              color: 'transparent',
            }}
          >
            Champions
          </div>
          <div
            style={{
              backgroundImage: 'linear-gradient(90deg, rgb(121, 40, 202), rgb(255, 0, 128))',
              backgroundClip: 'text',
              color: 'transparent',
            }}
          >
            Universitario
          </div>
          <div
            style={{
              backgroundImage: 'linear-gradient(90deg, rgb(255, 77, 77), rgb(249, 203, 40))',
              backgroundClip: 'text',
              color: 'transparent',
            }}
          >
            2024
          </div>
        </div>

      ),
      {
        width: 1200,
        height: 630,
      },
    );
  } catch (e: any) {
    console.log(`${e.message}`);
    return new Response(`Failed to generate the image`, {
      status: 500,
    });
  }
}