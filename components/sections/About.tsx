import React from 'react';
import AboutCard from "@/components/cards/AboutCard";
import {Calendar, Trophy, Users} from "lucide-react";

const About = () => {
  return (
    <section id="about" className="w-full py-6 md:py-12 lg:py-24 bg-white">
      <div className="container mx-auto px-4 md:px-6">
        <h2 className="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl text-center mb-8 text-slate-900">
          Acerca del Evento
        </h2>
        <div className="grid gap-10 sm:grid-cols-2 md:grid-cols-3">
          <AboutCard
            logo={<Calendar className="h-8 w-8 text-purple-500"/>}
            title='Inauguración'
            description='Empezamos el 16 de Septiembre a las 18:00'/>
          <AboutCard
            logo={<Trophy className="h-8 w-8 text-yellow-500"/>}
            title='Torneo'
            description='Torneo de Futsal y Volley'/>
          <AboutCard
            logo={<Users className="h-8 w-8 text-blue-500"/>}
            title='Participantes'
            description='Estudiantes de la Universidad'/>
        </div>
      </div>
    </section>
  );
};

export default About;