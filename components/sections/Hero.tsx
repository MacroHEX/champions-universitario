import React from 'react';

const Hero = () => {
  return (
    <section className="w-full py-6 md:py-12 lg:py-24 xl:py-32 bg-teal-50">
      <div className="container px-4 md:px-6">
        <div className="flex flex-col items-center space-y-4 text-center">
          <div className="space-y-2">
            <h1
              className="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl lg:text-6xl/none text-slate-900">
              Champions Universitario 2024
            </h1>
            <p className="mx-auto max-w-[700px] text-slate-700 md:text-xl">
              Únete a nosotros en un emocionante evento juvenil de primavera que incluye torneos de fútbol y
              voleibol. Demuestra tus habilidades, compite con tus compañeros y celebra el espíritu universitario.
            </p>
          </div>
        </div>
      </div>
    </section>
  );
};

export default Hero;