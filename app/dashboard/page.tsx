import React from 'react';
import {Icon, Layers2, PersonStanding, Scale, Shirt} from "lucide-react";
import {soccerPitch, volleyball} from '@lucide/lab';
import DashboardCard from "@/components/cards/DashboardCard";

const DashbordPage = () => {
  return (
    <section id="about" className="w-full py-6 md:py-12 lg:py-24 bg-white">
      <div className="container mx-auto px-4 md:px-6">
        <h2
          className="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl text-center mb-8 text-slate-900">Dashboard</h2>
        <div className="grid gap-10 sm:grid-cols-2 md:grid-cols-3">
          <DashboardCard
            logo={<Layers2 className="h-8 w-8 text-[#7695FF]"/>}
            title='Modalidades' slug='modalidades'/>
          <DashboardCard
            logo={<Shirt className="h-8 w-8 text-[#9DBDFF]"/>}
            title='Equipos' slug='equipos'/>
          <DashboardCard
            logo={<PersonStanding className="h-8 w-8 text-[#F05A7E]"/>}
            title='Jugadores' slug='jugadores'/>
          <DashboardCard
            logo={<Icon iconNode={soccerPitch} className="h-8 w-8 text-[#FF9874]"/>}
            title='Partidos Futsal' slug='futsal'/>
          <DashboardCard
            logo={<Icon iconNode={volleyball} className="h-8 w-8 text-[#295F98]"/>}
            title='Partidos Volleyball' slug='volley'/>
          <DashboardCard
            logo={<Scale className="h-8 w-8 text-[#5B99C2]"/>}
            title='Reglas' slug='reglas'/>
        </div>
      </div>
    </section>
  );
};

export default DashbordPage;