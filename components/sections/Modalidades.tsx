import React from 'react';

const Modalidades = () => {
  return (
    <section id="sports" className="w-full py-6 md:py-12 lg:py-24 bg-slate-100">
      <div className="container mx-auto px-4 md:px-6">
        <h2 className="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl text-center mb-8 text-slate-900">
          Modalidades
        </h2>
        <div className="grid gap-10 sm:grid-cols-2 md:grid-cols-3 text-center">
          <div className="flex flex-col items-center space-y-2 border-slate-200 p-4 rounded-lg bg-white shadow-sm">
            <h3 className="text-2xl font-bold text-teal-600">Futsal (Masculino)</h3>
            <p className="text-center text-slate-600">Fase de grupos seguida de eliminatorias</p>
          </div>
          <div className="flex flex-col items-center space-y-2 border-slate-200 p-4 rounded-lg bg-white shadow-sm">
            <h3 className="text-2xl font-bold text-teal-600">Futsal (Femenino)</h3>
            <p className="text-center text-slate-600">Fase de grupos seguida de eliminatorias</p>
          </div>
          <div className="flex flex-col items-center space-y-2 border-slate-200 p-4 rounded-lg bg-white shadow-sm">
            <h3 className="text-2xl font-bold text-teal-600">Volleyball (Mixto)</h3>
            <p className="text-center text-slate-600">Fase de grupos seguida de eliminatorias</p>
          </div>
        </div>
      </div>
    </section>
  );
};

export default Modalidades;