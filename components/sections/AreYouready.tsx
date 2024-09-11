import React from 'react';

const AreYouready = () => {
  return (
    <section id="register" className="w-full py-6 md:py-12 lg:py-24 bg-teal-50">
      <div className="container mx-auto px-4 md:px-6">
        <div className="flex flex-col items-center space-y-4 text-center">
          <div className="space-y-2">
            <h2 className="text-3xl font-bold tracking-tighter sm:text-4xl md:text-5xl text-slate-900">
              ¿Estás listo para la competencia?
            </h2>
          </div>
        </div>
      </div>
    </section>
  );
};

export default AreYouready;