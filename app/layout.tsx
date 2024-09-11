import type {Metadata} from "next";
import localFont from "next/font/local";
import "./globals.css";
import Head from "next/head";
import HeaderFooter from "@/components/HeaderFooter";

const geistSans = localFont({
  src: "./fonts/GeistVF.woff",
  variable: "--font-geist-sans",
  weight: "100 900",
});
const geistMono = localFont({
  src: "./fonts/GeistMonoVF.woff",
  variable: "--font-geist-mono",
  weight: "100 900",
});

export const metadata: Metadata = {
  title: "Juegos Champions Universitarios",
  description: ":3",
};

export default function RootLayout({
                                     children,
                                   }: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
    <Head>
      <title>Juegos Champions Universitarios</title>
    </Head>
    <body className={`${geistSans.variable} ${geistMono.variable} antialiased h-full`}>
    {/* Wrap the children inside the new client-side Header/Footer component */}
    <HeaderFooter>
      {children}
    </HeaderFooter>
    </body>
    </html>
  );
}
