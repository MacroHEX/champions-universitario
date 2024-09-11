import React from 'react';
import Link from "next/link";
import {Trophy} from "lucide-react";

const Header = () => {
  return (
    <header className="px-4 lg:px-6 h-14 flex items-center bg-white shadow-sm">
      <Link className="flex items-center justify-center" href="#">
        <Trophy className="h-6 w-6 text-teal-600"/>
        <span className="ml-2 text-xl font-semibold text-slate-800">Champions Universitario</span>
      </Link>
      <nav className="ml-auto flex gap-4 sm:gap-6">
        <Link className="text-sm font-medium text-slate-600 hover:text-teal-600 transition-colors" href="#about">
          Acerca
        </Link>
        <Link className="text-sm font-medium text-slate-600 hover:text-teal-600 transition-colors" href="#sports">
          Modalidades
        </Link>
      </nav>
    </header>
  );
};

export default Header;