'use client';

import {usePathname} from "next/navigation";
import Header from "@/components/sections/Header";
import Footer from "@/components/sections/Footer";

export default function HeaderFooter({
                                       children,
                                     }: {
  children: React.ReactNode;
}) {
  const pathname = usePathname();

  return (
    <div className="flex flex-col min-h-screen">
      {pathname !== "/404" && <Header/>}

      <main className="flex-grow">{children}</main>

      {pathname !== "/404" && <Footer/>}
    </div>
  );
}
